.class Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemPrivilegeManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;

    .line 72
    iput-object p1, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl$1;->this$0:Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 75
    # getter for: Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "new policy is updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "sec.app.policy.UPDATE.SepUnionPrivilegePolicy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 79
    return-void

    .line 81
    :cond_18
    iget-object v1, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl$1;->this$0:Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;

    # invokes: Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->updatePrivilegePackages(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->access$100(Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;Landroid/content/Context;)V

    .line 82
    return-void
.end method
