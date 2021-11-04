.class public Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
.super Ljava/lang/Object;
.source "McfUWBRangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "[MCFSDK]_McfUWBRangingData"


# instance fields
.field public final mAntennaPairInfo:I

.field public final mAoaLandscape:I

.field public final mAoaPortrait:I

.field public final mBluetoothAddress:Ljava/lang/String;

.field public final mDeviceId:Ljava/lang/String;

.field public final mDistance:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;

    invoke-direct {v0}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    .line 51
    iput p4, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    .line 52
    iput p5, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    .line 53
    iput p6, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 178
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    if-eq v2, v1, :cond_d

    return v0

    .line 182
    :cond_d
    instance-of v1, p1, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    if-nez v1, :cond_12

    return v0

    .line 187
    :cond_12
    :try_start_12
    check-cast p1, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    .line 189
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1d

    return v0

    .line 193
    :cond_1d
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_27} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_2c

    if-nez p1, :cond_2a

    return v0

    :cond_2a
    const/4 p1, 0x1

    return p1

    :catch_2c
    move-exception p1

    return v0

    :catch_2e
    move-exception p1

    return v0
.end method

.method public getAntennaPairInfo()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    return v0
.end method

.method public getAoaLandscape()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    return v0
.end method

.method public getAoaPortrait()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    return v0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "cm|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "degree|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 67
    iget-object p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
