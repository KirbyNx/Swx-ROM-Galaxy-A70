.class public Lsamsung/uwb/UwbDefaultConfig;
.super Ljava/lang/Object;
.source "UwbDefaultConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbDefaultConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceMacAddress:S

.field private mDeviceRole:B

.field private mDstMacAddress:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lsamsung/uwb/UwbDefaultConfig$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbDefaultConfig$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbDefaultConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-byte v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceRole:B

    .line 13
    iput-short v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceMacAddress:S

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    .line 15
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceRole:B

    .line 19
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceMacAddress:S

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceMacAddress()S
    .registers 2

    .line 72
    iget-short v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceMacAddress:S

    return v0
.end method

.method public getDeviceRole()B
    .registers 2

    .line 68
    iget-byte v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceRole:B

    return v0
.end method

.method public getDstMacAddress()[S
    .registers 4

    .line 76
    iget-object v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    if-nez v0, :cond_6

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_6
    array-length v0, v0

    new-array v0, v0, [S

    .line 81
    .local v0, "dstMacAddress":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 82
    iget-object v2, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    aget v2, v2, v1

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 85
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method public setDeviceMacAddress(S)V
    .registers 2
    .param p1, "deviceMacAddress"    # S

    .line 57
    iput-short p1, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceMacAddress:S

    .line 58
    return-void
.end method

.method public setDeviceRole(B)Z
    .registers 3
    .param p1, "deviceRole"    # B

    .line 49
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-ne p1, v0, :cond_6

    goto :goto_8

    .line 53
    :cond_6
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_8
    :goto_8
    iput-byte p1, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceRole:B

    .line 51
    return v0
.end method

.method public setDstMacAddress([S)V
    .registers 5
    .param p1, "dstMacAddress"    # [S

    .line 61
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 64
    iget-object v1, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    aget-short v2, p1, v0

    aput v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 65
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 42
    iget-byte v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceRole:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-short v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDeviceMacAddress:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lsamsung/uwb/UwbDefaultConfig;->mDstMacAddress:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 45
    return-void
.end method
