.class Lcom/att/iqi/IQIServiceBroker$3;
.super Landroid/content/BroadcastReceiver;
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

    .line 157
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$3;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 160
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "IQIServiceBroker"

    const-string v1, "User unlocked."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_d
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$3;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$500(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$3;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$500(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method
