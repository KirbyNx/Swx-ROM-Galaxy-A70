.class Lcom/android/server/role/RoleManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/role/RoleManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/role/RoleManagerService;

    .line 220
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$2;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 223
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 228
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    .line 229
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 231
    return-void

    .line 233
    :cond_21
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$2;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->maybeGrantDefaultRolesAsync(I)V
    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)V

    .line 234
    return-void
.end method
