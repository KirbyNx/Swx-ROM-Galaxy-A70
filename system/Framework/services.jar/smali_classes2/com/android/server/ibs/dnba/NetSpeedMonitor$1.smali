.class Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "NetSpeedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/dnba/NetSpeedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 127
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mEnable:Z

    if-nez v0, :cond_7

    return-void

    .line 131
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 133
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->isWifiConnected()Z

    move-result v0

    .line 134
    .local v0, "curWifi":Z
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # invokes: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->isVPNConnected()Z
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$000(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Z

    move-result v1

    .line 136
    .local v1, "curVPN":Z
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->WifiConnected:Z
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$100(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Z

    move-result v2

    if-eq v0, v2, :cond_44

    .line 137
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # setter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->WifiConnected:Z
    invoke-static {v2, v0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$102(Lcom/android/server/ibs/dnba/NetSpeedMonitor;Z)Z

    .line 138
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 139
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->onWifiConnectionChanged(Z)V

    .line 140
    :cond_3d
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    invoke-virtual {v2, v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->onWifiConnectionChanged(Z)V

    .line 143
    :cond_44
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->VPNConnected:Z
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$300(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Z

    move-result v2

    if-eq v1, v2, :cond_69

    .line 144
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # setter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->VPNConnected:Z
    invoke-static {v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$302(Lcom/android/server/ibs/dnba/NetSpeedMonitor;Z)Z

    .line 145
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 146
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->onVPNConnectionChanged(Z)V

    .line 147
    :cond_62
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->onVPNConnectionChanged(Z)V

    .line 149
    .end local v0    # "curWifi":Z
    .end local v1    # "curVPN":Z
    :cond_69
    goto/16 :goto_1ba

    :cond_6b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsung.limit.start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_a7

    .line 150
    const-string v0, "action_value"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "speed_value"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 152
    .local v3, "speed":I
    if-eq v3, v2, :cond_1b9

    .line 153
    const-string v2, "dnbaOn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 154
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->limitBgTotalSpeed(IZ)V

    goto/16 :goto_1b9

    .line 155
    :cond_98
    const-string v2, "dnbaOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 156
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->limitBgTotalSpeed(IZ)V

    goto/16 :goto_1b9

    .line 159
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "speed":I
    :cond_a7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.game.gos.GAME_INFO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 161
    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "pkgName":Ljava/lang/String;
    const-string/jumbo v3, "uid"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 163
    .local v3, "pkgUid":I
    const-string v4, "dnbaSwitch"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 164
    .local v1, "dnbaSwitch":Z
    const-string v4, "NetSpeedMonitor"

    if-eqz v0, :cond_1ad

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    goto/16 :goto_1ad

    .line 168
    :cond_d5
    if-ne v3, v2, :cond_e3

    .line 169
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$400(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    const-string v5, "Got a GAME_INFO Broadcast with invalid uid. Skipped."

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 172
    :cond_e3
    if-nez v1, :cond_158

    .line 174
    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-object v5, v5, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    iget-object v5, v5, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v2, :cond_119

    .line 175
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$400(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding game "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to NetSpeed whitelist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_119
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    if-eqz v2, :cond_1ba

    .line 179
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    new-instance v5, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-direct {v5, v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;-><init>(I)V

    invoke-virtual {v2, v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isLimitedApp(Lcom/android/server/ibs/dnba/NetSpeedStatus;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 180
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$400(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Releasing netspeed limit for game "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    const-string v4, "GAME_INFO"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->releaseAppLimit(ILjava/lang/String;)V

    goto :goto_1ba

    .line 186
    :cond_158
    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-object v5, v5, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    iget-object v5, v5, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v2, :cond_18d

    .line 187
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$400(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing game "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from NetSpeed whitelist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mWhitelistIgnoreNetworkLimit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1ba

    .line 190
    :cond_18d
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$400(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Game "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not in whitelist. Skipped."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ba

    .line 165
    :cond_1ad
    :goto_1ad
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$400(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    const-string v5, "Got a GAME_INFO Broadcast with empty packageName. Skipped."

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 159
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "dnbaSwitch":Z
    .end local v3    # "pkgUid":I
    :cond_1b9
    :goto_1b9
    nop

    .line 194
    :cond_1ba
    :goto_1ba
    return-void
.end method
