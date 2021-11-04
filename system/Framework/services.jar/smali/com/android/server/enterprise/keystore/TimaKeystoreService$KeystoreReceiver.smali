.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeystoreReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1011
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1014
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$500()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1016
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeystoreReceiver onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_22
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1018
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$500()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1019
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeystoreReceiver ACTION_PACKAGE_REMOVED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_39
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 1022
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1023
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    .line 1024
    .local v2, "packageName":Ljava/lang/String;
    :goto_4e
    const/4 v3, -0x1

    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1025
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(ILjava/lang/String;)Z
    invoke-static {v4, v3, v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$900(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z

    .line 1026
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z
    invoke-static {v4, v3, v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$1000(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z

    .line 1030
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_5f
    return-void
.end method
