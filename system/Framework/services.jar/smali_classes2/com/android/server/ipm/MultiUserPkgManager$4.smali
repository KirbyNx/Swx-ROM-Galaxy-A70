.class Lcom/android/server/ipm/MultiUserPkgManager$4;
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

    .line 504
    iput-object p1, p0, Lcom/android/server/ipm/MultiUserPkgManager$4;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 507
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager$4;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z
    invoke-static {v0}, Lcom/android/server/ipm/MultiUserPkgManager;->access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 509
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager$4;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ipm/MultiUserPkgManager;->access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " receive action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_26
    const-string v0, "android.intent.extra.UID"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 511
    .local v7, "uid":I
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 513
    .local v8, "isReInstall":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 514
    .local v9, "data":Landroid/net/Uri;
    if-eqz v9, :cond_49

    .line 515
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager$4;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 515
    move-object v2, v6

    move v3, v8

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ipm/MultiUserPkgManager;->sendPkgStatusChangedMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 519
    :cond_49
    return-void
.end method
