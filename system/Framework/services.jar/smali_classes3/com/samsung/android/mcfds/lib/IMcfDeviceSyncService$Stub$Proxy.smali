.class Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMcfDeviceSyncService.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 116
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 123
    const-string v0, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    return-object v0
.end method

.method public internalCommand(Landroid/os/Message;)I
    .registers 7
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 137
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {p1, v0, v3}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 141
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    :goto_1b
    iget-object v4, p0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 144
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 145
    invoke-static {}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;->internalCommand(Landroid/os/Message;)I

    move-result v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_48

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    return v3

    .line 147
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_48

    move v2, v3

    .line 151
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    nop

    .line 154
    return v2

    .line 151
    .end local v2    # "_result":I
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw v2
.end method

.method public internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I
    .registers 8
    .param p1, "inParam"    # Landroid/os/Message;
    .param p2, "outParam"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 164
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p1, v0, v2}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 168
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    :goto_1b
    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 171
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 172
    invoke-static {}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_51

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    return v3

    .line 174
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_49

    .line 177
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_51

    .line 181
    .end local v2    # "_status":Z
    :cond_49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    nop

    .line 184
    return v3

    .line 181
    .end local v3    # "_result":I
    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v2
.end method
