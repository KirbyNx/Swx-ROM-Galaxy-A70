.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$fZsexTbhhXxbzu9E9XIT682MN4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$fZsexTbhhXxbzu9E9XIT682MN4A;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$fZsexTbhhXxbzu9E9XIT682MN4A;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$fZsexTbhhXxbzu9E9XIT682MN4A;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$fZsexTbhhXxbzu9E9XIT682MN4A;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$setTopHalCapabilities$7$GnssLocationProvider(I)V

    return-void
.end method