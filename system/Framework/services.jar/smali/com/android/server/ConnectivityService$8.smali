.class Lcom/android/server/ConnectivityService$8;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 8221
    iput-object p1, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 8224
    iget-object v0, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$8300(Lcom/android/server/ConnectivityService;)V

    .line 8225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8226
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 8227
    .local v1, "userId":I
    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 8228
    .local v3, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 8230
    .local v4, "packageData":Landroid/net/Uri;
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    .line 8231
    .local v5, "packageName":Ljava/lang/String;
    :goto_24
    if-ne v1, v2, :cond_27

    return-void

    .line 8233
    :cond_27
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 8234
    iget-object v2, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserStart(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$8400(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 8235
    :cond_35
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 8236
    iget-object v2, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserStop(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$8500(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 8237
    :cond_43
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 8238
    iget-object v2, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserAdded(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$8600(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 8239
    :cond_51
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 8240
    iget-object v2, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$8700(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 8241
    :cond_5f
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 8242
    iget-object v2, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserUnlocked(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$8800(Lcom/android/server/ConnectivityService;I)V

    goto :goto_9d

    .line 8243
    :cond_6d
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 8244
    iget-object v2, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onPackageAdded(Ljava/lang/String;I)V
    invoke-static {v2, v5, v3}, Lcom/android/server/ConnectivityService;->access$8900(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_9d

    .line 8245
    :cond_7b
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 8246
    iget-object v2, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onPackageReplaced(Ljava/lang/String;I)V
    invoke-static {v2, v5, v3}, Lcom/android/server/ConnectivityService;->access$9000(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_9d

    .line 8247
    :cond_89
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 8248
    const/4 v2, 0x0

    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 8250
    .local v2, "isReplacing":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onPackageRemoved(Ljava/lang/String;IZ)V
    invoke-static {v6, v5, v3, v2}, Lcom/android/server/ConnectivityService;->access$9100(Lcom/android/server/ConnectivityService;Ljava/lang/String;IZ)V

    .line 8252
    .end local v2    # "isReplacing":Z
    :cond_9d
    :goto_9d
    return-void
.end method
