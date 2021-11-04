.class Lcom/android/server/display/WifiDisplayController$38;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$NativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .line 2525
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(ILjava/lang/String;)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 2528
    const-string/jumbo v0, "isMute"

    const-string v1, "curVol"

    const-string/jumbo v2, "maxVol"

    const-string/jumbo v3, "minVol"

    const/4 v4, 0x1

    const-string v5, "WifiDisplayController"

    if-eq p1, v4, :cond_2e5

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2cd

    const/4 v6, 0x3

    if-eq p1, v6, :cond_2b5

    const/4 v7, 0x7

    if-eq p1, v7, :cond_281

    const/16 v7, 0x28

    if-eq p1, v7, :cond_249

    const/16 v7, 0x32

    if-eq p1, v7, :cond_23d

    const/16 v7, 0x3c

    if-eq p1, v7, :cond_201

    const/16 v7, 0x46

    const/16 v8, 0x9

    if-eq p1, v7, :cond_15a

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_13a

    const/16 v0, 0x64

    if-eq p1, v0, :cond_10e

    if-eq p1, v8, :cond_a6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_50

    .line 2644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNotify Error,  msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_301

    .line 2584
    :cond_50
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2585
    .local v0, "rotation":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    onNotify received : NOTIFY_ROTATION_CHANGED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    if-nez v0, :cond_6e

    const/16 v8, 0x8

    :cond_6e
    const/4 v2, 0x6

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendRemoteDisplayStateChangeEvent(II)V
    invoke-static {v1, v8, v2}, Lcom/android/server/display/WifiDisplayController;->access$8100(Lcom/android/server/display/WifiDisplayController;II)V

    .line 2589
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2590
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "rotation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2591
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2593
    if-eq v0, v4, :cond_9b

    if-ne v0, v6, :cond_8f

    goto :goto_9b

    .line 2596
    :cond_8f
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    .line 2598
    goto/16 :goto_301

    .line 2594
    :cond_9b
    :goto_9b
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_301

    .line 2601
    .end local v0    # "rotation":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a6
    :try_start_a6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2602
    .local v0, "notifyData":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v2, "UibcAvailable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$8202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2603
    const-string v1, "UibcSamsungMobile"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2604
    .local v1, "isSamsungMobile":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    onNotify received : NOTIFY_SUPPORT_UIBC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$8200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSamsungMobile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$8200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 2607
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/wfd/WFDUibcManager;->start()Z

    .line 2608
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/wfd/WFDUibcManager;->setSinkDevice(Z)V

    goto :goto_102

    .line 2610
    :cond_f9
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/wfd/WFDUibcManager;->stop()Z
    :try_end_102
    .catch Lorg/json/JSONException; {:try_start_a6 .. :try_end_102} :catch_104

    .line 2614
    .end local v0    # "notifyData":Lorg/json/JSONObject;
    .end local v1    # "isSamsungMobile":Z
    :goto_102
    goto/16 :goto_301

    .line 2612
    :catch_104
    move-exception v0

    .line 2613
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    .end local v0    # "e":Lorg/json/JSONException;
    goto/16 :goto_301

    .line 2637
    :cond_10e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    onNotify received : NOTIFY_NOT_DEFINED : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_301

    .line 2639
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayNotifyEvent(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/server/display/WifiDisplayController;->access$4900(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)V

    .line 2640
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->parseParametersFromEngine(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, p2}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayParameterEvent(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$8400(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V

    goto/16 :goto_301

    .line 2630
    :cond_13a
    const-string v0, "    onNotify received : NOTIFY_SWTICH_TCP_FOR_DEMO"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mTransportMode:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-eq v0, v4, :cond_301

    .line 2632
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mTransportMode:I
    invoke-static {v0, v4}, Lcom/android/server/display/WifiDisplayController;->access$6902(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2633
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "tcp"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_301

    .line 2558
    :cond_15a
    :try_start_15a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2559
    .local v4, "jsonObj":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMinVolume:I
    invoke-static {v6, v7}, Lcom/android/server/display/WifiDisplayController;->access$7502(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2560
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMaxVolume:I
    invoke-static {v6, v7}, Lcom/android/server/display/WifiDisplayController;->access$7602(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2561
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDisplayCurrentVolume:I
    invoke-static {v6, v7}, Lcom/android/server/display/WifiDisplayController;->access$7702(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2562
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeMuted:Z
    invoke-static {v6, v7}, Lcom/android/server/display/WifiDisplayController;->access$7802(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_183
    .catch Lorg/json/JSONException; {:try_start_15a .. :try_end_183} :catch_185

    .line 2565
    nop

    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_18d

    .line 2563
    :catch_185
    move-exception v4

    .line 2564
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_18d
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2568
    .local v4, "volumeValue":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMinVolume:I
    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->access$7500(Lcom/android/server/display/WifiDisplayController;)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2569
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMaxVolume:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7600(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2570
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayCurrentVolume:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$7700(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2571
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeMuted:Z
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$7800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2572
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V
    invoke-static {v0, v8, v4}, Lcom/android/server/display/WifiDisplayController;->access$7900(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V

    .line 2573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_STATUS, mDisplayMinVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMinVolume:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$7500(Lcom/android/server/display/WifiDisplayController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayMaxVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMaxVolume:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$7600(Lcom/android/server/display/WifiDisplayController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayCurrentVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayCurrentVolume:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$7700(Lcom/android/server/display/WifiDisplayController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDisplayVolumeMuted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeMuted:Z
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$7800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    goto/16 :goto_301

    .line 2548
    .end local v4    # "volumeValue":Landroid/os/Bundle;
    :cond_201
    :try_start_201
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2549
    .local v0, "jsonObj":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "isSupportDisplayVolumeControl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    onNotify received : [VolumeControl] NOTIFY_DISPLAY_VOLUME_SUPPORT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayVolumeSupportChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$5100(Lcom/android/server/display/WifiDisplayController;)V
    :try_end_231
    .catch Lorg/json/JSONException; {:try_start_201 .. :try_end_231} :catch_233

    .line 2554
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    goto/16 :goto_301

    .line 2552
    :catch_233
    move-exception v0

    .line 2553
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    .end local v0    # "e":Lorg/json/JSONException;
    goto/16 :goto_301

    .line 2626
    :cond_23d
    const-string v0, "    onNotify received : NOTIFY_SCREEN_WAKE_UP"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->wakeUpScreen()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$4000(Lcom/android/server/display/WifiDisplayController;)V

    .line 2628
    goto/16 :goto_301

    .line 2618
    :cond_249
    :try_start_249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2619
    .local v0, "notifyData":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "isSupportInitiatedMirroring"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$8302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    onNotify received : NOTIFY_SUPPORT_INITIATE_MIRRORING = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$8300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_274
    .catch Lorg/json/JSONException; {:try_start_249 .. :try_end_274} :catch_277

    .line 2623
    nop

    .end local v0    # "notifyData":Lorg/json/JSONObject;
    goto/16 :goto_301

    .line 2621
    :catch_277
    move-exception v0

    .line 2622
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    .end local v0    # "e":Lorg/json/JSONException;
    goto/16 :goto_301

    .line 2538
    :cond_281
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2539
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    rem-int/lit8 v2, v0, 0x2

    # setter for: Lcom/android/server/display/WifiDisplayController;->mTransportMode:I
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$6902(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    onNotify received : NOTIFY_TRANSPORT_MODE,  mTransportMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mTransportMode:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    if-ne v2, v4, :cond_2a1

    const-string v2, "TCP"

    goto :goto_2a3

    :cond_2a1
    const-string v2, "UDP"

    :goto_2a3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    if-gt v0, v4, :cond_301

    .line 2543
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendBroadcastTransportMode()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$7400(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_301

    .line 2534
    .end local v0    # "mode":I
    :cond_2b5
    const-string v0, "    onNotify received : NOTIFY_WFD_ENGINE_PAUSE"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.smartview.WFD_ENGINE_PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2536
    goto :goto_301

    .line 2530
    :cond_2cd
    const-string v0, "    onNotify received : NOTIFY_WFD_ENGINE_RESUME"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.smartview.WFD_ENGINE_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2532
    goto :goto_301

    .line 2577
    :cond_2e5
    :try_start_2e5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2578
    .local v0, "notifyData":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$38;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "renameAvailable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/display/WifiDisplayController;->mRenameCapablity:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$8002(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_2f6
    .catch Lorg/json/JSONException; {:try_start_2e5 .. :try_end_2f6} :catch_2f8

    .line 2581
    nop

    .end local v0    # "notifyData":Lorg/json/JSONObject;
    goto :goto_301

    .line 2579
    :catch_2f8
    move-exception v0

    .line 2580
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    .end local v0    # "e":Lorg/json/JSONException;
    nop

    .line 2647
    :cond_301
    :goto_301
    return-void
.end method
