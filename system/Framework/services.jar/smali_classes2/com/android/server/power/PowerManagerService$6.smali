.class Lcom/android/server/power/PowerManagerService$6;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->sendUserActivityIntentLocked(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$screenDimDuration:J

.field final synthetic val$userActivityIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;J)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 4379
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$6;->val$userActivityIntent:Landroid/content/Intent;

    iput-wide p3, p0, Lcom/android/server/power/PowerManagerService$6;->val$screenDimDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 4382
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->val$userActivityIntent:Landroid/content/Intent;

    const-string/jumbo v1, "status"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4383
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->val$userActivityIntent:Landroid/content/Intent;

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService$6;->val$screenDimDuration:J

    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4384
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->val$userActivityIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4385
    return-void
.end method
