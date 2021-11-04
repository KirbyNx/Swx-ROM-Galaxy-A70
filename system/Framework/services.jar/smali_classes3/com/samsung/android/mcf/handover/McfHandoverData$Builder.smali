.class public final Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
.super Ljava/lang/Object;
.source "McfHandoverData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/handover/McfHandoverData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public bleSID:I

.field public connectionType:I

.field public jsonString:Ljava/lang/String;

.field public targetDeviceBluetoothAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/handover/ConnectionType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/handover/McfHandoverData;
    .registers 8

    .line 149
    iget v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->bleSID:I

    if-eqz v1, :cond_12

    .line 152
    new-instance v6, Lcom/samsung/android/mcf/handover/McfHandoverData;

    iget-object v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->jsonString:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/handover/McfHandoverData;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/handover/McfHandoverData$1;)V

    return-object v6

    .line 150
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setAdvertiseData is requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnectionType(I)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 2

    .line 143
    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    return-object p0
.end method

.method public setConnectionType(Lcom/samsung/android/mcf/handover/ConnectionType;)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 2

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/ConnectionType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    return-object p0
.end method

.method public setHandoverData(I)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 4

    .line 117
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->bleSID:I

    return-object p0
.end method

.method public setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 3

    if-eqz p1, :cond_9

    .line 133
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->jsonString:Ljava/lang/String;

    return-object p0

    .line 131
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong json data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 3

    if-eqz p1, :cond_f

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    return-object p0

    .line 123
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "target device address is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
