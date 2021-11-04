.class public final Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
.super Ljava/lang/Object;
.source "McfAdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public accessPermission:I

.field public bleSID:I

.field public byteString:Ljava/lang/String;

.field public jsonString:Ljava/lang/String;

.field public targetDeviceBluetoothAddr:Ljava/lang/String;

.field public timeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->accessPermission:I

    .line 197
    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->timeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
    .registers 10

    .line 257
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->bleSID:I

    if-eqz v1, :cond_16

    .line 260
    new-instance v8, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    iget-object v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->byteString:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->jsonString:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->accessPermission:I

    iget v6, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->timeout:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/samsung/android/mcf/discovery/McfAdvertiseData$1;)V

    return-object v8

    .line 258
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setAdvertiseData is requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAccessPermission(I)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 3

    const/4 v0, 0x2

    if-ge p1, v0, :cond_6

    .line 235
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->accessPermission:I

    return-object p0

    .line 233
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "accessPermission is invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 4

    if-eq p2, p3, :cond_9

    .line 203
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->bleSID:I

    return-object p0

    .line 201
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong advertise data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    .line 219
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->byteString:Ljava/lang/String;

    return-object p0
.end method

.method public setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 3

    if-eqz p1, :cond_9

    .line 227
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->jsonString:Ljava/lang/String;

    return-object p0

    .line 225
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong json data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 3

    if-eqz p1, :cond_f

    .line 208
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    return-object p0

    .line 209
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "target device address is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 3

    if-ltz p1, :cond_a

    const v0, 0x5265c00

    if-gt p1, v0, :cond_a

    .line 252
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->timeout:I

    return-object p0

    .line 250
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout is out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
