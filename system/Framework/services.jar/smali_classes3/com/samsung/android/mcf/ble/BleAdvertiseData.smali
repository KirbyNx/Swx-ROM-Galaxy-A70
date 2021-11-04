.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseData;
.super Ljava/lang/Object;
.source "BleAdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    }
.end annotation


# static fields
.field public static final KEY_ADV_INCLUDE_DEVICENAME:Ljava/lang/String; = "AdvIncludeDeviceName"

.field public static final KEY_ADV_INCLUDE_RSP:Ljava/lang/String; = "AdvIncludeRsp"

.field public static final KEY_ADV_MANUFACTURER_DATA:Ljava/lang/String; = "AdvManufacturerData"

.field public static final KEY_ADV_MANUFACTURER_ID:Ljava/lang/String; = "AdvManufacturerId"

.field public static final KEY_ADV_SVC_DATA:Ljava/lang/String; = "AdvSvcData"

.field public static final KEY_ADV_SVC_DATA_UUID:Ljava/lang/String; = "AdvSvcDataUuid"

.field public static final KEY_ADV_SVC_UUID:Ljava/lang/String; = "AdvSvcUuid"

.field public static final KEY_RSP_INCLUDE_DEVICENAME:Ljava/lang/String; = "RspIncludeDeviceName"

.field public static final KEY_RSP_MANUFACTURER_DATA:Ljava/lang/String; = "RspManufacturerData"

.field public static final KEY_RSP_MANUFACTURER_ID:Ljava/lang/String; = "RspManufacturerId"

.field public static final KEY_RSP_SVC_DATA:Ljava/lang/String; = "RspSvcData"

.field public static final KEY_RSP_SVC_DATA_UUID:Ljava/lang/String; = "RspSvcDataUuid"

.field public static final KEY_RSP_SVC_UUID:Ljava/lang/String; = "RspSvcUuid"

.field public static final Type_ADV:I = 0x0

.field public static final Type_RSP:I = 0x1


# instance fields
.field public mHasResponseData:Z

.field public final mIncludeDeviceName:Z

.field public final mManufacturerId:I

.field public final mManufacturerSpecificData:[B

.field public final mServiceData:[B

.field public mServiceDataUuid:Landroid/os/ParcelUuid;

.field public mServiceUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;I)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    if-nez p2, :cond_4f

    .line 79
    const-string p2, "AdvSvcUuid"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 81
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    :cond_16
    nop

    .line 83
    const-string p2, "AdvSvcDataUuid"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_25

    .line 85
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    :cond_25
    nop

    .line 87
    const-string p2, "AdvSvcData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    .line 88
    const-string p2, "AdvManufacturerId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    .line 89
    const-string p2, "AdvManufacturerData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    .line 90
    const-string p2, "AdvIncludeDeviceName"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    .line 91
    const-string p2, "AdvIncludeRsp"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    goto :goto_8e

    :cond_4f
    nop

    .line 93
    const-string p2, "RspSvcUuid"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5e

    .line 95
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    :cond_5e
    nop

    .line 97
    const-string p2, "RspSvcDataUuid"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6d

    .line 99
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    :cond_6d
    nop

    .line 101
    const-string p2, "RspSvcData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    .line 102
    const-string p2, "RspManufacturerId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    .line 103
    const-string p2, "RspManufacturerData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    .line 104
    const-string p2, "RspIncludeDeviceName"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    :goto_8e
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZ)V
    .registers 8

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    .line 66
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 67
    iput p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    .line 68
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    .line 69
    iput-object p4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 70
    iput-object p5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    .line 71
    iput-boolean p6, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZLcom/samsung/android/mcf/ble/BleAdvertiseData$1;)V
    .registers 8

    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;-><init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZ)V

    return-void
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 5

    if-nez p1, :cond_7

    .line 115
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v0, "AdvIncludeRsp"

    if-nez p2, :cond_4a

    .line 118
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz p2, :cond_18

    .line 119
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AdvSvcUuid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_18
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz p2, :cond_2c

    .line 122
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AdvSvcDataUuid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    const-string v1, "AdvSvcData"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 125
    :cond_2c
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    if-eqz p2, :cond_3e

    .line 126
    iget p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    const-string v1, "AdvManufacturerId"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    const-string v1, "AdvManufacturerData"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 129
    :cond_3e
    iget-boolean p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    const-string v1, "AdvIncludeDeviceName"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x0

    .line 131
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    .line 134
    :cond_4a
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz p2, :cond_57

    .line 135
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RspSvcUuid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_57
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz p2, :cond_6b

    .line 138
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RspSvcDataUuid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    const-string v1, "RspSvcData"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 141
    :cond_6b
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    if-eqz p2, :cond_7d

    .line 142
    iget p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    const-string v1, "RspManufacturerId"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    const-string v1, "RspManufacturerData"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 145
    :cond_7d
    iget-boolean p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    const-string v1, "RspIncludeDeviceName"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    .line 148
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public getIncludeDeviceName()Z
    .registers 2

    .line 239
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    return v0
.end method

.method public getManufacturerId()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    return v0
.end method

.method public getManufacturerSpecificData()[B
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    return-object v0
.end method

.method public getServiceData()[B
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public hasResponseData()Z
    .registers 2

    .line 182
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    return v0
.end method

.method public synthetic lambda$toAdvertiseData$0$BleAdvertiseData(Landroid/bluetooth/le/AdvertiseData$Builder;[B)V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    return-void
.end method

.method public synthetic lambda$toAdvertiseData$1$BleAdvertiseData(Landroid/bluetooth/le/AdvertiseData$Builder;[B)V
    .registers 4

    .line 161
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    return-void
.end method

.method public toAdvertiseData()Landroid/bluetooth/le/AdvertiseData;
    .registers 4

    .line 158
    new-instance v0, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/mcf/ble/-$$Lambda$ENH_Y2WcUlxV1O8PkE3pATPIFaU;

    invoke-direct {v2, v0}, Lcom/samsung/android/mcf/ble/-$$Lambda$ENH_Y2WcUlxV1O8PkE3pATPIFaU;-><init>(Landroid/bluetooth/le/AdvertiseData$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/-$$Lambda$BleAdvertiseData$xLRmlDhbntKGJsWtGymA1tFqiWM;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/-$$Lambda$BleAdvertiseData$xLRmlDhbntKGJsWtGymA1tFqiWM;-><init>(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Landroid/bluetooth/le/AdvertiseData$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/-$$Lambda$BleAdvertiseData$gmNx-RkOXZ_-8de40Kz_IQwABp4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/-$$Lambda$BleAdvertiseData$gmNx-RkOXZ_-8de40Kz_IQwABp4;-><init>(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Landroid/bluetooth/le/AdvertiseData$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 162
    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleAdvertiseData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    const-string v2, ""

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    move-object v1, v2

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SDUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_40
    move-object v1, v2

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SD="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    .line 171
    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    :cond_64
    move-object v1, v2

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    if-eqz v1, :cond_96

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    .line 173
    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_97

    :cond_96
    nop

    :goto_97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", IDN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
