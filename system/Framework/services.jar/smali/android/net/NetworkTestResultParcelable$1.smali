.class Landroid/net/NetworkTestResultParcelable$1;
.super Ljava/lang/Object;
.source "NetworkTestResultParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkTestResultParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkTestResultParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkTestResultParcelable;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 20
    new-instance v0, Landroid/net/NetworkTestResultParcelable;

    invoke-direct {v0}, Landroid/net/NetworkTestResultParcelable;-><init>()V

    .line 21
    .local v0, "_aidl_out":Landroid/net/NetworkTestResultParcelable;
    invoke-virtual {v0, p1}, Landroid/net/NetworkTestResultParcelable;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Landroid/net/NetworkTestResultParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkTestResultParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/NetworkTestResultParcelable;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 26
    new-array v0, p1, [Landroid/net/NetworkTestResultParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Landroid/net/NetworkTestResultParcelable$1;->newArray(I)[Landroid/net/NetworkTestResultParcelable;

    move-result-object p1

    return-object p1
.end method
