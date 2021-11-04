.class Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 10612
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 10612
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 10624
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 10626
    .local v2, "action":Ljava/lang/String;
    const-string v3, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 10627
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0x65

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_721

    .line 10628
    :cond_22
    const-string v3, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "AS.AudioService"

    const/4 v5, 0x0

    if-eqz v3, :cond_5f

    .line 10629
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, "value"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v3, v5}, Lcom/android/server/audio/AudioService;->access$11402(Lcom/android/server/audio/AudioService;I)I

    .line 10630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleIntent: mNbQualityMode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$11400(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10631
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$11400(Lcom/android/server/audio/AudioService;)I

    move-result v4

    # invokes: Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V
    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_721

    .line 10632
    :cond_5f
    const-string v3, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v6, "isSupportDisplayVolumeControl"

    const-string/jumbo v7, "state"

    const v8, 0x8000

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v3, :cond_1cf

    .line 10633
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10634
    .local v3, "state":I
    iget-object v7, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7, v9}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 10635
    .local v7, "musicDevice":I
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isWifiDisplayConnected()Z

    move-result v11

    .line 10636
    .local v11, "isConnected":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WifiDisplay device state:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " isConnected:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10637
    iget-object v12, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v12

    invoke-virtual {v12, v8, v3, v7}, Lcom/android/server/audio/AudioDeviceBroker;->checkSendBecomingNoisyIntent(III)I

    .line 10640
    iget-object v12, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v13

    if-ne v3, v10, :cond_af

    move v14, v10

    goto :goto_b0

    :cond_af
    move v14, v5

    :goto_b0
    const v15, 0x8000

    const/16 v18, 0x0

    const-string v16, "0"

    const-string/jumbo v17, "remote_submix"

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V

    .line 10646
    if-ne v3, v10, :cond_111

    if-nez v11, :cond_111

    .line 10647
    const-string v12, "WifiDisplay is connected."

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10648
    iget-object v12, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->getLiveCaptionEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_fe

    .line 10649
    iget-object v12, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v12, v12, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10650
    iget-object v12, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v12, v12, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10651
    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V
    invoke-static {v8, v9}, Lcom/android/server/audio/AudioService;->access$11700(Lcom/android/server/audio/AudioService;I)V

    .line 10652
    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 10655
    :cond_fe
    invoke-static {v10}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setWifiDisplayConnected(Z)V

    .line 10656
    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->registerDeviceStatusListener(Landroid/content/Context;)V

    goto :goto_17e

    .line 10658
    :cond_111
    if-nez v3, :cond_17e

    if-eqz v11, :cond_17e

    .line 10659
    const-string v12, "WifiDisplay is disconnected."

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10660
    iget-object v12, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->getLiveCaptionEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_152

    .line 10661
    iget-object v12, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v12, v12, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10662
    iget-object v12, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v12, v12, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10663
    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V
    invoke-static {v8, v9}, Lcom/android/server/audio/AudioService;->access$11700(Lcom/android/server/audio/AudioService;I)V

    .line 10664
    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 10667
    :cond_152
    invoke-static {v5}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setWifiDisplayConnected(Z)V

    .line 10668
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v8

    if-eqz v8, :cond_16c

    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v8

    if-eqz v8, :cond_16c

    .line 10669
    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 10671
    :cond_16c
    invoke-static {v5}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    .line 10672
    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->unregisterDeviceStatusListener(Landroid/content/Context;)V

    .line 10676
    :cond_17e
    :goto_17e
    sget-boolean v8, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v8, :cond_1cd

    .line 10677
    if-ne v3, v10, :cond_192

    .line 10678
    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v8

    .line 10679
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 10678
    invoke-virtual {v8, v5}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    goto :goto_19b

    .line 10681
    :cond_192
    iget-object v6, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    .line 10683
    :goto_19b
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 10684
    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSupportDisplayVolumeControl()Z

    move-result v6

    .line 10683
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setScreenSharingStateResumed(Z)V

    .line 10685
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSupportDisplayVolumeControl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSupportDisplayVolumeControl()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10687
    .end local v3    # "state":I
    .end local v7    # "musicDevice":I
    .end local v11    # "isConnected":Z
    :cond_1cd
    goto/16 :goto_721

    :cond_1cf
    nop

    .line 10688
    const-string v3, "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22d

    .line 10689
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10691
    .restart local v3    # "state":I
    sget-boolean v7, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v7, :cond_22b

    .line 10692
    if-ne v3, v10, :cond_1f0

    .line 10693
    iget-object v7, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v7

    .line 10694
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 10693
    invoke-virtual {v7, v5}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    goto :goto_1f9

    .line 10696
    :cond_1f0
    iget-object v6, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    .line 10698
    :goto_1f9
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 10699
    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSupportDisplayVolumeControl()Z

    move-result v6

    .line 10698
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setScreenSharingStateResumed(Z)V

    .line 10701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive SEM_WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED isSupportDisplayVolumeControl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 10702
    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSupportDisplayVolumeControl()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10701
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10704
    .end local v3    # "state":I
    :cond_22b
    goto/16 :goto_721

    :cond_22d
    const-string v3, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_267

    .line 10705
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10707
    .restart local v3    # "state":I
    iget-object v6, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v11

    if-ne v3, v10, :cond_243

    move v12, v10

    goto :goto_244

    :cond_243
    move v12, v5

    :goto_244
    const v13, 0x8000

    const/16 v16, 0x0

    const-string v14, "0"

    const-string/jumbo v15, "remote_submix"

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V

    .line 10712
    if-ne v3, v10, :cond_25f

    .line 10713
    const-string v5, "GoogleCastDevice is connected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10714
    const-string/jumbo v4, "l_smart_view_enable=true"

    invoke-static {v4}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto :goto_265

    .line 10717
    :cond_25f
    const-string/jumbo v4, "l_smart_view_enable=false"

    invoke-static {v4}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 10720
    .end local v3    # "state":I
    :goto_265
    goto/16 :goto_721

    :cond_267
    const-string v3, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_294

    .line 10721
    const-string v3, "CONNECTION_MODE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10722
    .local v3, "connectionMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "l_smart_view_fixed_volume_enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10724
    if-ne v3, v10, :cond_286

    const-string/jumbo v5, "true"

    goto :goto_288

    .line 10725
    :cond_286
    const-string v5, "false"

    :goto_288
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10722
    invoke-static {v4}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 10726
    .end local v3    # "connectionMode":I
    goto/16 :goto_721

    :cond_294
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v6, "l_bigdata_logging"

    if-eqz v3, :cond_2b8

    .line 10728
    new-instance v3, Lcom/samsung/android/media/AudioParameter;

    .line 10729
    invoke-static {v6}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    .line 10730
    .local v3, "audioParam":Lcom/samsung/android/media/AudioParameter;
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHqmHelper:Lcom/samsung/android/server/audio/AudioHqmHelper;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioHqmHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v10}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmAudioData(Lcom/samsung/android/media/AudioParameter;Z)V

    .line 10733
    .end local v3    # "audioParam":Lcom/samsung/android/media/AudioParameter;
    const-string v3, "dev_shutdown=true"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_721

    .line 10734
    :cond_2b8
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cb

    .line 10736
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->updateAudioServiceNotificationChannel()V

    goto/16 :goto_721

    .line 10738
    :cond_2cb
    const-string v3, "com.sec.tms.audio.server"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30b

    .line 10739
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10740
    .local v3, "state":I
    const-string v5, "app"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10741
    .local v5, "app":Ljava/lang/String;
    const-string/jumbo v6, "server"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 10742
    .local v6, "isServeMode":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_TMS_STATE_CHANGED app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10743
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Lcom/android/server/audio/AudioDeviceBroker;->handleTmsStateChange(ZI)V

    .line 10744
    .end local v3    # "state":I
    .end local v5    # "app":Ljava/lang/String;
    .end local v6    # "isServeMode":Z
    goto/16 :goto_721

    :cond_30b
    const-string v3, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32c

    .line 10745
    const-string v3, "[logging] receive ACTION_AUDIOCORE_LOGGING"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10746
    new-instance v3, Lcom/samsung/android/media/AudioParameter;

    .line 10747
    invoke-static {v6}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    .line 10748
    .local v3, "audioParam":Lcom/samsung/android/media/AudioParameter;
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHqmHelper:Lcom/samsung/android/server/audio/AudioHqmHelper;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioHqmHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v10}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmAudioData(Lcom/samsung/android/media/AudioParameter;Z)V

    .line 10749
    .end local v3    # "audioParam":Lcom/samsung/android/media/AudioParameter;
    goto/16 :goto_721

    :cond_32c
    const-string v3, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_350

    .line 10750
    const-string v3, "[logging] receive ACTION_AUDIOCORE_BIGDATA_APP"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10751
    new-instance v3, Lcom/samsung/android/media/AudioParameter;

    .line 10752
    const-string/jumbo v4, "l_bigdata_logging;l_bigdata_app"

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    .line 10754
    .restart local v3    # "audioParam":Lcom/samsung/android/media/AudioParameter;
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHqmHelper:Lcom/samsung/android/server/audio/AudioHqmHelper;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioHqmHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v10}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmAudioData(Lcom/samsung/android/media/AudioParameter;Z)V

    .line 10755
    .end local v3    # "audioParam":Lcom/samsung/android/media/AudioParameter;
    goto/16 :goto_721

    :cond_350
    const-string v3, "com.sec.media.action.mute_interval"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35f

    .line 10756
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkMuteInterval()V
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$11900(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_721

    .line 10757
    :cond_35f
    const-string v3, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37a

    .line 10758
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "mute"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/audio/AudioService;->mAllSoundMute:I
    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$12002(Lcom/android/server/audio/AudioService;I)I

    .line 10759
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setAllSoundMute()V
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_721

    .line 10760
    :cond_37a
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v3, :cond_3ba

    const-string v3, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ba

    .line 10761
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10762
    .local v3, "status":I
    iget-object v6, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v6

    if-ne v3, v10, :cond_396

    move v5, v10

    :cond_396
    invoke-virtual {v6, v5}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setDLNAEnabled(Z)V

    .line 10763
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsDLNAEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isDLNAEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10764
    .end local v3    # "status":I
    goto/16 :goto_721

    :cond_3ba
    const-string v3, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_413

    .line 10765
    const-string v3, "EXTRA_RAT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10766
    .local v3, "extra_rat":I
    const-string v6, "EXTRA_STATE"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 10767
    .local v5, "extra_state":I
    const/16 v6, 0x8

    if-ne v5, v6, :cond_3df

    .line 10768
    const-string/jumbo v6, "wb_amr swb"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10769
    const-string/jumbo v4, "g_call_band=swb"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_3fa

    .line 10771
    :cond_3df
    if-ne v5, v10, :cond_3ee

    .line 10772
    const-string/jumbo v6, "wb_amr wb"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10773
    const-string/jumbo v4, "g_call_band=wb"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_3fa

    .line 10776
    :cond_3ee
    const-string/jumbo v6, "wb_amr nb"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10777
    const-string/jumbo v4, "g_call_band=nb"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10780
    :goto_3fa
    if-eqz v3, :cond_411

    .line 10781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "l_call_rat_type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 10783
    .end local v3    # "extra_rat":I
    .end local v5    # "extra_state":I
    :cond_411
    goto/16 :goto_721

    :cond_413
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_434

    .line 10784
    const-string v3, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10785
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPhoneStateHelper:Lcom/samsung/android/server/audio/PhoneStateHelper;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PhoneStateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/PhoneStateHelper;->unregisterPhoneStateListener()V

    .line 10786
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPhoneStateHelper:Lcom/samsung/android/server/audio/PhoneStateHelper;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PhoneStateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/PhoneStateHelper;->registerPhoneStateListener()V

    goto/16 :goto_721

    .line 10787
    :cond_434
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "com.samsung.android.soundassistant"

    const-string v7, "android.intent.extra.UID"

    const/4 v11, -0x1

    if-eqz v3, :cond_534

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_534

    .line 10789
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 10790
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 10791
    .local v7, "uid":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") is removed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10793
    const-string v4, "com.samsung.android.oneconnect"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_483

    .line 10794
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetPinDevice()V

    goto :goto_4f3

    .line 10796
    :cond_483
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v4

    invoke-virtual {v4, v7, v10}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    move-result v4

    if-eqz v4, :cond_4c6

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 10797
    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/server/audio/MultiSoundManager;->removeItem(I)Z

    move-result v4

    if-eqz v4, :cond_4c6

    .line 10798
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v12

    const/16 v13, 0x6b

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 10799
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x0

    .line 10798
    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v12 .. v18}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10800
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const-string/jumbo v9, "multisound_app"

    invoke-static {v4, v9, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10801
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->showToast()V

    .line 10803
    :cond_4c6
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v4, Lcom/android/server/audio/AudioService;->mIgnoreAudioFocusUid:I

    if-ne v4, v7, :cond_4d9

    .line 10804
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iput v11, v4, Lcom/android/server/audio/AudioService;->mIgnoreAudioFocusUid:I

    .line 10805
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Lcom/android/server/audio/MediaFocusControl;->setIgnoreAudioFocus(IZ)V

    .line 10808
    :cond_4d9
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$12300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PackageListHelper;

    move-result-object v4

    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8, v3}, Lcom/samsung/android/server/audio/PackageListHelper;->removePackageForName(Landroid/content/Context;Ljava/lang/String;)V

    .line 10810
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v4

    const/16 v8, 0x64

    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolume(II)V

    .line 10817
    :goto_4f3
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v4, :cond_4fc

    .line 10818
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAndBroadcastKaraokeInstalled(Ljava/lang/String;Z)V
    invoke-static {v4, v3, v5}, Lcom/android/server/audio/AudioService;->access$12400(Lcom/android/server/audio/AudioService;Ljava/lang/String;Z)V

    .line 10821
    :cond_4fc
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$12500(Lcom/android/server/audio/AudioService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->delete(I)V

    .line 10823
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_510

    .line 10824
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->clearSoundAssistantSettings()V
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$12600(Lcom/android/server/audio/AudioService;)V

    .line 10827
    :cond_510
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->unSetSoundSettingEventBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService;->access$12700(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 10829
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v4

    if-eqz v4, :cond_532

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_532

    .line 10830
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/server/audio/AudioGameManager;->deleteGameUid(I)V

    .line 10833
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_532
    goto/16 :goto_721

    :cond_534
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_594

    .line 10834
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 10835
    .restart local v3    # "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 10836
    .local v4, "uid":I
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55f

    .line 10837
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PackageListHelper;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v4, v3}, Lcom/samsung/android/server/audio/PackageListHelper;->addPackage(Landroid/content/Context;ILjava/lang/String;)V

    .line 10839
    :cond_55f
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v5, :cond_568

    .line 10840
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAndBroadcastKaraokeInstalled(Ljava/lang/String;Z)V
    invoke-static {v5, v3, v10}, Lcom/android/server/audio/AudioService;->access$12400(Lcom/android/server/audio/AudioService;Ljava/lang/String;Z)V

    .line 10842
    :cond_568
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_575

    .line 10843
    if-eq v4, v11, :cond_575

    .line 10844
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->registerBackgroundWhitelistForSoundAssistant(I)V
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$12800(Lcom/android/server/audio/AudioService;I)V

    .line 10848
    :cond_575
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v5

    if-eqz v5, :cond_592

    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_592

    .line 10849
    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    .line 10851
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_592
    goto/16 :goto_721

    :cond_594
    const-string v3, "android.intent.action.TurnOff_MultiSound"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "enabled"

    if-eqz v3, :cond_5ca

    .line 10852
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0x6b

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 10853
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    .line 10852
    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10854
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 10855
    .local v3, "intentMultiSound":Landroid/content/Intent;
    const-string v4, "com.samsung.android.setting.multisound"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10856
    const-string v4, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10857
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10858
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 10859
    .end local v3    # "intentMultiSound":Landroid/content/Intent;
    goto/16 :goto_721

    :cond_5ca
    const-string v3, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5dd

    .line 10860
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearNotification()V

    goto/16 :goto_721

    .line 10861
    :cond_5dd
    const-string v3, "com.samsung.android.audio.headup.close"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f0

    .line 10862
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearHeadUpNotification()V

    goto/16 :goto_721

    .line 10863
    :cond_5f0
    const-string v3, "com.samsung.android.audio.headup.changedevice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_620

    .line 10864
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getPinDevice()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    move-result v3

    .line 10865
    .local v3, "priorityDevice":I
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 10866
    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/audio/AudioDeviceBroker;->getAddressForDevice(I)Ljava/lang/String;

    move-result-object v6

    .line 10865
    invoke-virtual {v4, v3, v6, v5}, Lcom/android/server/audio/AudioService;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    .line 10867
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearHeadUpNotification()V

    .line 10868
    .end local v3    # "priorityDevice":I
    goto/16 :goto_721

    :cond_620
    const-string/jumbo v3, "sec.app.policy.UPDATE.audio"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63f

    .line 10869
    const-string v3, "SoundAppPolicy reload white list"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10870
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$12900(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->reloadAllowedList(Landroid/content/Context;)V

    goto/16 :goto_721

    .line 10871
    :cond_63f
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_652

    .line 10873
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->receiveBtEvent(Landroid/content/Intent;)V

    goto/16 :goto_721

    .line 10874
    :cond_652
    const-string v3, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66b

    .line 10875
    const-string v3, "enable"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 10876
    .local v3, "enabled":Z
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setDualA2dpMode(Z)V

    .line 10877
    .end local v3    # "enabled":Z
    goto/16 :goto_721

    :cond_66b
    const-string v3, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_686

    .line 10878
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 10879
    .local v3, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 10880
    .end local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_721

    :cond_686
    const-string v3, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6ef

    .line 10881
    const-string v3, "com.samsung.android.bluetooth.cast.extra.STATE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10882
    .local v3, "state":I
    const-string v6, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 10883
    .local v6, "role":I
    iget-object v7, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7, v9}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 10884
    .local v7, "musicDevice":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BT cast device state:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " role : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10886
    const/4 v4, 0x2

    if-eq v3, v4, :cond_6c1

    if-nez v3, :cond_6ee

    .line 10887
    :cond_6c1
    iget-object v9, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    if-ne v3, v4, :cond_6c7

    move v11, v10

    goto :goto_6c8

    :cond_6c7
    move v11, v5

    :goto_6c8
    # setter for: Lcom/android/server/audio/AudioService;->mIsBluetoothCastState:Z
    invoke-static {v9, v11}, Lcom/android/server/audio/AudioService;->access$8602(Lcom/android/server/audio/AudioService;Z)Z

    .line 10888
    iget-object v9, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v9

    invoke-virtual {v9, v8, v3, v7}, Lcom/android/server/audio/AudioDeviceBroker;->checkSendBecomingNoisyIntent(III)I

    .line 10889
    if-ne v6, v4, :cond_6ee

    .line 10890
    iget-object v8, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v11

    if-ne v3, v4, :cond_6e0

    move v12, v10

    goto :goto_6e1

    :cond_6e0
    move v12, v5

    :goto_6e1
    const v13, 0x8000

    const/16 v16, 0x0

    const-string v14, "0"

    const-string/jumbo v15, "remote_submix"

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V

    .line 10896
    .end local v3    # "state":I
    .end local v6    # "role":I
    .end local v7    # "musicDevice":I
    :cond_6ee
    goto :goto_721

    :cond_6ef
    const-string v3, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_712

    .line 10897
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$13000(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/GoodCatchManager;

    move-result-object v3

    if-nez v3, :cond_721

    .line 10898
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v4, Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object v5, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "AudioService"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    # setter for: Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;
    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$13002(Lcom/android/server/audio/AudioService;Lcom/samsung/android/server/audio/GoodCatchManager;)Lcom/samsung/android/server/audio/GoodCatchManager;

    goto :goto_721

    .line 10900
    :cond_712
    const-string v3, "com.sec.android.intent.action.SPLIT_SOUND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_721

    .line 10901
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 10902
    .local v3, "splitSoundEnabled":Z
    invoke-static {v3}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    .line 10904
    .end local v3    # "splitSoundEnabled":Z
    :cond_721
    :goto_721
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 10617
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 10620
    goto :goto_8

    .line 10618
    :catch_4
    move-exception v0

    .line 10619
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10621
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method
