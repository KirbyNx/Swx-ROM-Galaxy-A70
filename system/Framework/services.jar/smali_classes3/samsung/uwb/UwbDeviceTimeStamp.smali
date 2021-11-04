.class public Lsamsung/uwb/UwbDeviceTimeStamp;
.super Ljava/lang/Object;
.source "UwbDeviceTimeStamp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbDeviceTimeStamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMicroSeconds:I

.field private mSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lsamsung/uwb/UwbDeviceTimeStamp$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbDeviceTimeStamp$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbDeviceTimeStamp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "seconds"    # I
    .param p2, "microSeconds"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mSeconds:I

    .line 26
    iput p2, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mMicroSeconds:I

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mSeconds:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mMicroSeconds:I

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getMicroSeconds()I
    .registers 2

    .line 34
    iget v0, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mMicroSeconds:I

    return v0
.end method

.method public getSeconds()I
    .registers 2

    .line 30
    iget v0, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbDeviceTimeStamp {, UciMajorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", UciMinorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mMicroSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 44
    iget v0, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lsamsung/uwb/UwbDeviceTimeStamp;->mMicroSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void
.end method
