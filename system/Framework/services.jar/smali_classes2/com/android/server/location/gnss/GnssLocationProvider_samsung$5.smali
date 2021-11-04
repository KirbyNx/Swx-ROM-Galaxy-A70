.class Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->checkUDPSuplInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field socket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 3501
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 3505
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 3506
    :goto_c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->isUDPListen:Z
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$3700(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 3509
    const/16 v0, 0x5dc

    :try_start_16
    new-array v0, v0, [B

    .line 3510
    .local v0, "buf":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 3511
    .local v1, "packet":Ljava/net/DatagramPacket;
    new-instance v2, Ljava/net/DatagramSocket;

    const/16 v3, 0x1c6b

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;->socket:Ljava/net/DatagramSocket;

    .line 3512
    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 3522
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 3524
    const-string v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "received data through 7275 UDP port"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    if-lez v2, :cond_62

    .line 3526
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3527
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "packet_data"

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3528
    const-string/jumbo v3, "packet_length"

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3529
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    iget-object v3, v3, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3531
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_62
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_67} :catch_68

    .end local v0    # "buf":[B
    .end local v1    # "packet":Ljava/net/DatagramPacket;
    goto :goto_70

    .line 3532
    :catch_68
    move-exception v0

    .line 3533
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$5;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_70

    .line 3534
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 3536
    .end local v0    # "e":Ljava/io/IOException;
    :cond_70
    :goto_70
    goto :goto_c

    .line 3538
    :cond_71
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 3539
    return-void
.end method
