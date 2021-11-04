.class public Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
.super Ljava/lang/Object;
.source "McfAdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_CONTACT_ONLY:I = 0x1

.field public static final ACCESS_CUSTOM:I = 0x2

.field public static final ACCESS_EVERYONE:I = 0x0

.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field public static final KEY_ADV_ACCESS_PERMISSION:Ljava/lang/String; = "advAccessPermission"

.field public static final KEY_BYTE_CONTENTS:Ljava/lang/String; = "byteContents"

.field public static final KEY_DEVICE_ADDR:Ljava/lang/String; = "deviceAddr"

.field public static final KEY_JSON_CONTENTS:Ljava/lang/String; = "contents"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field public static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final LONG_TIMEOUT:I = 0x36ee80

.field public static final MAX_TIMEOUT:I = 0x5265c00

.field public static final TAG:Ljava/lang/String; = "McfAdvertiseData"


# instance fields
.field public final accessPermission:I

.field public final bleSID:I

.field public byteContent:[B

.field public final byteString:Ljava/lang/String;

.field public jsonContent:Lorg/json/JSONObject;

.field public final jsonString:Ljava/lang/String;

.field public final targetDeviceBluetoothAddr:Ljava/lang/String;

.field public timeout:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    .line 108
    iput-object p2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    .line 111
    iput p5, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    .line 112
    iput p6, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/samsung/android/mcf/discovery/McfAdvertiseData$1;)V
    .registers 8

    .line 15
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 6

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    .line 117
    const-string v0, "deviceAddr"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    .line 118
    const-string v0, "byteContents"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 120
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteContent:[B

    :cond_25
    nop

    .line 122
    const-string v0, "contents"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c

    .line 125
    :try_start_36
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonContent:Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3f} :catch_40

    goto :goto_4c

    .line 127
    :catch_40
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "McfAdvertiseData"

    const-string v3, "getKeyJsonContents "

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    nop

    .line 130
    const-string v0, "advAccessPermission"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    .line 131
    const-string v0, "timeout"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    return-void
.end method


# virtual methods
.method public getAccessPermission()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    return v0
.end method

.method public getBleSID()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 4

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 176
    const-string v2, "contents"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_e
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    const-string v2, "serviceID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 180
    const-string v2, "deviceAddr"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 183
    const-string v2, "byteContents"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_27
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    const-string v2, "advAccessPermission"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    const-string v2, "timeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 158
    const-string v1, "contents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 161
    const-string v1, "byteContents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 164
    const-string v1, "deviceAddr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1b
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    const-string v1, "advAccessPermission"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    const-string v1, "timeout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getByteContent()[B
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteContent:[B

    return-object v0
.end method

.method public getByteString()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonContent()Lorg/json/JSONObject;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonString()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDeviceBluetoothAddr()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    return v0
.end method

.method public setTimeout(I)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 138
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 139
    sget-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v1, :cond_9

    goto :goto_2e

    .line 141
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2d

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "($m)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 146
    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{id=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    const-string v3, ""

    if-eqz v0, :cond_5c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", target=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    :cond_5c
    move-object v0, v3

    :goto_5d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v0, :cond_7f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", byte=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    :cond_7f
    move-object v0, v3

    :goto_80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_a1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", json=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", access="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeout="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
