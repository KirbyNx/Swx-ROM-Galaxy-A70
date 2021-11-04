.class Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PcoBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 8292
    iput-object p1, p0, Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 8295
    if-nez p2, :cond_3

    .line 8296
    return-void

    .line 8299
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8300
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e8

    const-string v1, "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_e8

    .line 8304
    :cond_17
    const/4 v1, -0x1

    const-string/jumbo v2, "subscription"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 8305
    .local v1, "subscriptionId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    if-eq v1, v2, :cond_2b

    .line 8306
    const-string v2, "Pco received on non default default"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 8307
    return-void

    .line 8310
    :cond_2b
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 8311
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_37

    .line 8312
    const-string v3, "Invalid CARRIER_SIGNAL_PCO_VALUE broadcast. No extras"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 8313
    return-void

    .line 8316
    :cond_37
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 8317
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_e2

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_45

    goto/16 :goto_e2

    .line 8322
    :cond_45
    const-string v4, "apnType"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8323
    .local v4, "apnType":Ljava/lang/String;
    const-string/jumbo v5, "pcoValue"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 8325
    .local v5, "pcoKey":[B
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 8326
    const-string v6, "Invalid CARRIER_SIGNAL_PCO_VALUE broadcast. incorrect apn type"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 8327
    return-void

    .line 8330
    :cond_5e
    if-eqz v5, :cond_c8

    array-length v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_65

    goto :goto_c8

    .line 8335
    :cond_65
    const/4 v6, 0x0

    aget-byte v8, v5, v6

    add-int/lit8 v8, v8, -0x30

    .line 8336
    .local v8, "pcoValue":I
    const-string v9, "default"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x5

    if-nez v9, :cond_87

    const-string/jumbo v9, "hipri"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_87

    const-string/jumbo v9, "ims"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c7

    if-ne v8, v10, :cond_c7

    .line 8337
    :cond_87
    const/4 v9, 0x3

    if-eq v8, v9, :cond_97

    if-ne v8, v10, :cond_8d

    goto :goto_97

    .line 8343
    :cond_8d
    iget-object v6, p0, Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->setShowSignInNotification(Z)V

    goto :goto_c7

    .line 8339
    :cond_97
    :goto_97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received pco value \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\' on pdn \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'. Hide \'Sign into network\' notification"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$100(Ljava/lang/String;)V

    .line 8340
    iget-object v7, p0, Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->setShowSignInNotification(Z)V

    .line 8341
    iget-object v7, p0, Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v6, v9}, Lcom/android/server/ConnectivityService;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 8346
    :cond_c7
    :goto_c7
    return-void

    .line 8331
    .end local v8    # "pcoValue":I
    :cond_c8
    :goto_c8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pco key doesn\'t contain valid pco value for apn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 8332
    return-void

    .line 8318
    .end local v4    # "apnType":Ljava/lang/String;
    .end local v5    # "pcoKey":[B
    :cond_e2
    :goto_e2
    const-string v4, "Invalid CARRIER_SIGNAL_PCO_VALUE broadcast. No pdns"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 8319
    return-void

    .line 8301
    .end local v1    # "subscriptionId":I
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e8
    :goto_e8
    return-void
.end method
