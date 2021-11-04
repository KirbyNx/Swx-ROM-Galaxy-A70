.class Lcom/android/server/StorageManagerService$18;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 6339
    iput-object p1, p0, Lcom/android/server/StorageManagerService$18;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 6341
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mPolicyReceiver :: "

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6342
    iget-object v0, p0, Lcom/android/server/StorageManagerService$18;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/StorageManagerService;->isMountDisallowedByEAS(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$7300(Lcom/android/server/StorageManagerService;Z)Z

    move-result v1

    # invokes: Lcom/android/server/StorageManagerService;->ApplyCurrentSdCardPolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$7400(Lcom/android/server/StorageManagerService;Z)V

    .line 6343
    return-void
.end method
