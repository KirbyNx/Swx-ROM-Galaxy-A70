.class public Lcom/samsung/android/mcf/McfDevice;
.super Ljava/lang/Object;
.source "McfDevice.java"


# static fields
.field public static final CONTACTS_REQUEST:Ljava/lang/String; = "ContactRequest"

.field public static final DEVICE_ADDED:I = 0x0

.field public static final DEVICE_EVENT:I = 0x3

.field public static final DEVICE_REMOVED:I = 0x1

.field public static final DEVICE_UPDATED:I = 0x2

.field public static final INFO_TYPE_IPv4:Ljava/lang/String; = "Inet4Address"

.field public static final INFO_TYPE_IPv6:Ljava/lang/String; = "Inet6Address"

.field public static final IN_CONTACT:I = 0x1

.field public static final KEY_ADDITIONAL_AUTH_PAYLOAD:Ljava/lang/String; = "additionalAuthPayload"

.field public static final KEY_ADDITIONAL_INFO:Ljava/lang/String; = "additionalInfo"

.field public static final KEY_BLE_ADDRESS:Ljava/lang/String; = "bleAddress"

.field public static final KEY_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetoothAddress"

.field public static final KEY_BLUETOOTH_DEVICE_NAME:Ljava/lang/String; = "bluetoothDeviceName"

.field public static final KEY_CONNECTION_TYPE:Ljava/lang/String; = "connectionType"

.field public static final KEY_CONTACT_KEY:Ljava/lang/String; = "contactKey"

.field public static final KEY_CONTACT_NAME:Ljava/lang/String; = "contactName"

.field public static final KEY_CONTENTS_BYTE:Ljava/lang/String; = "contentsByte"

.field public static final KEY_CONTENTS_STRING:Ljava/lang/String; = "contentsString"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final KEY_INFO_TYPE:Ljava/lang/String; = "infoType"

.field public static final KEY_IS_INCONTACT:Ljava/lang/String; = "isInContact"

.field public static final MY_DEVICE:I = 0x2

.field public static final NOT_IN_CONTACT:I = 0x0

.field public static final SERVICE_ACTIVATE_PERMISSION:Ljava/lang/String; = "ServiceActivate"

.field public static final STATUS_TAG:Ljava/lang/String; = "McfDeviceStatus"

.field public static final TAG:Ljava/lang/String; = "McfDevice"


# instance fields
.field public mAdditionalAuthPayload:Ljava/lang/String;

.field public mAdditionalInfo:Ljava/lang/String;

.field public mBleAddress:Ljava/lang/String;

.field public mBluetoothAddress:Ljava/lang/String;

.field public mBluetoothDeviceName:Ljava/lang/String;

.field public mConnectionType:I

.field public mContactKey:Ljava/lang/String;

.field public mContactName:Ljava/lang/String;

.field public mContentsByte:Ljava/lang/String;

.field public mContentsJson:Lorg/json/JSONObject;

.field public mDeviceID:Ljava/lang/String;

.field public mInfoType:Ljava/lang/String;

.field public mIsInContact:I


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 5

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    .line 229
    const-string p1, "McfDevice"

    const-string v0, "source bundle is null, create empty object"

    invoke-static {p1, p1, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    nop

    .line 232
    const-string v0, "bluetoothAddress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 233
    const-string v0, "bluetoothDeviceName"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    .line 234
    const-string v0, "bleAddress"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    .line 235
    const-string v0, "isInContact"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/McfDevice;->mIsInContact:I

    .line 236
    const-string v0, "contactKey"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    .line 237
    const-string v0, "contactName"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContactName:Ljava/lang/String;

    .line 238
    const-string v0, "deviceId"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    .line 239
    const-string v0, "connectionType"

    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    .line 240
    const-string v0, "infoType"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    .line 241
    const-string v0, "additionalInfo"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    .line 243
    const-string v0, "contentsString"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7c

    .line 246
    :try_start_6e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_75} :catch_76

    goto :goto_7c

    .line 248
    :catch_76
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 249
    iput-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    :cond_7c
    :goto_7c
    nop

    .line 252
    const-string v0, "contentsByte"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    .line 253
    const-string v0, "additionalAuthPayload"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    .line 217
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    .line 184
    iput p4, p0, Lcom/samsung/android/mcf/McfDevice;->mIsInContact:I

    .line 185
    iput-object p5, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    .line 186
    iput-object p6, p0, Lcom/samsung/android/mcf/McfDevice;->mContactName:Ljava/lang/String;

    .line 187
    iput-object p7, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    .line 188
    iput p8, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    .line 189
    iput-object p9, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    .line 190
    iput-object p10, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    .line 191
    iput-object p11, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    return-void
.end method

.method public static createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;
    .registers 2

    if-eqz p0, :cond_8

    .line 266
    new-instance v0, Lcom/samsung/android/mcf/McfDevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfDevice;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkConnectionType(I)Z
    .registers 3

    .line 408
    iget v0, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    and-int/2addr p1, v0

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_18

    .line 537
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/mcf/McfDevice;

    if-eq v0, v1, :cond_b

    goto :goto_18

    .line 540
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/mcf/McfDevice;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public getAdditionalAuthPayload()[B
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_6
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalAuthType()I
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalInfoType()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    return-object v0
.end method

.method public getBleAddress()Ljava/lang/String;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 279
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    if-eqz v1, :cond_7b

    .line 281
    const-string v2, "bluetoothAddress"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 287
    const-string v2, "bluetoothDeviceName"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 290
    const-string v2, "bleAddress"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_20
    iget v1, p0, Lcom/samsung/android/mcf/McfDevice;->mIsInContact:I

    const-string v2, "isInContact"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 294
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 295
    const-string v2, "contactKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_30
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContactName:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 298
    const-string v2, "contactName"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_39
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 301
    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_42
    iget v1, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    const-string v2, "connectionType"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 304
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 305
    const-string v2, "infoType"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_52
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    if-eqz v1, :cond_5b

    .line 308
    const-string v2, "additionalInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_5b
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_68

    .line 311
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentsString"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_68
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 314
    const-string v2, "contentsByte"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_71
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    if-eqz v1, :cond_7a

    .line 317
    const-string v2, "additionalAuthPayload"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    return-object v0

    :cond_7b
    nop

    .line 283
    const-string v0, "McfDevice"

    const-string v1, "getBundle"

    const-string v2, "bluetooth address is null, return null"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionType()I
    .registers 2

    .line 388
    iget v0, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    return v0
.end method

.method public getContactInfo()Ljava/lang/String;
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactKey()[B
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 496
    :cond_6
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContents()Lorg/json/JSONObject;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getContentsByte()[B
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 474
    :cond_6
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContentsJson()Lorg/json/JSONObject;
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiAddress()Ljava/lang/String;
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    const-string v1, "Inet6Address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    const-string v1, "Inet4Address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return-object v0

    .line 429
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 531
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInContact()I
    .registers 2

    .line 461
    iget v0, p0, Lcom/samsung/android/mcf/McfDevice;->mIsInContact:I

    return v0
.end method

.method public setAdditionalInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 330
    iput-object p2, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    .line 331
    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    return-void
.end method

.method public setConnectionType(I)V
    .registers 2

    .line 398
    iput p1, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
