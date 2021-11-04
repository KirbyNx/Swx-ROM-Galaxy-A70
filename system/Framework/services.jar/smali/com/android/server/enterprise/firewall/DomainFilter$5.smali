.class Lcom/android/server/enterprise/firewall/DomainFilter$5;
.super Landroid/content/BroadcastReceiver;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 2575
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2578
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1800(Lcom/android/server/enterprise/firewall/DomainFilter;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2579
    nop

    .line 2580
    const-string v0, "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2583
    .local v0, "redirectUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->extractHost(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1900(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2584
    .local v1, "portalHost":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->isIpAddress(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2000(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 2586
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$5;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->addHostToCaptivePortalWhitelist(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$2100(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)V

    goto :goto_33

    .line 2588
    :cond_29
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mPortalFilterReceiver.onReceive() - invalid host"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    .end local v0    # "redirectUrl":Ljava/lang/String;
    .end local v1    # "portalHost":Ljava/lang/String;
    :cond_33
    :goto_33
    return-void
.end method
