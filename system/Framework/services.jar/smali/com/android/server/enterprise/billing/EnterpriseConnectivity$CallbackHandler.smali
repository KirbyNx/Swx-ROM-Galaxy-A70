.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;
.super Landroid/os/Handler;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field mCn:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Looper;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "cn"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 659
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .line 660
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 661
    iput-object p3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;->mCn:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 662
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 666
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 667
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 668
    .local v1, "req":Landroid/net/NetworkRequest;
    if-eqz v1, :cond_35

    .line 669
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;->mCn:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v3, v1, Landroid/net/NetworkRequest;->requestId:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDefaultRequest(I)Z
    invoke-static {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 670
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;->mCn:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onDefaultNetworkChanged(Landroid/os/Bundle;I)V
    invoke-static {v2, v0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Bundle;I)V

    goto :goto_35

    .line 671
    :cond_24
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;->mCn:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v3, v1, Landroid/net/NetworkRequest;->requestId:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEntRequest(I)Z
    invoke-static {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 672
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;->mCn:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onEntNetworkChanged(Landroid/os/Bundle;I)V
    invoke-static {v2, v0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Bundle;I)V

    .line 675
    :cond_35
    :goto_35
    return-void
.end method
