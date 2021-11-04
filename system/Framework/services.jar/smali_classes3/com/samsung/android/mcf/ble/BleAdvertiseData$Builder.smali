.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
.super Ljava/lang/Object;
.source "BleAdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleAdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mIncludeDeviceName:Z

.field public mManufacturerId:I

.field public mManufacturerSpecificData:[B

.field public mServiceData:[B

.field public mServiceDataUuid:Landroid/os/ParcelUuid;

.field public mServiceUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mIncludeDeviceName:Z

    return-void
.end method


# virtual methods
.method public addManufacturerData(I[B)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .registers 5

    if-ltz p1, :cond_11

    if-eqz p2, :cond_9

    .line 307
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerId:I

    .line 308
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerSpecificData:[B

    return-object p0

    .line 305
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manufacturerSpecificData is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid manufacturerId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addServiceData(Landroid/os/ParcelUuid;[B)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .registers 3

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 282
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 283
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceData:[B

    return-object p0

    .line 280
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceData Uuid or serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addServiceUuid(Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 266
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object p0

    .line 264
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "service Uuids are null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/samsung/android/mcf/ble/BleAdvertiseData;
    .registers 10

    .line 329
    new-instance v8, Lcom/samsung/android/mcf/ble/BleAdvertiseData;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerId:I

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerSpecificData:[B

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceData:[B

    iget-boolean v6, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mIncludeDeviceName:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;-><init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZLcom/samsung/android/mcf/ble/BleAdvertiseData$1;)V

    return-object v8
.end method

.method public setIncludeDeviceName(Z)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .registers 2

    .line 319
    iput-boolean p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mIncludeDeviceName:Z

    return-object p0
.end method
