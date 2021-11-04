.class public Lsamsung/uwb/OneWayRangingData;
.super Ljava/lang/Object;
.source "OneWayRangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/OneWayRangingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aoaFirst:F

.field private aoaSecond:F

.field public mBlinkFrameNo:J

.field public mBlinkPayloadData:[B

.field public mDeviceInfo:[B

.field public mRframeTimeStamp:J

.field private macAddress:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lsamsung/uwb/OneWayRangingData$1;

    invoke-direct {v0}, Lsamsung/uwb/OneWayRangingData$1;-><init>()V

    sput-object v0, Lsamsung/uwb/OneWayRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/OneWayRangingData;->macAddress:[B

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaFirst:F

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaSecond:F

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mRframeTimeStamp:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkFrameNo:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/OneWayRangingData;->mDeviceInfo:[B

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkPayloadData:[B

    .line 46
    return-void
.end method

.method public constructor <init>([BIIJJ[B[B)V
    .registers 11
    .param p1, "macAddress"    # [B
    .param p2, "aoaFirst"    # I
    .param p3, "aoaSecond"    # I
    .param p4, "mRframeTimeStamp"    # J
    .param p6, "blinkFrameNo"    # J
    .param p8, "deviceInfo"    # [B
    .param p9, "blinkPayloadData"    # [B

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lsamsung/uwb/OneWayRangingData;->macAddress:[B

    .line 30
    int-to-float v0, p2

    iput v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaFirst:F

    .line 31
    int-to-float v0, p3

    iput v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaSecond:F

    .line 32
    iput-wide p4, p0, Lsamsung/uwb/OneWayRangingData;->mRframeTimeStamp:J

    .line 33
    iput-wide p6, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkFrameNo:J

    .line 34
    iput-object p8, p0, Lsamsung/uwb/OneWayRangingData;->mDeviceInfo:[B

    .line 35
    iput-object p9, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkPayloadData:[B

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getAoAFirst()F
    .registers 2

    .line 65
    iget v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaFirst:F

    return v0
.end method

.method public getAoASecond()F
    .registers 2

    .line 69
    iget v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaSecond:F

    return v0
.end method

.method public getBlinkFrameNo()J
    .registers 3

    .line 77
    iget-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkFrameNo:J

    return-wide v0
.end method

.method public getBlinkPayloadData()[B
    .registers 2

    .line 85
    iget-object v0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkPayloadData:[B

    return-object v0
.end method

.method public getDeviceInfo()[B
    .registers 2

    .line 81
    iget-object v0, p0, Lsamsung/uwb/OneWayRangingData;->mDeviceInfo:[B

    return-object v0
.end method

.method public getMacAddress()[B
    .registers 2

    .line 61
    iget-object v0, p0, Lsamsung/uwb/OneWayRangingData;->macAddress:[B

    return-object v0
.end method

.method public getRframeTimeStamp()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mRframeTimeStamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneWayRangingData {macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/OneWayRangingData;->macAddress:[B

    .line 107
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aoaFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/OneWayRangingData;->aoaFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aoaSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/OneWayRangingData;->aoaSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", RframeTimeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/OneWayRangingData;->mRframeTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", BlinkFrameNo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkFrameNo:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", DeviceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/OneWayRangingData;->mDeviceInfo:[B

    .line 112
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BlinkPayloadData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkPayloadData:[B

    .line 113
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    iget-object v0, p0, Lsamsung/uwb/OneWayRangingData;->macAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 96
    iget v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaFirst:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 97
    iget v0, p0, Lsamsung/uwb/OneWayRangingData;->aoaSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98
    iget-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mRframeTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkFrameNo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-object v0, p0, Lsamsung/uwb/OneWayRangingData;->mDeviceInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 101
    iget-object v0, p0, Lsamsung/uwb/OneWayRangingData;->mBlinkPayloadData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 102
    return-void
.end method
