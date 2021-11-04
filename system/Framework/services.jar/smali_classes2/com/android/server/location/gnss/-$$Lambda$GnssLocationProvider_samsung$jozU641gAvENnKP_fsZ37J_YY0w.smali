.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$jozU641gAvENnKP_fsZ37J_YY0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$jozU641gAvENnKP_fsZ37J_YY0w;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider_samsung$jozU641gAvENnKP_fsZ37J_YY0w;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->lambda$requestWlanScanInfo$1$GnssLocationProvider_samsung()V

    return-void
.end method
