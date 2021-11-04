.class Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;
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

    .line 80
    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, "userHandle":I
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 86
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    # invokes: Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectAgentsByUser(I)V
    invoke-static {v2, v1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->access$000(Lcom/android/server/knox/ddar/proxy/DualDARComnService;I)V

    .line 88
    :cond_19
    return-void
.end method
