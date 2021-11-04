.class Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;
.super Ljava/lang/Object;
.source "FirewallRulesApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainFilterApplicationChainsManager"
.end annotation


# instance fields
.field private mAppChainsCounter:I

.field private mDomainFilterChainsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDomainFilterChainsCacheLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
    .registers 2

    .line 977
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 980
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCacheLock:Ljava/lang/Object;

    .line 981
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .param p2, "x1"    # Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;

    .line 977
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;-><init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    .line 977
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    return v0
.end method

.method private checkChainExistsForApplication(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 4
    .param p1, "appUid"    # Ljava/lang/Integer;
    .param p2, "userId"    # Ljava/lang/Integer;

    .line 1058
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 1059
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1060
    const/4 v0, 0x1

    return v0

    .line 1062
    :cond_18
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appUid"    # Ljava/lang/Integer;
    .param p3, "userId"    # Ljava/lang/Integer;

    .line 984
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->checkChainExistsForApplication(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 985
    const-string v0, "FirewallRulesApplier"

    const-string v2, "chain exists for application"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return v1

    .line 988
    :cond_f
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    const/4 v2, 0x0

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 989
    .local v0, "shouldModifyInputChain":Z
    :goto_17
    nop

    .line 990
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 989
    invoke-static {p1, v3, v4, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateDomainFilterChainsForUidCommands(Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v3

    .line 992
    .local v3, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2e

    const-string v4, "*"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    :cond_2e
    if-eqz p2, :cond_6c

    .line 993
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6c

    .line 994
    :cond_37
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->access$200(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidsToExemptForUser(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 995
    .local v4, "uidsToExempt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v5, "*filter"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 997
    .local v6, "uid":Ljava/lang/Integer;
    nop

    .line 998
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 997
    invoke-static {v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateDomainFilterExceptionUidRules(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 999
    .end local v6    # "uid":Ljava/lang/Integer;
    goto :goto_4e

    .line 1000
    :cond_67
    const-string v5, "COMMIT\n"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    .end local v4    # "uidsToExempt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6c
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    invoke-static {v4, v3, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->access$300(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create chain for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FirewallRulesApplier"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return v2

    .line 1007
    :cond_8d
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1008
    :try_start_90
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a2

    .line 1010
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    :cond_a2
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    iget v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 1015
    monitor-exit v2

    .line 1016
    return v1

    .line 1015
    :catchall_b4
    move-exception v1

    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_90 .. :try_end_b6} :catchall_b4

    throw v1
.end method

.method public clearChainsForUserId(Ljava/lang/Integer;)Z
    .registers 7
    .param p1, "userId"    # Ljava/lang/Integer;

    .line 1045
    const/4 v0, 0x1

    .line 1046
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1047
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1048
    .local v1, "uidsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1049
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1050
    .local v3, "uid":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->removeChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 1051
    .end local v3    # "uid":Ljava/lang/Integer;
    goto :goto_20

    .line 1054
    .end local v1    # "uidsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_33
    return v0
.end method

.method public removeChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appUid"    # Ljava/lang/Integer;
    .param p3, "userId"    # Ljava/lang/Integer;

    .line 1020
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->checkChainExistsForApplication(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1021
    return v1

    .line 1023
    :cond_8
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 1024
    .local v0, "shouldModifyInputChain":Z
    :goto_10
    nop

    .line 1025
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v3, v4, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getRemoveDomainFilterChainsForUidCommands(Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v3

    .line 1026
    .local v3, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_24

    .line 1027
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    # setter for: Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z
    invoke-static {v4, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->access$402(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Z)Z

    .line 1028
    :cond_24
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    invoke-static {v4, v3, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->access$300(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove chain for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FirewallRulesApplier"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return v2

    .line 1032
    :cond_45
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1033
    if-nez p2, :cond_50

    .line 1034
    :try_start_4a
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 1035
    :cond_50
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1037
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1038
    iget v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 1040
    :cond_68
    :goto_68
    monitor-exit v2

    .line 1041
    return v1

    .line 1040
    :catchall_6a
    move-exception v1

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_6a

    throw v1
.end method
