.class Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;
.super Landroid/content/BroadcastReceiver;
.source "ThreatDefenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 683
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 686
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 689
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 690
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_ab

    .line 691
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "pkg":Ljava/lang/String;
    :try_start_16
    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$200()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 694
    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$200()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rules are removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_3f
    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$400()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 698
    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$400()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " process rules are removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_68
    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$200()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-nez v3, :cond_84

    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$400()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-nez v3, :cond_84

    .line 704
    const-string/jumbo v3, "sys.mtdl.start"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_84} :catch_85

    .line 708
    :cond_84
    goto :goto_ab

    .line 706
    :catch_85
    move-exception v3

    .line 707
    .local v3, "npe":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_ab
    :goto_ab
    return-void
.end method
