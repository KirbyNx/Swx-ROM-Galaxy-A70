.class public Lsamsung/uwb/TwoWayRangingData;
.super Ljava/lang/Object;
.source "TwoWayRangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/TwoWayRangingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private distance:I

.field private mAxis_x:D

.field private mAxis_y:D

.field private mAxis_z:D

.field private macAddress:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lsamsung/uwb/TwoWayRangingData$1;

    invoke-direct {v0}, Lsamsung/uwb/TwoWayRangingData$1;-><init>()V

    sput-object v0, Lsamsung/uwb/TwoWayRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/TwoWayRangingData;->macAddress:[B

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/TwoWayRangingData;->distance:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

    .line 38
    return-void
.end method

.method public constructor <init>([BIDDD)V
    .registers 9
    .param p1, "macAddress"    # [B
    .param p2, "distance"    # I
    .param p3, "x"    # D
    .param p5, "y"    # D
    .param p7, "z"    # D

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lsamsung/uwb/TwoWayRangingData;->macAddress:[B

    .line 26
    iput p2, p0, Lsamsung/uwb/TwoWayRangingData;->distance:I

    .line 27
    iput-wide p3, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    .line 28
    iput-wide p5, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    .line 29
    iput-wide p7, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getAxis_x()D
    .registers 3

    .line 69
    iget-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    return-wide v0
.end method

.method public getAxis_y()D
    .registers 3

    .line 73
    iget-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    return-wide v0
.end method

.method public getAxis_z()D
    .registers 3

    .line 77
    iget-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

    return-wide v0
.end method

.method public getDistance()I
    .registers 2

    .line 61
    iget v0, p0, Lsamsung/uwb/TwoWayRangingData;->distance:I

    return v0
.end method

.method public getMacAddress()[B
    .registers 2

    .line 53
    iget-object v0, p0, Lsamsung/uwb/TwoWayRangingData;->macAddress:[B

    return-object v0
.end method

.method public setAxis(DDD)V
    .registers 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 81
    iput-wide p1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    .line 82
    iput-wide p3, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    .line 83
    iput-wide p5, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

    .line 84
    return-void
.end method

.method public setAxisX(D)V
    .registers 3
    .param p1, "x"    # D

    .line 87
    iput-wide p1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    .line 88
    return-void
.end method

.method public setAxisY(D)V
    .registers 3
    .param p1, "y"    # D

    .line 91
    iput-wide p1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    .line 92
    return-void
.end method

.method public setAxisZ(D)V
    .registers 3
    .param p1, "z"    # D

    .line 95
    iput-wide p1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

    .line 96
    return-void
.end method

.method public setDistance(I)V
    .registers 2
    .param p1, "distance"    # I

    .line 65
    iput p1, p0, Lsamsung/uwb/TwoWayRangingData;->distance:I

    .line 66
    return-void
.end method

.method public setMacAddress([B)V
    .registers 2
    .param p1, "macAddress"    # [B

    .line 57
    iput-object p1, p0, Lsamsung/uwb/TwoWayRangingData;->macAddress:[B

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwoWayRangingData {macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/TwoWayRangingData;->macAddress:[B

    .line 115
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", distance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/TwoWayRangingData;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", axis_x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", axis_y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", axis_z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget-object v0, p0, Lsamsung/uwb/TwoWayRangingData;->macAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 106
    iget v0, p0, Lsamsung/uwb/TwoWayRangingData;->distance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_x:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 108
    iget-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_y:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 109
    iget-wide v0, p0, Lsamsung/uwb/TwoWayRangingData;->mAxis_z:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    return-void
.end method
