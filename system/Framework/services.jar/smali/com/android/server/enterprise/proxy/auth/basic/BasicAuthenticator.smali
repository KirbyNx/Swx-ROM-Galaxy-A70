.class public Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;
.super Ljava/lang/Object;
.source "BasicAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;


# static fields
.field public static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: Basic "

.field private static final TAG:Ljava/lang/String; = "BasicAuthenticator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy-Authorization: Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "header":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .end local v1    # "header":Ljava/lang/String;
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 49
    const-string v0, "Basic"

    return-object v0
.end method

.method public isCredentialRequired()Z
    .registers 2

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I
    .registers 13
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "requestLine"    # [Ljava/lang/String;

    .line 68
    const-string v0, "BasicAuthenticator"

    const/4 v1, -0x1

    .line 70
    .local v1, "retStatus":I
    invoke-static {p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 75
    .local v3, "inetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_1a
    new-instance v4, Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_27} :catch_98
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_27} :catch_93

    .line 77
    .local v4, "server":Ljava/net/Socket;
    :try_start_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BasicAuthenticator::verifyAuthenticationCredentials writing to proxy:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 85
    .local v5, "is":Ljava/io/InputStream;
    :cond_4a
    invoke-static {v5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "line":Ljava/lang/String;
    const-string v7, "HTTP/1."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 88
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "407"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    const/4 v7, -0x1

    goto :goto_6a

    :cond_69
    const/4 v7, 0x0

    :goto_6a
    move v1, v7

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BasicAuthenticator::verifyAuthenticationCredentials retStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_7f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_83
    .catchall {:try_start_27 .. :try_end_83} :catchall_89

    if-gtz v7, :cond_4a

    .line 93
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    :try_start_85
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_88
    .catch Ljava/net/UnknownHostException; {:try_start_85 .. :try_end_88} :catch_98
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_93

    goto :goto_9c

    .line 75
    :catchall_89
    move-exception v0

    :try_start_8a
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v5

    :try_start_8f
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "retStatus":I
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;
    .end local p1    # "credentials":Ljava/lang/String;
    .end local p2    # "proxy":Ljava/net/Proxy;
    .end local p3    # "requestLine":[Ljava/lang/String;
    :goto_92
    throw v0
    :try_end_93
    .catch Ljava/net/UnknownHostException; {:try_start_8f .. :try_end_93} :catch_98
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_93

    .line 95
    .end local v4    # "server":Ljava/net/Socket;
    .restart local v1    # "retStatus":I
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local p0    # "this":Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;
    .restart local p1    # "credentials":Ljava/lang/String;
    .restart local p2    # "proxy":Ljava/net/Proxy;
    .restart local p3    # "requestLine":[Ljava/lang/String;
    :catch_93
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :catch_98
    move-exception v0

    .line 94
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_9c
    nop

    .line 99
    :goto_9d
    return v1
.end method
