.class public Lsamsung/uwb/RangingData;
.super Ljava/lang/Object;
.source "RangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RangingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private antennaPairInfo:I

.field private currRangingInterval:I

.field private macAddressMode:B

.field private noOfRangingMeasures:I

.field private rangingMeasuresType:B

.field private rangingTdoaMeasures:Lsamsung/uwb/RangingTdoaMeasures;

.field private rangingTwoWayMeasures:[Lsamsung/uwb/RangingTwoWayMeasures;

.field private rcrIndication:I

.field private sequenceNo:I

.field private sessionId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 175
    new-instance v0, Lsamsung/uwb/RangingData$1;

    invoke-direct {v0}, Lsamsung/uwb/RangingData$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJIIBIBILsamsung/uwb/RangingTdoaMeasures;)V
    .registers 11
    .param p1, "sequenceNo"    # I
    .param p2, "sessionId"    # J
    .param p4, "rcrIndication"    # I
    .param p5, "currRangingInterval"    # I
    .param p6, "rangingMeasuresType"    # B
    .param p7, "antennaPairInfo"    # I
    .param p8, "macAddressMode"    # B
    .param p9, "noOfRangingMeasures"    # I
    .param p10, "rangingTdoaMeasures"    # Lsamsung/uwb/RangingTdoaMeasures;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lsamsung/uwb/RangingData;->sequenceNo:I

    .line 47
    iput-wide p2, p0, Lsamsung/uwb/RangingData;->sessionId:J

    .line 48
    iput p4, p0, Lsamsung/uwb/RangingData;->rcrIndication:I

    .line 49
    iput p5, p0, Lsamsung/uwb/RangingData;->currRangingInterval:I

    .line 50
    iput-byte p6, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    .line 51
    iput p7, p0, Lsamsung/uwb/RangingData;->antennaPairInfo:I

    .line 52
    iput-byte p8, p0, Lsamsung/uwb/RangingData;->macAddressMode:B

    .line 53
    iput p9, p0, Lsamsung/uwb/RangingData;->noOfRangingMeasures:I

    .line 54
    iput-object p10, p0, Lsamsung/uwb/RangingData;->rangingTdoaMeasures:Lsamsung/uwb/RangingTdoaMeasures;

    .line 55
    return-void
.end method

