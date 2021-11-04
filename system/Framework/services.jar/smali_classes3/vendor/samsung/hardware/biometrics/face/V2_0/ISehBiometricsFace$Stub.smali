.class public abstract Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;
.super Landroid/os/HwBinder;
.source "ISehBiometricsFace.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1337
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method

.method static synthetic lambda$onTransact$0(Landroid/os/HwParcel;)Landroid/os/HidlMemory;
    .registers 3
    .param p0, "_parcel"    # Landroid/os/HwParcel;

    .line 1735
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1736
    :catch_9
    move-exception v0

    .line 1737
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1340
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1354
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1392
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1393
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1394
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1395
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1396
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1366
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_28

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3c

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_50

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_28
    .array-data 1
        0x8t
        0x1ct
        0x60t
        -0x44t
        -0x65t
        -0x9t
        -0x50t
        0x5ft
        0x35t
        -0x2bt
        0x47t
        -0x75t
        -0x3et
        0x6bt
        -0x3ft
        0x6dt
        -0x5ft
        -0x80t
        -0x3t
        -0x21t
        0x77t
        -0x79t
        0x40t
        0x36t
        0x76t
        0xct
        0x4ft
        0x6ct
        -0xet
        0x7et
        -0x16t
        0x44t
    .end array-data

    :array_3c
    .array-data 1
        -0x1ft
        -0x71t
        -0xdt
        0x18t
        -0xdt
        -0x4t
        0x43t
        -0x25t
        0x37t
        -0xbt
        0x54t
        0x69t
        0x6dt
        -0x3ct
        -0x1bt
        0x51t
        -0x55t
        -0x47t
        -0x4ft
        0x19t
        -0x43t
        -0x1bt
        0x39t
        0x50t
        -0x9t
        0x3et
        0x28t
        -0x32t
        0x33t
        -0x57t
        0x7at
        0x40t
    .end array-data

    :array_50
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1345
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    const-string v2, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1360
    const-string v0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1380
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1402
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1404
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1432
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_3a0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_3e8

    goto/16 :goto_39e

    .line 1958
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->notifySyspropsChanged()V

    .line 1961
    goto/16 :goto_39e

    .line 1947
    :sswitch_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1950
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1951
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1953
    goto/16 :goto_39e

    .line 1937
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->ping()V

    .line 1940
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1942
    goto/16 :goto_39e

    .line 1924
    :sswitch_37
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->setHALInstrumentation()V

    .line 1927
    goto/16 :goto_39e

    .line 1890
    :sswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1893
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1895
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1897
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1898
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1899
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1900
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1901
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_66
    if-ge v4, v3, :cond_87

    .line 1903
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1904
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1906
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7f

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7f

    .line 1910
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1911
    nop

    .line 1901
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 1907
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1914
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_87
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1916
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1918
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1919
    goto/16 :goto_39e

    .line 1879
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1882
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1883
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1885
    goto/16 :goto_39e

    .line 1867
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1870
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1871
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1872
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1873
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1874
    goto/16 :goto_39e

    .line 1856
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1859
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1860
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1861
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1862
    goto/16 :goto_39e

    .line 1843
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_ce
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1846
    .local v0, "tagId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1847
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehSetFaceTag(ILjava/util/ArrayList;)I

    move-result v3

    .line 1848
    .local v3, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1849
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1851
    goto/16 :goto_39e

    .line 1827
    .end local v0    # "tagId":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "_hidl_out_status":I
    :pswitch_e8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1830
    .restart local v0    # "tagId":I
    new-instance v1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;-><init>(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehGetFaceTag(ILvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;)V

    .line 1838
    goto/16 :goto_39e

    .line 1812
    .end local v0    # "tagId":I
    :pswitch_f9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;-><init>(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehGetFaceTagList(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagListCallback;)V

    .line 1822
    goto/16 :goto_39e

    .line 1800
    :pswitch_106
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1803
    .local v0, "level":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehSetSecurityLevel(I)I

    move-result v1

    .line 1804
    .local v1, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1805
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1806
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1807
    goto/16 :goto_39e

    .line 1785
    .end local v0    # "level":I
    .end local v1    # "_hidl_out_status":I
    :pswitch_11c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$1;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$1;-><init>(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V

    .line 1795
    goto/16 :goto_39e

    .line 1774
    :pswitch_129
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehGetServicePid()I

    move-result v0

    .line 1777
    .local v0, "_hidl_out_pid":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1778
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1780
    goto/16 :goto_39e

    .line 1761
    .end local v0    # "_hidl_out_pid":I
    :pswitch_13b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1764
    .local v0, "previewType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1765
    .local v1, "previewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehConfigurePreview(ILjava/util/ArrayList;)I

    move-result v3

    .line 1766
    .restart local v3    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1767
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1769
    goto/16 :goto_39e

    .line 1749
    .end local v0    # "previewType":I
    .end local v1    # "previewInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "_hidl_out_status":I
    :pswitch_155
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1752
    .local v0, "inputBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehFinishTaInstallation(Ljava/util/ArrayList;)I

    move-result v1

    .line 1753
    .local v1, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1754
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1756
    goto/16 :goto_39e

    .line 1731
    .end local v0    # "inputBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "_hidl_out_status":I
    :pswitch_16b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFace$Stub$eCIZ50qJw-7jrfWdlwm2vgoJ_j0;->INSTANCE:Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFace$Stub$eCIZ50qJw-7jrfWdlwm2vgoJ_j0;

    .line 1739
    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HidlMemory;

    .line 1740
    .local v0, "mem":Landroid/os/HidlMemory;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehInstallTaDataChunk(Landroid/os/HidlMemory;)I

    move-result v1

    .line 1741
    .restart local v1    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1742
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1743
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1744
    goto/16 :goto_39e

    .line 1720
    .end local v0    # "mem":Landroid/os/HidlMemory;
    .end local v1    # "_hidl_out_status":I
    :pswitch_185
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehPrepareTaInstallation()I

    move-result v0

    .line 1723
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1724
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1725
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1726
    goto/16 :goto_39e

    .line 1708
    .end local v0    # "_hidl_out_status":I
    :pswitch_197
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1711
    .local v0, "rotation":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehSetRotation(I)I

    move-result v1

    .line 1712
    .restart local v1    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1713
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1714
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1715
    goto/16 :goto_39e

    .line 1697
    .end local v0    # "rotation":I
    .end local v1    # "_hidl_out_status":I
    :pswitch_1ad
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehGetEngineVersion()Ljava/lang/String;

    move-result-object v0

    .line 1700
    .local v0, "_hidl_out_version":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1701
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1703
    goto/16 :goto_39e

    .line 1686
    .end local v0    # "_hidl_out_version":Ljava/lang/String;
    :pswitch_1bf
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehGetTaInfo()Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, "_hidl_out_info":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1690
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1692
    goto/16 :goto_39e

    .line 1675
    .end local v0    # "_hidl_out_info":Ljava/lang/String;
    :pswitch_1d1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehResumeEnrollment()I

    move-result v0

    .line 1678
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1679
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1680
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1681
    goto/16 :goto_39e

    .line 1664
    .end local v0    # "_hidl_out_status":I
    :pswitch_1e3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehPauseEnrollment()I

    move-result v0

    .line 1667
    .restart local v0    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1668
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1669
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1670
    goto/16 :goto_39e

    .line 1653
    .end local v0    # "_hidl_out_status":I
    :pswitch_1f5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehIsTaSessionClosed()Z

    move-result v0

    .line 1656
    .local v0, "_hidl_out_isClosed":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1657
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1658
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1659
    goto/16 :goto_39e

    .line 1642
    .end local v0    # "_hidl_out_isClosed":Z
    :pswitch_207
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehCloseTaSession()I

    move-result v0

    .line 1645
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1646
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1647
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1648
    goto/16 :goto_39e

    .line 1631
    .end local v0    # "_hidl_out_status":I
    :pswitch_219
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehOpenTaSession()I

    move-result v0

    .line 1634
    .restart local v0    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1635
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1637
    goto/16 :goto_39e

    .line 1617
    .end local v0    # "_hidl_out_status":I
    :pswitch_22b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1620
    .local v0, "operationId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1621
    .local v3, "secureLevel":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 1622
    .local v4, "challengeData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1, v3, v4}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehAuthenticate(JILjava/util/ArrayList;)I

    move-result v5

    .line 1623
    .local v5, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1624
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1626
    goto/16 :goto_39e

    .line 1605
    .end local v0    # "operationId":J
    .end local v3    # "secureLevel":I
    .end local v4    # "challengeData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v5    # "_hidl_out_status":I
    :pswitch_249
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v0

    .line 1608
    .local v0, "clientCallback":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v1

    .line 1609
    .local v1, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1610
    invoke-virtual {v1, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1612
    goto/16 :goto_39e

    .line 1593
    .end local v0    # "clientCallback":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
    .end local v1    # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :pswitch_263
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1596
    .local v0, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->resetLockout(Ljava/util/ArrayList;)I

    move-result v1

    .line 1597
    .local v1, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1598
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1600
    goto/16 :goto_39e

    .line 1582
    .end local v0    # "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "_hidl_out_status":I
    :pswitch_279
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->userActivity()I

    move-result v0

    .line 1585
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1586
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1588
    goto/16 :goto_39e

    .line 1570
    .end local v0    # "_hidl_out_status":I
    :pswitch_28b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1573
    .local v0, "operationId":J
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->authenticate(J)I

    move-result v3

    .line 1574
    .local v3, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1575
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1577
    goto/16 :goto_39e

    .line 1558
    .end local v0    # "operationId":J
    .end local v3    # "_hidl_out_status":I
    :pswitch_2a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1561
    .local v0, "faceId":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->remove(I)I

    move-result v1

    .line 1562
    .restart local v1    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1563
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1564
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1565
    goto/16 :goto_39e

    .line 1547
    .end local v0    # "faceId":I
    .end local v1    # "_hidl_out_status":I
    :pswitch_2b7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->enumerate()I

    move-result v0

    .line 1550
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1551
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1552
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1553
    goto/16 :goto_39e

    .line 1536
    .end local v0    # "_hidl_out_status":I
    :pswitch_2c9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->cancel()I

    move-result v0

    .line 1539
    .restart local v0    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1542
    goto/16 :goto_39e

    .line 1525
    .end local v0    # "_hidl_out_status":I
    :pswitch_2db
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    .line 1528
    .local v0, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1529
    invoke-virtual {v0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1531
    goto/16 :goto_39e

    .line 1512
    .end local v0    # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :pswitch_2ed
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1515
    .local v0, "feature":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1516
    .local v1, "faceId":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v3

    .line 1517
    .local v3, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1518
    invoke-virtual {v3, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1519
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1520
    goto/16 :goto_39e

    .line 1497
    .end local v0    # "feature":I
    .end local v1    # "faceId":I
    .end local v3    # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    :pswitch_307
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1500
    .restart local v0    # "feature":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1501
    .local v1, "enabled":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 1502
    .local v3, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1503
    .local v4, "faceId":I
    invoke-virtual {p0, v0, v1, v3, v4}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->setFeature(IZLjava/util/ArrayList;I)I

    move-result v5

    .line 1504
    .restart local v5    # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1505
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1506
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1507
    goto/16 :goto_39e

    .line 1486
    .end local v0    # "feature":I
    .end local v1    # "enabled":Z
    .end local v3    # "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "faceId":I
    .end local v5    # "_hidl_out_status":I
    :pswitch_329
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->revokeChallenge()I

    move-result v0

    .line 1489
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1490
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1491
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1492
    goto :goto_39e

    .line 1472
    .end local v0    # "_hidl_out_status":I
    :pswitch_33a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1475
    .local v0, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1476
    .local v1, "timeoutSec":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 1477
    .local v3, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1, v3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result v4

    .line 1478
    .local v4, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1479
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1480
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1481
    goto :goto_39e

    .line 1460
    .end local v0    # "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "timeoutSec":I
    .end local v3    # "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "_hidl_out_status":I
    :pswitch_357
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1463
    .local v0, "challengeTimeoutSec":I
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v1

    .line 1464
    .local v1, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1465
    invoke-virtual {v1, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1466
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1467
    goto :goto_39e

    .line 1447
    .end local v0    # "challengeTimeoutSec":I
    .end local v1    # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :pswitch_36c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1450
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1451
    .local v1, "storePath":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->setActiveUser(ILjava/lang/String;)I

    move-result v3

    .line 1452
    .local v3, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1453
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1454
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1455
    goto :goto_39e

    .line 1435
    .end local v0    # "userId":I
    .end local v1    # "storePath":Ljava/lang/String;
    .end local v3    # "_hidl_out_status":I
    :pswitch_385
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    move-result-object v0

    .line 1438
    .local v0, "clientCallback":Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v1

    .line 1439
    .local v1, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1440
    invoke-virtual {v1, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1442
    nop

    .line 1970
    .end local v0    # "clientCallback":Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;
    .end local v1    # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :goto_39e
    return-void

    nop

    :pswitch_data_3a0
    .packed-switch 0x1
        :pswitch_385
        :pswitch_36c
        :pswitch_357
        :pswitch_33a
        :pswitch_329
        :pswitch_307
        :pswitch_2ed
        :pswitch_2db
        :pswitch_2c9
        :pswitch_2b7
        :pswitch_2a1
        :pswitch_28b
        :pswitch_279
        :pswitch_263
        :pswitch_249
        :pswitch_22b
        :pswitch_219
        :pswitch_207
        :pswitch_1f5
        :pswitch_1e3
        :pswitch_1d1
        :pswitch_1bf
        :pswitch_1ad
        :pswitch_197
        :pswitch_185
        :pswitch_16b
        :pswitch_155
        :pswitch_13b
        :pswitch_129
        :pswitch_11c
        :pswitch_106
        :pswitch_f9
        :pswitch_e8
        :pswitch_ce
    .end packed-switch

    :sswitch_data_3e8
    .sparse-switch
        0xf43484e -> :sswitch_bc
        0xf444247 -> :sswitch_a6
        0xf445343 -> :sswitch_94
        0xf485348 -> :sswitch_3f
        0xf494e54 -> :sswitch_37
        0xf504e47 -> :sswitch_29
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_f
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 1386
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1414
    const-string v0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1415
    return-object p0

    .line 1417
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->registerService(Ljava/lang/String;)V

    .line 1422
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 1376
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1408
    const/4 v0, 0x1

    return v0
.end method
