.class Lcom/android/server/PACMService$1;
.super Landroid/os/Handler;
.source "PACMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PACMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method constructor <init>(Lcom/android/server/PACMService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/PACMService;

    .line 134
    iput-object p1, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_70

    .line 139
    :cond_6
    const-string v0, "PACMService"

    const-string v2, "MESSAGE_CHECK_BOARDCAST_RECEIVER"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    # getter for: Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/PACMService;->access$100()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_19

    .line 141
    const-string v1, "List is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 145
    :cond_19
    # getter for: Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/PACMService;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/PACMService;->access$200(Lcom/android/server/PACMService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 146
    iget-object v0, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    # invokes: Lcom/android/server/PACMService;->registerForBroadcasts()V
    invoke-static {v0}, Lcom/android/server/PACMService;->access$300(Lcom/android/server/PACMService;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PACMService;->access$400(Lcom/android/server/PACMService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_70

    .line 149
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already registered BroadcastReceiver! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/PACMService;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PACMService;->access$400(Lcom/android/server/PACMService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 151
    iget-object v0, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PACMService;->access$400(Lcom/android/server/PACMService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    :cond_70
    :goto_70
    return-void
.end method
