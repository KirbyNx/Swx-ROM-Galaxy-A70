.class Lcom/android/server/connectivity/KnoxLegacyVpn$4;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "KnoxLegacyVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KnoxLegacyVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/KnoxLegacyVpn;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 1666
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 8
    .param p1, "interfaze"    # Ljava/lang/String;

    .line 1678
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    monitor-enter v0

    .line 1679
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1100(Lcom/android/server/connectivity/KnoxLegacyVpn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v1, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1200(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_89

    .line 1680
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v1, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1

    .line 1681
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz v1, :cond_3b

    .line 1682
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    .line 1683
    .local v3, "uidRange":Landroid/net/UidRange;
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    invoke-virtual {v3}, Landroid/net/UidRange;->getStartUser()I

    move-result v5

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->hideNotification(I)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1300(Lcom/android/server/connectivity/KnoxLegacyVpn;I)V

    .line 1684
    .end local v3    # "uidRange":Landroid/net/UidRange;
    goto :goto_25

    .line 1686
    :cond_3b
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mStatusIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1402(Lcom/android/server/connectivity/KnoxLegacyVpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1687
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v2, v2, Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1688
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iput-object v3, v2, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1689
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # setter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1102(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1690
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    invoke-static {v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1500(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 1691
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1600(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    invoke-static {v4}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1500(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1692
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # setter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mConnection:Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1502(Lcom/android/server/connectivity/KnoxLegacyVpn;Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;)Lcom/android/server/connectivity/KnoxLegacyVpn$Connection;

    .line 1693
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1700(Lcom/android/server/connectivity/KnoxLegacyVpn;)V

    goto :goto_89

    .line 1694
    :cond_73
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    invoke-static {v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    move-result-object v2

    if-eqz v2, :cond_89

    .line 1695
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    invoke-static {v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->exit()V

    .line 1696
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # setter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1002(Lcom/android/server/connectivity/KnoxLegacyVpn;Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;)Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    .line 1699
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :cond_89
    :goto_89
    monitor-exit v0

    .line 1700
    return-void

    .line 1699
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "interfaze"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 1669
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    monitor-enter v0

    .line 1670
    if-nez p2, :cond_16

    :try_start_5
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1671
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$4;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->check(Ljava/lang/String;)V

    .line 1673
    :cond_16
    monitor-exit v0

    .line 1674
    return-void

    .line 1673
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method
