.class public Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;
.super Ljava/lang/Object;
.source "BluetoothCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MfData"
.end annotation


# static fields
.field public static MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I = 0x5

.field public static final MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I = 0x12

.field public static final MANUFACTURER_LENGTH_SS_LE_DEVICE:I = 0x6

.field public static final MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I = 0x1

.field public static final MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I = 0x2

.field public static final MANUFACTURER_OFFSET_OLD_DEVICE_ID:I = 0x7

.field public static final MANUFACTURER_OFFSET_OLD_SERVICE_ID:I = 0x5

.field public static final MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I = 0x7

.field public static final MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I = 0x1f

.field public static final MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I = 0x1

.field public static final MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I = 0x1

.field public static MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I = 0x8

.field public static MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I = 0x8

.field public static MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I = 0x8

.field public static final MANUFACTURER_OFFSET_SS_LE_FEATURES:I = 0x8

.field public static MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I = 0x8

.field public static MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I = 0x8

.field public static final MANUFACTURER_OFFSET_SS_SERVICE_ID:I = 0x5

.field public static final MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B = 0x10t

.field public static final MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B = 0x8t

.field public static final MANUFACTURER_SS_LE_DEVICE_FIELD:B = 0x4t

.field public static final MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B = 0x1t

.field public static final MANUFACTURER_SS_LE_PROXIMITY_FIELD:B = 0x2t

.field public static final MANUFACTURER_TYPE_DEFAULT:I = 0x0

.field public static final MANUFACTURER_TYPE_OLD:I = 0x1

.field public static final MANUFACTURER_TYPE_SS_BREDR:I = 0x2

.field public static final MANUFACTURER_TYPE_SS_LE:I = 0x3


# instance fields
.field public mDeviceId:[B

.field public mManufacturerRawData:[B

.field public mManufacturerType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerRawData:[B

    .line 387
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mDeviceId:[B

    .line 395
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setManufacturerRawData([B)V

    .line 396
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setManufacturerType([B)V

    .line 397
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setDeviceId([B)V

    return-void
.end method

.method private isSupportFeature(B)Z
    .registers 4

    .line 489
    iget v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    goto :goto_13

    .line 491
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerRawData:[B

    if-eqz v0, :cond_13

    const/16 v1, 0x8

    .line 492
    aget-byte v0, v0, v1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method private setDeviceId([B)V
    .registers 5

    .line 510
    iget v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    goto :goto_32

    :cond_c
    const/16 v0, 0x10

    .line 512
    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 513
    sget v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setDeviceId([BI)V

    goto :goto_32

    :cond_1b
    nop

    .line 521
    const/16 v0, 0x1f

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_32

    .line 523
    array-length v2, p1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_32

    const/16 v0, 0x20

    .line 525
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setDeviceId([BI)V

    goto :goto_32

    :cond_2e
    const/4 v0, 0x7

    .line 518
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->setDeviceId([BI)V

    :cond_32
    :goto_32
    return-void
.end method

.method private setDeviceId([BI)V
    .registers 6

    .line 506
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mDeviceId:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setManufacturerRawData([B)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerRawData:[B

    return-void
.end method

.method private setManufacturerType([B)V
    .registers 11

    .line 433
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_9

    .line 434
    iput v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    return-void

    :cond_9
    nop

    .line 438
    const/4 v0, 0x5

    aget-byte v3, p1, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_19

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    if-ne v3, v4, :cond_19

    .line 441
    iput v5, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    goto :goto_6d

    :cond_19
    nop

    .line 442
    aget-byte v3, p1, v0

    const/4 v6, 0x7

    if-ne v3, v2, :cond_26

    aget-byte v3, p1, v6

    if-nez v3, :cond_26

    .line 445
    iput v4, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    goto :goto_6d

    :cond_26
    nop

    .line 446
    aget-byte v3, p1, v0

    if-ne v3, v2, :cond_6a

    aget-byte v3, p1, v6

    if-ne v3, v4, :cond_6a

    const/4 v3, 0x3

    .line 449
    iput v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    .line 452
    const/16 v3, 0x8

    aget-byte v6, p1, v3

    :goto_36
    if-ge v1, v0, :cond_6d

    shl-int v7, v5, v1

    int-to-byte v7, v7

    and-int/2addr v7, v6

    int-to-byte v7, v7

    if-eq v7, v5, :cond_63

    if-eq v7, v4, :cond_5e

    const/4 v8, 0x4

    if-eq v7, v8, :cond_59

    if-eq v7, v3, :cond_54

    const/16 v8, 0x10

    if-eq v7, v8, :cond_4b

    goto :goto_67

    .line 476
    :cond_4b
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 477
    aget-byte v7, p1, v2

    add-int/2addr v7, v5

    sput v7, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v2, v7

    goto :goto_67

    .line 472
    :cond_54
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    add-int/lit8 v2, v2, 0x12

    goto :goto_67

    .line 468
    :cond_59
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    add-int/lit8 v2, v2, 0x6

    goto :goto_67

    .line 464
    :cond_5e
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_67

    .line 460
    :cond_63
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    add-int/lit8 v2, v2, 0x1

    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_6a
    nop

    .line 484
    iput v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    :cond_6d
    :goto_6d
    return-void
.end method


# virtual methods
.method public getDeviceId()[B
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mDeviceId:[B

    return-object v0
.end method

.method public getManufacturerRawData()[B
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerRawData:[B

    return-object v0
.end method

.method public getManufacturerType()I
    .registers 2

    .line 425
    iget v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->mManufacturerType:I

    return v0
.end method
