.class Lcom/android/server/enterprise/wifi/WifiPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 4278
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4282
    .local v0, "action":Ljava/lang/String;
    const-string v1, "WifiPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 4284
    const/4 v1, 0x4

    const-string/jumbo v3, "wifi_state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4286
    .local v1, "state":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_30

    .line 4292
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # getter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiStateHandler:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;
    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # getter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiStateHandler:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;
    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v4

    .line 4293
    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4292
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4295
    .end local v1    # "state":I
    :cond_30
    goto :goto_91

    :cond_31
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_72

    .line 4296
    nop

    .line 4297
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 4298
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 4299
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_71

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 4300
    # invokes: Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$400(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 4301
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # getter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiStateHandler:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;
    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # getter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiStateHandler:Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;
    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$300(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v4

    .line 4302
    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4301
    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4304
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_71
    goto :goto_91

    :cond_72
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 4305
    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$502(Z)Z

    goto :goto_91

    .line 4306
    :cond_7e
    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 4307
    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4308
    .local v1, "adapteruserId":I
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # invokes: Lcom/android/server/enterprise/wifi/WifiPolicy;->updateSystemUIMonitor(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$600(Lcom/android/server/enterprise/wifi/WifiPolicy;I)V

    .line 4310
    .end local v1    # "adapteruserId":I
    :cond_91
    :goto_91
    return-void
.end method
