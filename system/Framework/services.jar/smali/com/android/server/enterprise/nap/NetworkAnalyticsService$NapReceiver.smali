.class Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NapReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 1485
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1486
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1492
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1493
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v2, "NetworkAnalytics:Service"

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nap Receiver : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->isInitialStickyBroadcast()Z

    move-result v1

    if-nez v1, :cond_144

    .line 1495
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1497
    .local v1, "map":Landroid/os/Bundle;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    .line 1498
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1499
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v2, v3, v4, v4, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto/16 :goto_144

    .line 1502
    :cond_3e
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "android.intent.extra.UID"

    const/4 v6, 0x0

    if-eqz v3, :cond_b1

    .line 1503
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1504
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1506
    .local v6, "packageName":Ljava/lang/String;
    :cond_53
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1507
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1508
    .local v5, "removedPackageUid":I
    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_7b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION PACKAGE REMOVED packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " uid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_7b
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1511
    .local v7, "removedUserId":I
    invoke-static {v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->updateHashCache(ILjava/lang/String;)V

    .line 1513
    iget-object v8, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    invoke-static {v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v8

    .line 1514
    .local v8, "isPackageActivated":Z
    if-eqz v6, :cond_af

    if-eqz v8, :cond_af

    .line 1515
    const-string v9, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v9, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1516
    .local v9, "extra_replacing":Z
    if-eqz v9, :cond_9e

    .line 1517
    const-string v4, "The package removal intent has been called before upgrade"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void

    .line 1520
    :cond_9e
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {v2, v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 1521
    .local v2, "obj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    iput-object v6, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1522
    iput v7, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1523
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v11, 0x6

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v10, v11, v4, v4, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    .line 1525
    .end local v2    # "obj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v5    # "removedPackageUid":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "removedUserId":I
    .end local v8    # "isPackageActivated":Z
    .end local v9    # "extra_replacing":Z
    :cond_af
    goto/16 :goto_144

    .line 1527
    :cond_b1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 1528
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1529
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_c3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1530
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_c3
    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_db

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION PACKAGE ADDED packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_db
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1532
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1533
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1534
    .local v5, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v7

    .line 1535
    .local v7, "isPackageActivated":Z
    if-eqz v6, :cond_106

    if-eqz v7, :cond_106

    .line 1536
    new-instance v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 1537
    .local v8, "obj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    iput-object v6, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1538
    iput v5, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1539
    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v10, 0x7

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v9, v10, v4, v4, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    .line 1541
    .end local v2    # "uid":I
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v5    # "userId":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "isPackageActivated":Z
    .end local v8    # "obj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    :cond_106
    goto :goto_144

    .line 1543
    :cond_107
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 1544
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1546
    const-string v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1547
    .local v2, "removedUserId":I
    if-eq v2, v3, :cond_120

    .line 1548
    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->updateHashCacheForUser(I)V

    .line 1550
    :cond_120
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v5, 0xb

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v3, v5, v4, v4, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    .line 1551
    .end local v2    # "removedUserId":I
    goto :goto_144

    .line 1553
    :cond_128
    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    .line 1554
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_139

    const-string v3, "EMERGENCY_STATE_CHANGED received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_139
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1556
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v3, 0xc

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    invoke-static {v2, v3, v4, v4, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    .line 1559
    .end local v1    # "map":Landroid/os/Bundle;
    :cond_144
    :goto_144
    return-void
.end method
