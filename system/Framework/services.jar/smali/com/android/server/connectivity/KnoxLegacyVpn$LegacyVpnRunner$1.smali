.class Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxLegacyVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    .line 2410
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2413
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableTeardown:Z
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1800(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2415
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2416
    const/4 v0, -0x1

    const-string/jumbo v1, "networkType"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    .line 2417
    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->access$1900(Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_75

    .line 2418
    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2420
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_50

    .line 2422
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    iget-object v1, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2100(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->access$2000(Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4e} :catch_4f

    goto :goto_50

    .line 2423
    :catch_4f
    move-exception v1

    .line 2425
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_50
    :goto_50
    goto :goto_75

    .line 2426
    :cond_51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2427
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2428
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string/jumbo v1, "mBroadcastReceiver: MPSM is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    const/4 v1, 0x0

    const-string v2, "[Legacy VPN]"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2432
    :cond_75
    :goto_75
    return-void
.end method
