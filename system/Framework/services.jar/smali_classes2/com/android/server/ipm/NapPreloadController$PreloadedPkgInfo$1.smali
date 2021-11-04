.class Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo$1;
.super Ljava/lang/Object;
.source "NapPreloadController.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 124
    new-instance v0, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    invoke-direct {v0, p1}, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    .registers 3
    .param p1, "size"    # I

    .line 129
    new-array v0, p1, [Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo$1;->newArray(I)[Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    move-result-object p1

    return-object p1
.end method
