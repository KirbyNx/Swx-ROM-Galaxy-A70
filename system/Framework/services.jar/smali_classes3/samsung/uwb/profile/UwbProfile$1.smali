.class Lsamsung/uwb/profile/UwbProfile$1;
.super Ljava/lang/Object;
.source "UwbProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/profile/UwbProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/profile/UwbProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lsamsung/uwb/profile/UwbProfile$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/profile/UwbProfile;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/profile/UwbProfile;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    new-instance v0, Lsamsung/uwb/profile/UwbProfile;

    invoke-direct {v0, p1}, Lsamsung/uwb/profile/UwbProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lsamsung/uwb/profile/UwbProfile$1;->newArray(I)[Lsamsung/uwb/profile/UwbProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lsamsung/uwb/profile/UwbProfile;
    .registers 3
    .param p1, "size"    # I

    .line 56
    new-array v0, p1, [Lsamsung/uwb/profile/UwbProfile;

    return-object v0
.end method
