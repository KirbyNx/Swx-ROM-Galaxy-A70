.class Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
.super Ljava/lang/Object;
.source "FirewallRulesApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;
    }
.end annotation


# static fields
.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final TAG:Ljava/lang/String; = "FirewallRulesApplier"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

.field private mIcmpAllowRuleApplies:I

.field private mIsExemptRulesApplied:Z

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field private mShouldAddAcceptRuleToInput:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firewallService"    # Lcom/android/server/enterprise/firewall/Firewall;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 78
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 80
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 81
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;-><init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 83
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 54
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    return p1
.end method

.method private checkApplicationRulesInDatabase(ILjava/lang/String;)Z
    .registers 10
    .param p1, "adminUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1075
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1076
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1077
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 1080
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2d

    goto :goto_4f

    .line 1082
    :cond_2d
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1083
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "whitelist"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, "whiteList":Ljava/lang/String;
    const-string v5, "blacklist"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1085
    .local v5, "blackList":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 1086
    return v2

    .line 1088
    :cond_4d
    const/4 v2, 0x1

    return v2

    .line 1081
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "whiteList":Ljava/lang/String;
    .end local v5    # "blackList":Ljava/lang/String;
    :cond_4f
    :goto_4f
    return v2
.end method

.method private completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z
    .registers 8
    .param p2, "table"    # Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .param p3, "addrType"    # Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;",
            "Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;",
            ")Z"
        }
    .end annotation

    .line 824
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 826
    .local v0, "begin":I
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$android$server$enterprise$firewall$FirewallDefinitions$Table:[I

    invoke-virtual {p2}, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_1d

    .line 831
    :cond_11
    const-string v1, "*nat"

    invoke-interface {p1, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1d

    .line 828
    :cond_17
    const-string v1, "*filter"

    invoke-interface {p1, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 829
    nop

    .line 835
    :goto_1d
    const-string v1, "COMMIT\n"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    const-string v1, "\n"

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private connectNativeNetdService()V
    .registers 4

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "nativeServiceAvailable":Z
    :try_start_1
    const-string/jumbo v1, "netd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    .line 89
    if-nez v1, :cond_11

    .line 90
    return-void

    .line 92
    :cond_11
    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_17

    move v0, v1

    .line 95
    goto :goto_1b

    .line 93
    :catch_17
    move-exception v1

    .line 94
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    .line 96
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    if-nez v0, :cond_24

    .line 97
    const-string v1, "FirewallRulesApplier"

    const-string v2, "Can\'t connect to NativeNetdService netd"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_24
    return-void
.end method

.method private disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 4
    .param p1, "rule"    # Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .param p2, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0
.end method

.method private enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 5
    .param p1, "rule"    # Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .param p2, "forceEnable"    # Z
    .param p3, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0
.end method

.method private enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 11
    .param p1, "rules"    # [Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .param p2, "forceEnable"    # Z
    .param p3, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p4, "status"    # Z

    .line 135
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    return-object v0
.end method

.method private executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    .registers 5
    .param p2, "table"    # Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;",
            ")Z"
        }
    .end annotation

    .line 782
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x4

    .line 783
    .local v0, "targetIp":I
    invoke-static {p2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 784
    const/16 v0, 0x2e

    .line 786
    :cond_9
    const-string v1, "\n"

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_5

    .line 422
    return-object v0

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_c

    .line 424
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->connectNativeNetdService()V

    .line 425
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_36

    .line 427
    :try_start_10
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 430
    goto :goto_36

    .line 428
    :catch_1b
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get OemNetd listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirewallRulesApplier"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method private mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 797
    .local p1, "filterCmd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "natCmd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "\n"

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "filterSession":Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "natSession":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v2

    .line 800
    .local v2, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    .local v3, "mergedCmdV6":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v4}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 802
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_2e
    sget-object v4, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v4}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 805
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 808
    const/4 v4, 0x6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 810
    :cond_4d
    return v2
.end method

.method private declared-synchronized runShellCommand(ILjava/lang/String;)Z
    .registers 8
    .param p1, "target"    # I
    .param p2, "command"    # Ljava/lang/String;

    monitor-enter p0

    .line 845
    :try_start_1
    const-string v0, "FirewallRulesApplier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runShellCommand - target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 847
    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 848
    const-string v0, "FirewallRulesApplier"

    const-string v2, "Failed to obtain instance of mOemNetdService"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_99

    .line 849
    monitor-exit p0

    return v1

    .line 853
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    :cond_2a
    :try_start_2a
    invoke-interface {v0, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "result":Ljava/lang/String;
    const-string v2, "FirewallRulesApplier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Run cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_43

    goto :goto_45

    :cond_43
    move-object v4, v0

    goto :goto_47

    :cond_45
    :goto_45
    const-string v4, "OK"

    :goto_47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    if-eqz v0, :cond_79

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_79

    .line 858
    :cond_5a
    const-string v2, "FirewallRulesApplier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to run command. Result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\ncommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_78} :catch_7c
    .catchall {:try_start_2a .. :try_end_78} :catchall_99

    .line 862
    .end local v0    # "result":Ljava/lang/String;
    goto :goto_97

    .line 856
    .restart local v0    # "result":Ljava/lang/String;
    :cond_79
    :goto_79
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 860
    .end local v0    # "result":Ljava/lang/String;
    :catch_7c
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7d
    const-string v2, "FirewallRulesApplier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to run cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_7d .. :try_end_97} :catchall_99

    .line 863
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_97
    monitor-exit p0

    return v1

    .line 844
    .end local p1    # "target":I
    .end local p2    # "command":Ljava/lang/String;
    :catchall_99
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z
    .registers 4
    .param p1, "addType"    # Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .param p2, "command"    # Ljava/lang/String;

    monitor-enter p0

    .line 840
    :try_start_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_c

    :cond_b
    const/4 v0, 0x6

    :goto_c
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    .line 840
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .end local p1    # "addType":Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .end local p2    # "command":Ljava/lang/String;
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "target"    # I
    .param p2, "command"    # Ljava/lang/String;

    monitor-enter p0

    .line 443
    :try_start_1
    const-string v0, ""

    .line 444
    .local v0, "result":Ljava/lang/String;
    const-string v1, "FirewallRulesApplier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runShellCommandWithOutput - target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_47

    .line 448
    if-eqz v1, :cond_44

    .line 449
    :try_start_22
    invoke-interface {v1, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_28
    .catchall {:try_start_22 .. :try_end_26} :catchall_47

    move-object v0, v1

    goto :goto_44

    .line 450
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    :catch_28
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v2, "FirewallRulesApplier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to run cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_47

    goto :goto_45

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_44
    :goto_44
    nop

    .line 453
    :goto_45
    monitor-exit p0

    return-object v0

    .line 442
    .end local v0    # "result":Ljava/lang/String;
    .end local p1    # "target":I
    .end local p2    # "command":Ljava/lang/String;
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;
    .registers 10
    .param p1, "table"    # Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 884
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v0, "splittedCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v1, "partialList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 888
    .local v2, "index":I
    :goto_b
    const/4 v3, 0x0

    .line 889
    .local v3, "bytesCount":I
    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 890
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 891
    .local v4, "command":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    .line 892
    .local v5, "commandLength":I
    add-int v6, v3, v5

    const v7, 0x61a80

    if-le v6, v7, :cond_27

    goto :goto_2f

    .line 893
    :cond_27
    add-int/2addr v3, v5

    .line 894
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    nop

    .end local v4    # "command":Ljava/lang/String;
    .end local v5    # "commandLength":I
    add-int/lit8 v2, v2, 0x1

    .line 896
    goto :goto_c

    .line 898
    :cond_2f
    :goto_2f
    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    if-ne p1, v5, :cond_37

    const-string v5, "*filter"

    goto :goto_39

    :cond_37
    const-string v5, "*nat"

    :goto_39
    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 900
    const-string v4, "COMMIT\n"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    const-string v4, "\n"

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 904
    .end local v3    # "bytesCount":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_6f

    .line 905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "total number of commands "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FirewallRulesApplier"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-object v0

    .line 904
    :cond_6f
    goto :goto_b
.end method


# virtual methods
.method addDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 12
    .param p2, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .line 322
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "commandsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 324
    .local v2, "domainFilterRule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "pkgName":Ljava/lang/String;
    iget v4, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 326
    .local v4, "userId":Ljava/lang/Integer;
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 327
    .local v5, "uid":Ljava/lang/Integer;
    const-string v6, "*"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 328
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidForApplication(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 329
    if-nez v5, :cond_55

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to get uid for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FirewallRulesApplier"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    goto :goto_9

    .line 334
    :cond_55
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    invoke-virtual {v6, v3, v5, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->addChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 335
    goto :goto_9

    .line 337
    :cond_5e
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I
    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->access$100(Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_6d

    iget-boolean v6, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    if-eqz v6, :cond_6d

    goto :goto_6e

    :cond_6d
    move v8, v7

    :goto_6e
    move v6, v8

    .line 338
    .local v6, "shouldModifyInputChain":Z
    invoke-static {v2, p2, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainIptablesCommand(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    if-eqz v6, :cond_7a

    .line 340
    iput-boolean v7, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 341
    .end local v2    # "domainFilterRule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/Integer;
    .end local v5    # "uid":Ljava/lang/Integer;
    .end local v6    # "shouldModifyInputChain":Z
    :cond_7a
    goto :goto_9

    .line 343
    :cond_7b
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v0

    .line 344
    const/4 v1, 0x1

    .line 345
    .local v1, "result":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 346
    .local v3, "command":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v4

    and-int/2addr v1, v4

    .line 347
    .end local v3    # "command":Ljava/lang/String;
    goto :goto_86

    .line 348
    :cond_9a
    if-eqz v1, :cond_a8

    .line 349
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "The domain filter on iptables api was successfully enabled."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    .line 353
    :cond_a8
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Failed to enable domain filter on iptables api."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2
.end method

.method declared-synchronized addOrRemoveExemptRules(ZLcom/samsung/android/knox/ContextInfo;)V
    .registers 5
    .param p1, "shouldAdd"    # Z
    .param p2, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;

    monitor-enter p0

    .line 915
    if-eqz p1, :cond_b

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIsExemptRulesApplied:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    .line 914
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .end local p1    # "shouldAdd":Z
    .end local p2    # "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_9
    move-exception p1

    goto :goto_20

    .line 916
    .restart local p1    # "shouldAdd":Z
    .restart local p2    # "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_b
    if-nez p1, :cond_13

    :try_start_d
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIsExemptRulesApplied:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_9

    if-nez v0, :cond_13

    monitor-exit p0

    return-void

    .line 917
    :cond_13
    :try_start_13
    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createExemptRulesCommands(ZLcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 918
    .local v0, "exemptRules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 919
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIsExemptRulesApplied:Z
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_9

    .line 920
    monitor-exit p0

    return-void

    .line 914
    .end local v0    # "exemptRules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "shouldAdd":Z
    .end local p2    # "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    :goto_20
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized addOrRemoveIcmpAllowRule(Z)V
    .registers 6
    .param p1, "shouldAdd"    # Z

    monitor-enter p0

    .line 930
    const/4 v0, 0x1

    if-eqz p1, :cond_10

    :try_start_4
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    if-lt v1, v0, :cond_10

    .line 931
    monitor-exit p0

    return-void

    .line 929
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .end local p1    # "shouldAdd":Z
    :catchall_e
    move-exception p1

    goto :goto_42

    .line 932
    .restart local p1    # "shouldAdd":Z
    :cond_10
    if-nez p1, :cond_1c

    :try_start_12
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_e

    if-le v1, v0, :cond_1c

    .line 933
    monitor-exit p0

    return-void

    .line 935
    :cond_1c
    const/4 v0, 0x4

    :try_start_1d
    invoke-static {p1, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createIcmpAllowRuleCommands(ZI)Ljava/util/List;

    move-result-object v1

    .line 936
    .local v1, "icmpAllowRuleV4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "\n"

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 937
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 938
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createIcmpAllowRuleCommands(ZI)Ljava/util/List;

    move-result-object v2

    .line 939
    .local v2, "icmpAllowRuleV6":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "\n"

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_e

    .line 941
    .end local v2    # "icmpAllowRuleV6":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_40
    monitor-exit p0

    return-void

    .line 929
    .end local v1    # "icmpAllowRuleV4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "shouldAdd":Z
    :goto_42
    monitor-exit p0

    throw p1
.end method

.method changeRuleStatus([Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 5
    .param p1, "rules"    # [Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .param p2, "mCxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "status"    # Z

    .line 102
    if-nez p1, :cond_4

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    .line 109
    .local v0, "rulesResponses":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    return-object v0
.end method

.method declared-synchronized clearIcmpAllowRule()V
    .registers 2

    monitor-enter p0

    .line 948
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 949
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 950
    monitor-exit p0

    return-void

    .line 947
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method createIptablesChains(Ljava/lang/Integer;)Z
    .registers 6
    .param p1, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_10

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_10

    .line 715
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    .line 716
    :cond_10
    if-eqz p1, :cond_15

    .line 717
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_15
    :goto_15
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateFilterChains(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 720
    .local v1, "filterCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateNatChains(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 722
    .local v2, "natCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    return v3
.end method

.method deleteRulesFromAdmin(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 7
    .param p1, "mCxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 620
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewall(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 621
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v2, 0xf

    invoke-virtual {v0, p1, v2}, Lcom/android/server/enterprise/firewall/Firewall;->clearRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 623
    const/4 v0, 0x0

    .line 625
    .local v0, "rulesToDisable":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v4}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 626
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 627
    return-void
.end method

.method disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 11
    .param p1, "rule"    # Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .param p2, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "isAdminRule"    # Z

    .line 302
    nop

    .line 303
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0

    .line 304
    .local v0, "validatorResponse":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 305
    return-object v0

    .line 310
    :cond_12
    const-string v1, "-D"

    invoke-static {p1, p2, v1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 311
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 312
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v2

    .line 311
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    move-result-object v2

    .line 312
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v3

    .line 311
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    move-result v2

    .line 314
    .local v2, "result":Z
    if-eqz p3, :cond_32

    if-eqz v2, :cond_32

    .line 315
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 317
    :cond_32
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The rule was successfully disabled."

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v3
.end method

.method enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 13
    .param p1, "rule"    # Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .param p2, "forceEnable"    # Z
    .param p3, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p4, "isAdminRule"    # Z

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 126
    .local v0, "rules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    const/4 v7, 0x0

    aput-object p1, v0, v7

    .line 128
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v1

    .line 130
    .local v1, "response":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    aget-object v2, v1, v7

    return-object v2
.end method

.method enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 26
    .param p1, "rules"    # [Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .param p2, "forceEnable"    # Z
    .param p3, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p4, "isAdminRule"    # Z
    .param p5, "status"    # Z

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 143
    .local v3, "uid":I
    array-length v4, v1

    .line 145
    .local v4, "ruleSize":I
    new-array v5, v4, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 146
    .local v5, "responseList":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v6, "ipv4FilterCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v7, "ipv6FilterCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v8, "ipv4NatCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v9, "ipv6NatCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10}, Ljava/util/BitSet;-><init>()V

    .line 153
    .local v10, "responsesToBeSet":Ljava/util/BitSet;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_25
    if-ge v11, v4, :cond_110

    .line 154
    aget-object v12, v1, v11

    if-nez v12, :cond_3c

    .line 155
    new-instance v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v15, "Rule is null."

    invoke-direct {v12, v13, v14, v15}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v12, v5, v11

    .line 158
    move/from16 v16, v3

    goto/16 :goto_10a

    .line 161
    :cond_3c
    if-eqz p5, :cond_100

    .line 165
    aget-object v12, v1, v11

    .line 166
    invoke-static {v12}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v12

    .line 167
    .local v12, "validatorResponse":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v13, v14}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_56

    .line 168
    aput-object v12, v5, v11

    .line 169
    move/from16 v16, v3

    goto/16 :goto_10a

    .line 174
    :cond_56
    if-nez p2, :cond_7c

    if-eqz p4, :cond_7c

    .line 175
    aget-object v13, v1, v11

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v13, v3, v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/samsung/android/knox/net/firewall/FirewallRule;ILcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result v13

    if-eqz v13, :cond_79

    const/16 v13, 0x3e8

    if-eq v3, v13, :cond_79

    .line 177
    new-instance v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move/from16 v16, v3

    .end local v3    # "uid":I
    .local v16, "uid":I
    const-string v3, "The specified rule is already enabled."

    invoke-direct {v13, v14, v15, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v13, v5, v11

    .line 180
    goto/16 :goto_10a

    .line 175
    .end local v16    # "uid":I
    .restart local v3    # "uid":I
    :cond_79
    move/from16 v16, v3

    .end local v3    # "uid":I
    .restart local v16    # "uid":I
    goto :goto_7e

    .line 174
    .end local v16    # "uid":I
    .restart local v3    # "uid":I
    :cond_7c
    move/from16 v16, v3

    .line 187
    .end local v3    # "uid":I
    .restart local v16    # "uid":I
    :goto_7e
    aget-object v3, v1, v11

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v3

    .line 188
    .local v3, "addressType":Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    aget-object v13, v1, v11

    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v13

    .line 189
    .local v13, "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    move-result-object v14

    .line 190
    .local v14, "table":Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    sget-object v15, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v15, v3}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v17, v3

    .end local v3    # "addressType":Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .local v17, "addressType":Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    const-string v3, "-A"

    move-object/from16 v18, v12

    .end local v12    # "validatorResponse":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .local v18, "validatorResponse":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    const/4 v12, 0x1

    if-eqz v15, :cond_d8

    .line 191
    invoke-static {v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v15

    if-nez v15, :cond_b3

    .line 192
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v19, v13

    .end local v13    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .local v19, "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    const-string v13, "This device does not have IPv6 support for this type of rule."

    invoke-direct {v3, v12, v15, v13}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v5, v11

    .line 195
    goto :goto_10a

    .line 197
    .end local v19    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .restart local v13    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    :cond_b3
    move-object/from16 v19, v13

    .end local v13    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .restart local v19    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    sget-object v13, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$android$server$enterprise$firewall$FirewallDefinitions$Table:[I

    invoke-virtual {v14}, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->ordinal()I

    move-result v15

    aget v13, v13, v15

    if-eq v13, v12, :cond_cd

    const/4 v12, 0x2

    if-eq v13, v12, :cond_c3

    goto :goto_d7

    .line 203
    :cond_c3
    aget-object v12, v1, v11

    invoke-static {v12, v2, v3}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_d7

    .line 199
    :cond_cd
    aget-object v12, v1, v11

    invoke-static {v12, v2, v3}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    nop

    .line 205
    :goto_d7
    goto :goto_fc

    .line 208
    .end local v19    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .restart local v13    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    :cond_d8
    move-object/from16 v19, v13

    .end local v13    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .restart local v19    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    sget-object v13, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$android$server$enterprise$firewall$FirewallDefinitions$Table:[I

    invoke-virtual {v14}, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->ordinal()I

    move-result v15

    aget v13, v13, v15

    if-eq v13, v12, :cond_f2

    const/4 v12, 0x2

    if-eq v13, v12, :cond_e8

    goto :goto_fc

    .line 214
    :cond_e8
    aget-object v12, v1, v11

    invoke-static {v12, v2, v3}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_fc

    .line 210
    :cond_f2
    aget-object v12, v1, v11

    invoke-static {v12, v2, v3}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    nop

    .line 219
    :goto_fc
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 220
    .end local v14    # "table":Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .end local v17    # "addressType":Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .end local v18    # "validatorResponse":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .end local v19    # "type":Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    goto :goto_10a

    .line 221
    .end local v16    # "uid":I
    .local v3, "uid":I
    :cond_100
    move/from16 v16, v3

    .end local v3    # "uid":I
    .restart local v16    # "uid":I
    aget-object v3, v1, v11

    invoke-direct {v0, v3, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v3

    aput-object v3, v5, v11

    .line 153
    :goto_10a
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    goto/16 :goto_25

    .end local v16    # "uid":I
    .restart local v3    # "uid":I
    :cond_110
    move/from16 v16, v3

    .line 225
    .end local v3    # "uid":I
    .end local v11    # "i":I
    .restart local v16    # "uid":I
    const/4 v3, 0x1

    .line 226
    .local v3, "result":Z
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const/4 v12, 0x4

    if-nez v11, :cond_136

    .line 227
    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v6, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v6

    .line 228
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_124
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_136

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 229
    .local v13, "command":Ljava/lang/String;
    invoke-direct {v0, v12, v13}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v14

    and-int/2addr v3, v14

    .line 230
    .end local v13    # "command":Ljava/lang/String;
    goto :goto_124

    .line 232
    :cond_136
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const/4 v13, 0x6

    if-nez v11, :cond_159

    .line 233
    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v7, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v7

    .line 234
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_147
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_159

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 235
    .local v14, "command":Ljava/lang/String;
    invoke-direct {v0, v13, v14}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v15

    and-int/2addr v3, v15

    .line 236
    .end local v14    # "command":Ljava/lang/String;
    goto :goto_147

    .line 238
    :cond_159
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17b

    .line 239
    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v8, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v8

    .line 240
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_169
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 241
    .restart local v14    # "command":Ljava/lang/String;
    invoke-direct {v0, v12, v14}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v15

    and-int/2addr v3, v15

    .line 242
    .end local v14    # "command":Ljava/lang/String;
    goto :goto_169

    .line 244
    :cond_17b
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_19d

    .line 245
    sget-object v11, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v9, v11}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v9

    .line 246
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_18b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 247
    .local v12, "command":Ljava/lang/String;
    invoke-direct {v0, v13, v12}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v14

    and-int/2addr v3, v14

    .line 248
    .end local v12    # "command":Ljava/lang/String;
    goto :goto_18b

    .line 254
    :cond_19d
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_19e
    if-ge v11, v4, :cond_217

    .line 255
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_214

    .line 256
    const-string v12, "The rule was successfully enabled."

    if-eqz p4, :cond_209

    .line 257
    if-eqz v3, :cond_1f6

    .line 258
    aget-object v13, v1, v11

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v0, v13, v14, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 259
    aget-object v13, v1, v11

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v13, v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 260
    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    aget-object v14, v1, v11

    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v14

    if-eq v13, v14, :cond_1ce

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    aget-object v14, v1, v11

    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v14

    if-ne v13, v14, :cond_1ea

    :cond_1ce
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    aget-object v14, v1, v11

    .line 261
    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ea

    .line 262
    new-instance v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v15, "Rule not applied to INPUT chain for Direction.All."

    invoke-direct {v12, v13, v14, v15}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v12, v5, v11

    goto :goto_214

    .line 266
    :cond_1ea
    new-instance v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-direct {v13, v14, v15, v12}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v13, v5, v11

    goto :goto_214

    .line 272
    :cond_1f6
    aget-object v12, v1, v11

    invoke-direct {v0, v12, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 273
    new-instance v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v15, "Failed to enable rule."

    invoke-direct {v12, v13, v14, v15}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v12, v5, v11

    goto :goto_214

    .line 278
    :cond_209
    new-instance v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-direct {v13, v14, v15, v12}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v13, v5, v11

    .line 254
    :cond_214
    :goto_214
    add-int/lit8 v11, v11, 0x1

    goto :goto_19e

    .line 284
    .end local v11    # "i":I
    :cond_217
    return-object v5
.end method

.method flushAllChains(Ljava/lang/Integer;)Z
    .registers 5
    .param p1, "userId"    # Ljava/lang/Integer;

    .line 764
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getFlushFilterChainsCommand(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 765
    .local v0, "filterCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getFlushNatChainsCommand(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    .line 766
    .local v1, "natCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    return v2
.end method

.method flushChain(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Ljava/lang/Integer;)Z
    .registers 5
    .param p1, "ruleType"    # Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .param p2, "userId"    # Ljava/lang/Integer;

    .line 770
    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getFlushChainsCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 771
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    move-result v1

    return v1
.end method

.method flushDomainChains(Ljava/lang/Integer;Z)Z
    .registers 8
    .param p1, "userId"    # Ljava/lang/Integer;
    .param p2, "shouldRemove"    # Z

    .line 409
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->clearChainsForUserId(Ljava/lang/Integer;)Z

    .line 411
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->access$100(Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 412
    .local v0, "shouldModifyInputChain":Z
    :goto_11
    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFlushBaseChainsCommand(Ljava/lang/Integer;ZZ)Ljava/util/List;

    move-result-object v2

    .line 413
    .local v2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    .line 414
    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 415
    :cond_19
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->completeCommandAndExecute(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    move-result v1

    .line 416
    .local v1, "result":Z
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const-string v4, "\n"

    invoke-static {v4, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 417
    return v1
.end method

.method getAllAdmins()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v0, "allAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 609
    .local v1, "columns":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "adminUid"

    aput-object v3, v1, v2

    .line 610
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "ADMIN"

    invoke-virtual {v2, v5, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 612
    .local v2, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 613
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .end local v5    # "cv":Landroid/content/ContentValues;
    goto :goto_1e

    .line 616
    :cond_32
    return-object v0
.end method

.method hasIpv6Support(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    .registers 5
    .param p1, "table"    # Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 754
    nop

    .line 755
    const-string v0, "30"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 756
    .local v0, "mdm_config_version":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_d

    .line 757
    const/4 v1, 0x0

    return v1

    .line 759
    :cond_d
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getTestIpv6Commands(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "commands":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method isDomainFilterOnIptablesSupported()Z
    .registers 4

    .line 871
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterOnIptablesCheckCommand(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v0

    .line 872
    .local v0, "isSupported":Z
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterOnIptablesCheckCommand(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 873
    return v0
.end method

.method public isIcmpAllowRuleApplied()Z
    .registers 2

    .line 970
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method listIptablesRules(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .registers 18
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 653
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 654
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 656
    .local v3, "userId":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "************ FILTER TABLE ************"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    const-string v6, "filter"

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "\n"

    invoke-static {v8, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    invoke-direct {v0, v9, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, "stringReturned":Ljava/lang/String;
    invoke-static {v3, v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    const-string v10, "************ NAT TABLE ************"

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const-string/jumbo v11, "nat"

    invoke-static {v11}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-static {v8, v12}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v9, v12}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 665
    invoke-static {v3, v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    const-string v12, "************ MANGLE TABLE ************"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    const-string/jumbo v13, "mangle"

    invoke-static {v13}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-static {v8, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v9, v14}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 669
    invoke-static {v3, v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    const-string v14, "************ RAW TABLE ************"

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const-string/jumbo v15, "raw"

    invoke-static {v15}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v8, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 673
    .end local v7    # "stringReturned":Ljava/lang/String;
    .local v1, "stringReturned":Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    sget-boolean v7, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    const/4 v9, 0x6

    if-eqz v7, :cond_9d

    .line 675
    const-string v7, "=============== IPV6 RULES ==============="

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-static {v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v9, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-static {v3, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_9d
    sget-boolean v5, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    if-eqz v5, :cond_e3

    .line 681
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-static {v11}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v9, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-static {v3, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v9, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-static {v3, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-static {v15}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v9, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    invoke-static {v3, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_e3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 694
    .local v5, "returnArray":[Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, [Ljava/lang/String;

    .line 695
    return-object v5
.end method

.method declared-synchronized reinsertIcmpAllowRule()V
    .registers 3

    monitor-enter p0

    .line 958
    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 959
    .local v0, "ruleApplies":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 960
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    .line 961
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 962
    monitor-exit p0

    return-void

    .line 957
    .end local v0    # "ruleApplies":I
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method reloadDomainFilterOnIptablesRules()V
    .registers 7

    .line 594
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 595
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 596
    .local v2, "adminUid":I
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 597
    .local v3, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/Firewall;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 598
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableNapFeature(Lcom/android/server/enterprise/storage/EdmStorageProviderBase;Z)V

    .line 599
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/enterprise/firewall/Firewall;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 600
    .local v4, "domainFilterRules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 602
    .end local v2    # "adminUid":I
    .end local v3    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v4    # "domainFilterRules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    :cond_35
    goto :goto_8

    .line 603
    :cond_36
    return-void
.end method

.method reloadIptablesRules()V
    .registers 12

    .line 572
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 573
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 574
    .local v2, "adminUid":I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_5f

    .line 575
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 576
    .local v3, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v4

    .line 577
    .local v4, "rules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2c
    const/4 v7, 0x1

    if-ge v6, v5, :cond_4e

    aget-object v8, v4, v6

    .line 578
    .local v8, "rule":Lcom/samsung/android/knox/net/firewall/FirewallRule;
    invoke-virtual {v8}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStatus()Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    .line 579
    invoke-direct {p0, v8, v7, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 581
    :cond_40
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 582
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    .line 577
    .end local v8    # "rule":Lcom/samsung/android/knox/net/firewall/FirewallRule;
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 585
    :cond_4e
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-nez v5, :cond_5f

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 586
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 587
    invoke-virtual {p0, v7, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(ZLcom/samsung/android/knox/ContextInfo;)V

    .line 590
    .end local v2    # "adminUid":I
    .end local v3    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v4    # "rules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    :cond_5f
    goto :goto_8

    .line 591
    :cond_60
    return-void
.end method

.method removeDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 13
    .param p2, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .line 359
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    .local p3, "domainsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 361
    .local v2, "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "pkgName":Ljava/lang/String;
    iget v4, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->checkApplicationRulesInDatabase(ILjava/lang/String;)Z

    move-result v4

    .line 366
    .local v4, "existApplicationRuleInDb":Z
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2f

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 368
    :cond_2f
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_39

    .line 369
    invoke-virtual {v2, p3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    goto :goto_42

    .line 370
    :cond_39
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_42

    .line 371
    invoke-virtual {v2, p3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 373
    :cond_42
    :goto_42
    const/4 v5, 0x1

    if-nez v4, :cond_4f

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I
    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->access$100(Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;)I

    move-result v6

    if-ne v6, v5, :cond_4f

    move v6, v5

    goto :goto_50

    :cond_4f
    const/4 v6, 0x0

    .line 374
    .local v6, "shouldModifyInputChain":Z
    :goto_50
    invoke-static {v2, p2, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainRemoveIptablesCommand(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    if-eqz v6, :cond_5b

    .line 376
    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 378
    .end local v6    # "shouldModifyInputChain":Z
    :cond_5b
    if-nez v4, :cond_97

    .line 380
    iget v5, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 381
    .local v5, "userId":I
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 382
    .local v6, "appUid":Ljava/lang/Integer;
    const-string v7, "*"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8e

    .line 383
    invoke-static {v3, v5}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidForApplication(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    .line 384
    if-nez v6, :cond_8e

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to get uid for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FirewallRulesApplier"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    goto/16 :goto_9

    .line 389
    :cond_8e
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v6, v8}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->removeChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    .line 391
    .end local v2    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "existApplicationRuleInDb":Z
    .end local v5    # "userId":I
    .end local v6    # "appUid":Ljava/lang/Integer;
    :cond_97
    goto/16 :goto_9

    .line 393
    :cond_99
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->splitAndConvertCommandsList(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Ljava/util/List;

    move-result-object v0

    .line 394
    const/4 v1, 0x1

    .line 395
    .local v1, "result":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 396
    .local v3, "command":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    move-result v4

    and-int/2addr v1, v4

    .line 397
    .end local v3    # "command":Ljava/lang/String;
    goto :goto_a4

    .line 398
    :cond_b8
    if-eqz v1, :cond_c6

    .line 399
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "The domain rule was successfuly removed/updated."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    .line 403
    :cond_c6
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "Failed to remove domain rule from the iptables."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2
.end method

.method removeIptablesChains(Ljava/lang/Integer;)Z
    .registers 5
    .param p1, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 743
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getRemoveFilterChainsCommand(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 744
    .local v0, "filterCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getRemoveNatChainsCommand(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    .line 745
    .local v1, "natCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mergeAndExecuteCmdIptablesV4AndV6(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    return v2
.end method

.method setRulesStatusAfterReboot()V
    .registers 11

    .line 630
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 632
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 633
    .local v2, "adminUid":I
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 634
    .local v3, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const/4 v4, 0x0

    .line 635
    .local v4, "isFrwEnabled":Z
    const/4 v5, 0x0

    .line 637
    .local v5, "rules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    .line 638
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v5

    .line 640
    if-eqz v5, :cond_46

    .line 641
    array-length v6, v5

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v6, :cond_46

    aget-object v8, v5, v7

    .line 642
    .local v8, "rule":Lcom/samsung/android/knox/net/firewall/FirewallRule;
    if-eqz v4, :cond_3e

    .line 643
    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {p0, v8, v9, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    goto :goto_43

    .line 645
    :cond_3e
    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {p0, v8, v9, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 641
    .end local v8    # "rule":Lcom/samsung/android/knox/net/firewall/FirewallRule;
    :goto_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 649
    .end local v2    # "adminUid":I
    .end local v3    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v4    # "isFrwEnabled":Z
    .end local v5    # "rules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    :cond_46
    goto :goto_8

    .line 650
    :cond_47
    return-void
.end method

.method updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V
    .registers 20
    .param p1, "rule"    # Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .param p2, "status"    # Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;
    .param p3, "mCxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 458
    .local v2, "filterValues":Landroid/content/ContentValues;
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1a

    .line 459
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    :cond_1a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 464
    .local v3, "newValue":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->name()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ruleType"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object v4, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    const-string v6, "direction"

    const-string/jumbo v7, "portLocation"

    const-string/jumbo v8, "networkInterface"

    const-string/jumbo v9, "networkInterfaceStr"

    const-string v10, "FirewallRule"

    const-string/jumbo v11, "signature"

    const-string v12, "addressType"

    const-string/jumbo v13, "protocol"

    const-string/jumbo v14, "portNumber"

    const-string/jumbo v15, "packageName"

    const-string/jumbo v1, "ipAddress"

    if-eq v4, v5, :cond_1cb

    const/4 v5, 0x2

    if-eq v4, v5, :cond_14d

    const/4 v5, 0x3

    if-eq v4, v5, :cond_cc

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6f

    goto/16 :goto_248

    .line 547
    :cond_6f
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {v2, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 551
    nop

    .line 552
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_97
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v1

    .line 556
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {v2, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c5

    .line 559
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_c5
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v10, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 565
    goto/16 :goto_248

    .line 520
    :cond_cc
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    .line 521
    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v2, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ed

    .line 523
    nop

    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_ed
    nop

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    nop

    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-virtual {v2, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    nop

    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 530
    const-string/jumbo v4, "targetIpAddress"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    nop

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v1

    .line 532
    const-string/jumbo v4, "targetPortNumber"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    nop

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-virtual {v2, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_146

    .line 539
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_146
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v10, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 545
    goto/16 :goto_248

    .line 496
    :cond_14d
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-virtual {v2, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_175

    .line 500
    nop

    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_175
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-virtual {v2, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c4

    .line 511
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_1c4
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v10, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 517
    goto/16 :goto_248

    .line 473
    :cond_1cb
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {v2, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f3

    .line 477
    nop

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_1f3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {v2, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_242

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_242
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v10, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 494
    nop

    .line 569
    :goto_248
    return-void
.end method
