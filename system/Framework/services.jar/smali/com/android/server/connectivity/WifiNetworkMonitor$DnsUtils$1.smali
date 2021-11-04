.class Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;
.super Ljava/lang/Object;
.source "WifiNetworkMonitor.java"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;III)[Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/DnsResolver$Callback<",
        "Ljava/util/List<",
        "Ljava/net/InetAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$resultRef:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
    .registers 3

    .line 2918
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;->val$resultRef:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .registers 3

    .line 2918
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;->onAnswer(Ljava/util/List;I)V

    return-void
.end method

.method public onAnswer(Ljava/util/List;I)V
    .registers 5
    .param p2, "rcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;I)V"
        }
    .end annotation

    .line 2921
    .local p1, "answer":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-nez p2, :cond_10

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 2922
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;->val$resultRef:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 2924
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;->val$resultRef:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 2926
    :goto_1a
    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .registers 4
    .param p1, "e"    # Landroid/net/DnsResolver$DnsException;

    .line 2930
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNS error resolving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;->val$host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkMonitor:DnsUtils"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2933
    :cond_1e
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;->val$resultRef:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 2934
    return-void
.end method
