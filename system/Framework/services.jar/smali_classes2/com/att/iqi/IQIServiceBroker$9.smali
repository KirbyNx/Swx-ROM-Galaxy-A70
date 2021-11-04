.class Lcom/att/iqi/IQIServiceBroker$9;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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

    .line 836
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$9;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 5

    .line 839
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$9;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$2300(Lcom/att/iqi/IQIServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 840
    .local v0, "sm":Landroid/telephony/SubscriptionManager;
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$9;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$500(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$9;->this$0:Lcom/att/iqi/IQIServiceBroker;

    .line 841
    # getter for: Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$500(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v0, :cond_24

    .line 842
    invoke-static {v0}, Lcom/att/iqi/IQIConcierge;->updateSubscriptions(Landroid/telephony/SubscriptionManager;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 843
    const/4 v3, 0x2

    goto :goto_25

    :cond_24
    const/4 v3, 0x3

    .line 841
    :goto_25
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 840
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 845
    return-void
.end method
