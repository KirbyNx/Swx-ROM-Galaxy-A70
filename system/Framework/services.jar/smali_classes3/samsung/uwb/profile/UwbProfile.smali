.class public Lsamsung/uwb/profile/UwbProfile;
.super Ljava/lang/Object;
.source "UwbProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsamsung/uwb/profile/UwbProfile$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/profile/UwbProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final UWB_APP_BACKGROUND:I = 0x1

.field public static final UWB_APP_FOREGROUND:I


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
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lsamsung/uwb/profile/UwbProfile$1;

    invoke-direct {v0}, Lsamsung/uwb/profile/UwbProfile$1;-><init>()V

    sput-object v0, Lsamsung/uwb/profile/UwbProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceRole:B

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingMethod:B

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mStsConfig:B

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mMultiNodeMode:B

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mNumOfAnchors:B

    .line 34
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceMacAddress:S

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDstMacAddress:[I

    .line 36
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingInterval:S

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/profile/UwbProfile;->mStsIndex:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mPpduConfig:B

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtf:B

    .line 40
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityNear:S

    .line 41
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityFar:S

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceType:B

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mAntennaPairSelection:B

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/profile/UwbProfile;->mBackgroundMode:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/profile/UwbProfile;->mServiceType:I

    .line 46
    return-void
.end method

.method private constructor <init>(Lsamsung/uwb/profile/UwbProfile$Builder;)V
    .registers 3
    .param p1, "builder"    # Lsamsung/uwb/profile/UwbProfile$Builder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceRole:B
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$000(Lsamsung/uwb/profile/UwbProfile$Builder;)B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceRole:B

    .line 88
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingMethod:B
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$100(Lsamsung/uwb/profile/UwbProfile$Builder;)B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingMethod:B

    .line 89
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mStsConfig:B
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$200(Lsamsung/uwb/profile/UwbProfile$Builder;)B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mStsConfig:B

    .line 90
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mMultiNodeMode:B
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$300(Lsamsung/uwb/profile/UwbProfile$Builder;)B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mMultiNodeMode:B

    .line 91
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mNumOfAnchors:B
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$400(Lsamsung/uwb/profile/UwbProfile$Builder;)B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mNumOfAnchors:B

    .line 92
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceMacAddress:S
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$500(Lsamsung/uwb/profile/UwbProfile$Builder;)S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceMacAddress:S

    .line 93
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mDstMacAddress:[I
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$600(Lsamsung/uwb/profile/UwbProfile$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDstMacAddress:[I

    .line 94
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingInterval:S
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$700(Lsamsung/uwb/profile/UwbProfile$Builder;)S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingInterval:S

    .line 95
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mStsIndex:I
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$800(Lsamsung/uwb/profile/UwbProfile$Builder;)I

    move-result v0

    iput v0, p0, Lsamsung/uwb/profile/UwbProfile;->mStsIndex:I

    .line 96
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mPpduConfig:B
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$900(Lsamsung/uwb/profile/UwbProfile$Builder;)B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mPpduConfig:B

    .line 97
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtf:B
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$1000(Lsamsung/uwb/profile/UwbProfile$Builder;)B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtf:B

    .line 98
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtfProximityNear:S
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$1100(Lsamsung/uwb/profile/UwbProfile$Builder;)S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityNear:S

    .line 99
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mRangingDataNtfProximityFar:S
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$1200(Lsamsung/uwb/profile/UwbProfile$Builder;)S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityFar:S

    .line 100
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mDeviceType:B
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$1300(Lsamsung/uwb/profile/UwbProfile$Builder;)B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceType:B

    .line 101
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mAntennaPairSelection:B
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$1400(Lsamsung/uwb/profile/UwbProfile$Builder;)B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mAntennaPairSelection:B

    .line 102
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mBackgroundMode:I
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$1500(Lsamsung/uwb/profile/UwbProfile$Builder;)I

    move-result v0

    iput v0, p0, Lsamsung/uwb/profile/UwbProfile;->mBackgroundMode:I

    .line 103
    # getter for: Lsamsung/uwb/profile/UwbProfile$Builder;->mServiceType:I
    invoke-static {p1}, Lsamsung/uwb/profile/UwbProfile$Builder;->access$1600(Lsamsung/uwb/profile/UwbProfile$Builder;)I

    move-result v0

    iput v0, p0, Lsamsung/uwb/profile/UwbProfile;->mServiceType:I

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lsamsung/uwb/profile/UwbProfile$Builder;Lsamsung/uwb/profile/UwbProfile$1;)V
    .registers 3
    .param p1, "x0"    # Lsamsung/uwb/profile/UwbProfile$Builder;
    .param p2, "x1"    # Lsamsung/uwb/profile/UwbProfile$1;

    .line 6
    invoke-direct {p0, p1}, Lsamsung/uwb/profile/UwbProfile;-><init>(Lsamsung/uwb/profile/UwbProfile$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getAntennaPairSelection()B
    .registers 2

    .line 173
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mAntennaPairSelection:B

    return v0
.end method

.method public getBackgroundMode()I
    .registers 2

    .line 177
    iget v0, p0, Lsamsung/uwb/profile/UwbProfile;->mBackgroundMode:I

    return v0
.end method

.method public getDeviceMacAddress()S
    .registers 2

    .line 127
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceMacAddress:S

    return v0
.end method

.method public getDeviceRole()B
    .registers 2

    .line 107
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceRole:B

    return v0
.end method

.method public getDeviceType()B
    .registers 2

    .line 169
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceType:B

    return v0
.end method

.method public getDstMacAddress()[S
    .registers 4

    .line 131
    iget-object v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDstMacAddress:[I

    if-nez v0, :cond_6

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_6
    array-length v0, v0

    new-array v0, v0, [S

    .line 137
    .local v0, "dstMacAddress":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 138
    iget-object v2, p0, Lsamsung/uwb/profile/UwbProfile;->mDstMacAddress:[I

    aget v2, v2, v1

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 141
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method public getMultiNodeMode()B
    .registers 2

    .line 119
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mMultiNodeMode:B

    return v0
.end method

.method public getNumOfAnchors()B
    .registers 2

    .line 123
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mNumOfAnchors:B

    return v0
.end method

.method public getPpduConfig()B
    .registers 2

    .line 153
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mPpduConfig:B

    return v0
.end method

.method public getRangingDataNtf()B
    .registers 2

    .line 157
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtf:B

    return v0
.end method

.method public getRangingDataNtfProximityFar()S
    .registers 2

    .line 165
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityFar:S

    return v0
.end method

.method public getRangingDataNtfProximityNear()S
    .registers 2

    .line 161
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityNear:S

    return v0
.end method

.method public getRangingInterval()S
    .registers 2

    .line 145
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingInterval:S

    return v0
.end method

.method public getRangingMethod()B
    .registers 2

    .line 111
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingMethod:B

    return v0
.end method

.method public getServiceType()I
    .registers 2

    .line 181
    iget v0, p0, Lsamsung/uwb/profile/UwbProfile;->mServiceType:I

    return v0
.end method

.method public getStsConfig()B
    .registers 2

    .line 115
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mStsConfig:B

    return v0
.end method

.method public getStsIndex()I
    .registers 2

    .line 149
    iget v0, p0, Lsamsung/uwb/profile/UwbProfile;->mStsIndex:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceRole:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingMethod:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mStsConfig:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mMultiNodeMode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mNumOfAnchors:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceMacAddress:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDstMacAddress:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 74
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingInterval:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 75
    iget v0, p0, Lsamsung/uwb/profile/UwbProfile;->mStsIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mPpduConfig:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtf:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityNear:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 79
    iget-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityFar:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 80
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    iget-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mAntennaPairSelection:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 82
    iget v0, p0, Lsamsung/uwb/profile/UwbProfile;->mBackgroundMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lsamsung/uwb/profile/UwbProfile;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return-void
.end method
