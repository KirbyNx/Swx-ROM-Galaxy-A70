.class Landroid/os/IIdmap2$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIdmap2.java"

# interfaces
.implements Landroid/os/IIdmap2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIdmap2$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/IIdmap2;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 144
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .registers 16
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "fulfilledPolicies"    # I
    .param p4, "enforceOverlayable"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IIdmap2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v2, 0x0

    if-eqz p4, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v3, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 235
    .local v2, "_status":Z
    if-nez v2, :cond_45

    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 236
    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_55

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    return-object v3

    .line 238
    :cond_45
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_55

    move-object v2, v3

    .line 242
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    nop

    .line 245
    return-object v2

    .line 242
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_55
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw v2
.end method

.method public getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "overlayApkPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IIdmap2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v2, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 163
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 164
    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_42

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    return-object v3

    .line 166
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_42

    move-object v2, v3

    .line 170
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    nop

    .line 173
    return-object v2

    .line 170
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 151
    const-string v0, "android.os.IIdmap2"

    return-object v0
.end method

.method public removeIdmap(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "overlayApkPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IIdmap2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v2, p0, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 185
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 186
    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_45

    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    return v3

    .line 188
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_45

    if-eqz v3, :cond_3c

    const/4 v4, 0x1

    :cond_3c
    move v2, v4

    .line 192
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    nop

    .line 195
    return v2

    .line 192
    .end local v2    # "_result":Z
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    throw v2
.end method

.method public verifyIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Z
    .registers 21
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "fulfilledPolicies"    # I
    .param p4, "enforceOverlayable"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 200
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 203
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IIdmap2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_76

    .line 204
    move-object/from16 v9, p1

    :try_start_f
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_73

    .line 205
    move-object/from16 v10, p2

    :try_start_14
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_70

    .line 206
    move/from16 v11, p3

    :try_start_19
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_22

    move v4, v0

    goto :goto_23

    :cond_22
    move v4, v3

    :goto_23
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_6d

    .line 208
    move/from16 v12, p5

    :try_start_28
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_6a

    .line 209
    move-object v13, p0

    :try_start_2c
    iget-object v4, v13, Landroid/os/IIdmap2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    move v14, v4

    .line 210
    .local v14, "_status":Z
    if-nez v14, :cond_55

    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v4

    if-eqz v4, :cond_55

    .line 211
    invoke-static {}, Landroid/os/IIdmap2$Stub;->getDefaultImpl()Landroid/os/IIdmap2;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_68

    .line 217
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    return v0

    .line 213
    :cond_55
    :try_start_55
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 214
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_68

    if-eqz v4, :cond_5f

    goto :goto_60

    :cond_5f
    move v0, v3

    .line 217
    .end local v14    # "_status":Z
    .local v0, "_result":Z
    :goto_60
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    nop

    .line 220
    return v0

    .line 217
    .end local v0    # "_result":Z
    :catchall_68
    move-exception v0

    goto :goto_80

    :catchall_6a
    move-exception v0

    move-object v13, p0

    goto :goto_80

    :catchall_6d
    move-exception v0

    move-object v13, p0

    goto :goto_7e

    :catchall_70
    move-exception v0

    move-object v13, p0

    goto :goto_7c

    :catchall_73
    move-exception v0

    move-object v13, p0

    goto :goto_7a

    :catchall_76
    move-exception v0

    move-object v13, p0

    move-object/from16 v9, p1

    :goto_7a
    move-object/from16 v10, p2

    :goto_7c
    move/from16 v11, p3

    :goto_7e
    move/from16 v12, p5

    :goto_80
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw v0
.end method
