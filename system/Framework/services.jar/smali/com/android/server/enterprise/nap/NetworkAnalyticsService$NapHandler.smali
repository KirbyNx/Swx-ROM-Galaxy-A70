.class Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NapHandler"
.end annotation


# static fields
.field private static final ACTION_ACTIVATE_MONITOR_CLIENT:I = 0x1

.field private static final ACTION_BOOT_COMPLETED:I = 0x3

.field private static final ACTION_INITIALIZE_NAP:I = 0x4

.field private static final ACTION_NEW_PROFILE_REGISTERED:I = 0xa

.field private static final ACTION_ON_ADMIN_REMOVED:I = 0x9

.field private static final ACTION_ON_PRE_ADMIN_REMOVED:I = 0x8

.field private static final ACTION_PACKAGE_ADDED:I = 0x7

.field private static final ACTION_PACKAGE_REMOVED:I = 0x6

.field private static final ACTION_PROFILE_STATUS:I = 0xe

.field private static final ACTION_ULTRA_POWER_SAVING_MODE:I = 0xc

.field private static final ACTION_UNREGISTER_CLIENT:I = 0x5

.field private static final ACTION_USER_REMOVED:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p2, "loop"    # Landroid/os/Looper;

    .line 1564
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 1565
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1566
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1585
    const/4 v0, 0x0

    .line 1586
    .local v0, "handleObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    const/4 v1, 0x0

    .line 1587
    .local v1, "map":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1588
    .local v2, "adminUid":I
    iget v3, p1, Landroid/os/Message;->what:I

    const-string v4, "NetworkAnalytics:Service"

    packed-switch v3, :pswitch_data_f8

    :pswitch_a
    goto/16 :goto_f7

    .line 1670
    :pswitch_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    .line 1671
    if-nez v1, :cond_14

    return-void

    .line 1672
    :cond_14
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendStatusToClient(Landroid/os/Bundle;)V
    invoke-static {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$1200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto/16 :goto_f7

    .line 1657
    :pswitch_1b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    .line 1658
    if-nez v1, :cond_23

    return-void

    .line 1659
    :cond_23
    const/4 v3, 0x0

    const-string/jumbo v5, "reason"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1660
    .local v3, "reason":I
    const/4 v5, 0x5

    if-ne v3, v5, :cond_3f

    .line 1661
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_38

    const-string/jumbo v5, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_38
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot()V
    invoke-static {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$1000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_f7

    .line 1664
    :cond_3f
    const/4 v5, 0x3

    if-ne v3, v5, :cond_f7

    .line 1665
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_4c

    const-string/jumbo v5, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_4c
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles()V
    invoke-static {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$1100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_f7

    .line 1634
    .end local v3    # "reason":I
    :pswitch_53
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    .line 1635
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_userRemovedAction(Landroid/os/Bundle;)V
    invoke-static {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$700(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    .line 1636
    goto/16 :goto_f7

    .line 1591
    :pswitch_5f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1592
    .local v3, "profileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_handleNewProfileRegistration(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    .line 1593
    goto/16 :goto_f7

    .line 1648
    .end local v3    # "profileName":Ljava/lang/String;
    :pswitch_6a
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1649
    if-gtz v2, :cond_7a

    .line 1650
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_f7

    const-string/jumbo v3, "handleMessage: ACTION_ON_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 1653
    :cond_7a
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unregisterAllProfiles(I)V
    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$900(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    .line 1654
    goto/16 :goto_f7

    .line 1639
    :pswitch_81
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1640
    if-gtz v2, :cond_90

    .line 1641
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_f7

    const-string/jumbo v3, "handleMessage: ACTION_ON_PRE_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 1644
    :cond_90
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles(I)V
    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$800(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    .line 1645
    goto :goto_f7

    .line 1629
    :pswitch_96
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1630
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v4, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageAddedAction(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$600(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V

    .line 1631
    goto :goto_f7

    .line 1624
    :pswitch_a5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1625
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v4, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageRemovedAction(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$500(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V

    .line 1626
    goto :goto_f7

    .line 1611
    :pswitch_b4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1612
    if-nez v0, :cond_f7

    .line 1613
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_c5

    const-string/jumbo v3, "handleMessage:UNREGISTER_CLIENT:handleObj null"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_c5
    return-void

    .line 1596
    :pswitch_c6
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->initializeTables()V

    .line 1597
    goto :goto_f7

    .line 1619
    :pswitch_d0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    .line 1620
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot(Landroid/os/Bundle;)V
    invoke-static {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$400(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    .line 1621
    goto :goto_f7

    .line 1600
    :pswitch_db
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 1601
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1602
    .local v3, "activationStatus":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 1603
    .local v5, "opUserId":I
    if-nez v0, :cond_f1

    .line 1604
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_f0

    const-string/jumbo v6, "handleMessage:ACTIVATE_MONITOR_CLIENT:handleObj null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_f0
    return-void

    .line 1607
    :cond_f1
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    invoke-static {v4, v0, v5, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$300(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    .line 1608
    nop

    .line 1675
    .end local v3    # "activationStatus":I
    .end local v5    # "opUserId":I
    :cond_f7
    :goto_f7
    return-void

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_db
        :pswitch_a
        :pswitch_d0
        :pswitch_c6
        :pswitch_b4
        :pswitch_a5
        :pswitch_96
        :pswitch_81
        :pswitch_6a
        :pswitch_5f
        :pswitch_53
        :pswitch_1b
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method
