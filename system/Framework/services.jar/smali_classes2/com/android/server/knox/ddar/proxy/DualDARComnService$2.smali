.class Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;
.super Landroid/content/BroadcastReceiver;
.source "DualDARComnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/proxy/DualDARComnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    .line 90
    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 95
    .local v1, "userHandle":I
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 96
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_2c

    .line 104
    :cond_1d
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 105
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_51

    .line 104
    :cond_2b
    :goto_2b
    goto :goto_51

    .line 97
    :cond_2c
    :goto_2c
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "newPackage":Ljava/lang/String;
    if-eqz v2, :cond_3b

    .line 99
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    # invokes: Lcom/android/server/knox/ddar/proxy/DualDARComnService;->reConnectAgentsByPkgName(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->access$100(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Ljava/lang/String;)V

    .line 101
    :cond_3b
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    # invokes: Lcom/android/server/knox/ddar/proxy/DualDARComnService;->hasKnoxKPUInternalPermission(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->access$200(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    # invokes: Lcom/android/server/knox/ddar/proxy/DualDARComnService;->isDualDAREnabled(I)Z
    invoke-static {v3, v1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->access$300(Lcom/android/server/knox/ddar/proxy/DualDARComnService;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 102
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    # invokes: Lcom/android/server/knox/ddar/proxy/DualDARComnService;->addKPUAppToWhitelist(I)V
    invoke-static {v3, v1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->access$400(Lcom/android/server/knox/ddar/proxy/DualDARComnService;I)V

    goto :goto_2b

    .line 108
    .end local v2    # "newPackage":Ljava/lang/String;
    :goto_51
    return-void
.end method
