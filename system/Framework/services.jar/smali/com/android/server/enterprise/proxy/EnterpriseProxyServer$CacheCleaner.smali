.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;
.super Ljava/util/TimerTask;
.source "EnterpriseProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheCleaner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheCleaner"


# instance fields
.field private enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)V
    .registers 2
    .param p1, "enterpriseProxyServer"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 189
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 191
    return-void
.end method

.method private updateAuthenticatorCacheIfNeeded(Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V
    .registers 6
    .param p1, "currentAuthenticator"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .param p2, "proxyString"    # Ljava/lang/String;
    .param p3, "expectedAuthenticator"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    .line 248
    invoke-interface {p1}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replacing authenticaticator proxy cache for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheCleaner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_2b
    return-void
.end method

.method private updateCredentialsCacheIfNeeded([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;)V
    .registers 10
    .param p1, "fakeRequestLine"    # [Ljava/lang/String;
    .param p2, "proxyString"    # Ljava/lang/String;
    .param p3, "expectedAuthenticator"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .param p4, "credentials"    # Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 232
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 233
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 232
    invoke-static {v3, v2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 235
    .local v0, "proxy":Ljava/net/Proxy;
    nop

    .line 236
    invoke-interface {p3, p4, v0, p1}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, "result":I
    const-string v2, "CacheCleaner"

    if-eqz v1, :cond_48

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing credentials proxy cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 242
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " still valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_61
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 195
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    if-nez v0, :cond_5

    .line 196
    return-void

    .line 199
    :cond_5
    const-string v0, "CacheCleaner"

    const-string v1, "Starting run to clean enterprise proxy cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 202
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 205
    .local v3, "authenticationTypeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;>;"
    const-string/jumbo v4, "http://www.samsung.com"

    const-string v5, "HTTP/1.1"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "requestLine":[Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 210
    .local v5, "proxyString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking proxy cache for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 213
    # invokes: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    invoke-static {v6, v5, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$100(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v6

    .line 214
    .local v6, "expectedAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    invoke-direct {p0, v7, v5, v6}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->updateAuthenticatorCacheIfNeeded(Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V

    .line 216
    invoke-interface {v6}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->isCredentialRequired()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 217
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 218
    .local v7, "credentials":Ljava/lang/String;
    if-eqz v7, :cond_6b

    .line 219
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->updateCredentialsCacheIfNeeded([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;)V

    .line 222
    .end local v7    # "credentials":Ljava/lang/String;
    :cond_6b
    goto :goto_87

    .line 223
    :cond_6c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing credential proxy cache for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v3    # "authenticationTypeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;>;"
    .end local v4    # "requestLine":[Ljava/lang/String;
    .end local v5    # "proxyString":Ljava/lang/String;
    .end local v6    # "expectedAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    :goto_87
    goto :goto_18

    .line 227
    :cond_88
    return-void
.end method
