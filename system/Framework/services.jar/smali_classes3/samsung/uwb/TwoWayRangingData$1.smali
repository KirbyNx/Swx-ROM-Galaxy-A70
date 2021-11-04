.class Lsamsung/uwb/TwoWayRangingData$1;
.super Ljava/lang/Object;
.source "TwoWayRangingData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/TwoWayRangingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/TwoWayRangingData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lsamsung/uwb/TwoWayRangingData$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/TwoWayRangingData;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/TwoWayRangingData;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    new-instance v0, Lsamsung/uwb/TwoWayRangingData;

    invoke-direct {v0, p1}, Lsamsung/uwb/TwoWayRangingData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lsamsung/uwb/TwoWayRangingData$1;->newArray(I)[Lsamsung/uwb/TwoWayRangingData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lsamsung/uwb/TwoWayRangingData;
    .registers 3
    .param p1, "size"    # I

    .line 48
    new-array v0, p1, [Lsamsung/uwb/TwoWayRangingData;

    return-object v0
.end method
