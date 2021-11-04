.class Lcom/android/server/pm/PersonaPolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaPolicyManagerService;

    .line 198
    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "action":Ljava/lang/String;
    nop

    .line 203
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaPolicyManagerService$1;->getSendingUserId()I

    move-result v1

    .line 202
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 204
    .local v1, "userHandle":I
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 205
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 206
    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    # invokes: Lcom/android/server/pm/PersonaPolicyManagerService;->removePersonaData(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->access$000(Lcom/android/server/pm/PersonaPolicyManagerService;I)V

    .line 209
    :cond_22
    return-void
.end method
