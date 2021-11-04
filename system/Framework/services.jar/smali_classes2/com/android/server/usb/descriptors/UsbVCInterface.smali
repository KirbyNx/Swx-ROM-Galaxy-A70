.class public abstract Lcom/android/server/usb/descriptors/UsbVCInterface;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbVCInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbVCInterface"

.field public static final VCI_EXTENSION_UNIT:B = 0x6t

.field public static final VCI_INPUT_TERMINAL:B = 0x2t

.field public static final VCI_OUTPUT_TERMINAL:B = 0x3t

.field public static final VCI_PROCESSING_UNIT:B = 0x5t

.field public static final VCI_SELECTOR_UNIT:B = 0x4t

.field public static final VCI_UNDEFINED:B = 0x0t

.field public static final VCI_VEADER:B = 0x1t


# instance fields
.field protected final mSubtype:B


# direct methods
.method public constructor <init>(IBB)V
    .registers 4
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 42
    iput-byte p3, p0, Lcom/android/server/usb/descriptors/UsbVCInterface;->mSubtype:B

    .line 43
    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 9
    .param p0, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;
    .param p2, "length"    # I
    .param p3, "type"    # B

    .line 50
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    .line 51
    .local v0, "subtype":B
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object v1

    .line 55
    .local v1, "interfaceDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_50

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Video Class Interface subtype: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    const-string v4, "UsbVCInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v2

    .line 104
    :pswitch_27
    goto :goto_4e

    .line 98
    :pswitch_28
    new-instance v2, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;-><init>(IBB)V

    return-object v2

    .line 92
    :pswitch_2e
    new-instance v2, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;-><init>(IBB)V

    return-object v2

    .line 86
    :pswitch_34
    new-instance v2, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;-><init>(IBB)V

    return-object v2

    .line 80
    :pswitch_3a
    new-instance v2, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;-><init>(IBB)V

    return-object v2

    .line 68
    :pswitch_40
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v2

    .line 69
    .local v2, "vcInterfaceSpec":I
    invoke-virtual {p0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->setVCInterfaceSpec(I)V

    .line 73
    new-instance v3, Lcom/android/server/usb/descriptors/UsbVCHeader;

    invoke-direct {v3, p2, p3, v0, v2}, Lcom/android/server/usb/descriptors/UsbVCHeader;-><init>(IBBI)V

    return-object v3

    .line 61
    .end local v2    # "vcInterfaceSpec":I
    :pswitch_4d
    nop

    .line 112
    :goto_4e
    return-object v2

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_27
    .end packed-switch
.end method
