.class Lcom/android/server/connectivity/PermissionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PermissionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PermissionMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/PermissionMonitor;

    .line 727
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 730
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 733
    :cond_7
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 734
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 736
    :cond_17
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "pkgList":[Ljava/lang/String;
    const-string v2, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 739
    .local v2, "uidList":[I
    if-eqz v2, :cond_68

    if-eqz v1, :cond_68

    .line 740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mExtPackageReceiver - uid size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/connectivity/PermissionMonitor;->access$400(Ljava/lang/String;)V

    .line 741
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    array-length v4, v2

    if-ge v3, v4, :cond_68

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mExtPackageReceiver - uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/connectivity/PermissionMonitor;->access$400(Ljava/lang/String;)V

    .line 743
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    aget v5, v2, v3

    aget v6, v2, v3

    # invokes: Lcom/android/server/connectivity/PermissionMonitor;->getPermissionsForUid(I)I
    invoke-static {v4, v6}, Lcom/android/server/connectivity/PermissionMonitor;->access$500(Lcom/android/server/connectivity/PermissionMonitor;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsForUid(II)V

    .line 741
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 747
    .end local v1    # "pkgList":[Ljava/lang/String;
    .end local v2    # "uidList":[I
    .end local v3    # "i":I
    :cond_68
    return-void
.end method
