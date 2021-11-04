.class Lsamsung/uwb/UwbMulticastListUpdateEvent$1;
.super Ljava/lang/Object;
.source "UwbMulticastListUpdateEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/UwbMulticastListUpdateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/UwbMulticastListUpdateEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lsamsung/uwb/UwbMulticastListUpdateEvent$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/UwbMulticastListUpdateEvent;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/UwbMulticastListUpdateEvent;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 81
    new-instance v0, Lsamsung/uwb/UwbMulticastListUpdateEvent;

    invoke-direct {v0, p1}, Lsamsung/uwb/UwbMulticastListUpdateEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lsamsung/uwb/UwbMulticastListUpdateEvent$1;->newArray(I)[Lsamsung/uwb/UwbMulticastListUpdateEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lsamsung/uwb/UwbMulticastListUpdateEvent;
    .registers 3
    .param p1, "size"    # I

    .line 86
    new-array v0, p1, [Lsamsung/uwb/UwbMulticastListUpdateEvent;

    return-object v0
.end method
