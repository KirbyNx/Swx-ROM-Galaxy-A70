.class Lcom/samsung/iqi/IQIServiceBrokerExt$3;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 89
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    const-string v1, "com.att.iqi.extra.SERVICE_RUNNING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z
    invoke-static {v0, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$602(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)Z

    .line 94
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z
    invoke-static {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$500(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceStateReceiver : service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$600(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "running"

    goto :goto_2b

    :cond_29
    const-string v1, "stopped"

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IQIServiceBrokerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_37
    return-void
.end method
