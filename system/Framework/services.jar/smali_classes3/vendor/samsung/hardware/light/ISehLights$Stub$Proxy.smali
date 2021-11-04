.class Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehLights.java"

# interfaces
.implements Lvendor/samsung/hardware/light/ISehLights;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/light/ISehLights$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lvendor/samsung/hardware/light/ISehLights;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mCachedVersion:I

    .line 131
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 129
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 134
    iget-object v0, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 138
    # getter for: Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 215
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 217
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 218
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getDefaultImpl()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 219
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getDefaultImpl()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v3

    invoke-interface {v3}, Lvendor/samsung/hardware/light/ISehLights;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 225
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 219
    monitor-exit p0

    return-object v3

    .line 222
    .end local p0    # "this":Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 225
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    goto :goto_54

    .line 225
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw v2

    .line 229
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 210
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    iget v0, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 195
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 196
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getDefaultImpl()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 197
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getDefaultImpl()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v3

    invoke-interface {v3}, Lvendor/samsung/hardware/light/ISehLights;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    return v3

    .line 200
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 203
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    goto :goto_4d

    .line 203
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    throw v2

    .line 207
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getLights()[Lvendor/samsung/hardware/light/SehHwLight;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 175
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getDefaultImpl()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 176
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getDefaultImpl()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v3

    invoke-interface {v3}, Lvendor/samsung/hardware/light/ISehLights;->getLights()[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_42

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return-object v3

    .line 178
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 179
    sget-object v3, Lvendor/samsung/hardware/light/SehHwLight;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/light/SehHwLight;
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_42

    move-object v2, v3

    .line 182
    .local v2, "_result":[Lvendor/samsung/hardware/light/SehHwLight;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    nop

    .line 185
    return-object v2

    .line 182
    .end local v2    # "_result":[Lvendor/samsung/hardware/light/SehHwLight;
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    throw v2
.end method

.method public setLightState(ILandroid/hardware/light/HwLightState;I)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "state"    # Landroid/hardware/light/HwLightState;
    .param p3, "extendedBrightness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1d

    .line 148
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {p2, v0, v3}, Landroid/hardware/light/HwLightState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 152
    :cond_1d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    :goto_20
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v4, p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 156
    .local v2, "_status":Z
    if-nez v2, :cond_3f

    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getDefaultImpl()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 157
    invoke-static {}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getDefaultImpl()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lvendor/samsung/hardware/light/ISehLights;->setLightState(ILandroid/hardware/light/HwLightState;I)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_4a

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    return-void

    .line 160
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 163
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    nop

    .line 166
    return-void

    .line 163
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw v2
.end method
