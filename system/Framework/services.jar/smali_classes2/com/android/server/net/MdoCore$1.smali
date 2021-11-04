.class Lcom/android/server/net/MdoCore$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MdoCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MdoCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MdoCore;


# direct methods
.method constructor <init>(Lcom/android/server/net/MdoCore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/MdoCore;

    .line 93
    iput-object p1, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 96
    const-string v0, "UrspService_MDO"

    const-string/jumbo v1, "vpn onAvailable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoState:Z
    invoke-static {v1}, Lcom/android/server/net/MdoCore;->access$000(Lcom/android/server/net/MdoCore;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z
    invoke-static {v1}, Lcom/android/server/net/MdoCore;->access$100(Lcom/android/server/net/MdoCore;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 99
    iget-object v1, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/net/MdoCore;->access$102(Lcom/android/server/net/MdoCore;Z)Z

    .line 100
    const-string/jumbo v1, "vpn requestConnection false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    iget-object v0, v0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/server/net/UrspConnectivityController;->requestConnection(ZII)V

    .line 105
    iget-object v0, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;
    invoke-static {v0}, Lcom/android/server/net/MdoCore;->access$200(Lcom/android/server/net/MdoCore;)Lcom/android/server/net/MdoNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->stopNotification()V

    .line 108
    :cond_3d
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 109
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 113
    const-string v0, "UrspService_MDO"

    const-string/jumbo v1, "vpn onLost."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoState:Z
    invoke-static {v1}, Lcom/android/server/net/MdoCore;->access$000(Lcom/android/server/net/MdoCore;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z
    invoke-static {v1}, Lcom/android/server/net/MdoCore;->access$100(Lcom/android/server/net/MdoCore;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 116
    iget-object v1, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/net/MdoCore;->access$102(Lcom/android/server/net/MdoCore;Z)Z

    .line 117
    const-string/jumbo v1, "vpn requestConnection true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    iget-object v0, v0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    const/4 v1, 0x1

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/net/UrspConnectivityController;->requestConnection(ZII)V

    .line 121
    iget-object v0, p0, Lcom/android/server/net/MdoCore$1;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;
    invoke-static {v0}, Lcom/android/server/net/MdoCore;->access$200(Lcom/android/server/net/MdoCore;)Lcom/android/server/net/MdoNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->startNotification()V

    .line 124
    :cond_3d
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 125
    return-void
.end method
