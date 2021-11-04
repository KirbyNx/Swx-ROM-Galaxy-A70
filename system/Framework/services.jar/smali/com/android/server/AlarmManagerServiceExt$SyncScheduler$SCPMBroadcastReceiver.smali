.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCPMBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 4
    .param p2, "ctx"    # Landroid/content/Context;

    .line 3989
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3991
    new-instance p1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "sec.app.policy.UPDATE.AppsyncPolicy"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3992
    .local p1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3993
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3998
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3999
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 4000
    return-void

    .line 4002
    :cond_7
    const-string/jumbo v1, "sec.app.policy.UPDATE.AppsyncPolicy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4003
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousPolicy(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    .line 4005
    :cond_15
    return-void
.end method
