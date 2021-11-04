.class Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UrspConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocNetworkRequestCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspConnectivityController;


# direct methods
.method private constructor <init>(Lcom/android/server/net/UrspConnectivityController;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;->this$0:Lcom/android/server/net/UrspConnectivityController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/UrspConnectivityController;Lcom/android/server/net/UrspConnectivityController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/net/UrspConnectivityController;
    .param p2, "x1"    # Lcom/android/server/net/UrspConnectivityController$1;

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;-><init>(Lcom/android/server/net/UrspConnectivityController;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAvailable: network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;->this$0:Lcom/android/server/net/UrspConnectivityController;

    iget v1, p1, Landroid/net/Network;->netId:I

    const/4 v2, 0x1

    # invokes: Lcom/android/server/net/UrspConnectivityController;->sendUrspConnBroadcast(IILandroid/net/Network;)V
    invoke-static {v0, v2, v1, p1}, Lcom/android/server/net/UrspConnectivityController;->access$400(Lcom/android/server/net/UrspConnectivityController;IILandroid/net/Network;)V

    .line 297
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLost: network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/net/UrspConnectivityController$FocNetworkRequestCallback;->this$0:Lcom/android/server/net/UrspConnectivityController;

    iget v1, p1, Landroid/net/Network;->netId:I

    const/4 v2, 0x1

    # invokes: Lcom/android/server/net/UrspConnectivityController;->sendUrspConnBroadcast(IILandroid/net/Network;)V
    invoke-static {v0, v2, v1, p1}, Lcom/android/server/net/UrspConnectivityController;->access$400(Lcom/android/server/net/UrspConnectivityController;IILandroid/net/Network;)V

    .line 303
    return-void
.end method
