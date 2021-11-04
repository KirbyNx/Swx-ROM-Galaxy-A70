.class public Lcom/samsung/android/mcf/ble/BleScanFilter;
.super Ljava/lang/Object;
.source "BleScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_TYPE_PUBLIC:I = 0x0

.field public static final ADDRESS_TYPE_RANDOM:I = 0x1

.field public static final KEY_BLE_SCAN_FILTER_ADDRESS_TYPE:Ljava/lang/String; = "ble_Scan_AddressType"

.field public static final KEY_BLE_SCAN_FILTER_DEVICE_ADDR:Ljava/lang/String; = "ble_Scan_DeviceAddr"

.field public static final KEY_BLE_SCAN_FILTER_DEVICE_NAME:Ljava/lang/String; = "ble_Scan_DeviceName"

.field public static final KEY_BLE_SCAN_FILTER_IRK:Ljava/lang/String; = "ble_Scan_IRK"

.field public static final KEY_BLE_SCAN_FILTER_MF_DATA:Ljava/lang/String; = "ble_Scan_Mf_Data"

.field public static final KEY_BLE_SCAN_FILTER_MF_DATA_MASK:Ljava/lang/String; = "ble_Scan_Mf_DataMask"

.field public static final KEY_BLE_SCAN_FILTER_MF_ID:Ljava/lang/String; = "ble_Scan_Mf_Id"

.field public static final KEY_BLE_SCAN_FILTER_PASSIVE_SCAN:Ljava/lang/String; = "ble_Scan_passiveScan"

.field public static final KEY_BLE_SCAN_FILTER_SDATA:Ljava/lang/String; = "ble_Scan_SData"

.field public static final KEY_BLE_SCAN_FILTER_SDATA_MASK:Ljava/lang/String; = "ble_Scan_SDataMask"

.field public static final KEY_BLE_SCAN_FILTER_SDATA_UUID:Ljava/lang/String; = "ble_Scan_DataUuid"

.field public static final KEY_BLE_SCAN_FILTER_UUID:Ljava/lang/String; = "ble_Scan_Uuid"

.field public static final KEY_BLE_SCAN_FILTER_UUID_MASK:Ljava/lang/String; = "ble_Scan_UuidMask"

.field public static final TAG:Ljava/lang/String; = "BleScanFilter"


# instance fields
.field public final mAddressType:I

.field public final mDeviceAddress:Ljava/lang/String;

.field public final mDeviceName:Ljava/lang/String;

