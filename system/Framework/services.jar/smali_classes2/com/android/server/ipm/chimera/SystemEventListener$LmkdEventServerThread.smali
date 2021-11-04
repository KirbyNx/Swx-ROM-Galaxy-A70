.class Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;
.super Ljava/lang/Thread;
.source "SystemEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/SystemEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LmkdEventServerThread"
.end annotation


# static fields
.field static final HOST_NAME:Ljava/lang/String; = "chimera"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mServerSocket:Landroid/net/LocalServerSocket;

.field mSocket:Landroid/net/LocalSocket;

.field mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;Landroid/os/Handler;)V
    .registers 3
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 272
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 274
    iput-object p2, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mHandler:Landroid/os/Handler;

    .line 275
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 280
    const-string v0, "SystemEventListener"

    :try_start_2
    new-instance v1, Landroid/net/LocalServerSocket;

    const-string v2, "chimera"

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mServerSocket:Landroid/net/LocalServerSocket;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 283
    goto :goto_14

    .line 281
    :catch_c
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v3, "Failed to execute socket service."

    invoke-interface {v2, v0, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_14
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_bd

    .line 286
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v2, "Waiting Client connected..."

    invoke-interface {v1, v0, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mSocket:Landroid/net/LocalSocket;

    .line 289
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 290
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 291
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is a client is accepted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 295
    .local v1, "input":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    .end local v1    # "input":Ljava/io/InputStreamReader;
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 297
    :goto_5e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "lmkdData":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "result":[Ljava/lang/String;
    if-eqz v3, :cond_a1

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_a1

    .line 300
    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_9b

    aget-object v4, v3, v5

    if-nez v4, :cond_78

    goto :goto_9b

    .line 306
    :cond_78
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 307
    .local v4, "lmkdLevel":I
    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 309
    .local v5, "memPressure":I
    iget-object v6, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 310
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a1

    .line 301
    .end local v4    # "lmkdLevel":I
    .end local v5    # "memPressure":I
    .end local v6    # "msg":Landroid/os/Message;
    :cond_9b
    :goto_9b
    const-string v4, "Received lmkd data error"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_a0} :catch_a2

    .line 302
    goto :goto_5e

    .line 312
    .end local v2    # "lmkdData":Ljava/lang/String;
    .end local v3    # "result":[Ljava/lang/String;
    :cond_a1
    :goto_a1
    goto :goto_5e

    .line 313
    :catch_a2
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_bd
    return-void
.end method
