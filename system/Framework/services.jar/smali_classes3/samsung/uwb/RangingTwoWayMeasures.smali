.class public Lsamsung/uwb/RangingTwoWayMeasures;
.super Ljava/lang/Object;
.source "RangingTwoWayMeasures.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RangingTwoWayMeasures;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected aoaDestFirst:F

.field protected aoaDestSecond:F

.field protected aoaFirst:F

.field protected aoaSecond:F

.field private azimuth:F

.field protected distance:I

.field private distance2:I

.field private elevation:F

.field protected macAddress:[B

.field protected nLoS:I

.field protected pdoaFirst:F

.field private pdoaFirstIndex:I

.field protected pdoaSecond:F

.field private pdoaSecondIndex:I

.field protected rangingStatus:I

.field private rssiRX1:F

.field private rssiRX2:F

.field protected slotIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 198
    new-instance v0, Lsamsung/uwb/RangingTwoWayMeasures$1;

    invoke-direct {v0}, Lsamsung/uwb/RangingTwoWayMeasures$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RangingTwoWayMeasures;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->macAddress:[B

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rangingStatus:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->nLoS:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->distance:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaFirst:F

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaSecond:F

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirst:F

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecond:F

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestFirst:F

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestSecond:F

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->slotIndex:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX1:F

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX2:F

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->distance2:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirstIndex:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecondIndex:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->azimuth:F

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->elevation:F

    .line 196
    return-void
.end method

.method public constructor <init>([BIIIIIIIIIIFFIII)V
    .registers 33
    .param p1, "macAddress"    # [B
    .param p2, "rangingStatus"    # I
    .param p3, "nLoS"    # I
    .param p4, "distance"    # I
    .param p5, "aoaFirst"    # I
    .param p6, "aoaSecond"    # I
    .param p7, "pdoaFirst"    # I
    .param p8, "pdoaSecond"    # I
    .param p9, "aoaDestFirst"    # I
    .param p10, "aoaDestSecond"    # I
    .param p11, "slotIndex"    # I
    .param p12, "rssiRX1"    # F
    .param p13, "rssiRX2"    # F
    .param p14, "distance2"    # I
    .param p15, "pdoaFirstIndex"    # I
    .param p16, "pdoaSecondIndex"    # I

    .line 41
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object/from16 v1, p1

    iput-object v1, v0, Lsamsung/uwb/RangingTwoWayMeasures;->macAddress:[B

    .line 43
    move/from16 v2, p2

    iput v2, v0, Lsamsung/uwb/RangingTwoWayMeasures;->rangingStatus:I

    .line 44
    move/from16 v3, p3

    iput v3, v0, Lsamsung/uwb/RangingTwoWayMeasures;->nLoS:I

    .line 45
    move/from16 v4, p4

    iput v4, v0, Lsamsung/uwb/RangingTwoWayMeasures;->distance:I

    .line 46
    const/16 v5, 0x10

    move/from16 v6, p5

    invoke-static {v6, v5}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v7

    const/16 v8, 0x9

    const/4 v9, 0x7

    invoke-static {v7, v8, v9}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v7

    iput v7, v0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaFirst:F

    .line 47
    move/from16 v7, p6

    invoke-static {v7, v5}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v10

    invoke-static {v10, v8, v9}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v10

    iput v10, v0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaSecond:F

    .line 48
    move/from16 v10, p7

    invoke-static {v10, v5}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v11

    invoke-static {v11, v8, v9}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v11

    iput v11, v0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirst:F

    .line 49
    move/from16 v11, p8

    invoke-static {v11, v5}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v12

    invoke-static {v12, v8, v9}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v12

    iput v12, v0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecond:F

    .line 50
    move/from16 v12, p9

    invoke-static {v12, v5}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v13

    invoke-static {v13, v8, v9}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v13

    iput v13, v0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestFirst:F

    .line 51
    move/from16 v13, p10

    invoke-static {v13, v5}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v5

    invoke-static {v5, v8, v9}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v5

    iput v5, v0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestSecond:F

    .line 52
    move/from16 v5, p11

    iput v5, v0, Lsamsung/uwb/RangingTwoWayMeasures;->slotIndex:I

    .line 53
    move/from16 v8, p12

    iput v8, v0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX1:F

    .line 54
    move/from16 v9, p13

    iput v9, v0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX2:F

    .line 55
    move/from16 v14, p14

    iput v14, v0, Lsamsung/uwb/RangingTwoWayMeasures;->distance2:I

    .line 56
    move/from16 v15, p15

    iput v15, v0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirstIndex:I

    .line 57
    move/from16 v1, p16

    iput v1, v0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecondIndex:I

    .line 58
    iget v1, v0, Lsamsung/uwb/RangingTwoWayMeasures;->distance:I

    iget v2, v0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaFirst:F

    iget v3, v0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaSecond:F

    invoke-static {v1, v2, v3}, Lsamsung/uwb/UwbUtil;->get3dAoAAzimuth(IFF)F

    move-result v1

    iput v1, v0, Lsamsung/uwb/RangingTwoWayMeasures;->azimuth:F

    .line 59
    iget v1, v0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaSecond:F

    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->get3dAoAElevation(F)F

    move-result v1

    iput v1, v0, Lsamsung/uwb/RangingTwoWayMeasures;->elevation:F

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getAoAAzimuth()F
    .registers 2

    .line 147
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->azimuth:F

    return v0
.end method

.method public getAoAElevation()F
    .registers 2

    .line 143
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->elevation:F

    return v0
.end method

.method public getAoAFirst()I
    .registers 2

    .line 83
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaFirst:F

    float-to-int v0, v0

    return v0
.end method

.method public getAoASecond()I
    .registers 2

    .line 95
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaSecond:F

    float-to-int v0, v0

    return v0
.end method

.method public getAoaDestFirst()I
    .registers 2

    .line 111
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestFirst:F

    float-to-int v0, v0

    return v0
.end method

.method public getAoaDestSecond()I
    .registers 2

    .line 115
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestSecond:F

    float-to-int v0, v0

    return v0
.end method

.method public getDistance()I
    .registers 2

    .line 75
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->distance:I

    return v0
.end method

.method public getDistance2()I
    .registers 2

    .line 131
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->distance2:I

    return v0
.end method

.method public getFloatAoAFirst()F
    .registers 2

    .line 87
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaFirst:F

    return v0
.end method

.method public getFloatAoASecond()F
    .registers 2

    .line 99
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaSecond:F

    return v0
.end method

.method public getPDoAFirst()F
    .registers 2

    .line 103
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirst:F

    return v0
.end method

.method public getPDoASecond()F
    .registers 2

    .line 107
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecond:F

    return v0
.end method

.method public getRangingStatus()I
    .registers 2

    .line 67
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rangingStatus:I

    return v0
.end method

.method public getRssiRX1()F
    .registers 2

    .line 123
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX1:F

    return v0
.end method

.method public getRssiRX2()F
    .registers 2

    .line 127
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX2:F

    return v0
.end method

.method public getSlotIndex()I
    .registers 2

    .line 119
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->slotIndex:I

    return v0
.end method

.method public getmacAddress()[B
    .registers 2

    .line 63
    iget-object v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->macAddress:[B

    return-object v0
.end method

.method public getnLoS()I
    .registers 2

    .line 71
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->nLoS:I

    return v0
.end method

.method public pdoaFirstIndex()I
    .registers 2

    .line 135
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirstIndex:I

    return v0
.end method

.method public pdoaSecondIndex()I
    .registers 2

    .line 139
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecondIndex:I

    return v0
.end method

.method public setAoAFirst(F)V
    .registers 2
    .param p1, "aoaFirst"    # F

    .line 79
    iput p1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaFirst:F

    .line 80
    return-void
.end method

.method public setAoASecond(F)V
    .registers 2
    .param p1, "aoaSecond"    # F

    .line 91
    iput p1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaSecond:F

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingTwoWayMeasures{macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->macAddress:[B

    .line 213
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rangingStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rangingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nLoS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->nLoS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aoaFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aoaSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaFirstIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirstIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pdoaSecondIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecondIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aoaDestFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aoaDestSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", slotIndication = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->slotIndex:I

    .line 225
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rssiRX1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rssiRX2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", Distance2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->distance2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aoaAzimuth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->azimuth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aoaElevation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingTwoWayMeasures;->elevation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    iget-object v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->macAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 158
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rangingStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->nLoS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->distance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaFirst:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 162
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 163
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirst:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 164
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 165
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestFirst:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 166
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->aoaDestSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 167
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->slotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 169
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->rssiRX2:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 170
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->distance2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaFirstIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->pdoaSecondIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->azimuth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 174
    iget v0, p0, Lsamsung/uwb/RangingTwoWayMeasures;->elevation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 175
    return-void
.end method
