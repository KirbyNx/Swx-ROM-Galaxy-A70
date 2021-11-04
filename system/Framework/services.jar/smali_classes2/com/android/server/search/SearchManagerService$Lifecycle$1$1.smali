.class Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;
.super Ljava/lang/Object;
.source "SearchManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/search/SearchManagerService$Lifecycle$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/search/SearchManagerService$Lifecycle$1;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    .line 94
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 98
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    iget-object v0, v0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    # invokes: Lcom/android/server/search/SearchManagerService$Lifecycle;->sendBroadcastReadyIntent()V
    invoke-static {v0}, Lcom/android/server/search/SearchManagerService$Lifecycle;->access$000(Lcom/android/server/search/SearchManagerService$Lifecycle;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    iget-object v1, v1, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    # getter for: Lcom/android/server/search/SearchManagerService$Lifecycle;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/search/SearchManagerService$Lifecycle;->access$100(Lcom/android/server/search/SearchManagerService$Lifecycle;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    :cond_24
    return-void
.end method