.method public constructor <init>(IJIIBIBI[Lsamsung/uwb/RangingTwoWayMeasures;)V
    .registers 11
    .param p1, "sequenceNo"    # I
    .param p2, "sessionId"    # J
    .param p4, "rcrIndication"    # I
    .param p5, "currRangingInterval"    # I
    .param p6, "rangingMeasuresType"    # B
    .param p7, "antennaPairInfo"    # I
    .param p8, "macAddressMode"    # B
    .param p9, "noOfRangingMeasures"    # I
    .param p10, "rangingTwoWayMeasures"    # [Lsamsung/uwb/RangingTwoWayMeasures;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lsamsung/uwb/RangingData;->sequenceNo:I

    .line 35
    iput-wide p2, p0, Lsamsung/uwb/RangingData;->sessionId:J

    .line 36
    iput p4, p0, Lsamsung/uwb/RangingData;->rcrIndication:I

    .line 37
    iput p5, p0, Lsamsung/uwb/RangingData;->currRangingInterval:I

    .line 38
    iput-byte p6, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    .line 39
    iput p7, p0, Lsamsung/uwb/RangingData;->antennaPairInfo:I

    .line 40
    iput-byte p8, p0, Lsamsung/uwb/RangingData;->macAddressMode:B

    .line 41
    iput p9, p0, Lsamsung/uwb/RangingData;->noOfRangingMeasures:I

    .line 42
    iput-object p10, p0, Lsamsung/uwb/RangingData;->rangingTwoWayMeasures:[Lsamsung/uwb/RangingTwoWayMeasures;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingData;->sequenceNo:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/RangingData;->sessionId:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingData;->rcrIndication:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingData;->currRangingInterval:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingData;->antennaPairInfo:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/RangingData;->macAddressMode:B

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingData;->noOfRangingMeasures:I

    .line 168
    iget-byte v0, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    .line 169
    sget-object v0, Lsamsung/uwb/RangingTwoWayMeasures;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsamsung/uwb/RangingTwoWayMeasures;

    iput-object v0, p0, Lsamsung/uwb/RangingData;->rangingTwoWayMeasures:[Lsamsung/uwb/RangingTwoWayMeasures;

    goto :goto_51

    .line 171
    :cond_43
    const-class v0, Lsamsung/uwb/RangingTdoaMeasures;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lsamsung/uwb/RangingTdoaMeasures;

    iput-object v0, p0, Lsamsung/uwb/RangingData;->rangingTdoaMeasures:Lsamsung/uwb/RangingTdoaMeasures;

    .line 173
    :goto_51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getAntennaPairInfo()I
    .registers 2

    .line 98
    iget v0, p0, Lsamsung/uwb/RangingData;->antennaPairInfo:I

    return v0
.end method

.method public getCurrRangingInterval()I
    .registers 2

    .line 82
    iget v0, p0, Lsamsung/uwb/RangingData;->currRangingInterval:I

    return v0
.end method

.method public getMacAddressMode()B
    .registers 2

    .line 106
    iget-byte v0, p0, Lsamsung/uwb/RangingData;->macAddressMode:B

    return v0
.end method

.method public getNoOfRangingMeasures()I
    .registers 2

    .line 114
    iget v0, p0, Lsamsung/uwb/RangingData;->noOfRangingMeasures:I

    return v0
.end method

.method public getRangingMeasures()[Lsamsung/uwb/RangingTwoWayMeasures;
    .registers 2

    .line 122
    iget-object v0, p0, Lsamsung/uwb/RangingData;->rangingTwoWayMeasures:[Lsamsung/uwb/RangingTwoWayMeasures;

    return-object v0
.end method

.method public getRangingMeasuresType()I
    .registers 2

    .line 90
    iget-byte v0, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    return v0
.end method

.method public getRangingTdoaMeasures()Lsamsung/uwb/RangingTdoaMeasures;
    .registers 2

    .line 130
    iget-object v0, p0, Lsamsung/uwb/RangingData;->rangingTdoaMeasures:Lsamsung/uwb/RangingTdoaMeasures;

    return-object v0
.end method

.method public getRcrIndication()I
    .registers 2

    .line 74
    iget v0, p0, Lsamsung/uwb/RangingData;->rcrIndication:I

    return v0
.end method

.method public getSequenceNo()I
    .registers 2

    .line 58
    iget v0, p0, Lsamsung/uwb/RangingData;->sequenceNo:I

    return v0
.end method

.method public getSessionId()J
    .registers 3

    .line 66
    iget-wide v0, p0, Lsamsung/uwb/RangingData;->sessionId:J

    return-wide v0
.end method

.method public setAntennaPairInfo(I)V
    .registers 2
    .param p1, "antennaPairInfo"    # I

    .line 102
    iput p1, p0, Lsamsung/uwb/RangingData;->antennaPairInfo:I

    .line 103
    return-void
.end method

.method public setCurrRangingInterval(I)V
    .registers 2
    .param p1, "currRangingInterval"    # I

    .line 86
    iput p1, p0, Lsamsung/uwb/RangingData;->currRangingInterval:I

    .line 87
    return-void
.end method

.method public setMacAddressMode(B)V
    .registers 2
    .param p1, "macAddressMode"    # B

    .line 110
    iput-byte p1, p0, Lsamsung/uwb/RangingData;->macAddressMode:B

    .line 111
    return-void
.end method

.method public setNoOfRangingMeasures(I)V
    .registers 2
    .param p1, "noOfRangingMeasures"    # I

    .line 118
    iput p1, p0, Lsamsung/uwb/RangingData;->noOfRangingMeasures:I

    .line 119
    return-void
.end method

.method public setRangingMeasures([Lsamsung/uwb/RangingTwoWayMeasures;)V
    .registers 2
    .param p1, "rangingTwoWayMeasures"    # [Lsamsung/uwb/RangingTwoWayMeasures;

    .line 126
    iput-object p1, p0, Lsamsung/uwb/RangingData;->rangingTwoWayMeasures:[Lsamsung/uwb/RangingTwoWayMeasures;

    .line 127
    return-void
.end method

.method public setRangingMeasuresType(B)V
    .registers 2
    .param p1, "rangingMeasuresType"    # B

    .line 94
    iput-byte p1, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    .line 95
    return-void
.end method

.method public setRangingTdoaMeasures(Lsamsung/uwb/RangingTdoaMeasures;)V
    .registers 2
    .param p1, "rangingTdoaMeasures"    # Lsamsung/uwb/RangingTdoaMeasures;

    .line 134
    iput-object p1, p0, Lsamsung/uwb/RangingData;->rangingTdoaMeasures:Lsamsung/uwb/RangingTdoaMeasures;

    .line 135
    return-void
.end method

.method public setRcrIndication(I)V
    .registers 2
    .param p1, "rcrIndication"    # I

    .line 78
    iput p1, p0, Lsamsung/uwb/RangingData;->rcrIndication:I

    .line 79
    return-void
.end method

.method public setSequenceNo(I)V
    .registers 2
    .param p1, "sequenceNo"    # I

    .line 62
    iput p1, p0, Lsamsung/uwb/RangingData;->sequenceNo:I

    .line 63
    return-void
.end method

.method public setSessionId(J)V
    .registers 3
    .param p1, "sessionId"    # J

    .line 70
    iput-wide p1, p0, Lsamsung/uwb/RangingData;->sessionId:J

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 189
    iget-byte v0, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    const/16 v1, 0x7d

    const-string v2, ", noOfRangingMeasures = "

    const-string v3, ", macAddressMode = "

    const-string v4, ", antennaPairInfo = "

    const-string v5, ", rangingMeasuresType = "

    const-string v6, ", currRangingInterval = "

    const-string v7, ", rcrIndication = "

    const-string v8, ", sessionId = "

    const-string v9, "RangingData {sequenceNo = "

    const/4 v10, 0x1

    if-ne v0, v10, :cond_72

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lsamsung/uwb/RangingData;->sequenceNo:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lsamsung/uwb/RangingData;->sessionId:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lsamsung/uwb/RangingData;->rcrIndication:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lsamsung/uwb/RangingData;->currRangingInterval:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lsamsung/uwb/RangingData;->antennaPairInfo:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lsamsung/uwb/RangingData;->macAddressMode:B

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsamsung/uwb/RangingData;->noOfRangingMeasures:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rangingTwoWayMeasures = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsamsung/uwb/RangingData;->rangingTwoWayMeasures:[Lsamsung/uwb/RangingTwoWayMeasures;

    .line 199
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    return-object v0

    .line 202
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lsamsung/uwb/RangingData;->sequenceNo:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lsamsung/uwb/RangingData;->sessionId:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lsamsung/uwb/RangingData;->rcrIndication:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lsamsung/uwb/RangingData;->currRangingInterval:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lsamsung/uwb/RangingData;->antennaPairInfo:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lsamsung/uwb/RangingData;->macAddressMode:B

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsamsung/uwb/RangingData;->noOfRangingMeasures:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rangingTdoaMeasures = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsamsung/uwb/RangingData;->rangingTdoaMeasures:Lsamsung/uwb/RangingTdoaMeasures;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget v0, p0, Lsamsung/uwb/RangingData;->sequenceNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-wide v0, p0, Lsamsung/uwb/RangingData;->sessionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget v0, p0, Lsamsung/uwb/RangingData;->rcrIndication:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lsamsung/uwb/RangingData;->currRangingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-byte v0, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 149
    iget v0, p0, Lsamsung/uwb/RangingData;->antennaPairInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-byte v0, p0, Lsamsung/uwb/RangingData;->macAddressMode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget v0, p0, Lsamsung/uwb/RangingData;->noOfRangingMeasures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-byte v0, p0, Lsamsung/uwb/RangingData;->rangingMeasuresType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 153
    iget-object v0, p0, Lsamsung/uwb/RangingData;->rangingTwoWayMeasures:[Lsamsung/uwb/RangingTwoWayMeasures;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_38

    .line 155
    :cond_33
    iget-object v0, p0, Lsamsung/uwb/RangingData;->rangingTdoaMeasures:Lsamsung/uwb/RangingTdoaMeasures;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    :goto_38
    return-void
.end method
