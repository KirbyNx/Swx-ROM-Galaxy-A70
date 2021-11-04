.class Lcom/att/iqi/IQIServiceBroker$5;
.super Landroid/os/Handler;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 190
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v2, 0x2

    const-string v3, "IQIServiceBroker"

    if-eq v0, v2, :cond_1f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 211
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "Unknown message"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 203
    :cond_19
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->tryDisconnecting()V

    .line 204
    goto :goto_5c

    .line 195
    :cond_1f
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # invokes: Lcom/att/iqi/IQIServiceBroker;->checkPkgValidity()Z
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$600(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # invokes: Lcom/att/iqi/IQIServiceBroker;->appEnabled()Z
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$700(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 196
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$500(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    .line 197
    # getter for: Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$500(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5c

    .line 199
    :cond_43
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "Bad or disabled package"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 206
    :cond_4f
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # invokes: Lcom/att/iqi/IQIServiceBroker;->shouldConnect()Z
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$800(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 207
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # invokes: Lcom/att/iqi/IQIServiceBroker;->tryConnecting()V
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$900(Lcom/att/iqi/IQIServiceBroker;)V

    .line 213
    :cond_5c
    :goto_5c
    return-void
.end method
