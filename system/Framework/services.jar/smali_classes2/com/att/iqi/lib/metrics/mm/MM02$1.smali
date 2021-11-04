.class final Lcom/att/iqi/lib/metrics/mm/MM02$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/metrics/mm/MM02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/att/iqi/lib/metrics/mm/MM02;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/mm/MM02;
    .registers 3

    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM02;

    invoke-direct {v0, p1}, Lcom/att/iqi/lib/metrics/mm/MM02;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/mm/MM02$1;->createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/mm/MM02;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/att/iqi/lib/metrics/mm/MM02;
    .registers 2

    new-array p1, p1, [Lcom/att/iqi/lib/metrics/mm/MM02;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/mm/MM02$1;->newArray(I)[Lcom/att/iqi/lib/metrics/mm/MM02;

    move-result-object p1

    return-object p1
.end method
