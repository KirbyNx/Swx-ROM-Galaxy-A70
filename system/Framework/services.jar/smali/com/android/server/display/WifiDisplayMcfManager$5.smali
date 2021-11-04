.class Lcom/android/server/display/WifiDisplayMcfManager$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayMcfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayMcfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 403
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_5c

    .line 411
    const/16 v1, 0xa

    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 412
    .local v1, "state":I
    const/16 v4, 0xf

    if-eq v1, v4, :cond_38

    const/16 v5, 0x10

    if-ne v1, v5, :cond_5b

    .line 414
    :cond_38
    if-ne v1, v4, :cond_3b

    const/4 v2, 0x1

    .line 415
    .local v2, "isAvailiable":Z
    :cond_3b
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 416
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 417
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 416
    invoke-virtual {v4, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    .end local v1    # "state":I
    .end local v2    # "isAvailiable":Z
    :cond_5b
    goto :goto_ba

    :cond_5c
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 420
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 421
    .local v1, "isAvailiable":Z
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 422
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 423
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 422
    invoke-virtual {v2, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ba

    .line 424
    .end local v1    # "isAvailiable":Z
    :cond_8c
    const-string v1, "com.samsung.android.nearbyscanning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 425
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # invokes: Lcom/android/server/display/WifiDisplayMcfManager;->isNearbyScanningOn()Z
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayMcfManager;->access$400(Lcom/android/server/display/WifiDisplayMcfManager;)Z

    move-result v1

    .line 426
    .restart local v1    # "isAvailiable":Z
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 427
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 428
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 427
    invoke-virtual {v2, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    .end local v1    # "isAvailiable":Z
    :cond_ba
    :goto_ba
    return-void
.end method
