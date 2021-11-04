.class public abstract Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;
.super Landroid/os/HwBinder;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 767
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 770
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

    .line 784
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 822
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 823
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 824
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 825
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 826
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

    .line 796
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
        -0x18t
        -0x11t
        -0x33t
        0x16t
        0x25t
        -0x17t
        -0x10t
        -0x1bt
        0x4bt
        -0xct
        0x59t
        -0x53t
        0x21t
        0xft
        0x32t
        -0x7t
        0x54t
        -0xet
        0x78t
        -0x71t
        0x4t
        -0x66t
        0x78t
        -0x15t
        -0x70t
        0x4t
        -0x73t
        -0x37t
        0x54t
        -0x7t
        -0x6et
        -0x6at
    .end array-data

    :array_3c
    .array-data 1
        0x20t
        -0x4ct
        -0x4at
        -0x7at
        -0x79t
        0x52t
        0x30t
        -0x29t
        -0x75t
        -0x6et
        -0x48t
        0x66t
        -0x50t
        -0x43t
        0x50t
        0x35t
        -0x46t
        0x72t
        -0x42t
        0x65t
        -0x7at
        -0x56t
        -0x38t
        0x8t
        0x72t
        0x52t
        0x7ct
        -0x77t
        0xet
        0x4dt
        0x62t
        -0x73t
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

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    const-string v2, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

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

    .line 790
    const-string v0, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 810
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 832
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 834
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

    .line 862
    const-string v0, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    const/4 v1, 0x0

    const-string v2, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    packed-switch p1, :pswitch_data_1e8

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_20a

    goto/16 :goto_1e6

    .line 1194
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->notifySyspropsChanged()V

    .line 1197
    goto/16 :goto_1e6

    .line 1183
    :sswitch_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1186
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1187
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1188
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1189
    goto/16 :goto_1e6

    .line 1173
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->ping()V

    .line 1176
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1178
    goto/16 :goto_1e6

    .line 1160
    :sswitch_37
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->setHALInstrumentation()V

    .line 1163
    goto/16 :goto_1e6

    .line 1126
    :sswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1129
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1131
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1133
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1134
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1135
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1136
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1137
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_66
    if-ge v4, v3, :cond_87

    .line 1139
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1140
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1142
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7f

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7f

    .line 1146
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1147
    nop

    .line 1137
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 1143
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1150
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_87
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1152
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1154
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1155
    goto/16 :goto_1e6

    .line 1115
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1119
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1121
    goto/16 :goto_1e6

    .line 1103
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1106
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1107
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1108
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1110
    goto/16 :goto_1e6

    .line 1092
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1095
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1096
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1098
    goto/16 :goto_1e6

    .line 1079
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_ce
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1082
    .local v0, "enable":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1083
    .local v2, "isBefore":Z
    invoke-virtual {p0, v0, v2}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->setSpenEnable(IZ)I

    move-result v3

    .line 1084
    .local v3, "_hidl_out_retval":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1085
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1087
    goto/16 :goto_1e6

    .line 1065
    .end local v0    # "enable":I
    .end local v2    # "isBefore":Z
    .end local v3    # "_hidl_out_retval":I
    :pswitch_e8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1068
    .local v0, "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1069
    .local v2, "enable":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1070
    .local v3, "isBefore":Z
    invoke-virtual {p0, v0, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->setTspEnable(IIZ)I

    move-result v4

    .line 1071
    .local v4, "_hidl_out_retval":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1074
    goto/16 :goto_1e6

    .line 1053
    .end local v0    # "devid":I
    .end local v2    # "enable":I
    .end local v3    # "isBefore":Z
    .end local v4    # "_hidl_out_retval":I
    :pswitch_106
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "cmdname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v2

    .line 1057
    .local v2, "_hidl_out_retval":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1058
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1059
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1060
    goto/16 :goto_1e6

    .line 1040
    .end local v0    # "cmdname":Ljava/lang/String;
    .end local v2    # "_hidl_out_retval":I
    :pswitch_11c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1043
    .local v0, "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1044
    .local v2, "cmdname":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v3

    .line 1045
    .local v3, "_hidl_out_retval":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1046
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1047
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1048
    goto/16 :goto_1e6

    .line 1025
    .end local v0    # "devid":I
    .end local v2    # "cmdname":Ljava/lang/String;
    .end local v3    # "_hidl_out_retval":I
    :pswitch_136
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$11;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$11;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getSpenCommandList(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;)V

    .line 1035
    goto/16 :goto_1e6

    .line 1010
    :pswitch_143
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$10;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$10;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getSpenPosition(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;)V

    .line 1020
    goto/16 :goto_1e6

    .line 994
    :pswitch_150
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "cmdname":Ljava/lang/String;
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$9;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$9;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->runSpenCmd(Ljava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;)V

    .line 1005
    goto/16 :goto_1e6

    .line 978
    .end local v0    # "cmdname":Ljava/lang/String;
    :pswitch_161
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 981
    .local v0, "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$8;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$8;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspFodPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;)V

    .line 989
    goto/16 :goto_1e6

    .line 962
    .end local v0    # "devid":I
    :pswitch_172
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 965
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$7;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$7;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspFodInformation(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;)V

    .line 973
    goto :goto_1e6

    .line 946
    .end local v0    # "devid":I
    :pswitch_182
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 949
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$6;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$6;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspAodActiveArea(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;)V

    .line 957
    goto :goto_1e6

    .line 930
    .end local v0    # "devid":I
    :pswitch_192
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 933
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$5;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$5;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspCommandList(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;)V

    .line 941
    goto :goto_1e6

    .line 914
    .end local v0    # "devid":I
    :pswitch_1a2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 917
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$4;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$4;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspSupportFeature(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;)V

    .line 925
    goto :goto_1e6

    .line 898
    .end local v0    # "devid":I
    :pswitch_1b2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 901
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$3;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspScrubPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;)V

    .line 909
    goto :goto_1e6

    .line 881
    .end local v0    # "devid":I
    :pswitch_1c2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 884
    .restart local v0    # "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, "cmdname":Ljava/lang/String;
    new-instance v2, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$2;

    invoke-direct {v2, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$2;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->runTspCmd(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;)V

    .line 893
    goto :goto_1e6

    .line 865
    .end local v0    # "devid":I
    .end local v1    # "cmdname":Ljava/lang/String;
    :pswitch_1d6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 868
    .local v0, "keycode":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$1;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getKeyCodePressed(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;)V

    .line 876
    nop

    .line 1206
    .end local v0    # "keycode":I
    :goto_1e6
    return-void

    nop

    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_1d6
        :pswitch_1c2
        :pswitch_1b2
        :pswitch_1a2
        :pswitch_192
        :pswitch_182
        :pswitch_172
        :pswitch_161
        :pswitch_150
        :pswitch_143
        :pswitch_136
        :pswitch_11c
        :pswitch_106
        :pswitch_e8
        :pswitch_ce
    .end packed-switch

    :sswitch_data_20a
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

    .line 816
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 844
    const-string v0, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 845
    return-object p0

    .line 847
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

    .line 851
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->registerService(Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 806
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 838
    const/4 v0, 0x1

    return v0
.end method
