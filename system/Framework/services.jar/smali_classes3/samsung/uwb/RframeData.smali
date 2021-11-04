.class public Lsamsung/uwb/RframeData;
.super Ljava/lang/Object;
.source "RframeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RframeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNoOfRframeMeasures:I

.field private mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

.field private mSessionId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lsamsung/uwb/RframeData$1;

    invoke-direct {v0}, Lsamsung/uwb/RframeData$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RframeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI[Lsamsung/uwb/RframeMeasures;)V
    .registers 5
    .param p1, "mSessionId"    # J
    .param p3, "mNoOfRframeMeasures"    # I
    .param p4, "mRframeMeasures"    # [Lsamsung/uwb/RframeMeasures;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lsamsung/uwb/RframeData;->mSessionId:J

    .line 28
    iput p3, p0, Lsamsung/uwb/RframeData;->mNoOfRframeMeasures:I

    .line 29
    iput-object p4, p0, Lsamsung/uwb/RframeData;->mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/RframeData;->mSessionId:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeData;->mNoOfRframeMeasures:I

    .line 59
    sget-object v0, Lsamsung/uwb/RframeMeasures;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsamsung/uwb/RframeMeasures;

    iput-object v0, p0, Lsamsung/uwb/RframeData;->mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getNoOfRframeMeasures()I
    .registers 2

    .line 37
    iget v0, p0, Lsamsung/uwb/RframeData;->mNoOfRframeMeasures:I

    return v0
.end method

.method public getRframeMeasures()[Lsamsung/uwb/RframeMeasures;
    .registers 2

    .line 41
    iget-object v0, p0, Lsamsung/uwb/RframeData;->mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

    return-object v0
.end method

.method public getSessionId()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lsamsung/uwb/RframeData;->mSessionId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RframeData {, sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/RframeData;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", noOfrframeMeasures = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeData;->mNoOfRframeMeasures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rframeMeasures = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RframeData;->mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

    .line 79
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 51
    iget-wide v0, p0, Lsamsung/uwb/RframeData;->mSessionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    iget v0, p0, Lsamsung/uwb/RframeData;->mNoOfRframeMeasures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Lsamsung/uwb/RframeData;->mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 54
    return-void
.end method
