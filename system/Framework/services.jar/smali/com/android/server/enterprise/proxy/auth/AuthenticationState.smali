.class public Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
.super Ljava/lang/Object;
.source "AuthenticationState.java"


# instance fields
.field private proxy:Ljava/net/Proxy;

.field private proxyAuthenticator:Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

.field private requestLine:Ljava/lang/String;

.field private source:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V
    .registers 5
    .param p1, "source"    # Ljava/net/Socket;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "requestLine"    # Ljava/lang/String;
    .param p4, "proxyAuthenticator"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->source:Ljava/net/Socket;

    .line 39
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->proxy:Ljava/net/Proxy;

    .line 40
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->requestLine:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->proxyAuthenticator:Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    .line 42
    return-void
.end method


# virtual methods
.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxyAuthenticator()Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->proxyAuthenticator:Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    return-object v0
.end method

.method public getRequestLine()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->requestLine:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/net/Socket;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->source:Ljava/net/Socket;

    return-object v0
.end method
