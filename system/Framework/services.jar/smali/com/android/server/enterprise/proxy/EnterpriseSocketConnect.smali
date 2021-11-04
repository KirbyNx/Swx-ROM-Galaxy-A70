.class public Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
.super Ljava/lang/Thread;
.source "EnterpriseSocketConnect.java"


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT "

.field private static final CONTENT_LENGTH_HEADER_PREFIX:Ljava/lang/String; = "Content-Length: "

.field private static final DELETE:Ljava/lang/String; = "DELETE "

.field public static final EMPTY_CONTENT_LENGTH:I = -0x1

.field private static final GET:Ljava/lang/String; = "GET "

.field private static final HEAD:Ljava/lang/String; = "HEAD "

.field private static final OPTIONS:Ljava/lang/String; = "OPTIONS "

.field private static final PATCH:Ljava/lang/String; = "PATCH "

.field private static final POST:Ljava/lang/String; = "POST "

.field private static final PUT:Ljava/lang/String; = "PUT "

.field private static final TAG:Ljava/lang/String; = "EnterpriseSocketConnect"

.field private static final TRACE:Ljava/lang/String; = "TRACE "


# instance fields
.field private authHeader:Ljava/lang/String;

.field private from:Ljava/io/InputStream;

.field private to:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;)V
    .registers 4
    .param p1, "from"    # Ljava/net/Socket;
    .param p2, "to"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .registers 5
    .param p1, "from"    # Ljava/net/Socket;
    .param p2, "to"    # Ljava/net/Socket;
    .param p3, "authHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    .line 90
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    .line 91
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->start()V

    .line 93
    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .registers 6
    .param p0, "first"    # Ljava/net/Socket;
    .param p1, "second"    # Ljava/net/Socket;
    .param p2, "authHeader"    # Ljava/lang/String;

    .line 191
    if-eqz p2, :cond_b

    .line 192
    const-string v0, "Proxy-Authorization: Basic "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 193
    const/4 p2, 0x0

    .line 197
    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    .line 198
    .local v0, "sc1":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    new-instance v1, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v1, p1, p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_20

    .line 200
    .local v1, "sc2":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    :try_start_15
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_20

    .line 202
    goto :goto_1a

    .line 201
    :catch_19
    move-exception v2

    .line 204
    :goto_1a
    :try_start_1a
    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_20

    .line 206
    goto :goto_1f

    .line 205
    :catch_1e
    move-exception v2

    .line 209
    .end local v0    # "sc1":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    .end local v1    # "sc2":Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
    :goto_1f
    goto :goto_24

    .line 207
    :catch_20
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    :goto_24
    return-void
.end method

.method private static getContentLength(Ljava/lang/String;)I
    .registers 5
    .param p0, "line"    # Ljava/lang/String;

    .line 175
    const-string v0, "EnterpriseSocketConnect"

    const-string v1, "Content-Length: "

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 177
    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_19} :catch_30
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_19} :catch_1a

    return v0

    .line 180
    :catch_1a
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArrayIndexOutOfBoundsException to extract content length from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 178
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_30
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException to extract content length from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_45
    :goto_45
    const/4 v0, -0x1

    return v0
.end method

.method private isLineARequest(Ljava/lang/String;)Z
    .registers 4
    .param p1, "line"    # Ljava/lang/String;

    .line 213
    const-string v0, "GET "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 214
    const-string v1, "POST "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 215
    const-string v1, "HEAD "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 216
    const-string v1, "PUT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 217
    const-string v1, "DELETE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 218
    const-string v1, "TRACE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 219
    const-string v1, "OPTIONS "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 220
    const-string v1, "CONNECT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 221
    const-string v1, "PATCH "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 213
    return v0
.end method

.method private performCommunication()V
    .registers 5

    .line 109
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 113
    .local v0, "buffer":[B
    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 114
    .local v1, "r":I
    if-gez v1, :cond_18

    .line 115
    nop

    .line 119
    .end local v1    # "r":I
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 120
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 123
    goto :goto_3a

    .line 117
    .restart local v1    # "r":I
    :cond_18
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1e} :catch_1f

    .line 118
    .end local v1    # "r":I
    goto :goto_4

    .line 121
    :catch_1f
    move-exception v1

    .line 122
    .local v1, "io":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while performing communication "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterpriseSocketConnect"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1    # "io":Ljava/io/IOException;
    :goto_3a
    return-void
.end method

.method private performCommunicationWithHeader(Ljava/lang/String;)V
    .registers 9
    .param p1, "header"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 135
    .local v1, "line":Ljava/lang/String;
    const/4 v2, -0x1

    .line 136
    .local v2, "contentLength":I
    const/4 v3, 0x0

    .line 139
    .local v3, "useContentLength":Z
    :goto_4
    const/4 v4, 0x1

    if-eqz v3, :cond_f

    .line 140
    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-static {v5, v4, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_16

    .line 142
    :cond_f
    iget-object v5, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-static {v5, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 145
    :goto_16
    const/4 v3, 0x0

    .line 147
    if-nez v1, :cond_25

    .line 148
    nop

    .line 167
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 168
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 171
    goto :goto_74

    .line 149
    :cond_25
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 151
    const/4 v3, 0x1

    goto :goto_53

    .line 152
    :cond_2d
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->isLineARequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 153
    const/4 v2, -0x1

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_53

    .line 161
    :cond_4b
    const/4 v4, -0x1

    if-ne v2, v4, :cond_53

    .line 162
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->getContentLength(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 165
    :cond_53
    :goto_53
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_58} :catch_59

    goto :goto_4

    .line 169
    :catch_59
    move-exception v4

    .line 170
    .local v4, "io":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while performing communication with header "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EnterpriseSocketConnect"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v4    # "io":Ljava/io/IOException;
    :goto_74
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 99
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunicationWithHeader(Ljava/lang/String;)V

    goto :goto_b

    .line 101
    :cond_8
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunication()V

    .line 103
    :goto_b
    return-void
.end method
