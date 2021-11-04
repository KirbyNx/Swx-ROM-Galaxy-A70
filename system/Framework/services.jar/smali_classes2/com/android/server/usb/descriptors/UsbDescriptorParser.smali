.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "UsbDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final DESCRIPTORS_ALLOC_SIZE:I = 0x80

.field private static final IN_HEADSET_TRIGGER:F = 0.75f

.field private static final OUT_HEADSET_TRIGGER:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "UsbDescriptorParser"


# instance fields
.field private mACInterfacesSpec:I

.field private mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

.field private mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field private final mDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceAddr:Ljava/lang/String;

.field private mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

.field private mVCInterfacesSpec:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "deviceAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 49
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    .line 56
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "deviceAddr"    # Ljava/lang/String;
    .param p2, "rawDescriptors"    # [B

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 49
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    .line 67
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDescriptors([B)V

    .line 70
    return-void
.end method

.method private allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 10
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->resetReadCount()V

    .line 128
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 129
    .local v0, "length":I
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    .line 131
    .local v1, "type":B
    invoke-static {v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->logDescriptorName(BI)V

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    const/4 v3, 0x1

    if-eq v1, v3, :cond_f6

    const/4 v4, 0x2

    const-string v5, "UsbDescriptorParser"

    if-eq v1, v4, :cond_db

    const/4 v4, 0x4

    if-eq v1, v4, :cond_c0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_a4

    const/16 v4, 0xb

    if-eq v1, v4, :cond_9d

    const/16 v4, 0x21

    if-eq v1, v4, :cond_96

    const/16 v4, 0x24

    const/16 v6, 0x10

    const/16 v7, 0xe

    if-eq v1, v4, :cond_73

    const/16 v4, 0x25

    if-eq v1, v4, :cond_33

    goto/16 :goto_ff

    .line 222
    :cond_33
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_ff

    .line 223
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    .line 224
    .local v4, "subClass":I
    if-eq v4, v3, :cond_6c

    if-eq v4, v7, :cond_5b

    if-eq v4, v6, :cond_5a

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Unparsed Class-specific Endpoint:0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 244
    :cond_5a
    goto :goto_71

    .line 230
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 235
    .local v3, "subtype":Ljava/lang/Byte;
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-static {p0, v0, v1, v5}, Lcom/android/server/usb/descriptors/UsbVCEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 237
    .end local v3    # "subtype":Ljava/lang/Byte;
    goto :goto_71

    .line 226
    :cond_6c
    invoke-static {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 227
    nop

    .line 251
    .end local v4    # "subClass":I
    :goto_71
    goto/16 :goto_ff

    .line 195
    :cond_73
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_ff

    .line 196
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    if-eq v4, v3, :cond_90

    if-eq v4, v7, :cond_8a

    if-eq v4, v6, :cond_88

    .line 215
    const-string v3, "  Unparsed Class-specific"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    goto/16 :goto_ff

    .line 212
    :cond_88
    goto/16 :goto_ff

    .line 205
    :cond_8a
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbVCInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 206
    goto/16 :goto_ff

    .line 198
    :cond_90
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 199
    goto/16 :goto_ff

    .line 181
    :cond_96
    new-instance v3, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;-><init>(IB)V

    move-object v2, v3

    .line 182
    goto :goto_ff

    .line 188
    :cond_9d
    new-instance v3, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;-><init>(IB)V

    move-object v2, v3

    .line 189
    goto :goto_ff

    .line 165
    :cond_a4
    new-instance v3, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;-><init>(IB)V

    move-object v2, v3

    .line 166
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v3, :cond_b5

    .line 167
    move-object v4, v2

    check-cast v4, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {v3, v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    goto :goto_ff

    .line 170
    :cond_b5
    const-string v3, "Endpoint Descriptor found with no associated Interface Descriptor!"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v4, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v4, p0, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_c0
    new-instance v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-object v2, v3

    .line 155
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz v4, :cond_d0

    .line 156
    invoke-virtual {v4, v3}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    goto :goto_ff

    .line 158
    :cond_d0
    const-string v3, "Interface Descriptor found with no associated Config Descriptor!"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v4, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v4, p0, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_db
    new-instance v3, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    move-object v2, v3

    .line 144
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v4, :cond_eb

    .line 145
    invoke-virtual {v4, v3}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    goto :goto_ff

    .line 147
    :cond_eb
    const-string v3, "Config Descriptor found with no associated Device Descriptor!"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v4, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v4, p0, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_f6
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-object v2, v3

    .line 140
    nop

    .line 258
    :cond_ff
    :goto_ff
    if-nez v2, :cond_107

    .line 260
    new-instance v3, Lcom/android/server/usb/descriptors/UsbUnknown;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbUnknown;-><init>(IB)V

    move-object v2, v3

    .line 263
    :cond_107
    return-object v2
.end method

.method private native getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getRawDescriptors_native(Ljava/lang/String;)[B
.end method


# virtual methods
.method public getACInterfaceDescriptors(BI)Ljava/util/ArrayList;
    .registers 8
    .param p1, "subtype"    # B
    .param p2, "subclass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 407
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_60

    .line 409
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v3, :cond_36

    .line 410
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 411
    .local v3, "acDescriptor":Lcom/android/server/usb/descriptors/UsbACInterface;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v4

    if-ne v4, p1, :cond_35

    .line 412
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v4

    if-ne v4, p2, :cond_35

    .line 413
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v3    # "acDescriptor":Lcom/android/server/usb/descriptors/UsbACInterface;
    :cond_35
    goto :goto_60

    .line 416
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Audio Interface len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    const-string v4, "UsbDescriptorParser"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_60
    :goto_60
    goto :goto_b

    .line 421
    :cond_61
    return-object v0
.end method

.method public getACInterfaceSpec()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return v0
.end method

.method public getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    return-object v0
.end method

.method public getDescriptorString(I)Ljava/lang/String;
    .registers 3
    .param p1, "stringId"    # I

    .line 337
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescriptors(B)Ljava/util/ArrayList;
    .registers 6
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 372
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    if-ne v3, p1, :cond_20

    .line 373
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_20
    goto :goto_b

    .line 376
    :cond_21
    return-object v0
.end method

.method public getDeviceAddr()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    return-object v0
.end method

.method public getInputHeadsetProbability()F
    .registers 5

    .line 663
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 664
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_8
    const/4 v0, 0x0

    .line 670
    .local v0, "probability":F
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMic()Z

    move-result v1

    .line 673
    .local v1, "hasMic":Z
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasSpeaker()Z

    move-result v2

    .line 675
    .local v2, "hasSpeaker":Z
    if-eqz v1, :cond_18

    if-eqz v2, :cond_18

    .line 676
    const/high16 v3, 0x3f400000    # 0.75f

    add-float/2addr v0, v3

    .line 679
    :cond_18
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 680
    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v0, v3

    .line 683
    :cond_23
    return v0
.end method

.method public getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;
    .registers 7
    .param p1, "usbClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 386
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_59

    .line 387
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v3, :cond_2f

    .line 388
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 389
    .local v3, "intrDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    if-ne v4, p1, :cond_2e

    .line 390
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v3    # "intrDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_2e
    goto :goto_59

    .line 393
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Interface l: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    const-string v4, "UsbDescriptorParser"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_59
    :goto_59
    goto :goto_b

    .line 398
    :cond_5a
    return-object v0
.end method

.method public getOutputHeadsetProbability()F
    .registers 9

    .line 700
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 701
    const/4 v0, 0x0

    return v0

    .line 704
    :cond_8
    const/4 v0, 0x0

    .line 708
    .local v0, "probability":F
    const/4 v1, 0x0

    .line 709
    .local v1, "hasSpeaker":Z
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 710
    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v2

    .line 712
    .local v2, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 713
    .local v4, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v5, :cond_43

    .line 714
    move-object v5, v4

    check-cast v5, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 715
    .local v5, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x301

    if-eq v6, v7, :cond_41

    .line 716
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x302

    if-eq v6, v7, :cond_41

    .line 718
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x402

    if-ne v6, v7, :cond_40

    goto :goto_41

    .line 722
    .end local v5    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_40
    goto :goto_6d

    .line 719
    .restart local v5    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_41
    :goto_41
    const/4 v1, 0x1

    .line 720
    goto :goto_6e

    .line 723
    .end local v5    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Output terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 723
    const-string v6, "UsbDescriptorParser"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .end local v4    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_6d
    goto :goto_14

    .line 728
    :cond_6e
    :goto_6e
    if-eqz v1, :cond_73

    .line 729
    const/high16 v3, 0x3f400000    # 0.75f

    add-float/2addr v0, v3

    .line 732
    :cond_73
    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 733
    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v0, v3

    .line 736
    :cond_7e
    return v0
.end method

.method public getParsingSpec()I
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getRawDescriptors()[B
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors_native(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getUsbSpec()I
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_9

    .line 84
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    return v0

    .line 86
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getVCInterfaceSpec()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    return v0
.end method

.method public hasAudioCapture()Z
    .registers 2

    .line 593
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    move-result v0

    return v0
.end method

.method public hasAudioInterface()Z
    .registers 4

    .line 560
    nop

    .line 561
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 562
    .local v1, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method public hasAudioPlayback()Z
    .registers 2

    .line 586
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    move-result v0

    return v0
.end method

.method public hasAudioTerminal(I)Z
    .registers 6
    .param p1, "subType"    # I

    .line 569
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 570
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v2, :cond_2a

    .line 571
    move-object v2, v1

    check-cast v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    move-object v2, v1

    check-cast v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 573
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v2

    if-ne v2, p1, :cond_2a

    .line 575
    return v3

    .line 578
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_2a
    goto :goto_6

    .line 579
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public hasHIDInterface()Z
    .registers 3

    .line 624
    nop

    .line 625
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 626
    .local v0, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public hasInput()Z
    .registers 9

    .line 434
    nop

    .line 435
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v0

    .line 437
    .local v0, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    const/4 v1, 0x0

    .line 438
    .local v1, "hasInput":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 439
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_30

    .line 440
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 442
    .local v4, "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    .line 446
    .local v5, "type":I
    and-int/lit16 v6, v5, -0x100

    .line 447
    .local v6, "terminalCategory":I
    const/16 v7, 0x100

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x300

    if-eq v6, v7, :cond_2f

    .line 450
    const/4 v1, 0x1

    .line 451
    goto :goto_5b

    .line 453
    .end local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    .end local v5    # "type":I
    .end local v6    # "terminalCategory":I
    :cond_2f
    goto :goto_5a

    .line 454
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Input terminal l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 454
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_5a
    goto :goto_c

    .line 462
    :cond_5b
    :goto_5b
    return v1
.end method

.method public hasMIDIInterface()Z
    .registers 8

    .line 642
    nop

    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 644
    .local v1, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 646
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_26

    .line 647
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 648
    .local v4, "interfaceDescr":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    .line 649
    return v0

    .line 651
    .end local v4    # "interfaceDescr":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_25
    goto :goto_50

    .line 652
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Class Interface l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 652
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_50
    goto :goto_a

    .line 656
    :cond_51
    const/4 v0, 0x0

    return v0
.end method

.method public hasMic()Z
    .registers 8

    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, "hasMic":Z
    nop

    .line 509
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 511
    .local v1, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 512
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_43

    .line 513
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 514
    .local v4, "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x201

    if-eq v5, v6, :cond_41

    .line 515
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x402

    if-eq v5, v6, :cond_41

    .line 516
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x400

    if-eq v5, v6, :cond_41

    .line 517
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x603

    if-ne v5, v6, :cond_40

    goto :goto_41

    .line 521
    .end local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_40
    goto :goto_6d

    .line 518
    .restart local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_41
    :goto_41
    const/4 v0, 0x1

    .line 519
    goto :goto_6e

    .line 522
    .end local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Input terminal l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 522
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_6d
    goto :goto_c

    .line 526
    :cond_6e
    :goto_6e
    return v0
.end method

.method public hasOutput()Z
    .registers 9

    .line 472
    nop

    .line 473
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v0

    .line 475
    .local v0, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    const/4 v1, 0x0

    .line 476
    .local v1, "hasOutput":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 477
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_30

    .line 478
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 480
    .local v4, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    .line 484
    .local v5, "type":I
    and-int/lit16 v6, v5, -0x100

    .line 485
    .local v6, "terminalCategory":I
    const/16 v7, 0x100

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x200

    if-eq v6, v7, :cond_2f

    .line 488
    const/4 v1, 0x1

    .line 489
    goto :goto_5b

    .line 491
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    .end local v5    # "type":I
    .end local v6    # "terminalCategory":I
    :cond_2f
    goto :goto_5a

    .line 492
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Input terminal l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 492
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_5a
    goto :goto_c

    .line 499
    :cond_5b
    :goto_5b
    return v1
.end method

.method public hasSpeaker()Z
    .registers 8

    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, "hasSpeaker":Z
    nop

    .line 536
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 538
    .local v1, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 539
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_3b

    .line 540
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 541
    .local v4, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x301

    if-eq v5, v6, :cond_39

    .line 542
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x302

    if-eq v5, v6, :cond_39

    .line 543
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x402

    if-ne v5, v6, :cond_38

    goto :goto_39

    .line 547
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_38
    goto :goto_65

    .line 544
    .restart local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_39
    :goto_39
    const/4 v0, 0x1

    .line 545
    goto :goto_66

    .line 548
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Output terminal l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 548
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_65
    goto :goto_c

    .line 553
    :cond_66
    :goto_66
    return v0
.end method

.method public hasStorageInterface()Z
    .registers 3

    .line 633
    nop

    .line 634
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 635
    .local v0, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public hasVideoCapture()Z
    .registers 4

    .line 600
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 601
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    if-eqz v2, :cond_18

    .line 602
    const/4 v0, 0x1

    return v0

    .line 604
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_18
    goto :goto_6

    .line 605
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public hasVideoPlayback()Z
    .registers 4

    .line 612
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 613
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    if-eqz v2, :cond_18

    .line 614
    const/4 v0, 0x1

    return v0

    .line 616
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_18
    goto :goto_6

    .line 617
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public isInputHeadset()Z
    .registers 3

    .line 693
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOutputHeadset()Z
    .registers 3

    .line 746
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public parseDescriptors([B)V
    .registers 12
    .param p1, "descriptors"    # [B

    .line 278
    const-string v0, "UsbDescriptorParser"

    new-instance v1, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 279
    .local v1, "stream":Lcom/android/server/usb/descriptors/ByteStream;
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v2

    if-lez v2, :cond_ba

    .line 280
    const/4 v2, 0x0

    .line 282
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :try_start_e
    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move-object v2, v3

    .line 285
    goto :goto_1a

    .line 283
    :catch_14
    move-exception v3

    .line 284
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "Exception allocating USB descriptor."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1a
    if-eqz v2, :cond_b8

    .line 290
    :try_start_1c
    invoke-virtual {v2, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 293
    invoke-virtual {v2, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_2c
    .catchall {:try_start_1c .. :try_end_22} :catchall_29

    .line 318
    :goto_22
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    goto/16 :goto_b8

    .line 318
    :catchall_29
    move-exception v0

    goto/16 :goto_b2

    .line 294
    :catch_2c
    move-exception v3

    .line 296
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_2d
    invoke-virtual {v2, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception parsing USB descriptors. type:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 306
    .local v4, "stackElems":[Ljava/lang/StackTraceElement;
    array-length v5, v4
    :try_end_59
    .catchall {:try_start_2d .. :try_end_59} :catchall_29

    const-string v6, " @ "

    const-string v7, "  class:"

    if-lez v5, :cond_84

    .line 307
    :try_start_5f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v8

    .line 308
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_84
    array-length v5, v4

    const/4 v8, 0x1

    if-le v5, v8, :cond_ac

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v8

    .line 312
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_ac
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/android/server/usb/descriptors/UsbDescriptor;->setStatus(I)V
    :try_end_b0
    .catchall {:try_start_5f .. :try_end_b0} :catchall_29

    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "stackElems":[Ljava/lang/StackTraceElement;
    goto/16 :goto_22

    .line 318
    :goto_b2
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    throw v0

    .line 321
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_b8
    :goto_b8
    goto/16 :goto_7

    .line 325
    :cond_ba
    return-void
.end method

.method public setACInterfaceSpec(I)V
    .registers 2
    .param p1, "spec"    # I

    .line 91
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 92
    return-void
.end method

.method public setVCInterfaceSpec(I)V
    .registers 2
    .param p1, "spec"    # I

    .line 99
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    .line 100
    return-void
.end method

.method public toAndroidUsbDeviceBuilder()Landroid/hardware/usb/UsbDevice$Builder;
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    const-string v1, "UsbDescriptorParser"

    if-nez v0, :cond_e

    .line 355
    const-string/jumbo v0, "toAndroidUsbDevice() ERROR - No Device Descriptor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    return-object v0

    .line 359
    :cond_e
    invoke-virtual {v0, p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbDevice$Builder;

    move-result-object v0

    .line 360
    .local v0, "builder":Landroid/hardware/usb/UsbDevice$Builder;
    if-nez v0, :cond_1a

    .line 361
    const-string/jumbo v2, "toAndroidUsbDevice() ERROR Creating Device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1a
    return-object v0
.end method
