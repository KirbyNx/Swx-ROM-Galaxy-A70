.class Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 187
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>(Landroid/os/Parcel;Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 3
    .param p1, "size"    # I

    .line 192
    new-array v0, p1, [Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;->newArray(I)[Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object p1

    return-object p1
.end method
