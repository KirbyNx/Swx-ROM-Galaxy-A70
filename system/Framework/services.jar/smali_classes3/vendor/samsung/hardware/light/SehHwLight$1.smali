.class Lvendor/samsung/hardware/light/SehHwLight$1;
.super Ljava/lang/Object;
.source "SehHwLight.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/light/SehHwLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/hardware/light/SehHwLight;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/light/SehHwLight$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/light/SehHwLight;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 16
    new-instance v0, Lvendor/samsung/hardware/light/SehHwLight;

    invoke-direct {v0}, Lvendor/samsung/hardware/light/SehHwLight;-><init>()V

    .line 17
    .local v0, "_aidl_out":Lvendor/samsung/hardware/light/SehHwLight;
    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/light/SehHwLight;->readFromParcel(Landroid/os/Parcel;)V

    .line 18
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/light/SehHwLight$1;->newArray(I)[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/samsung/hardware/light/SehHwLight;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 22
    new-array v0, p1, [Lvendor/samsung/hardware/light/SehHwLight;

    return-object v0
.end method
