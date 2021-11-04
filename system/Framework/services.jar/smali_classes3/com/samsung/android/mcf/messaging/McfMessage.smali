.class public Lcom/samsung/android/mcf/messaging/McfMessage;
.super Ljava/lang/Object;
.source "McfMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    }
.end annotation


# static fields
.field public static final KEY_DEVICE_ADDR:Ljava/lang/String; = "deviceAddr"

.field public static final KEY_DEVICE_BLE_ADDR:Ljava/lang/String; = "deviceBleAddr"

.field public static final KEY_JSON_CONTENTS:Ljava/lang/String; = "contents"

.field public static final KEY_MESSAGE_NET:Ljava/lang/String; = "messageNet"

.field public static final KEY_NEED_RESPONSE:Ljava/lang/String; = "needResponse"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field public static final NET_TYPE_BLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "McfMessage"


# instance fields
.field public final mBleSID:I

.field public mJsonContent:Lorg/json/JSONObject;

.field public final mJsonString:Ljava/lang/String;

.field public mNeedResponse:Z

.field public final mNetworkType:I

.field public final mTargetBleAddress:Ljava/lang/String;

.field public final mTargetBluetoothAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    .line 140
    iput p2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    .line 141
    iput-object p3, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    .line 144
    iput-boolean p6, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/BaseBundle;)V
    .registers 6

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    .line 162
    const-string v0, "messageNet"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    .line 163
    const-string v0, "deviceBleAddr"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    .line 164
    const-string v0, "deviceAddr"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    .line 165
    const-string v0, "contents"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b

    .line 168
    :try_start_35
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonContent:Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3e} :catch_3f

    goto :goto_4b

    .line 170
    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "McfMessage"

    const-string v3, "McfMessage "

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    nop

    .line 173
    const-string v0, "needResponse"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    return-void
.end method

.method public static createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/messaging/McfMessage;
    .registers 2

    if-eqz p0, :cond_8

    .line 214
    new-instance v0, Lcom/samsung/android/mcf/messaging/McfMessage;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/messaging/McfMessage;-><init>(Landroid/os/BaseBundle;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBleSid()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    return v0
.end method

.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    if-nez p1, :cond_7

    .line 228
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 230
    :cond_7
    iget v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    const-string v1, "serviceID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 232
    const-string v1, "contents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 235
    const-string v1, "deviceAddr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 238
    const-string v1, "deviceBleAddr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_29
    iget v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    const-string v1, "messageNet"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    iget-boolean v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    const-string v1, "needResponse"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public getBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 252
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 253
    iget v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    const-string v2, "serviceID"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 255
    const-string v2, "contents"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 258
    const-string v2, "deviceAddr"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 261
    const-string v2, "deviceBleAddr"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_27
    iget v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    const-string v2, "messageNet"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getJsonContent()Lorg/json/JSONObject;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonString()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageNetType()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    return v0
.end method

.method public getTargetDeviceBleAddr()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDeviceBluetoothAddr()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public needResponse()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 180
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    const/16 v1, 0x11

    const/16 v2, 0xc

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eqz v0, :cond_34

    .line 181
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 182
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    goto :goto_35

    .line 183
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_34

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "($m)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_34
    move-object v0, v4

    :goto_35
    nop

    .line 188
    iget-object v5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v5, :cond_62

    .line 189
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 190
    iget-object v4, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    goto :goto_62

    .line 191
    :cond_43
    iget-object v5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_62

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "($m-ble)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    :cond_62
    :goto_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "McfMessage { i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", bt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ", ble="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_b3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", j="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b5

    :cond_b3
    const-string v0, ""

    :goto_b5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
