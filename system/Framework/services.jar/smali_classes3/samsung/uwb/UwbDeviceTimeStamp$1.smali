.class Lsamsung/uwb/UwbDeviceTimeStamp$1;
.super Ljava/lang/Object;
.source "UwbDeviceTimeStamp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/UwbDeviceTimeStamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/UwbDeviceTimeStamp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lsamsung/uwb/UwbDeviceTimeStamp$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/UwbDeviceTimeStamp;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/UwbDeviceTimeStamp;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 56
    new-instance v0, Lsamsung/uwb/UwbDeviceTimeStamp;

    invoke-direct {v0, p1}, Lsamsung/uwb/UwbDeviceTimeStamp;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lsamsung/uwb/UwbDeviceTimeStamp$1;->newArray(I)[Lsamsung/uwb/UwbDeviceTimeStamp;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lsamsung/uwb/UwbDeviceTimeStamp;
    .registers 3
    .param p1, "size"    # I

    .line 61
    new-array v0, p1, [Lsamsung/uwb/UwbDeviceTimeStamp;

    return-object v0
.end method
