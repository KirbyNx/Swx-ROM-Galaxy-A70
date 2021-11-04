.class public Lsamsung/uwb/RframeMeasures;
.super Ljava/lang/Object;
.source "RframeMeasures.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RframeMeasures;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAoaPhase:F

.field private mCfo:I

.field private mCirFirstPathPower:[B

.field private mCirMainPower:[B

.field private mCirSamples:[B

.field private mDecStatus:I

.field private mFirstPathIndex:F

.field private mMainPathIndex:F

.field private mMapping:I

.field private mNLoS:I

.field private mNoiseVariance:I

.field private mRssi:F

.field private mSnrFirstPath:I

.field private mSnrMainPath:I

.field private mSnrTotal:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 159
    new-instance v0, Lsamsung/uwb/RframeMeasures$1;

    invoke-direct {v0}, Lsamsung/uwb/RframeMeasures$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RframeMeasures;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIIII[B[BIII[B)V
    .registers 32
    .param p1, "mMapping"    # I
    .param p2, "mDecStatus"    # I
    .param p3, "mNLoS"    # I
    .param p4, "mFirstPathIndex"    # I
    .param p5, "mMainPathIndex"    # I
    .param p6, "mSnrMainPath"    # I
    .param p7, "mSnrFirstPath"    # I
    .param p8, "mSnrTotal"    # I
    .param p9, "mRssi"    # I
    .param p10, "mCirMainPower"    # [B
    .param p11, "mCirFirstPathPower"    # [B
    .param p12, "mNoiseVariance"    # I
    .param p13, "mCfo"    # I
    .param p14, "mAoaPhase"    # I
    .param p15, "mCirSamples"    # [B

    .line 39
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    move/from16 v1, p1

    iput v1, v0, Lsamsung/uwb/RframeMeasures;->mMapping:I

    .line 41
    move/from16 v2, p2

    iput v2, v0, Lsamsung/uwb/RframeMeasures;->mDecStatus:I

    .line 42
    move/from16 v3, p3

    iput v3, v0, Lsamsung/uwb/RframeMeasures;->mNLoS:I

    .line 43
    const/16 v4, 0xa

    const/4 v5, 0x6

    move/from16 v6, p4

    invoke-static {v6, v4, v5}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v7

    iput v7, v0, Lsamsung/uwb/RframeMeasures;->mFirstPathIndex:F

    .line 44
    move/from16 v7, p5

    invoke-static {v7, v4, v5}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v4

    iput v4, v0, Lsamsung/uwb/RframeMeasures;->mMainPathIndex:F

    .line 45
    move/from16 v4, p6

    iput v4, v0, Lsamsung/uwb/RframeMeasures;->mSnrMainPath:I

    .line 46
    move/from16 v5, p7

    iput v5, v0, Lsamsung/uwb/RframeMeasures;->mSnrFirstPath:I

    .line 47
    const/16 v8, 0x8

    move/from16 v9, p8

    invoke-static {v9, v8, v8}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v10

    iput v10, v0, Lsamsung/uwb/RframeMeasures;->mSnrTotal:F

    .line 48
    const/16 v10, 0x10

    move/from16 v11, p9

    invoke-static {v11, v10}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v12

    invoke-static {v12, v8, v8}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v8

    iput v8, v0, Lsamsung/uwb/RframeMeasures;->mRssi:F

    .line 49
    move-object/from16 v8, p10

    iput-object v8, v0, Lsamsung/uwb/RframeMeasures;->mCirMainPower:[B

    .line 50
    move-object/from16 v12, p11

    iput-object v12, v0, Lsamsung/uwb/RframeMeasures;->mCirFirstPathPower:[B

    .line 51
    move/from16 v13, p12

    iput v13, v0, Lsamsung/uwb/RframeMeasures;->mNoiseVariance:I

    .line 52
    move/from16 v14, p13

    invoke-static {v14, v10}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v15

    iput v15, v0, Lsamsung/uwb/RframeMeasures;->mCfo:I

    .line 53
    move/from16 v15, p14

    invoke-static {v15, v10}, Lsamsung/uwb/UwbUtil;->twos_compliment(II)I

    move-result v10

    const/16 v1, 0x9

    const/4 v2, 0x7

    invoke-static {v10, v1, v2}, Lsamsung/uwb/UwbUtil;->convertQFormatToFloat(III)F

    move-result v1

    iput v1, v0, Lsamsung/uwb/RframeMeasures;->mAoaPhase:F

    .line 54
    move-object/from16 v1, p15

    iput-object v1, v0, Lsamsung/uwb/RframeMeasures;->mCirSamples:[B

    .line 55
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mMapping:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mDecStatus:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mNLoS:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mFirstPathIndex:F

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mMainPathIndex:F

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mSnrMainPath:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mSnrFirstPath:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mSnrTotal:F

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mRssi:F

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/RframeMeasures;->mCirMainPower:[B

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/RframeMeasures;->mCirFirstPathPower:[B

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mNoiseVariance:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mCfo:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeMeasures;->mAoaPhase:F

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/RframeMeasures;->mCirSamples:[B

    .line 157
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getAoaPhase()F
    .registers 2

    .line 110
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mAoaPhase:F

    return v0
.end method

.method public getCfo()I
    .registers 2

    .line 106
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mCfo:I

    return v0
.end method

.method public getCirFirstPathPower()[B
    .registers 2

    .line 98
    iget-object v0, p0, Lsamsung/uwb/RframeMeasures;->mCirFirstPathPower:[B

    return-object v0
.end method

.method public getCirMainpower()[B
    .registers 2

    .line 94
    iget-object v0, p0, Lsamsung/uwb/RframeMeasures;->mCirMainPower:[B

    return-object v0
.end method

.method public getCirSamples()[B
    .registers 2

    .line 114
    iget-object v0, p0, Lsamsung/uwb/RframeMeasures;->mCirSamples:[B

    return-object v0
.end method

.method public getDecStatus()I
    .registers 2

    .line 62
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mDecStatus:I

    return v0
.end method

.method public getFirstPathIndex()F
    .registers 2

    .line 70
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mFirstPathIndex:F

    return v0
.end method

.method public getMainPathIndex()F
    .registers 2

    .line 74
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mMainPathIndex:F

    return v0
.end method

.method public getMapping()I
    .registers 2

    .line 58
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mMapping:I

    return v0
.end method

.method public getNoiseVariance()I
    .registers 2

    .line 102
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mNoiseVariance:I

    return v0
.end method

.method public getRssi()F
    .registers 2

    .line 86
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mRssi:F

    return v0
.end method

.method public getSnrFirstPath()I
    .registers 2

    .line 82
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mSnrFirstPath:I

    return v0
.end method

.method public getSnrMainPath()I
    .registers 2

    .line 78
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mSnrMainPath:I

    return v0
.end method

.method public getSnrTotal()F
    .registers 2

    .line 90
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mSnrTotal:F

    return v0
.end method

.method public getnLoS()I
    .registers 2

    .line 66
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mNLoS:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RframeMeasures {, mapping = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mMapping:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mDecStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nLoS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mNLoS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstPathIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mFirstPathIndex:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mainPathIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mMainPathIndex:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", snrMainPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mSnrMainPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", snrFirstPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mSnrFirstPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SnrTotal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mSnrTotal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rsssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mRssi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cirMainPower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RframeMeasures;->mCirMainPower:[B

    .line 183
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cirFirstPathPower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RframeMeasures;->mCirFirstPathPower:[B

    .line 184
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noiseVariance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mNoiseVariance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mCfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aoaPhase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeMeasures;->mAoaPhase:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCirSamples = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RframeMeasures;->mCirSamples:[B

    .line 188
    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mMapping:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mDecStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mNLoS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mFirstPathIndex:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 128
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mMainPathIndex:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 129
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mSnrMainPath:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mSnrFirstPath:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mSnrTotal:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 132
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mRssi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 133
    iget-object v0, p0, Lsamsung/uwb/RframeMeasures;->mCirMainPower:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 134
    iget-object v0, p0, Lsamsung/uwb/RframeMeasures;->mCirFirstPathPower:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 135
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mNoiseVariance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mCfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lsamsung/uwb/RframeMeasures;->mAoaPhase:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 138
    iget-object v0, p0, Lsamsung/uwb/RframeMeasures;->mCirSamples:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    return-void
.end method
