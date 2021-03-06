.class public Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACMixerUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACMixerUnit"


# instance fields
.field protected mInputIDs:[B

.field protected mNumInputs:B

.field protected mNumOutputs:B

.field protected mUnitID:B


# direct methods
.method public constructor <init>(IBBI)V
    .registers 5
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "subClass"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 29
    return-void
.end method

.method protected static calcControlArraySize(II)I
    .registers 4
    .param p0, "numInputs"    # I
    .param p1, "numOutputs"    # I

    .line 48
    mul-int v0, p0, p1

    .line 49
    .local v0, "totalChannels":I
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method


# virtual methods
.method public getInputIDs()[B
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    return-object v0
.end method

.method public getNumInputs()B
    .registers 2

    .line 36
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    return v0
.end method

.method public getNumOutputs()B
    .registers 2

    .line 44
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    return v0
.end method

.method public getUnitID()B
    .registers 2

    .line 32
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mUnitID:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;

    .line 54
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mUnitID:B

    .line 55
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    .line 56
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    .line 57
    const/4 v0, 0x0

    .local v0, "input":I
    :goto_11
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    if-ge v0, v1, :cond_20

    .line 58
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 60
    .end local v0    # "input":I
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    .line 62
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mLength:I

    return v0
.end method
