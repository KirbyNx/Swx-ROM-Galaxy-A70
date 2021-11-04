.class Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;
.super Landroid/os/Handler;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/IptablesLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommandsHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 152
    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 155
    goto :goto_f

    .line 153
    :catch_6
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 159
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 160
    .local v2, "it":Ljava/util/Iterator;
    # getter for: Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$000()Landroid/net/INetd;

    move-result-object v3

    if-nez v3, :cond_24

    .line 161
    # invokes: Lcom/android/server/enterprise/auditlog/IptablesLogging;->connectNativeNetdService()V
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$100()V

    .line 164
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v3, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "*filter"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 169
    :cond_42
    const-string v4, "COMMIT\n"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v4, "\n"

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "command":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 172
    .local v5, "token":J
    # invokes: Lcom/android/server/enterprise/auditlog/IptablesLogging;->getOemNetdService()Lcom/android/internal/net/IOemNetd;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$300()Lcom/android/internal/net/IOemNetd;

    move-result-object v7

    # setter for: Lcom/android/server/enterprise/auditlog/IptablesLogging;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$202(Lcom/android/internal/net/IOemNetd;)Lcom/android/internal/net/IOemNetd;

    .line 174
    :try_start_58
    # getter for: Lcom/android/server/enterprise/auditlog/IptablesLogging;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$200()Lcom/android/internal/net/IOemNetd;

    move-result-object v7

    if-eqz v7, :cond_76

    .line 175
    # getter for: Lcom/android/server/enterprise/auditlog/IptablesLogging;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$200()Lcom/android/internal/net/IOemNetd;

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {v7, v8, v4}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 176
    sget-object v7, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 177
    # getter for: Lcom/android/server/enterprise/auditlog/IptablesLogging;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->access$200()Lcom/android/internal/net/IOemNetd;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {v7, v8, v4}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_76} :catch_7d
    .catchall {:try_start_58 .. :try_end_76} :catchall_7b

    .line 183
    :cond_76
    nop

    :goto_77
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    goto :goto_9a

    .line 183
    :catchall_7b
    move-exception v7

    goto :goto_9b

    .line 180
    :catch_7d
    move-exception v7

    .line 181
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_7e
    const-string v8, "IptablesLogging"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to bind: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_7b

    .line 183
    nop

    .end local v7    # "e":Landroid/os/RemoteException;
    goto :goto_77

    .line 185
    :goto_9a
    return-void

    .line 183
    :goto_9b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw v7
.end method
