.class Lcom/android/server/aod/AODManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/aod/AODManagerService;

    .line 211
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$700(Lcom/android/server/aod/AODManagerService;)Z

    move-result v1

    if-eqz v1, :cond_92

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mExpandPanelTimeStamp:J
    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->access$800(Lcom/android/server/aod/AODManagerService;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 217
    .local v1, "timeDiff":J
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive() ACTION_SCREEN_ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mSbnToExpand:Landroid/service/notification/StatusBarNotification;
    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->access$900(Lcom/android/server/aod/AODManagerService;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_43

    move-object v3, v4

    goto :goto_4d

    :cond_43
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mSbnToExpand:Landroid/service/notification/StatusBarNotification;
    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->access$900(Lcom/android/server/aod/AODManagerService;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 220
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_4d
    const-wide/16 v5, 0xfa0

    cmp-long v5, v1, v5

    if-gez v5, :cond_87

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mNotiExpandHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/aod/AODManagerService;->access$1000(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_87

    .line 221
    iget-object v5, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mNotiExpandHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/aod/AODManagerService;->access$1000(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 222
    iget-object v5, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mNotiExpandHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/aod/AODManagerService;->access$1000(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    :cond_72
    iget-object v5, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mNotiExpandHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/aod/AODManagerService;->access$1000(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 226
    .local v5, "msg":Landroid/os/Message;
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v6, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mNotiExpandHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/aod/AODManagerService;->access$1000(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    .end local v5    # "msg":Landroid/os/Message;
    :cond_87
    iget-object v5, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # setter for: Lcom/android/server/aod/AODManagerService;->mSbnToExpand:Landroid/service/notification/StatusBarNotification;
    invoke-static {v5, v4}, Lcom/android/server/aod/AODManagerService;->access$902(Lcom/android/server/aod/AODManagerService;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    .line 231
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z
    invoke-static {v4, v5}, Lcom/android/server/aod/AODManagerService;->access$702(Lcom/android/server/aod/AODManagerService;Z)Z

    .line 233
    .end local v1    # "timeDiff":J
    .end local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_92
    return-void
.end method
