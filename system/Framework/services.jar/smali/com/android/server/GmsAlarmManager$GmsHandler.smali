.class Lcom/android/server/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 537
    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    .line 538
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 539
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 543
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ","

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "GmsAlarmManager"

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_358

    goto/16 :goto_356

    .line 684
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->restoreGcmAlarm()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3300(Lcom/android/server/GmsAlarmManager;)V

    .line 685
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkForceReset()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$4000(Lcom/android/server/GmsAlarmManager;)V

    .line 686
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->forceWakeLockBlackListReset()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$4100(Lcom/android/server/GmsAlarmManager;)V

    .line 687
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0, v5}, Lcom/android/server/GmsAlarmManager;->access$2502(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 688
    goto/16 :goto_356

    .line 666
    :pswitch_25
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mUserEnable:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1400(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    const-wide/16 v3, 0x2710

    if-eqz v0, :cond_43

    .line 667
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    .line 668
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v6, v3, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_356

    .line 670
    :cond_43
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    .line 671
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 673
    goto/16 :goto_356

    .line 681
    :pswitch_57
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->checkOnceMultiUserid()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3900(Lcom/android/server/GmsAlarmManager;)V

    .line 682
    goto/16 :goto_356

    .line 675
    :pswitch_5e
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/GmsAlarmManager;->enableMultiUserGmsRestriction(I)V
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$3700(Lcom/android/server/GmsAlarmManager;I)V

    .line 676
    goto/16 :goto_356

    .line 678
    :pswitch_67
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/GmsAlarmManager;->disableMultiUserGmsRestriction(I)V
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$3800(Lcom/android/server/GmsAlarmManager;I)V

    .line 679
    goto/16 :goto_356

    .line 663
    :pswitch_70
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->updateSCPMParametersFromDB()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3600(Lcom/android/server/GmsAlarmManager;)V

    .line 664
    goto/16 :goto_356

    .line 659
    :pswitch_77
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # invokes: Lcom/android/server/GmsAlarmManager;->bigData(J)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/GmsAlarmManager;->access$3400(Lcom/android/server/GmsAlarmManager;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.gmsalarmmanager"

    const-string v3, "GNET"

    # invokes: Lcom/android/server/GmsAlarmManager;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/GmsAlarmManager;->access$3500(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/32 v1, 0x5265c00

    # invokes: Lcom/android/server/GmsAlarmManager;->sendInsertLogDelay(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/GmsAlarmManager;->access$200(Lcom/android/server/GmsAlarmManager;J)V

    .line 661
    goto/16 :goto_356

    .line 651
    :pswitch_92
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 652
    const-string v0, "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNetByUncharging()V

    .line 654
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V
    invoke-static {v0, v5}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    .line 656
    :cond_af
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0, v5}, Lcom/android/server/GmsAlarmManager;->access$2902(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 657
    goto/16 :goto_356

    .line 642
    :pswitch_b6
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_d8

    .line 643
    const-string v0, "MSG_ENABLE_GMS_NETWORK_BY_CHARGING"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNetByCharging()V

    .line 645
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V
    invoke-static {v0, v6}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    .line 646
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->restoreGcmAlarm()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3300(Lcom/android/server/GmsAlarmManager;)V

    .line 648
    :cond_d8
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0, v6}, Lcom/android/server/GmsAlarmManager;->access$2902(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 649
    goto/16 :goto_356

    .line 625
    :pswitch_df
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1300(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 626
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0, v5}, Lcom/android/server/GmsAlarmManager;->access$1302(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 627
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V
    invoke-static {v0, v6}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    .line 629
    :cond_f1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_fa

    return-void

    .line 630
    :cond_fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_ENABLE_GMS_NETWORK:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2600(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mVendingUid:I
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2700(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2800(Lcom/android/server/GmsAlarmManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_13c

    .line 632
    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNet()V

    .line 633
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V
    invoke-static {v0, v6}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    .line 635
    :cond_13c
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->sendIntentToIBS(Z)V
    invoke-static {v0, v6}, Lcom/android/server/GmsAlarmManager;->access$3100(Lcom/android/server/GmsAlarmManager;Z)V

    .line 636
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0, v5}, Lcom/android/server/GmsAlarmManager;->access$2502(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 637
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->restoreGcmAlarm()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3300(Lcom/android/server/GmsAlarmManager;)V

    .line 638
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V
    invoke-static {v0, v6}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    .line 639
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setWakeLockBlackListEnableDisable(Z)V
    invoke-static {v0, v5}, Lcom/android/server/GmsAlarmManager;->access$3200(Lcom/android/server/GmsAlarmManager;Z)V

    .line 640
    goto/16 :goto_356

    .line 609
    :pswitch_157
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1300(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 610
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0, v5}, Lcom/android/server/GmsAlarmManager;->access$1302(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 611
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    .line 613
    :cond_169
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_172

    return-void

    .line 614
    :cond_172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_DISABLE_GMS_NETWORK:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2600(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mVendingUid:I
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2700(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2800(Lcom/android/server/GmsAlarmManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_1b4

    .line 616
    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNet()V

    .line 617
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V
    invoke-static {v0, v5}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    .line 619
    :cond_1b4
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->sendIntentToIBS(Z)V
    invoke-static {v0, v5}, Lcom/android/server/GmsAlarmManager;->access$3100(Lcom/android/server/GmsAlarmManager;Z)V

    .line 620
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0, v6}, Lcom/android/server/GmsAlarmManager;->access$2502(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 621
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    .line 622
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setWakeLockBlackListEnableDisable(Z)V
    invoke-static {v0, v6}, Lcom/android/server/GmsAlarmManager;->access$3200(Lcom/android/server/GmsAlarmManager;Z)V

    .line 623
    goto/16 :goto_356

    .line 545
    :pswitch_1ca
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mUserEnable:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1400(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_1d3

    return-void

    .line 546
    :cond_1d3
    const-string/jumbo v0, "receiver delay check network message"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    .line 548
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->isWifiConnected()Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 549
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const-wide/32 v7, 0xdbba0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_203

    .line 551
    :cond_1f7
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const-wide/32 v7, 0x1b7740

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 553
    :goto_203
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$600(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_222

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_222

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1300(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_222

    .line 554
    const-string v0, "Screen is off,skip check"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    goto/16 :goto_356

    .line 557
    :cond_222
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    .line 558
    .local v0, "lastGoogleNetWork":Z
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isChinaMode:Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$1200(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_238

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->isChnSimOrNoSim()Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$1600(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_248

    :cond_238
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$1700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_288

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->isChnSim()Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$1800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_288

    .line 559
    :cond_248
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->checkActiveNet()Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$1900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_282

    .line 560
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v7, "https://www.google.com/"

    # invokes: Lcom/android/server/GmsAlarmManager;->checkGoogleNetwork(Ljava/lang/String;)I
    invoke-static {v1, v7}, Lcom/android/server/GmsAlarmManager;->access$2000(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;)I

    move-result v1

    .line 561
    .local v1, "code":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GMS-CORE] China or hongkong mode and google network return: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v7, 0xc8

    if-eq v1, v7, :cond_27c

    const/16 v7, 0x12e

    if-ne v1, v7, :cond_276

    goto :goto_27c

    .line 565
    :cond_276
    iget-object v7, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v7, v5}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_281

    .line 563
    :cond_27c
    :goto_27c
    iget-object v7, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v7, v6}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 567
    .end local v1    # "code":I
    :goto_281
    goto :goto_28d

    .line 568
    :cond_282
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_28d

    .line 571
    :cond_288
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v1, v6}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 573
    :goto_28d
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->checkActiveNet()Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$1900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_2d5

    .line 574
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_2b5

    .line 575
    const-string v1, "[GMS-CORE] net work google can net"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 578
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2ec

    .line 580
    :cond_2b5
    const-string v1, "[GMS-CORE] net work google no net"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget-object v1, v1, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 582
    .local v4, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-virtual {v6, v4}, Lcom/android/server/GmsAlarmManager;->parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V

    .line 583
    .end local v4    # "url":Ljava/lang/String;
    goto :goto_2c2

    :cond_2d4
    goto :goto_2ec

    .line 586
    :cond_2d5
    const-string v1, "[GMS-CORE] no net work"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 589
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 592
    :goto_2ec
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z
    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->access$702(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 593
    if-eqz v0, :cond_301

    .line 594
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2200(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    goto :goto_30e

    .line 596
    :cond_301
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2300(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    .line 598
    :goto_30e
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_336

    .line 599
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    .line 600
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    .line 601
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2300(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_356

    .line 603
    :cond_336
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    .line 604
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    .line 605
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2200(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    .line 607
    nop

    .line 691
    .end local v0    # "lastGoogleNetWork":Z
    :goto_356
    return-void

    nop

    :pswitch_data_358
    .packed-switch 0x1
        :pswitch_1ca
        :pswitch_157
        :pswitch_df
        :pswitch_b6
        :pswitch_92
        :pswitch_77
        :pswitch_70
        :pswitch_67
        :pswitch_5e
        :pswitch_57
        :pswitch_25
        :pswitch_f
    .end packed-switch
.end method
