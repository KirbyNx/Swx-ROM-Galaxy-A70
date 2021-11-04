.class Lcom/android/server/wm/PackageConfigurationController$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageConfigurationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageConfigurationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PackageConfigurationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PackageConfigurationController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/PackageConfigurationController;

    .line 133
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationController$1;->this$0:Lcom/android/server/wm/PackageConfigurationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 136
    nop

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sec.app.policy.UPDATE."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "policyItemName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationController$1;->this$0:Lcom/android/server/wm/PackageConfigurationController;

    monitor-enter v1

    .line 139
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigurationController$1;->this$0:Lcom/android/server/wm/PackageConfigurationController;

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigurationController$1;->this$0:Lcom/android/server/wm/PackageConfigurationController;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/PackageConfigurationController;->scheduleUpdatePolicyItem(Ljava/lang/String;J)V

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    throw v2
.end method
