.class Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseDeviceManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 580
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 583
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    .line 585
    const/4 v1, -0x1

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 586
    .local v1, "userId":I
    const/4 v3, 0x1

    if-ge v1, v3, :cond_18

    .line 587
    return-void

    .line 588
    :cond_18
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->deactivateProxyAdminsForUser(I)V

    .line 589
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->cleanGenericTableOnUserRemoved(I)V
    invoke-static {v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 592
    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isLegacyContainer(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    move v2, v3

    .line 593
    .local v2, "isLegacyContainer":Z
    :cond_2f
    if-nez v2, :cond_3d

    .line 594
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "ACTION_USER_REMOVED removing pseudo admin since associated profile is getting removed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removePseudoAdmin()V
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->access$500(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    .line 604
    .end local v1    # "userId":I
    .end local v2    # "isLegacyContainer":Z
    :cond_3d
    goto :goto_8d

    :cond_3e
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 605
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 606
    .local v1, "info":Landroid/net/NetworkInfo;
    const-string/jumbo v3, "noConnectivity"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 607
    .local v2, "noConnectivity":Z
    if-nez v2, :cond_8c

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 608
    const-string v3, "com.samsung.android.knox.intent.action.KES_TRIGGER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const-string v3, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_8c

    .line 612
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "noConnectivity":Z
    :cond_72
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 613
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startDeferredServicesIfNeeded()V

    .line 614
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 615
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerBroadcastReceiver()V
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->access$600(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    goto :goto_8d

    .line 612
    :cond_8c
    :goto_8c
    nop

    .line 617
    :goto_8d
    return-void
.end method
