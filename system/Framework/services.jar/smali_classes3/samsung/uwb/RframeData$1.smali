.class Lsamsung/uwb/RframeData$1;
.super Ljava/lang/Object;
.source "RframeData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/RframeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/RframeData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lsamsung/uwb/RframeData$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/RframeData;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/RframeData;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 65
    new-instance v0, Lsamsung/uwb/RframeData;

    invoke-direct {v0, p1}, Lsamsung/uwb/RframeData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lsamsung/uwb/RframeData$1;->newArray(I)[Lsamsung/uwb/RframeData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lsamsung/uwb/RframeData;
    .registers 3
    .param p1, "size"    # I

    .line 70
    new-array v0, p1, [Lsamsung/uwb/RframeData;

    return-object v0
.end method
