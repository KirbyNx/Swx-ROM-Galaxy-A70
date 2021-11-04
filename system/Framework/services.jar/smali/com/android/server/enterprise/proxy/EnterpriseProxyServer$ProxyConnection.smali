.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
.super Ljava/lang/Object;
.source "EnterpriseProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field private authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

.field private clientConnection:Ljava/net/Socket;

.field private credentials:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;)V
    .registers 4
    .param p2, "authState"    # Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    .param p3, "credentials"    # Ljava/lang/String;

    .line 301
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    .line 303
    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getSource()Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    .line 304
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    .line 305
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .param p2, "x1"    # Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;

    .line 290
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;)V
    .registers 3
    .param p2, "connection"    # Ljava/net/Socket;

    .line 296
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .param p2, "x1"    # Ljava/net/Socket;
    .param p3, "x2"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;)V

    return-void
.end method

.method private convertStringUrl(Ljava/lang/String;)Ljava/net/URI;
    .registers 6
    .param p1, "urlString"    # Ljava/lang/String;

    .line 787
    const/4 v0, 0x0

    .line 789
    .local v0, "url":Ljava/net/URI;
    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    .line 792
    goto :goto_1f

    .line 790
    :catch_8
    move-exception v1

    .line 791
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterpriseProxyServer"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_1f
    return-object v0
.end method

