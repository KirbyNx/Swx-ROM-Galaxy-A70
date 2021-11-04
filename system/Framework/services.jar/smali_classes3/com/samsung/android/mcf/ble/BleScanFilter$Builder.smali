.class public final Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
.super Ljava/lang/Object;
.source "BleScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final LEN_IRK_OCTETS:I = 0x10


# instance fields
.field public mAddressType:I

.field public mDeviceAddress:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public mIrk:[B

.field public mManufacturerData:[B

.field public mManufacturerDataMask:[B

.field public mManufacturerId:I

.field public mPassiveScan:Z

.field public mServiceData:[B

.field public mServiceDataMask:[B

.field public mServiceDataUuid:Landroid/os/ParcelUuid;

.field public mServiceUuid:Landroid/os/ParcelUuid;

.field public mUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    .line 411
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    return-void
.end method

.method public static isAddressRandomStatic(Ljava/lang/String;)Z
    .registers 2

    .line 546
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 547
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    aget-object p0, p0, v0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method private setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 5

    .line 512
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    if-ltz p2, :cond_28

    const/4 v0, 0x1

    if-gt p2, v0, :cond_28

    if-ne p2, v0, :cond_21

    if-eqz p3, :cond_21

    .line 529
    invoke-static {p1}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->isAddressRandomStatic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    .line 530
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid combination: IRK requires either a PUBLIC or RANDOM (STATIC) Address"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 539
    :cond_21
    :goto_21
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 540
    iput p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    .line 541
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    return-object p0

    .line 519
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'addressType\' is invalid!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 514
    :cond_30
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid device address "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ble/BleScanFilter;
    .registers 18

    .line 720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    if-eqz v1, :cond_1b

    goto :goto_23

    .line 722
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one filter must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_23
    :goto_23
    new-instance v1, Lcom/samsung/android/mcf/ble/BleScanFilter;

    iget-object v3, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v6, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v7, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v8, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    iget-object v9, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    iget v10, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    iget-object v11, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    iget-object v12, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerDataMask:[B

    iget-boolean v13, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mPassiveScan:Z

    iget v14, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    iget-object v15, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/samsung/android/mcf/ble/BleScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[BLcom/samsung/android/mcf/ble/BleScanFilter$1;)V

    return-object v1
.end method

.method public enablePassiveScan()Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 2

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mPassiveScan:Z

    return-object p0
.end method

.method public setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 3

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceAddress(Ljava/lang/String;I)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 4

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceAddress(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 6

    .line 485
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    array-length v0, p3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

    .line 489
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object p1

    return-object p1

    .line 487
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'irk\' is invalid length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 2

    .line 423
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setManufacturerData(I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 3

    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    .line 651
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 653
    :cond_d
    :goto_d
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    .line 654
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    const/4 p1, 0x0

    .line 655
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 6

    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    .line 677
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_d
    if-eqz p3, :cond_26

    if-eqz p2, :cond_1e

    .line 686
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_16

    goto :goto_26

    .line 687
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 681
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :cond_26
    :goto_26
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    .line 692
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    .line 693
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 3

    if-eqz p1, :cond_a

    .line 596
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 597
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    const/4 p1, 0x0

    .line 598
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    .line 594
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 6

    if-eqz p1, :cond_22

    if-eqz p3, :cond_1b

    if-eqz p2, :cond_13

    .line 628
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_b

    goto :goto_1b

    .line 629
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for service data and service data mask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 623
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceData is null while serviceDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :cond_1b
    :goto_1b
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 634
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    .line 635
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    .line 619
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 558
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 3

    if-eqz p2, :cond_d

    if-eqz p1, :cond_5

    goto :goto_d

    .line 576
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uuid is null while uuidMask is not null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    :cond_d
    :goto_d
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 579
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method
