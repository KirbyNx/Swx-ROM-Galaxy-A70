.class Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioManagerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method private constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 2

    .line 456
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/media/SystemMediaRoute2Provider;
    .param p2, "x1"    # Lcom/android/server/media/SystemMediaRoute2Provider$1;

    .line 456
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 461
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x19

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2d

    .line 462
    const-string v0, "com.samsung.android.bluetooth.cast.extra.STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 463
    .local v0, "state":I
    const-string v5, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 464
    .local v5, "role":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2c

    .line 465
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 466
    if-ne v0, v6, :cond_26

    goto :goto_27

    :cond_26
    move v3, v4

    .line 465
    :goto_27
    const-string v4, "MUSIC_SHARE"

    # invokes: Lcom/android/server/media/SystemMediaRoute2Provider;->postDeviceRoute(Ljava/lang/String;Ljava/lang/String;ZI)V
    invoke-static {v7, v4, v2, v3, v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->access$300(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 468
    .end local v0    # "state":I
    .end local v5    # "role":I
    :cond_2c
    goto :goto_81

    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "SCREEN_MIRRORING"

    const-string/jumbo v6, "state"

    if-eqz v0, :cond_4c

    .line 469
    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 470
    .restart local v0    # "state":I
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    if-ne v0, v3, :cond_47

    goto :goto_48

    :cond_47
    move v3, v4

    :goto_48
    # invokes: Lcom/android/server/media/SystemMediaRoute2Provider;->postDeviceRoute(Ljava/lang/String;Ljava/lang/String;ZI)V
    invoke-static {v6, v5, v2, v3, v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->access$300(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 471
    .end local v0    # "state":I
    goto :goto_81

    :cond_4c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 472
    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 473
    .restart local v0    # "state":I
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    if-ne v0, v3, :cond_61

    goto :goto_62

    :cond_61
    move v3, v4

    :goto_62
    # invokes: Lcom/android/server/media/SystemMediaRoute2Provider;->postDeviceRoute(Ljava/lang/String;Ljava/lang/String;ZI)V
    invoke-static {v6, v5, v2, v3, v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->access$300(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V

    .end local v0    # "state":I
    goto :goto_80

    .line 474
    :cond_66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 475
    const-string v0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 476
    .restart local v0    # "state":I
    if-nez v0, :cond_81

    .line 477
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/media/SystemMediaRoute2Provider;->mHdmiRoute:Landroid/media/MediaRoute2Info;

    goto :goto_81

    .line 474
    .end local v0    # "state":I
    :cond_80
    :goto_80
    nop

    .line 482
    :cond_81
    :goto_81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 483
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 484
    return-void

    .line 487
    :cond_9a
    const/4 v0, -0x1

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 488
    .local v0, "streamType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_a5

    .line 489
    return-void

    .line 492
    :cond_a5
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    .line 493
    return-void
.end method
