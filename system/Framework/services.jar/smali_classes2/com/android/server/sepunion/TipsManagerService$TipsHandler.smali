.class Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
.super Landroid/os/Handler;
.source "TipsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/TipsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TipsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2

    .line 608
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 610
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;

    .line 614
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    .line 615
    .local v2, "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    const/4 v0, 0x0

    .line 616
    .local v0, "isEmergencyMode":Z
    if-eqz v2, :cond_1b

    .line 617
    iget-object v3, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    move v3, v0

    goto :goto_1c

    .line 616
    :cond_1b
    move v3, v0

    .line 619
    .end local v0    # "isEmergencyMode":Z
    .local v3, "isEmergencyMode":Z
    :goto_1c
    if-eqz v3, :cond_28

    .line 620
    # getter for: Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v4, "[GalaxyTips] Fail to send intent to Tips at emergency mode."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void

    .line 624
    :cond_28
    move-object/from16 v4, p1

    iget v0, v4, Landroid/os/Message;->what:I

    const/16 v5, 0x2711

    const-string/jumbo v6, "tips_extras"

    const-string v7, "com.samsung.android.app.tips.TipsIntentService"

    const-string v8, "com.samsung.android.app.tips"

    if-eq v0, v5, :cond_159

    const/16 v5, 0x2713

    const/4 v9, 0x5

    if-eq v0, v5, :cond_81

    const/16 v5, 0x2714

    if-eq v0, v5, :cond_42

    goto/16 :goto_1a5

    .line 693
    :cond_42
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # invokes: Lcom/android/server/sepunion/TipsManagerService;->isFOTAEnabled()Z
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$1000(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 694
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v5, v0

    .line 695
    .local v5, "new_intent":Landroid/content/Intent;
    nop

    .line 696
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    :try_start_57
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_62} :catch_63

    .line 702
    goto :goto_6d

    .line 700
    :catch_63
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[GalaxyTips] Fail to send MSG_INITIAL_TIMER_START intent to Tips."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "new_intent":Landroid/content/Intent;
    :cond_6d
    :goto_6d
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$600(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    move-result-object v5

    const/16 v6, 0x2713

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x36ee80

    # invokes: Lcom/android/server/sepunion/TipsManagerService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/sepunion/TipsManagerService;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1a5

    .line 644
    :cond_81
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "tips_regular_hour_timer_renewal_count"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v5, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 646
    .local v12, "renewalAccumulatedHours":I
    if-eqz v12, :cond_be

    rem-int/lit16 v0, v12, 0x2d0

    if-nez v0, :cond_be

    .line 648
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v13, v0

    .line 649
    .local v13, "new_intent":Landroid/content/Intent;
    nop

    .line 650
    invoke-virtual {v13, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const/4 v0, 0x6

    invoke-virtual {v13, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 653
    :try_start_a8
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b3} :catch_b4

    .line 656
    goto :goto_be

    .line 654
    :catch_b4
    move-exception v0

    .line 655
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[GalaxyTips] Fail to send MSG_CHECK_REGULAR_HOUR intent to Tips."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "new_intent":Landroid/content/Intent;
    :cond_be
    :goto_be
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v13, "tips_regular_hour_timer_absolute_count"

    invoke-static {v0, v13, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 662
    .local v10, "accumulatedHours":I
    if-eqz v10, :cond_125

    rem-int/lit8 v0, v10, 0x18

    if-nez v0, :cond_125

    .line 664
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # invokes: Lcom/android/server/sepunion/TipsManagerService;->isFOTAEnabled()Z
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$1000(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 665
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v9, v0

    .line 666
    .local v9, "new_intent":Landroid/content/Intent;
    nop

    .line 667
    invoke-virtual {v9, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const/4 v0, 0x4

    invoke-virtual {v9, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    :try_start_eb
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v6}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f6} :catch_f7

    .line 673
    goto :goto_101

    .line 671
    :catch_f7
    move-exception v0

    .line 672
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[GalaxyTips] Fail to send FOTA READY intent to Tips."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "new_intent":Landroid/content/Intent;
    :goto_101
    goto :goto_125

    .line 676
    :cond_102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v14, v0

    .line 677
    .local v14, "new_intent":Landroid/content/Intent;
    nop

    .line 678
    invoke-virtual {v14, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    invoke-virtual {v14, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    :try_start_10f
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v14, v6}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_11a} :catch_11b

    .line 684
    goto :goto_125

    .line 682
    :catch_11b
    move-exception v0

    .line 683
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[GalaxyTips] Fail to send FOTA DONE intent to Tips."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "new_intent":Landroid/content/Intent;
    :cond_125
    :goto_125
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    add-int/lit8 v12, v12, 0x1

    invoke-static {v0, v5, v12, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 689
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    add-int/lit8 v10, v10, 0x1

    invoke-static {v0, v13, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 690
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$600(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    move-result-object v13

    const/16 v14, 0x2713

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0x36ee80

    # invokes: Lcom/android/server/sepunion/TipsManagerService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v13 .. v19}, Lcom/android/server/sepunion/TipsManagerService;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 691
    goto :goto_1a5

    .line 626
    .end local v10    # "accumulatedHours":I
    .end local v12    # "renewalAccumulatedHours":I
    :cond_159
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$500(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v0

    if-nez v0, :cond_1a5

    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$900(Lcom/android/server/sepunion/TipsManagerService;)I

    move-result v0

    const/4 v5, 0x3

    if-ge v0, v5, :cond_1a5

    .line 627
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v5, v0

    .line 628
    .restart local v5    # "new_intent":Landroid/content/Intent;
    nop

    .line 629
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const/4 v0, 0x2

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    :try_start_178
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_183} :catch_184

    .line 635
    goto :goto_18e

    .line 633
    :catch_184
    move-exception v0

    .line 634
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[GalaxyTips] Fail to send MSG_START_TIPS_HUN intent to Tips."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18e
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # operator++ for: Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$908(Lcom/android/server/sepunion/TipsManagerService;)I

    .line 640
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$600(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    move-result-object v6

    const/16 v7, 0x2711

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x240c8400

    # invokes: Lcom/android/server/sepunion/TipsManagerService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v6 .. v12}, Lcom/android/server/sepunion/TipsManagerService;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 710
    .end local v5    # "new_intent":Landroid/content/Intent;
    :cond_1a5
    :goto_1a5
    return-void
.end method
