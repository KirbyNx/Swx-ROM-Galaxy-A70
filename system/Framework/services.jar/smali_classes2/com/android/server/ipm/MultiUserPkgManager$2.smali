.class Lcom/android/server/ipm/MultiUserPkgManager$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiUserPkgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/MultiUserPkgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/MultiUserPkgManager;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/MultiUserPkgManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/MultiUserPkgManager;

    .line 345
    iput-object p1, p0, Lcom/android/server/ipm/MultiUserPkgManager$2;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager$2;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z
    invoke-static {v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 350
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager$2;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast received action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_26
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 353
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 354
    .local v1, "userId":I
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 355
    .local v2, "currentUser":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager$2;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # invokes: Lcom/android/server/ipm/MultiUserPkgManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    invoke-static {v3, v2}, Lcom/android/server/ipm/MultiUserPkgManager;->access$700(Lcom/android/server/ipm/MultiUserPkgManager;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    # setter for: Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;
    invoke-static {v3, v4}, Lcom/android/server/ipm/MultiUserPkgManager;->access$602(Lcom/android/server/ipm/MultiUserPkgManager;Landroid/content/Context;)Landroid/content/Context;

    .line 356
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager$2;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z
    invoke-static {v3}, Lcom/android/server/ipm/MultiUserPkgManager;->access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 357
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager$2;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ipm/MultiUserPkgManager;->access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mContext.userid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/ipm/MultiUserPkgManager$2;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/ipm/MultiUserPkgManager;->access$600(Lcom/android/server/ipm/MultiUserPkgManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_70
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager$2;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ipm/MultiUserPkgManager;->access$600(Lcom/android/server/ipm/MultiUserPkgManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/ipm/MultiUserPkgManager;->sendInsPkgAsUserMsgToMainHandler(I)V

    .line 360
    .end local v1    # "userId":I
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    :cond_7d
    return-void
.end method