.field public final mIrk:[B

.field public final mManufacturerData:[B

.field public final mManufacturerDataMask:[B

.field public final mManufacturerId:I

.field public final mPassiveScan:Z

.field public final mServiceData:[B

.field public final mServiceDataMask:[B

.field public mServiceDataUuid:Landroid/os/ParcelUuid;

.field public mServiceUuid:Landroid/os/ParcelUuid;

.field public mServiceUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v0, "ble_Scan_DeviceName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    .line 131
    const-string v0, "ble_Scan_DeviceAddr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 133
    const-string v0, "ble_Scan_Uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 135
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    :cond_21
    nop

    .line 137
    const-string v0, "ble_Scan_UuidMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 139
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    :cond_30
    nop

    .line 142
    const-string v0, "ble_Scan_DataUuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 144
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    :cond_3f
    nop

    .line 146
    const-string v0, "ble_Scan_SData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    .line 147
    const-string v0, "ble_Scan_SDataMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    .line 149
    const-string v0, "ble_Scan_Mf_Id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    .line 150
    const-string v0, "ble_Scan_Mf_Data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    .line 151
    const-string v0, "ble_Scan_Mf_DataMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    .line 152
    const-string v0, "ble_Scan_passiveScan"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    .line 154
    const-string v0, "ble_Scan_AddressType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    .line 155
    const-string v0, "ble_Scan_IRK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[B)V
    .registers 14

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 101
    iput-object p4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 103
    iput-object p5, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 104
    iput-object p6, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    .line 105
    iput-object p7, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    .line 107
    iput p8, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    .line 108
    iput-object p9, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    .line 109
    iput-object p10, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    .line 111
    iput-boolean p11, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    .line 112
    iput p12, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    .line 113
    iput-object p13, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[BLcom/samsung/android/mcf/ble/BleScanFilter$1;)V
    .registers 15

    .line 35
    invoke-direct/range {p0 .. p13}, Lcom/samsung/android/mcf/ble/BleScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[B)V

    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter;
    .registers 14

    const-string v0, "ble_Scan_Mf_DataMask"

    const-string v1, "ble_Scan_Mf_Data"

    const-string v2, "ble_Scan_Mf_Id"

    const-string v3, "ble_Scan_SDataMask"

    const-string v4, "ble_Scan_SData"

    const-string v5, "ble_Scan_DataUuid"

    const-string v6, "ble_Scan_UuidMask"

    const-string v7, "ble_Scan_Uuid"

    const-string v8, "ble_Scan_DeviceAddr"

    const-string v9, "ble_Scan_DeviceName"

    .line 249
    const/4 v10, 0x0

    :try_start_15
    new-instance v11, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-direct {v11}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V

    .line 251
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 253
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-virtual {v11, p0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    :cond_2c
    nop

    .line 256
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 257
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-virtual {v11, p0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    :cond_3a
    nop

    .line 262
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 263
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    goto :goto_4b

    .line 262
    :cond_4a
    move-object p0, v10

    .line 263
    :goto_4b
    nop

    .line 266
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 267
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    goto :goto_5c

    .line 266
    :cond_5b
    move-object v6, v10

    .line 267
    :goto_5c
    if-eqz p0, :cond_68

    if-eqz v6, :cond_64

    .line 272
    invoke-virtual {v11, p0, v6}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_67

    .line 274
    :cond_64
    invoke-virtual {v11, p0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 272
    :goto_67
    nop

    .line 274
    :cond_68
    nop

    .line 279
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_78

    .line 280
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    goto :goto_79

    .line 279
    :cond_78
    move-object p0, v10

    .line 280
    :goto_79
    nop

    .line 283
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 284
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_8a

    .line 283
    :cond_89
    move-object v4, v10

    .line 284
    :goto_8a
    nop

    .line 287
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 288
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_9b

    .line 287
    :cond_9a
    move-object v3, v10

    .line 288
    :goto_9b
    if-eqz p0, :cond_a7

    if-eqz v3, :cond_a3

    .line 293
    invoke-virtual {v11, p0, v4, v3}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_a6

    .line 295
    :cond_a3
    invoke-virtual {v11, p0, v4}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 293
    :goto_a6
    nop

    .line 295
    :cond_a7
    nop

    .line 300
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b3

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_b4

    :cond_b3
    const/4 p0, -0x1

    .line 302
    :goto_b4
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 303
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_c4

    .line 302
    :cond_c3
    move-object v1, v10

    .line 303
    :goto_c4
    nop

    .line 305
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 306
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_d5

    .line 305
    :cond_d4
    move-object v0, v10

    .line 306
    :goto_d5
    if-ltz p0, :cond_e1

    if-eqz v0, :cond_dd

    .line 311
    invoke-virtual {v11, p0, v1, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_e0

    .line 313
    :cond_dd
    invoke-virtual {v11, p0, v1}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 311
    :goto_e0
    nop

    .line 316
    :cond_e1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_f2

    const-string p0, "ble_Scan_passiveScan"

    invoke-virtual {v12, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f2

    .line 317
    invoke-virtual {v11}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->enablePassiveScan()Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 319
    :cond_f2
    invoke-virtual {v11}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object p0
    :try_end_f6
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_f6} :catch_f9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_f6} :catch_f7

    return-object p0

    :catch_f7
    move-exception p0

    goto :goto_fa

    .line 321
    :catch_f9
    move-exception p0

    :goto_fa
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanFilter"

    const-string v1, "BleScanFilter - "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    if-nez p1, :cond_7

    .line 164
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 167
    const-string v1, "ble_Scan_DeviceName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 170
    const-string v1, "ble_Scan_DeviceAddr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_26

    .line 173
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ble_Scan_Uuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_33

    .line 176
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ble_Scan_UuidMask"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_33
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_40

    .line 179
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ble_Scan_DataUuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_40
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    if-eqz v0, :cond_49

    .line 183
    const-string v1, "ble_Scan_SData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 185
    :cond_49
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    if-eqz v0, :cond_52

    .line 186
    const-string v1, "ble_Scan_SDataMask"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 189
    :cond_52
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    const-string v1, "ble_Scan_Mf_Id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-eqz v0, :cond_62

    .line 191
    const-string v1, "ble_Scan_Mf_Data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 193
    :cond_62
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    if-eqz v0, :cond_6b

    .line 194
    const-string v1, "ble_Scan_Mf_DataMask"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 196
    :cond_6b
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v0, :cond_74

    .line 197
    const-string v1, "ble_Scan_passiveScan"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    :cond_74
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    const-string v1, "ble_Scan_AddressType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz v0, :cond_84

    .line 202
    const-string v1, "ble_Scan_IRK"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_84
    return-object p1
.end method

.method public getIrk()[B
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    return-object v0
.end method

.method public isOnlyIrkFilter()Z
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public synthetic lambda$toScanFilter$0$BleScanFilter(Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {p1, p2, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method public synthetic lambda$toScanFilter$1$BleScanFilter(Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, p2, v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method public synthetic lambda$toScanFilter$2$BleScanFilter(Landroid/bluetooth/le/ScanFilter$Builder;[B)V
    .registers 5

    .line 216
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, v0, p2, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 4

    .line 331
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 333
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_7} :catch_9f

    if-eqz v1, :cond_10

    const-string v1, "ble_Scan_DeviceName"

    .line 334
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_12} :catch_9f

    if-eqz v1, :cond_1b

    const-string v1, "ble_Scan_DeviceAddr"

    .line 337
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1d} :catch_9f

    if-eqz v1, :cond_2a

    const-string v1, "ble_Scan_Uuid"

    .line 340
    :try_start_21
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2c} :catch_9f

    if-eqz v1, :cond_39

    const-string v1, "ble_Scan_UuidMask"

    .line 343
    :try_start_30
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    :cond_39
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3b} :catch_9f

    if-eqz v1, :cond_48

    const-string v1, "ble_Scan_DataUuid"

    .line 346
    :try_start_3f
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    :cond_48
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_4a} :catch_9f

    if-eqz v1, :cond_57

    const-string v1, "ble_Scan_SData"

    .line 349
    :try_start_4e
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    :cond_57
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_59} :catch_9f

    if-eqz v1, :cond_66

    const-string v1, "ble_Scan_SDataMask"

    .line 352
    :try_start_5d
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    :cond_66
    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_68} :catch_9f

    const/4 v2, -0x1

    if-eq v1, v2, :cond_72

    const-string v1, "ble_Scan_Mf_Id"

    .line 355
    :try_start_6d
    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    :cond_72
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_74} :catch_9f

    if-eqz v1, :cond_81

    const-string v1, "ble_Scan_Mf_Data"

    .line 358
    :try_start_78
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    :cond_81
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_83} :catch_9f

    if-eqz v1, :cond_90

    const-string v1, "ble_Scan_Mf_DataMask"

    .line 361
    :try_start_87
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :cond_90
    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v1, :cond_9a

    const-string v1, "ble_Scan_passiveScan"

    const/4 v2, 0x1

    .line 364
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 366
    :cond_9a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_9e} :catch_9f

    return-object v0

    .line 368
    :catch_9f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleScanFilter"

    const-string v2, "toJsonObject : "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toScanFilter()Landroid/bluetooth/le/ScanFilter;
    .registers 4

    .line 212
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$1mZx_Mg2uxmETCe2bp5-hcoGgSo;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$1mZx_Mg2uxmETCe2bp5-hcoGgSo;-><init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 214
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$v4mZelM0SGxjX6hi9fTyySHVYYY;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$v4mZelM0SGxjX6hi9fTyySHVYYY;-><init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$O8E2mJHmXSxF-ipVZznykbHw5Wg;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$O8E2mJHmXSxF-ipVZznykbHw5Wg;-><init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 217
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/mcf/ble/-$$Lambda$iy0evLyQHB2Ty7HQeehtRhUsGNc;

    invoke-direct {v2, v0}, Lcom/samsung/android/mcf/ble/-$$Lambda$iy0evLyQHB2Ty7HQeehtRhUsGNc;-><init>(Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 218
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4d

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v1, :cond_4d

    .line 219
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->semEnablePassiveScan()Landroid/bluetooth/le/ScanFilter$Builder;

    .line 221
    :cond_4d
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-nez v1, :cond_62

    .line 222
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/mcf/ble/-$$Lambda$4GFSf9sOg2xuF0IEbvA59Ho20XA;

    invoke-direct {v2, v0}, Lcom/samsung/android/mcf/ble/-$$Lambda$4GFSf9sOg2xuF0IEbvA59Ho20XA;-><init>(Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 228
    :cond_62
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleScanFilter{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    const-string v2, ""

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    move-object v1, v2

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SUuidMask="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_40
    move-object v1, v2

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v1, :cond_4b

    const-string v1, ", Passive=true"

    goto :goto_4c

    :cond_4b
    move-object v1, v2

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SDUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_68

    :cond_67
    move-object v1, v2

    :goto_68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    sget-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v1, :cond_180

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    if-eqz v0, :cond_97

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SD="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_98

    :cond_97
    move-object v0, v2

    :goto_98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    if-eqz v0, :cond_b7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SDMask="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    .line 382
    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b8

    :cond_b7
    move-object v0, v2

    :goto_b8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", MId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    .line 383
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    :cond_d8
    move-object v0, v2

    :goto_d9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-eqz v0, :cond_f8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", MD="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    .line 384
    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f9

    :cond_f8
    move-object v0, v2

    :goto_f9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    if-eqz v0, :cond_118

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", MDMask="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    .line 386
    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_119

    :cond_118
    move-object v0, v2

    :goto_119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_13e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Addr="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", AddrType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13f

    :cond_13e
    move-object v0, v2

    :goto_13f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz v0, :cond_15e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Irk="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    .line 388
    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15f

    :cond_15e
    move-object v0, v2

    :goto_15f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_179

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
