.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$ezDFQHbzZ9WnxJSpYWB6YP4YDQM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$ezDFQHbzZ9WnxJSpYWB6YP4YDQM;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    iput-object p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$ezDFQHbzZ9WnxJSpYWB6YP4YDQM;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$ezDFQHbzZ9WnxJSpYWB6YP4YDQM;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    iget-object v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$ezDFQHbzZ9WnxJSpYWB6YP4YDQM;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->lambda$runEventAndReleaseWakeLock$2$GnssNetworkConnectivityHandler(Ljava/lang/Runnable;)V

    return-void
.end method
