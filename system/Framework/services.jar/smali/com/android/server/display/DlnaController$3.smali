.class Lcom/android/server/display/DlnaController$3;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DlnaController;->handleSendStatusChangeBroadcast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DlnaController;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/server/display/DlnaController;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/DlnaController;

    .line 247
    iput-object p1, p0, Lcom/android/server/display/DlnaController$3;->this$0:Lcom/android/server/display/DlnaController;

    iput p2, p0, Lcom/android/server/display/DlnaController$3;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/server/display/DlnaController$3;->val$status:I

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    iget v1, p0, Lcom/android/server/display/DlnaController$3;->val$status:I

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/android/server/display/DlnaController$3;->this$0:Lcom/android/server/display/DlnaController;

    invoke-virtual {v1}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 254
    iget-object v1, p0, Lcom/android/server/display/DlnaController$3;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mActiveDeviceInfo:Lcom/android/server/display/DlnaDevice;
    invoke-static {v1}, Lcom/android/server/display/DlnaController;->access$200(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DlnaDevice;->getPlayerType()I

    move-result v1

    const-string/jumbo v2, "player_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSendStatusChangeBroadcast::SEM_ACTION_DLNA_STATUS_CHANGED state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DlnaController$3;->val$status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DlnaController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/server/display/DlnaController$3;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DlnaController;->access$300(Lcom/android/server/display/DlnaController;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 258
    return-void
.end method
