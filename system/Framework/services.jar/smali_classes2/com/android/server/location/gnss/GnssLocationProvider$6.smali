.class Lcom/android/server/location/gnss/GnssLocationProvider$6;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 822
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$6;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 825
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$6;->getSendingUserId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 826
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$6;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    .line 827
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$6;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 829
    :cond_11
    return-void
.end method
