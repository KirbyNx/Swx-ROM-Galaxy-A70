.class public Lsamsung/uwb/UwbMulticastListUpdateEvent;
.super Ljava/lang/Object;
.source "UwbMulticastListUpdateEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbMulticastListUpdateEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNumOfControlee:I

.field private mRemainingSize:I

.field private mSessionID:J

.field private mStatus:[I

.field private mSubSessionId:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lsamsung/uwb/UwbMulticastListUpdateEvent$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbMulticastListUpdateEvent$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII[J[I)V
    .registers 7
    .param p1, "sessionID"    # J
    .param p3, "remainingSize"    # I
    .param p4, "numOfControlee"    # I
    .param p5, "subSessionId"    # [J
    .param p6, "status"    # [I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSessionID:J

    .line 30
    iput p3, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mRemainingSize:I

    .line 31
    iput p4, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mNumOfControlee:I

    .line 32
    iput-object p5, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSubSessionId:[J

    .line 33
    iput-object p6, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mStatus:[I

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSessionID:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mRemainingSize:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mNumOfControlee:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSubSessionId:[J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mStatus:[I

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfControlee()I
    .registers 2

    .line 45
    iget v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mNumOfControlee:I

    return v0
.end method

.method public getRemainingSize()I
    .registers 2

    .line 41
    iget v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mRemainingSize:I

    return v0
.end method

.method public getSessionID()J
    .registers 3

    .line 37
    iget-wide v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSessionID:J

    return-wide v0
.end method

.method public getStatus()[I
    .registers 2

    .line 53
    iget-object v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mStatus:[I

    return-object v0
.end method

.method public getSubSessionId()[J
    .registers 2

    .line 49
    iget-object v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSubSessionId:[J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbMulticastListUpdateEvent {  SessionID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSessionID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", RemainingSize ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mRemainingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NumOfControlee ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mNumOfControlee:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SubSessionId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSubSessionId:[J

    .line 96
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Status ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mStatus:[I

    .line 97
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget-wide v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSessionID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mRemainingSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mNumOfControlee:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mSubSessionId:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 67
    iget-object v0, p0, Lsamsung/uwb/UwbMulticastListUpdateEvent;->mStatus:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    return-void
.end method
