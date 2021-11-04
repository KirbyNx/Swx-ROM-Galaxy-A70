.class public Lsamsung/uwb/RangingTdoaMeasures;
.super Ljava/lang/Object;
.source "RangingTdoaMeasures.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RangingTdoaMeasures;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected aoaFirst:F

.field protected aoaSecond:F

.field protected macAddress:[B

.field protected nLoS:I

.field protected pdoaFirst:F

.field protected pdoaFirstIndex:I

.field protected pdoaSecond:F

.field protected pdoaSecondIndex:I

.field protected rangingStatus:I

.field protected tagSequenceNo:I

.field protected tsFrac:I

.field protected tsInt:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 133
    new-instance v0, Lsamsung/uwb/RangingTdoaMeasures$1;

    invoke-direct {v0}, Lsamsung/uwb/RangingTdoaMeasures$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RangingTdoaMeasures;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->macAddress:[B

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->rangingStatus:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->nLoS:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaFirst:F

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaSecond:F

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirst:F

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecond:F

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsInt:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsFrac:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tagSequenceNo:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirstIndex:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecondIndex:I

    .line 131
    return-void
.end method

.method public constructor <init>([BIIIIIIJIIII)V
    .registers 28
    .param p1, "macAddress"    # [B
    .param p2, "rangingStatus"    # I
    .param p3, "nLoS"    # I
    .param p4, "aoaFirst"    # I
    .param p5, "aoaSecond"    # I
    .param p6, "pdoaFirst"    # I
    .param p7, "pdoaSecond"    # I
    .param p8, "tsInt"    # J
    .param p10, "tsFrac"    # I
    .param p11, "tagSequenceNo"    # I
    .param p12, "pdoaFirstIndex"    # I
    .param p13, "pdoaSecondIndex"    # I

    .line 34
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v1, p1

    iput-object v1, v0, Lsamsung/uwb/RangingTdoaMeasures;->macAddress:[B

    .line 36
    move/from16 v2, p2

    iput v2, v0, Lsamsung/uwb/RangingTdoaMeasures;->rangingStatus:I

    .line 37
    move/from16 v3, p3

    iput v3, v0, Lsamsung/uwb/RangingTdoaMeasures;->nLoS:I

    .line 38
    const/16 v4, 0x10

    move/from16 v5, p4

    invoke-static {v5, v4}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v6

    const/16 v7, 0x9

    const/4 v8, 0x7

    invoke-static {v6, v7, v8}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v6

    iput v6, v0, Lsamsung/uwb/RangingTdoaMeasures;->aoaFirst:F

    .line 39
    move/from16 v6, p5

    invoke-static {v6, v4}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v9

    invoke-static {v9, v7, v8}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v9

    iput v9, v0, Lsamsung/uwb/RangingTdoaMeasures;->aoaSecond:F

    .line 40
    move/from16 v9, p6

    invoke-static {v9, v4}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v10

    invoke-static {v10, v7, v8}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v10

    iput v10, v0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirst:F

    .line 41
    move/from16 v10, p7

    invoke-static {v10, v4}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v4

    invoke-static {v4, v7, v8}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v4

    iput v4, v0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecond:F

    .line 42
    move-wide/from16 v7, p8

    iput-wide v7, v0, Lsamsung/uwb/RangingTdoaMeasures;->tsInt:J

    .line 43
    move/from16 v4, p10

    iput v4, v0, Lsamsung/uwb/RangingTdoaMeasures;->tsFrac:I

    .line 44
    move/from16 v11, p11

    iput v11, v0, Lsamsung/uwb/RangingTdoaMeasures;->tagSequenceNo:I

    .line 45
    move/from16 v12, p12

    iput v12, v0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirstIndex:I

    .line 46
    move/from16 v13, p13

    iput v13, v0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecondIndex:I

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getAoAFirst()F
    .registers 2

    .line 62
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaFirst:F

    return v0
.end method

.method public getAoASecond()F
    .registers 2

    .line 66
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaSecond:F

    return v0
.end method

.method public getPDoAFirst()F
    .registers 2

    .line 70
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirst:F

    return v0
.end method

.method public getPDoASecond()F
    .registers 2

    .line 74
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecond:F

    return v0
.end method

.method public getRangingStatus()I
    .registers 2

    .line 54
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->rangingStatus:I

    return v0
.end method

.method public getTagSequenceNo()I
    .registers 2

    .line 86
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tagSequenceNo:I

    return v0
.end method

.method public getTsFrac()I
    .registers 2

    .line 82
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsFrac:I

    return v0
.end method

.method public getTsInt()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsInt:J

    return-wide v0
.end method

.method public getmacAddress()[B
    .registers 2

    .line 50
    iget-object v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->macAddress:[B

    return-object v0
.end method

.method public getnLoS()I
    .registers 2

    .line 58
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->nLoS:I

    return v0
.end method

.method public pdoaFirstIndex()I
    .registers 2

    .line 90
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirstIndex:I

    return v0
.end method

.method public pdoaSecondIndex()I
    .registers 2

    .line 94
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecondIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingMeasures {macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->macAddress:[B

    .line 148
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rangingStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->rangingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nLoS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->nLoS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aoaFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aoaSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaFirstIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirstIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaSecondIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecondIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tsInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsInt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tsFrac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsFrac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tagSequenceNo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTdoaMeasures;->tagSequenceNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->macAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 105
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->rangingStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->nLoS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaFirst:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 108
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->aoaSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 109
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirst:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 110
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 111
    iget-wide v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsInt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tsFrac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->tagSequenceNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaFirstIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lsamsung/uwb/RangingTdoaMeasures;->pdoaSecondIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
