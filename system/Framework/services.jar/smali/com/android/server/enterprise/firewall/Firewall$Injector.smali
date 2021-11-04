.class Lcom/android/server/enterprise/firewall/Firewall$Injector;
.super Ljava/lang/Object;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field final mCtx:Landroid/content/Context;

.field mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    .line 166
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method getDomainFilter()Lcom/android/server/enterprise/firewall/DomainFilter;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    return-object v0
.end method

.method getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    return-object v0
.end method

.method getFirewallRulesApplier()Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-object v0
.end method

.method initInjector(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 5
    .param p1, "firewall"    # Lcom/android/server/enterprise/firewall/Firewall;

    .line 171
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 172
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 173
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/Firewall;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 174
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 175
    return-void
.end method
