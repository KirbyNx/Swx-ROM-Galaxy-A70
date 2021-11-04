.class public Lsamsung/uwb/profile/UwbProfile$Builder;
.super Ljava/lang/Object;
.source "UwbProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/profile/UwbProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAntennaPairSelection:B

.field private mBackgroundMode:I

.field private mDeviceMacAddress:S

.field private mDeviceRole:B

.field private mDeviceType:B

.field private mDstMacAddress:[I

.field private mMultiNodeMode:B

.field private mNumOfAnchors:B

.field private mPpduConfig:B

.field private mRangingDataNtf:B

.field private mRangingDataNtfProximityFar:S

.field private mRangingDataNtfProximityNear:S

.field private mRangingInterval:S

.field private mRangingMethod:B

.field private mServiceType:I

.field private mStsConfig:B

.field private mStsIndex:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, -0x1

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceRole:B

    .line 186
    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingMethod:B

    .line 187
    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mStsConfig:B

    .line 188
    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mMultiNodeMode:B

    .line 189
    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mNumOfAnchors:B

    .line 190
    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceMacAddress:S

    .line 191
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    iput-object v1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDstMacAddress:[I

    .line 192
    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingInterval:S

    .line 193
    iput v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mStsIndex:I

    .line 194
    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mPpduConfig:B

    .line 195
    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtf:B

    .line 196
    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtfProximityNear:S

    .line 197
    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtfProximityFar:S

    .line 198
    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceType:B

    .line 199
    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mAntennaPairSelection:B

    .line 200
    iput v2, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mBackgroundMode:I

    .line 201
    iput v2, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mServiceType:I

    .line 204
    return-void
.end method

.method static synthetic access$000(Lsamsung/uwb/profile/UwbProfile$Builder;)B
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceRole:B

    return v0
.end method

.method static synthetic access$100(Lsamsung/uwb/profile/UwbProfile$Builder;)B
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingMethod:B

    return v0
.end method

.method static synthetic access$1000(Lsamsung/uwb/profile/UwbProfile$Builder;)B
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtf:B

    return v0
.end method

.method static synthetic access$1100(Lsamsung/uwb/profile/UwbProfile$Builder;)S
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtfProximityNear:S

    return v0
.end method

.method static synthetic access$1200(Lsamsung/uwb/profile/UwbProfile$Builder;)S
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtfProximityFar:S

    return v0
.end method

.method static synthetic access$1300(Lsamsung/uwb/profile/UwbProfile$Builder;)B
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceType:B

    return v0
.end method

.method static synthetic access$1400(Lsamsung/uwb/profile/UwbProfile$Builder;)B
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mAntennaPairSelection:B

    return v0
.end method

.method static synthetic access$1500(Lsamsung/uwb/profile/UwbProfile$Builder;)I
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mBackgroundMode:I

    return v0
.end method

.method static synthetic access$1600(Lsamsung/uwb/profile/UwbProfile$Builder;)I
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mServiceType:I

    return v0
.end method

.method static synthetic access$200(Lsamsung/uwb/profile/UwbProfile$Builder;)B
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mStsConfig:B

    return v0
.end method

.method static synthetic access$300(Lsamsung/uwb/profile/UwbProfile$Builder;)B
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mMultiNodeMode:B

    return v0
.end method

.method static synthetic access$400(Lsamsung/uwb/profile/UwbProfile$Builder;)B
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mNumOfAnchors:B

    return v0
.end method

.method static synthetic access$500(Lsamsung/uwb/profile/UwbProfile$Builder;)S
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceMacAddress:S

    return v0
.end method

.method static synthetic access$600(Lsamsung/uwb/profile/UwbProfile$Builder;)[I
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-object v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDstMacAddress:[I

    return-object v0
.end method

.method static synthetic access$700(Lsamsung/uwb/profile/UwbProfile$Builder;)S
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingInterval:S

    return v0
.end method

.method static synthetic access$800(Lsamsung/uwb/profile/UwbProfile$Builder;)I
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mStsIndex:I

    return v0
.end method

.method static synthetic access$900(Lsamsung/uwb/profile/UwbProfile$Builder;)B
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 184
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mPpduConfig:B

    return v0
.end method


# virtual methods
.method public build()Lsamsung/uwb/profile/UwbProfile;
    .registers 3

    .line 296
    new-instance v0, Lsamsung/uwb/profile/UwbProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsamsung/uwb/profile/UwbProfile;-><init>(Lsamsung/uwb/profile/UwbProfile$Builder;Lsamsung/uwb/profile/UwbProfile$1;)V

    return-object v0
.end method

.method public setAntennaPairSelection(B)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "antennaPairSelection"    # B

    .line 281
    iput-byte p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mAntennaPairSelection:B

    .line 282
    return-object p0
.end method

.method public setBackgroundMode(I)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "backgroundMode"    # I

    .line 286
    iput p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mBackgroundMode:I

    .line 287
    return-object p0
.end method

.method public setDeviceMacAddress(S)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "deviceMacAddress"    # S

    .line 232
    iput-short p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceMacAddress:S

    .line 233
    return-object p0
.end method

.method public setDeviceRole(B)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "deviceRole"    # B

    .line 207
    iput-byte p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceRole:B

    .line 208
    return-object p0
.end method

.method public setDeviceType(B)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "deviceType"    # B

    .line 276
    iput-byte p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceType:B

    .line 277
    return-object p0
.end method

.method public setDstMacAddress([S)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 5
    .param p1, "dstMacAddress"    # [S

    .line 237
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDstMacAddress:[I

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 240
    iget-object v1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mDstMacAddress:[I

    aget-short v2, p1, v0

    aput v2, v1, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 242
    .end local v0    # "i":I
    :cond_12
    return-object p0
.end method

.method public setMultiNodeMode(B)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "multiNodeMode"    # B

    .line 222
    iput-byte p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mMultiNodeMode:B

    .line 223
    return-object p0
.end method

.method public setNumOfAnchors(B)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "numOfAnchors"    # B

    .line 227
    iput-byte p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mNumOfAnchors:B

    .line 228
    return-object p0
.end method

.method public setPpduConfig(B)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "ppduConfig"    # B

    .line 256
    iput-byte p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mPpduConfig:B

    .line 257
    return-object p0
.end method

.method public setRangingDataNtf(B)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "rangingDataNtf"    # B

    .line 261
    iput-byte p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtf:B

    .line 262
    return-object p0
.end method

.method public setRangingDataNtfProximityFar(S)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "rangingDataNtfProximityFar"    # S

    .line 271
    iput-short p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtfProximityFar:S

    .line 272
    return-object p0
.end method

.method public setRangingDataNtfProximityNear(S)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "rangingDataNtfProximityNear"    # S

    .line 266
    iput-short p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtfProximityNear:S

    .line 267
    return-object p0
.end method

.method public setRangingInterval(S)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "rangingInterval"    # S

    .line 246
    iput-short p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingInterval:S

    .line 247
    return-object p0
.end method

.method public setRangingMethod(B)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "rangingMethod"    # B

    .line 212
    iput-byte p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingMethod:B

    .line 213
    return-object p0
.end method

.method public setServiceType(I)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "serviceType"    # I

    .line 291
    iput p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mServiceType:I

    .line 292
    return-object p0
.end method

.method public setStsConfig(B)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "stsConfig"    # B

    .line 217
    iput-byte p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mStsConfig:B

    .line 218
    return-object p0
.end method

.method public setStsIndex(I)Lsamsung/uwb/profile/UwbProfile$Builder;
    .registers 2
    .param p1, "stsIndex"    # I

    .line 251
    iput p1, p0, Lsamsung/uwb/profile/UwbProfile$Builder;->mStsIndex:I

    .line 252
    return-object p0
.end method
