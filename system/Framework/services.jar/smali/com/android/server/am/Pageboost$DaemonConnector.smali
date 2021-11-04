.class final Lcom/android/server/am/Pageboost$DaemonConnector;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DaemonConnector"
.end annotation


# instance fields
.field private sOutputStream:Ljava/io/OutputStream;

.field private sSocket:Landroid/net/LocalSocket;

.field private sSocketName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "socketName"    # Ljava/lang/String;

    .line 2846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2847
    iput-object p1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    .line 2848
    invoke-direct {p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->openSocket()Z

    .line 2849
    return-void
.end method

.method private openSocket()Z
    .registers 5

    .line 2853
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 2854
    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 2857
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1f

    .line 2862
    nop

    .line 2864
    const/4 v0, 0x1

    return v0

    .line 2858
    :catch_1f
    move-exception v0

    .line 2859
    .local v0, "ex":Ljava/io/IOException;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "socket open failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 2861
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getSocket()Landroid/net/LocalSocket;
    .registers 2

    .line 2891
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method public writeDaemon(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 2868
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_7

    .line 2869
    invoke-direct {p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->openSocket()Z

    .line 2872
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_59

    .line 2874
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_1a

    .line 2875
    return-void

    .line 2876
    :catch_1a
    move-exception v0

    .line 2877
    .local v0, "ex":Ljava/io/IOException;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing to socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :try_start_35
    iget-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 2883
    goto :goto_56

    .line 2881
    :catch_3b
    move-exception v1

    .line 2882
    .local v1, "ex2":Ljava/io/IOException;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    .end local v1    # "ex2":Ljava/io/IOException;
    :goto_56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 2888
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_59
    return-void
.end method
