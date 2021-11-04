.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;
.super Ljava/lang/Object;
.source "NTLMAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;


# static fields
.field private static final HEADER_PROXY_AUTHENTICATE:Ljava/lang/String; = "Proxy-Authenticate:"

.field private static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: NTLM "

.field private static final TAG:Ljava/lang/String; = "NTLMAuthenticator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    if-eqz p1, :cond_1e

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "NTLMType3String":Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 71
    const-string v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "NTLMType3String":Ljava/lang/String;
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 54
    .local v1, "byteBuffer":I
    if-gez v1, :cond_e

    .line 55
    const-string v2, ""

    return-object v2

    .line 57
    :cond_e
    const/16 v2, 0xd

    if-eq v1, v2, :cond_16

    .line 58
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    :cond_16
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 61
    const/16 v2, 0xa

    if-eq v1, v2, :cond_20

    if-gez v1, :cond_e

    .line 62
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 22
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v1, :cond_63

    if-nez v2, :cond_c

    goto :goto_63

    .line 84
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->sendType1Message(Ljava/io/OutputStream;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;

    move-result-object v4

    .line 87
    .local v4, "type1Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
    invoke-direct {v0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->receiveType2Message(Ljava/net/Socket;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;

    move-result-object v5

    .line 89
    .local v5, "type2Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    if-eqz v5, :cond_62

    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, "domainFromType2":Ljava/lang/String;
    const/4 v6, 0x0

    .line 92
    .local v6, "finalFlagsForType3":I
    const/high16 v7, 0x10000

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 93
    invoke-virtual {v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v3

    .line 95
    :cond_28
    invoke-virtual {v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->getFlags()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlags()I

    move-result v8

    and-int v6, v7, v8

    .line 97
    new-instance v7, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;

    const-string/jumbo v8, "localhost"

    move-object/from16 v15, p1

    invoke-direct {v7, v15, v3, v8}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v7, "userCredential":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;
    new-instance v8, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;

    .line 101
    invoke-virtual {v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v10

    .line 103
    invoke-virtual {v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->getUsername()Ljava/lang/String;

    move-result-object v12

    .line 104
    invoke-virtual {v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->getPassword()Ljava/lang/String;

    move-result-object v13

    .line 105
    invoke-virtual {v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->getDomain()Ljava/lang/String;

    move-result-object v14

    .line 106
    invoke-virtual {v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object v9, v8

    move v11, v6

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    .local v8, "type3Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;
    invoke-virtual {v8}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 110
    .end local v3    # "domainFromType2":Ljava/lang/String;
    .end local v6    # "finalFlagsForType3":I
    .end local v7    # "userCredential":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;
    .end local v8    # "type3Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;
    :cond_62
    return-object v3

    .line 82
    .end local v4    # "type1Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
    .end local v5    # "type2Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    :cond_63
    :goto_63
    return-object v3
.end method

.method private getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "type2Response":Ljava/lang/String;
    const/4 v1, 0x0

    .line 147
    .local v1, "line":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    const-string v2, "Proxy-Authenticate:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 149
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    goto :goto_1f

    .line 152
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 153
    :goto_1f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a

    .line 154
    goto :goto_1f

    .line 155
    :cond_2a
    return-object v0
.end method

.method private processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "response"    # Ljava/lang/String;

    .line 159
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "Proxy-Authenticate:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v3, "NTLM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_25

    .line 163
    :cond_1e
    array-length v1, v0

    const/4 v3, 0x2

    if-le v1, v3, :cond_24

    aget-object v2, v0, v3

    :cond_24
    return-object v2

    .line 161
    :cond_25
    :goto_25
    return-object v2
.end method

.method private receiveType2Message(Ljava/net/Socket;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    .registers 7
    .param p1, "destination"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "type2Response":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "response":Ljava/lang/String;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2f

    .line 117
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "lineTokens":[Ljava/lang/String;
    if-eqz v2, :cond_2f

    array-length v3, v2

    if-lez v3, :cond_2f

    .line 119
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "407"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 120
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .end local v2    # "lineTokens":[Ljava/lang/String;
    :cond_2f
    const/4 v2, 0x0

    .line 124
    .local v2, "type2Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    if-eqz v0, :cond_38

    .line 125
    new-instance v3, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;

    invoke-direct {v3, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 127
    :cond_38
    return-object v2
.end method

.method private sendType1Message(Ljava/io/OutputStream;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;

    invoke-direct {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;-><init>()V

    .line 133
    .local v0, "type1Message":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
    invoke-static {p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->createMessageString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 139
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 140
    return-object v0
.end method


# virtual methods
.method public buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/net/Socket;
    .param p3, "requestLine"    # [Ljava/lang/String;

    .line 170
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "processedHeaderCred":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v2

    .line 178
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "processedHeaderCred":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, "NTLM"

    return-object v0
.end method

.method public isCredentialRequired()Z
    .registers 2

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I
    .registers 15
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "requestLine"    # [Ljava/lang/String;

    .line 186
    const-string v0, "NTLMAuthenticator"

    const/4 v1, 0x0

    .line 187
    .local v1, "retStatus":Z
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 188
    .local v2, "inetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_9
    new-instance v3, Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_ad

    .line 190
    .local v3, "destination":Ljava/net/Socket;
    :try_start_16
    invoke-static {p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "processedHeaderCred":Ljava/lang/String;
    if-eqz v5, :cond_23

    .line 194
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_23
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In verifyProxyAuthCredentials: processedHeaderCred = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In verifyProxyAuthCredentials. Full header = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 205
    .local v6, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 207
    .local v7, "line":Ljava/lang/String;
    :cond_60
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 208
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Line froms server "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_80

    .line 210
    goto :goto_9f

    .line 211
    :cond_80
    const-string v8, "HTTP/1."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 212
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const-string v10, "407"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v9

    move v1, v8

    .line 214
    :cond_99
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_9d
    .catchall {:try_start_16 .. :try_end_9d} :catchall_a3

    if-gtz v8, :cond_60

    .line 216
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "processedHeaderCred":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    :goto_9f
    :try_start_9f
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_ad

    .line 218
    .end local v3    # "destination":Ljava/net/Socket;
    goto :goto_b5

    .line 188
    .restart local v3    # "destination":Ljava/net/Socket;
    :catchall_a3
    move-exception v4

    :try_start_a4
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_ac

    :catchall_a8
    move-exception v5

    :try_start_a9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "retStatus":Z
    .end local v2    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;
    .end local p1    # "credentials":Ljava/lang/String;
    .end local p2    # "proxy":Ljava/net/Proxy;
    .end local p3    # "requestLine":[Ljava/lang/String;
    :goto_ac
    throw v4
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_ad

    .line 216
    .end local v3    # "destination":Ljava/net/Socket;
    .restart local v1    # "retStatus":Z
    .restart local v2    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local p0    # "this":Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;
    .restart local p1    # "credentials":Ljava/lang/String;
    .restart local p2    # "proxy":Ljava/net/Proxy;
    .restart local p3    # "requestLine":[Ljava/lang/String;
    :catch_ad
    move-exception v3

    .line 217
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b5
    if-eqz v1, :cond_b9

    const/4 v0, 0x0

    goto :goto_ba

    :cond_b9
    const/4 v0, -0x1

    :goto_ba
    return v0
.end method
