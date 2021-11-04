.class Lcom/android/server/enterprise/firewall/Firewall$4;
.super Ljava/lang/Object;
.source "Firewall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/Firewall;->initializeIpTables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/firewall/Firewall;

    .line 268
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 270
    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "initializeIpTables() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mInitializingIpTablesRulesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->access$500(Lcom/android/server/enterprise/firewall/Firewall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 272
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->access$600(Lcom/android/server/enterprise/firewall/Firewall;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$700(Lcom/android/server/enterprise/firewall/Firewall;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 275
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # invokes: Lcom/android/server/enterprise/firewall/Firewall;->createChains()V
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$800(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 277
    :cond_27
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$200(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains(Ljava/lang/Integer;)Z

    .line 278
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$200(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    .line 279
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v3, -0x1

    const/4 v4, 0x1

    # invokes: Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V
    invoke-static {v2, v4, v3}, Lcom/android/server/enterprise/firewall/Firewall;->access$900(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    .line 280
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$200(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadIptablesRules()V

    .line 281
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$200(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadDomainFilterOnIptablesRules()V

    .line 282
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # setter for: Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z
    invoke-static {v2, v4}, Lcom/android/server/enterprise/firewall/Firewall;->access$602(Lcom/android/server/enterprise/firewall/Firewall;Z)Z

    .line 283
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$4;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V
    invoke-static {v2, v4, v3}, Lcom/android/server/enterprise/firewall/Firewall;->access$900(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    .line 284
    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "initializeIpTables() - IP Tables initialization was done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v1    # "count":I
    :cond_68
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_11 .. :try_end_6c} :catchall_6a

    throw v1
.end method