.method private discoverProxyAuthenticator(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .registers 5
    .param p1, "proxyString"    # Ljava/lang/String;
    .param p2, "requestLine"    # [Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-eqz v0, :cond_9

    .line 572
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxyAuthenticator()Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    .local v0, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    goto :goto_22

    .line 574
    .end local v0    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :cond_9
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    .line 575
    .restart local v0    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    if-nez v0, :cond_22

    .line 578
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # invokes: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    invoke-static {v1, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$100(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    .line 579
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_22
    :goto_22
    return-object v0
.end method

.method private filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V
    .registers 5
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    :goto_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->shouldRemoveHeaderLine(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 729
    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 731
    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_20

    .line 732
    return-void

    .line 731
    :cond_20
    goto :goto_0
.end method

.method private getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;

    .line 659
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "rawPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "rawQuery":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "rawFragment":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v3, "absolutePath":Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 665
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 667
    :cond_1b
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    :goto_20
    if-eqz v1, :cond_2a

    .line 670
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    :cond_2a
    if-eqz v2, :cond_34

    .line 673
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :cond_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getExternalProxy()Landroid/net/ProxyInfo;
    .registers 3

    .line 518
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$500()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_14

    .line 519
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$600(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;

    move-result-object v0

    # setter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$502(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 521
    :cond_14
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$500()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method private getExternalProxyList(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 475
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 477
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-nez v1, :cond_93

    .line 478
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # invokes: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$400(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 480
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getExternalProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 481
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->convertStringUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 483
    .local v2, "uri":Ljava/net/URI;
    if-eqz v2, :cond_92

    if-eqz v1, :cond_92

    .line 485
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 487
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "EnterpriseProxyServer"

    if-eqz v3, :cond_57

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested url "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is on proxy exclusion list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 492
    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieved external proxy "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 495
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v6

    invoke-static {v5, v6}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 494
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 498
    :cond_86
    new-instance v3, Landroid/net/PacProxySelector;

    invoke-direct {v3}, Landroid/net/PacProxySelector;-><init>()V

    .line 499
    .local v3, "selector":Ljava/net/ProxySelector;
    invoke-virtual {v3, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "selector":Ljava/net/ProxySelector;
    :cond_92
    :goto_92
    goto :goto_9a

    .line 505
    :cond_93
    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_9a
    :goto_9a
    return-object v0
.end method

.method private getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 5
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .line 798
    const-string v0, ""

    .line 799
    .local v0, "proxyString":Ljava/lang/String;
    if-eqz p1, :cond_20

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    :cond_20
    return-object v0
.end method

.method private isClientConnectionAlive()Z
    .registers 5

    .line 761
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    .line 773
    :cond_b
    const/4 v0, 0x1

    return v0

    .line 762
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 763
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_30

    .line 764
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "proxyString":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 767
    .local v2, "stateCacheList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/proxy/auth/AuthenticationState;>;"
    if-eqz v2, :cond_30

    .line 768
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 771
    .end local v1    # "proxyString":Ljava/lang/String;
    .end local v2    # "stateCacheList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/proxy/auth/AuthenticationState;>;"
    :cond_30
    const/4 v1, 0x0

    return v1
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "nonProxyHosts"    # Ljava/lang/String;

    .line 533
    if-eqz p1, :cond_42

    if-nez p2, :cond_5

    goto :goto_42

    .line 537
    :cond_5
    const-string v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v0, "patternBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 542
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 543
    .local v2, "c":C
    const/16 v3, 0x2a

    if-eq v2, v3, :cond_30

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2a

    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 545
    :cond_2a
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    goto :goto_36

    .line 548
    :cond_30
    const-string v3, ".*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    nop

    .line 541
    .end local v2    # "c":C
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 555
    .end local v1    # "i":I
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 534
    .end local v0    # "patternBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "pattern":Ljava/lang/String;
    :cond_42
    :goto_42
    const/4 v0, 0x0

    return v0
.end method

.method private readProxyCredentialsIfNeeded(Ljava/lang/String;)V
    .registers 6
    .param p1, "proxyString"    # Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 595
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    .line 599
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # invokes: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$400(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 600
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "splitProxy":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$600(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 602
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 601
    invoke-virtual {v1, v2, v3}, Lcom/android/server/ConnectivityService;->retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    .line 604
    .end local v0    # "splitProxy":[Ljava/lang/String;
    :cond_38
    return-void
.end method

.method private saveAuthCache(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "authState"    # Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    .line 777
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 778
    .local v0, "authList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/proxy/auth/AuthenticationState;>;"
    if-nez v0, :cond_15

    .line 779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 782
    :cond_15
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    return-void
.end method

.method private sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .registers 7
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/net/URI;
    .param p5, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 706
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V

    .line 711
    const-string v0, "Connection: close"

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 714
    const-string v0, ""

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .registers 8
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "requestType"    # Ljava/lang/String;
    .param p3, "absoluteUri"    # Ljava/net/URI;
    .param p4, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "absolutePath":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const-string v2, "%s %s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "outgoingRequestLine":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method private shouldRemoveHeaderLine(Ljava/lang/String;)Z
    .registers 11
    .param p1, "line"    # Ljava/lang/String;

    .line 741
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 742
    .local v0, "colIndex":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3a

    .line 743
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, "headerName":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 745
    const-string v3, "connection"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    .line 744
    const-string v6, "connection"

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_38

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 747
    const-string/jumbo v3, "proxy-connection"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    .line 746
    const-string/jumbo v6, "proxy-connection"

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 748
    :cond_38
    const/4 v1, 0x1

    return v1

    .line 751
    .end local v2    # "headerName":Ljava/lang/String;
    :cond_3a
    return v1
.end method

.method private showCredentialsDialogNotification(Ljava/lang/String;)V
    .registers 10
    .param p1, "proxyString"    # Ljava/lang/String;

    .line 612
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 613
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 615
    const-string v1, "com.samsung.android.mdm"

    const-string v2, "com.samsung.android.mdm.EnterpriseProxyAuthDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string/jumbo v1, "proxy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$700(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 622
    .local v1, "pIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$700(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 624
    .local v2, "notificationBuilder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$700(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040937

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 625
    const v4, 0x108008a

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 626
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 628
    .local v3, "n":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$800(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/app/NotificationManager;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "EnterpriseProxyServer"

    const/16 v7, 0x3e1

    invoke-virtual {v4, v6, v7, v3, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 629
    return-void
.end method

.method private skipToRequestBody(Ljava/net/Socket;)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 689
    :cond_10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .line 310
    move-object/from16 v13, p0

    const-string v0, ":"

    const-string v14, "CONNECT"

    const-string v15, "EnterpriseProxyServer"

    const/4 v1, 0x0

    .line 311
    .local v1, "requestLine":Ljava/lang/String;
    :try_start_9
    iget-object v2, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-eqz v2, :cond_1d

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->isClientConnectionAlive()Z

    move-result v2

    if-nez v2, :cond_14

    return-void

    .line 315
    :cond_14
    iget-object v2, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getRequestLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v12, v1

    goto :goto_29

    .line 317
    :cond_1d
    iget-object v2, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v12, v1

    .line 320
    .end local v1    # "requestLine":Ljava/lang/String;
    .local v12, "requestLine":Ljava/lang/String;
    :goto_29
    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 321
    .local v11, "splitLine":[Ljava/lang/String;
    array-length v1, v11

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3a

    .line 322
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 323
    return-void

    .line 326
    :cond_3a
    const/4 v1, 0x0

    aget-object v2, v11, v1

    move-object v10, v2

    .line 327
    .local v10, "requestType":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v3, v11, v2

    .line 328
    .local v3, "urlString":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v6, v11, v4

    .line 330
    .local v6, "httpVersion":Ljava/lang/String;
    const/4 v5, 0x0

    .line 334
    .local v5, "url":Ljava/net/URI;
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 335
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, "hostPortSplit":[Ljava/lang/String;
    aget-object v1, v7, v1

    .line 338
    .local v1, "host":Ljava/lang/String;
    array-length v8, v7
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_52} :catch_25e

    if-ge v8, v4, :cond_57

    .line 339
    const/16 v2, 0x1bb

    .local v2, "port":I
    goto :goto_5e

    .line 342
    .end local v2    # "port":I
    :cond_57
    :try_start_57
    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5d} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_25e

    .line 346
    .restart local v2    # "port":I
    nop

    .line 348
    :goto_5e
    :try_start_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "https://"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 349
    .end local v7    # "hostPortSplit":[Ljava/lang/String;
    move-object v8, v1

    move v7, v2

    move-object v9, v3

    move-object/from16 v16, v5

    goto :goto_9f

    .line 343
    .end local v2    # "port":I
    .restart local v7    # "hostPortSplit":[Ljava/lang/String;
    :catch_7d
    move-exception v0

    .line 344
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v2, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_83} :catch_25e

    .line 345
    return-void

    .line 351
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v1    # "host":Ljava/lang/String;
    .end local v7    # "hostPortSplit":[Ljava/lang/String;
    :cond_84
    :try_start_84
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 352
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 353
    .restart local v1    # "host":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v0
    :try_end_93
    .catch Ljava/net/URISyntaxException; {:try_start_84 .. :try_end_93} :catch_252
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_93} :catch_25e

    .line 354
    .local v0, "port":I
    if-gez v0, :cond_99

    .line 355
    const/16 v0, 0x50

    move v2, v0

    goto :goto_9a

    .line 354
    :cond_99
    move v2, v0

    .line 360
    .end local v0    # "port":I
    .restart local v2    # "port":I
    :goto_9a
    move-object v8, v1

    move v7, v2

    move-object v9, v3

    move-object/from16 v16, v5

    .line 363
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "urlString":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URI;
    .local v7, "port":I
    .local v8, "host":Ljava/lang/String;
    .local v9, "urlString":Ljava/lang/String;
    .local v16, "url":Ljava/net/URI;
    :goto_9f
    :try_start_9f
    invoke-direct {v13, v9}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getExternalProxyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v17, v0

    .line 365
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v0, 0x0

    .line 366
    .local v0, "server":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 367
    .local v1, "authHeader":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v19, v1

    move-object v1, v0

    .end local v0    # "server":Ljava/net/Socket;
    .local v1, "server":Ljava/net/Socket;
    .local v19, "authHeader":Ljava/lang/String;
    :goto_ae
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_b2} :catch_25e

    const-string v5, "HTTP/1.1 200 OK\n"

    if-eqz v0, :cond_1f4

    :try_start_b6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bc} :catch_25e

    move-object v4, v0

    .line 369
    .local v4, "proxy":Ljava/net/Proxy;
    :try_start_bd
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v4, v0}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c3} :catch_1cb
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c3} :catch_25e

    if-nez v0, :cond_187

    .line 370
    :try_start_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending traffic to proxy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 374
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_e9} :catch_17c
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e9} :catch_25e

    move-object/from16 v20, v1

    .end local v1    # "server":Ljava/net/Socket;
    .local v20, "server":Ljava/net/Socket;
    :try_start_eb
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v2, v3, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f2} :catch_171
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f2} :catch_25e

    move-object v1, v2

    .line 376
    .end local v20    # "server":Ljava/net/Socket;
    .restart local v1    # "server":Ljava/net/Socket;
    :try_start_f3
    invoke-direct {v13, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "proxyString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {v13, v2, v11}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->discoverProxyAuthenticator(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v20

    move-object/from16 v21, v20

    .line 386
    .local v21, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    move-object/from16 v22, v0

    move-object/from16 v0, v21

    .end local v21    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .local v0, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .local v22, "inetSocketAddress":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_154

    invoke-interface {v0}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->isCredentialRequired()Z

    move-result v20

    if-eqz v20, :cond_154

    .line 387
    invoke-direct {v13, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->readProxyCredentialsIfNeeded(Ljava/lang/String;)V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_114} :catch_168
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_114} :catch_25e

    .line 391
    move-object/from16 v21, v9

    .end local v9    # "urlString":Ljava/lang/String;
    .local v21, "urlString":Ljava/lang/String;
    :try_start_116
    iget-object v9, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-eqz v9, :cond_13d

    .line 392
    iget-object v9, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    invoke-interface {v0, v9, v1, v11}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_120} :catch_14d
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_120} :catch_25e

    .line 393
    .end local v19    # "authHeader":Ljava/lang/String;
    .local v9, "authHeader":Ljava/lang/String;
    move-object/from16 v23, v11

    .end local v11    # "splitLine":[Ljava/lang/String;
    .local v23, "splitLine":[Ljava/lang/String;
    :try_start_122
    const-string v11, "\r\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_12e} :catch_136
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_12e} :catch_25e

    move-object/from16 v19, v9

    .end local v9    # "authHeader":Ljava/lang/String;
    .restart local v19    # "authHeader":Ljava/lang/String;
    :try_start_130
    iget-object v9, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    invoke-virtual {v11, v2, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_158

    .line 426
    .end local v0    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .end local v2    # "proxyString":Ljava/lang/String;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v19    # "authHeader":Ljava/lang/String;
    .end local v22    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v9    # "authHeader":Ljava/lang/String;
    :catch_136
    move-exception v0

    move-object/from16 v19, v9

    move-object v9, v4

    move-object v11, v5

    .end local v9    # "authHeader":Ljava/lang/String;
    .restart local v19    # "authHeader":Ljava/lang/String;
    goto/16 :goto_1d4

    .line 400
    .end local v23    # "splitLine":[Ljava/lang/String;
    .restart local v0    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v2    # "proxyString":Ljava/lang/String;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    .restart local v22    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    :cond_13d
    move-object/from16 v23, v11

    .end local v11    # "splitLine":[Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    new-instance v9, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    iget-object v11, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-direct {v9, v11, v4, v12, v0}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;-><init>(Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V

    invoke-direct {v13, v2, v9}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->saveAuthCache(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;)V

    .line 402
    invoke-direct {v13, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->showCredentialsDialogNotification(Ljava/lang/String;)V

    .line 407
    return-void

    .line 426
    .end local v0    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .end local v2    # "proxyString":Ljava/lang/String;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v22    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v23    # "splitLine":[Ljava/lang/String;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    :catch_14d
    move-exception v0

    move-object/from16 v23, v11

    move-object v9, v4

    move-object v11, v5

    .end local v11    # "splitLine":[Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    goto/16 :goto_1d4

    .line 386
    .end local v21    # "urlString":Ljava/lang/String;
    .end local v23    # "splitLine":[Ljava/lang/String;
    .restart local v0    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local v2    # "proxyString":Ljava/lang/String;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .local v9, "urlString":Ljava/lang/String;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    .restart local v22    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    :cond_154
    move-object/from16 v21, v9

    move-object/from16 v23, v11

    .line 411
    .end local v9    # "urlString":Ljava/lang/String;
    .end local v11    # "splitLine":[Ljava/lang/String;
    .restart local v21    # "urlString":Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    :goto_158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_15f} :catch_163
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_15f} :catch_25e

    .line 412
    .end local v0    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .end local v2    # "proxyString":Ljava/lang/String;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v22    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    move-object v9, v4

    move-object v11, v5

    goto/16 :goto_1bc

    .line 426
    :catch_163
    move-exception v0

    move-object v9, v4

    move-object v11, v5

    goto/16 :goto_1d4

    .end local v21    # "urlString":Ljava/lang/String;
    .end local v23    # "splitLine":[Ljava/lang/String;
    .restart local v9    # "urlString":Ljava/lang/String;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    :catch_168
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v23, v11

    move-object v9, v4

    move-object v11, v5

    .end local v9    # "urlString":Ljava/lang/String;
    .end local v11    # "splitLine":[Ljava/lang/String;
    .restart local v21    # "urlString":Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    goto/16 :goto_1d4

    .end local v1    # "server":Ljava/net/Socket;
    .end local v21    # "urlString":Ljava/lang/String;
    .end local v23    # "splitLine":[Ljava/lang/String;
    .restart local v9    # "urlString":Ljava/lang/String;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    .restart local v20    # "server":Ljava/net/Socket;
    :catch_171
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v23, v11

    move-object v9, v4

    move-object v11, v5

    move-object/from16 v1, v20

    .end local v9    # "urlString":Ljava/lang/String;
    .end local v11    # "splitLine":[Ljava/lang/String;
    .restart local v21    # "urlString":Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    goto/16 :goto_1d4

    .end local v20    # "server":Ljava/net/Socket;
    .end local v21    # "urlString":Ljava/lang/String;
    .end local v23    # "splitLine":[Ljava/lang/String;
    .restart local v1    # "server":Ljava/net/Socket;
    .restart local v9    # "urlString":Ljava/lang/String;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    :catch_17c
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v21, v9

    move-object/from16 v23, v11

    move-object v9, v4

    move-object v11, v5

    .end local v1    # "server":Ljava/net/Socket;
    .end local v9    # "urlString":Ljava/lang/String;
    .end local v11    # "splitLine":[Ljava/lang/String;
    .restart local v20    # "server":Ljava/net/Socket;
    .restart local v21    # "urlString":Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    goto/16 :goto_1d4

    .line 413
    .end local v20    # "server":Ljava/net/Socket;
    .end local v21    # "urlString":Ljava/lang/String;
    .end local v23    # "splitLine":[Ljava/lang/String;
    .restart local v1    # "server":Ljava/net/Socket;
    .restart local v9    # "urlString":Ljava/lang/String;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    :cond_187
    move-object/from16 v20, v1

    move-object/from16 v21, v9

    move-object/from16 v23, v11

    .end local v1    # "server":Ljava/net/Socket;
    .end local v9    # "urlString":Ljava/lang/String;
    .end local v11    # "splitLine":[Ljava/lang/String;
    .restart local v20    # "server":Ljava/net/Socket;
    .restart local v21    # "urlString":Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    :try_start_18d
    const-string v0, "Direct proxy"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v8, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_197} :catch_1c5
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_197} :catch_25e

    .line 416
    .end local v20    # "server":Ljava/net/Socket;
    .local v3, "server":Ljava/net/Socket;
    :try_start_197
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19b} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_19b} :catch_25e

    if-eqz v0, :cond_1af

    .line 417
    :try_start_19d
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-direct {v13, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->skipToRequestBody(Ljava/net/Socket;)V

    .line 419
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-static {v0, v5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a7} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a7} :catch_25e

    move-object v9, v4

    move-object v11, v5

    goto :goto_1bb

    .line 426
    :catch_1aa
    move-exception v0

    move-object v1, v3

    move-object v9, v4

    move-object v11, v5

    goto :goto_1d4

    .line 422
    :cond_1af
    :try_start_1af
    iget-object v2, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1b1} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1b1} :catch_25e

    move-object/from16 v1, p0

    move-object v9, v4

    .end local v4    # "proxy":Ljava/net/Proxy;
    .local v9, "proxy":Ljava/net/Proxy;
    move-object v4, v10

    move-object v11, v5

    move-object/from16 v5, v16

    :try_start_1b8
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_1bd
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1bb} :catch_25e

    .line 429
    :goto_1bb
    move-object v1, v3

    .end local v3    # "server":Ljava/net/Socket;
    .restart local v1    # "server":Ljava/net/Socket;
    :goto_1bc
    goto :goto_1eb

    .line 426
    .end local v1    # "server":Ljava/net/Socket;
    .restart local v3    # "server":Ljava/net/Socket;
    :catch_1bd
    move-exception v0

    move-object v1, v3

    goto :goto_1d4

    .end local v9    # "proxy":Ljava/net/Proxy;
    .restart local v4    # "proxy":Ljava/net/Proxy;
    :catch_1c0
    move-exception v0

    move-object v9, v4

    move-object v11, v5

    move-object v1, v3

    .end local v4    # "proxy":Ljava/net/Proxy;
    .restart local v9    # "proxy":Ljava/net/Proxy;
    goto :goto_1d4

    .end local v3    # "server":Ljava/net/Socket;
    .end local v9    # "proxy":Ljava/net/Proxy;
    .restart local v4    # "proxy":Ljava/net/Proxy;
    .restart local v20    # "server":Ljava/net/Socket;
    :catch_1c5
    move-exception v0

    move-object v9, v4

    move-object v11, v5

    move-object/from16 v1, v20

    .end local v4    # "proxy":Ljava/net/Proxy;
    .restart local v9    # "proxy":Ljava/net/Proxy;
    goto :goto_1d4

    .end local v20    # "server":Ljava/net/Socket;
    .end local v21    # "urlString":Ljava/lang/String;
    .end local v23    # "splitLine":[Ljava/lang/String;
    .restart local v1    # "server":Ljava/net/Socket;
    .restart local v4    # "proxy":Ljava/net/Proxy;
    .local v9, "urlString":Ljava/lang/String;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    :catch_1cb
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v21, v9

    move-object/from16 v23, v11

    move-object v9, v4

    move-object v11, v5

    .line 427
    .end local v4    # "proxy":Ljava/net/Proxy;
    .end local v11    # "splitLine":[Ljava/lang/String;
    .local v0, "ioe":Ljava/io/IOException;
    .local v9, "proxy":Ljava/net/Proxy;
    .restart local v21    # "urlString":Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    :goto_1d4
    :try_start_1d4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 430
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1eb
    if-eqz v1, :cond_1ee

    .line 431
    goto :goto_1fb

    .line 433
    .end local v9    # "proxy":Ljava/net/Proxy;
    :cond_1ee
    move-object/from16 v9, v21

    move-object/from16 v11, v23

    goto/16 :goto_ae

    .line 367
    .end local v21    # "urlString":Ljava/lang/String;
    .end local v23    # "splitLine":[Ljava/lang/String;
    .local v9, "urlString":Ljava/lang/String;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    :cond_1f4
    move-object/from16 v20, v1

    move-object/from16 v21, v9

    move-object/from16 v23, v11

    move-object v11, v5

    .line 434
    .end local v9    # "urlString":Ljava/lang/String;
    .end local v11    # "splitLine":[Ljava/lang/String;
    .restart local v21    # "urlString":Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    :goto_1fb
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_234

    .line 435
    new-instance v9, Ljava/net/Socket;

    invoke-direct {v9, v8, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object/from16 v3, v21

    .line 436
    .end local v1    # "server":Ljava/net/Socket;
    .end local v21    # "urlString":Ljava/lang/String;
    .local v3, "urlString":Ljava/lang/String;
    .local v9, "server":Ljava/net/Socket;
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 437
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-direct {v13, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->skipToRequestBody(Ljava/net/Socket;)V

    .line 439
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-static {v0, v11}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    move v2, v7

    move-object v4, v8

    move-object v5, v10

    move-object/from16 v20, v12

    move-object/from16 v18, v23

    goto :goto_232

    .line 442
    :cond_220
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move v2, v7

    .end local v7    # "port":I
    .local v2, "port":I
    move-object/from16 v7, p0

    move-object v4, v8

    .end local v8    # "host":Ljava/lang/String;
    .local v4, "host":Ljava/lang/String;
    move-object v8, v0

    move-object v5, v10

    .end local v10    # "requestType":Ljava/lang/String;
    .local v5, "requestType":Ljava/lang/String;
    move-object/from16 v18, v23

    .end local v23    # "splitLine":[Ljava/lang/String;
    .local v18, "splitLine":[Ljava/lang/String;
    move-object/from16 v11, v16

    move-object/from16 v20, v12

    .end local v12    # "requestLine":Ljava/lang/String;
    .local v20, "requestLine":Ljava/lang/String;
    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 447
    :goto_232
    move-object v1, v9

    goto :goto_23d

    .line 434
    .end local v2    # "port":I
    .end local v3    # "urlString":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "requestType":Ljava/lang/String;
    .end local v9    # "server":Ljava/net/Socket;
    .end local v18    # "splitLine":[Ljava/lang/String;
    .end local v20    # "requestLine":Ljava/lang/String;
    .restart local v1    # "server":Ljava/net/Socket;
    .restart local v7    # "port":I
    .restart local v8    # "host":Ljava/lang/String;
    .restart local v10    # "requestType":Ljava/lang/String;
    .restart local v12    # "requestLine":Ljava/lang/String;
    .restart local v21    # "urlString":Ljava/lang/String;
    .restart local v23    # "splitLine":[Ljava/lang/String;
    :cond_234
    move v2, v7

    move-object v4, v8

    move-object v5, v10

    move-object/from16 v20, v12

    move-object/from16 v3, v21

    move-object/from16 v18, v23

    .line 447
    .end local v7    # "port":I
    .end local v8    # "host":Ljava/lang/String;
    .end local v10    # "requestType":Ljava/lang/String;
    .end local v12    # "requestLine":Ljava/lang/String;
    .end local v21    # "urlString":Ljava/lang/String;
    .end local v23    # "splitLine":[Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v3    # "urlString":Ljava/lang/String;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v5    # "requestType":Ljava/lang/String;
    .restart local v18    # "splitLine":[Ljava/lang/String;
    .restart local v20    # "requestLine":Ljava/lang/String;
    :goto_23d
    if-eqz v1, :cond_251

    .line 450
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    .line 451
    const/16 v19, 0x0

    move-object/from16 v0, v19

    goto :goto_24c

    .line 450
    :cond_24a
    move-object/from16 v0, v19

    .line 453
    .end local v19    # "authHeader":Ljava/lang/String;
    .local v0, "authHeader":Ljava/lang/String;
    :goto_24c
    iget-object v7, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-static {v7, v1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    .line 458
    .end local v0    # "authHeader":Ljava/lang/String;
    .end local v1    # "server":Ljava/net/Socket;
    .end local v2    # "port":I
    .end local v3    # "urlString":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "requestType":Ljava/lang/String;
    .end local v6    # "httpVersion":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URI;
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v18    # "splitLine":[Ljava/lang/String;
    .end local v20    # "requestLine":Ljava/lang/String;
    :cond_251
    goto :goto_276

    .line 357
    .restart local v3    # "urlString":Ljava/lang/String;
    .local v5, "url":Ljava/net/URI;
    .restart local v6    # "httpVersion":Ljava/lang/String;
    .restart local v10    # "requestType":Ljava/lang/String;
    .restart local v11    # "splitLine":[Ljava/lang/String;
    .restart local v12    # "requestLine":Ljava/lang/String;
    :catch_252
    move-exception v0

    move-object v1, v10

    move-object/from16 v18, v11

    move-object/from16 v20, v12

    .line 358
    .end local v10    # "requestType":Ljava/lang/String;
    .end local v11    # "splitLine":[Ljava/lang/String;
    .end local v12    # "requestLine":Ljava/lang/String;
    .local v0, "e":Ljava/net/URISyntaxException;
    .local v1, "requestType":Ljava/lang/String;
    .restart local v18    # "splitLine":[Ljava/lang/String;
    .restart local v20    # "requestLine":Ljava/lang/String;
    iget-object v2, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_25d} :catch_25e

    .line 359
    return-void

    .line 455
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v1    # "requestType":Ljava/lang/String;
    .end local v3    # "urlString":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URI;
    .end local v6    # "httpVersion":Ljava/lang/String;
    .end local v18    # "splitLine":[Ljava/lang/String;
    .end local v20    # "requestLine":Ljava/lang/String;
    :catch_25e
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem Proxying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_276
    :try_start_276
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_27b
    .catch Ljava/io/IOException; {:try_start_276 .. :try_end_27b} :catch_27c

    .line 463
    goto :goto_27d

    .line 461
    :catch_27c
    move-exception v0

    .line 464
    :goto_27d
    return-void
.end method
