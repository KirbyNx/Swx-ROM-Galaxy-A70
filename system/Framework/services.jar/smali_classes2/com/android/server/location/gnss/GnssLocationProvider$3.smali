.class Lcom/android/server/location/gnss/GnssLocationProvider$3;
.super Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 789
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected isGpsEnabled()Z
    .registers 2

    .line 792
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    return v0
.end method
