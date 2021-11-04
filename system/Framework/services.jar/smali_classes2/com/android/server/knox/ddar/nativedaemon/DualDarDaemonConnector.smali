.class public final Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
.super Ljava/lang/Object;
.source "DualDarDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field public static final CMD_BUF_SIZE_MAX:I = 0x320

.field private static final DEFAULT_TIMEOUT_MS:I = 0xea60

.field private static final RESPONSE_QUEUE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DualDarDaemonConnector"


# instance fields
.field private mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private mIsListening:Z

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 70
    const-string v0, "ddar"

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    .line 72
    new-instance v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    iput-object p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mLooper:Landroid/os/Looper;

    .line 75
    return-void
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    .line 195
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 196
    .local v0, "hasSpaces":Z
    :goto_b
    const/16 v1, 0x22

    if-eqz v0, :cond_12

    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 201
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_35

    .line 202
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 204
    .local v4, "c":C
    if-ne v4, v1, :cond_25

    .line 205
    const-string v5, "\\\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 206
    :cond_25
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2f

    .line 207
    const-string v5, "\\\\"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 209
    :cond_2f
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .end local v4    # "c":C
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 213
    .end local v3    # "i":I
    :cond_35
    if-eqz v0, :cond_3a

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    :cond_3a
    return-void
.end method

.method private listenToSocket()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "socket":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    move-object v0, v3

    .line 226
    new-instance v3, Landroid/net/LocalSocketAddress;

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 229
    .local v3, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 231
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 232
    .local v4, "inputStream":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_140
    .catchall {:try_start_3 .. :try_end_1c} :catchall_13e

    .line 233
    :try_start_1c
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 234
    monitor-exit v5
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_13b

    .line 236
    :try_start_23
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    invoke-interface {v5}, Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 238
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 239
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 242
    .local v6, "start":I
    :goto_2d
    rsub-int v7, v6, 0x1000

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 243
    .local v7, "count":I
    if-gez v7, :cond_c6

    .line 244
    const-string v8, "DualDarDaemonConnector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " reading with start = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 245
    nop

    .line 303
    .end local v7    # "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_58
    array-length v8, v5

    if-ge v7, v8, :cond_60

    aput-byte v2, v5, v7
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_5d} :catch_140
    .catchall {:try_start_23 .. :try_end_5d} :catchall_13e

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 307
    .end local v3    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "buffer":[B
    .end local v6    # "start":I
    .end local v7    # "i":I
    :cond_60
    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 308
    :try_start_63
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_c3

    if-eqz v4, :cond_a2

    .line 310
    :try_start_67
    const-string v4, "DualDarDaemonConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closing stream for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_86} :catch_87
    .catchall {:try_start_67 .. :try_end_86} :catchall_c3

    .line 314
    goto :goto_a0

    .line 312
    :catch_87
    move-exception v4

    .line 313
    .local v4, "e":Ljava/io/IOException;
    :try_start_88
    const-string v5, "DualDarDaemonConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed closing output stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 315
    .end local v4    # "e":Ljava/io/IOException;
    :goto_a0
    iput-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 317
    :cond_a2
    monitor-exit v3
    :try_end_a3
    .catchall {:try_start_88 .. :try_end_a3} :catchall_c3

    .line 320
    nop

    .line 321
    :try_start_a4
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    .line 325
    goto :goto_c2

    .line 323
    :catch_a8
    move-exception v1

    .line 324
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "DualDarDaemonConnector"

    invoke-static {v4, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    .end local v1    # "ex":Ljava/io/IOException;
    nop

    .line 327
    :goto_c2
    return-void

    .line 317
    :catchall_c3
    move-exception v1

    :try_start_c4
    monitor-exit v3
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v1

    .line 249
    .restart local v3    # "address":Landroid/net/LocalSocketAddress;
    .local v4, "inputStream":Ljava/io/InputStream;
    .restart local v5    # "buffer":[B
    .restart local v6    # "start":I
    .local v7, "count":I
    :cond_c6
    add-int/2addr v7, v6

    .line 250
    const/4 v6, 0x0

    .line 252
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c9
    if-ge v8, v7, :cond_124

    .line 253
    :try_start_cb
    aget-byte v9, v5, v8

    if-nez v9, :cond_121

    .line 256
    new-instance v9, Ljava/lang/String;

    sub-int v10, v8, v6

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v5, v6, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 259
    .local v9, "rawEvent":Ljava/lang/String;
    const-string v10, "DualDarDaemonConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "rawEvent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_f1} :catch_140
    .catchall {:try_start_cb .. :try_end_f1} :catchall_13e

    .line 261
    :try_start_f1
    invoke-static {v9, v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v10

    .line 264
    .local v10, "event":Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    invoke-virtual {v10}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v11

    if-eqz v11, :cond_fc

    goto :goto_105

    .line 278
    :cond_fc
    iget-object v11, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    invoke-virtual {v10}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getCmdNumber()I

    move-result v12

    invoke-virtual {v11, v12, v10}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->add(ILcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;)V
    :try_end_105
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f1 .. :try_end_105} :catch_106
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_105} :catch_140
    .catchall {:try_start_f1 .. :try_end_105} :catchall_13e

    .line 282
    .end local v10    # "event":Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    :goto_105
    goto :goto_11f

    .line 280
    :catch_106
    move-exception v10

    .line 281
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_107
    const-string v11, "DualDarDaemonConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Problem parsing message "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v2, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 284
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :goto_11f
    add-int/lit8 v6, v8, 0x1

    .line 252
    .end local v9    # "rawEvent":Ljava/lang/String;
    :cond_121
    add-int/lit8 v8, v8, 0x1

    goto :goto_c9

    .line 288
    .end local v8    # "i":I
    :cond_124
    if-nez v6, :cond_12f

    .line 289
    const-string v8, "DualDarDaemonConnector"

    const-string v9, "RCV incomplete"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    :cond_12f
    if-eq v6, v7, :cond_138

    .line 295
    rsub-int v8, v6, 0x1000

    .line 296
    .local v8, "remaining":I
    invoke-static {v5, v6, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_136} :catch_140
    .catchall {:try_start_107 .. :try_end_136} :catchall_13e

    .line 297
    move v6, v8

    .line 298
    .end local v8    # "remaining":I
    goto :goto_139

    .line 299
    :cond_138
    const/4 v6, 0x0

    .line 301
    .end local v7    # "count":I
    :goto_139
    goto/16 :goto_2d

    .line 234
    .end local v5    # "buffer":[B
    .end local v6    # "start":I
    :catchall_13b
    move-exception v6

    :try_start_13c
    monitor-exit v5
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    .end local v0    # "socket":Landroid/net/LocalSocket;
    .end local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
    :try_start_13d
    throw v6
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_13e} :catch_140
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13e

    .line 307
    .end local v3    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "socket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
    :catchall_13e
    move-exception v3

    goto :goto_143

    .line 304
    :catch_140
    move-exception v3

    .line 305
    .local v3, "ex":Ljava/io/IOException;
    nop

    .end local v0    # "socket":Landroid/net/LocalSocket;
    .end local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
    :try_start_142
    throw v3
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_13e

    .line 307
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v0    # "socket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
    :goto_143
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    .line 308
    :try_start_146
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_148
    .catchall {:try_start_146 .. :try_end_148} :catchall_1a8

    if-eqz v5, :cond_185

    .line 310
    :try_start_14a
    const-string v5, "DualDarDaemonConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing stream for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_169} :catch_16a
    .catchall {:try_start_14a .. :try_end_169} :catchall_1a8

    .line 314
    goto :goto_183

    .line 312
    :catch_16a
    move-exception v5

    .line 313
    .local v5, "e":Ljava/io/IOException;
    :try_start_16b
    const-string v6, "DualDarDaemonConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed closing output stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 315
    .end local v5    # "e":Ljava/io/IOException;
    :goto_183
    iput-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 317
    :cond_185
    monitor-exit v4
    :try_end_186
    .catchall {:try_start_16b .. :try_end_186} :catchall_1a8

    .line 320
    if-eqz v0, :cond_1a6

    .line 321
    :try_start_188
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_18c

    goto :goto_1a6

    .line 323
    :catch_18c
    move-exception v1

    .line 324
    .restart local v1    # "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed closing socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "DualDarDaemonConnector"

    invoke-static {v5, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1a7

    .line 325
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1a6
    :goto_1a6
    nop

    .line 326
    :goto_1a7
    throw v3

    .line 317
    :catchall_1a8
    move-exception v1

    :try_start_1a9
    monitor-exit v4
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1a8

    throw v1
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12
    .param p0, "rawBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "seqNum"    # I
    .param p2, "task"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_5a

    .line 173
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_52

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    array-length v2, p4

    move v3, v0

    :goto_20
    if-ge v3, v2, :cond_4e

    aget-object v4, p4, v3

    .line 180
    .local v4, "argString":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "arg":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_37

    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {p0, v5}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 179
    .end local v4    # "argString":Ljava/lang/Object;
    .end local v5    # "arg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 182
    .restart local v4    # "argString":Ljava/lang/Object;
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    .end local v4    # "argString":Ljava/lang/Object;
    .end local v5    # "arg":Ljava/lang/String;
    :cond_4e
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    return-void

    .line 174
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be separate from command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs declared-synchronized execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12
    .param p1, "task"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .local v0, "rawBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 145
    .local v1, "sequenceNumber":I
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "rawCmd":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_49

    .line 150
    :try_start_19
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_46

    if-nez v5, :cond_27

    .line 151
    :try_start_1d
    const-string v5, "DualDarDaemonConnector"

    const-string v6, "Missing Output stream - cannot write commands!"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_36

    goto :goto_3c

    .line 154
    :cond_27
    :try_start_27
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 155
    .local v5, "rawCmdBytes":[B
    iget-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    .line 156
    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([BB)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_35} :catch_38
    .catchall {:try_start_27 .. :try_end_35} :catchall_36

    .line 159
    .end local v5    # "rawCmdBytes":[B
    goto :goto_3c

    .line 161
    :catchall_36
    move-exception v2

    goto :goto_47

    .line 157
    :catch_38
    move-exception v5

    .line 158
    .local v5, "e":Ljava/io/IOException;
    :try_start_39
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_46

    .line 163
    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_49

    .line 164
    monitor-exit p0

    return-void

    .line 161
    .end local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
    :catchall_46
    move-exception v2

    :goto_47
    :try_start_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 139
    .end local v0    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "sequenceNumber":I
    .end local v3    # "rawCmd":Ljava/lang/String;
    .end local p1    # "task":Ljava/lang/String;
    .end local p2    # "cmd":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    .registers 15
    .param p1, "task"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    .local v0, "rawBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 98
    .local v1, "sequenceNumber":I
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "rawCmd":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_b4

    .line 103
    :try_start_19
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v5, :cond_27

    .line 104
    const-string v5, "DualDarDaemonConnector"

    const-string v6, "Missing Output stream - cannot write commands!"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_af

    goto :goto_3a

    .line 107
    :cond_27
    :try_start_27
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 108
    .local v5, "rawCmdBytes":[B
    iget-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([BB)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_35} :catch_36
    .catchall {:try_start_27 .. :try_end_35} :catchall_af

    .line 112
    .end local v5    # "rawCmdBytes":[B
    goto :goto_3a

    .line 110
    :catch_36
    move-exception v5

    .line 111
    .local v5, "e":Ljava/io/IOException;
    :try_start_37
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3a
    const/4 v5, 0x0

    .line 117
    .local v5, "event":Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    :cond_3b
    const-string v6, "DualDarDaemonConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command Sent : sequence Number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "task is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Command is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    iget-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    const v7, 0xea60

    invoke-virtual {v6, v1, p2, v7}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->remove(ILjava/lang/String;I)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v6

    move-object v5, v6

    .line 119
    if-nez v5, :cond_8a

    .line 120
    const-string v6, "DualDarDaemonConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timed-out waiting for response to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    goto :goto_90

    .line 123
    :cond_8a
    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 125
    :goto_90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 128
    .local v6, "endTime":J
    if-eqz v5, :cond_a5

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassClientError()Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 129
    const-string v8, "DualDarDaemonConnector"

    const-string v9, "event = null or isClassClientError = true"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    :cond_a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v2, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 134
    monitor-exit v4
    :try_end_ad
    .catchall {:try_start_37 .. :try_end_ad} :catchall_af

    monitor-exit p0

    return-object v5

    .line 135
    .end local v5    # "event":Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    .end local v6    # "endTime":J
    :catchall_af
    move-exception v2

    :goto_b0
    :try_start_b0
    monitor-exit v4
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b2

    :try_start_b1
    throw v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b4

    .end local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
    :catchall_b2
    move-exception v2

    goto :goto_b0

    .line 92
    .end local v0    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "sequenceNumber":I
    .end local v3    # "rawCmd":Ljava/lang/String;
    .end local p1    # "task":Ljava/lang/String;
    .end local p2    # "cmd":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    :catchall_b4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 331
    const-string v0, "DualDarDaemonConnector"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 333
    .local v1, "event":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_8
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v1, v6}, Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 334
    const-string v4, "Unhandled event \'%s\'"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_26

    .line 338
    :cond_25
    goto :goto_45

    .line 336
    :catch_26
    move-exception v4

    .line 337
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error handling \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 339
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_45
    return v2
.end method

.method public run()V
    .registers 5

    .line 80
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    if-eqz v0, :cond_2d

    .line 82
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->listenToSocket()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    .line 87
    :goto_7
    goto :goto_0

    .line 83
    :catch_8
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error connectiong to DualDAR daemon in NativeDaemonConnector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DualDarDaemonConnector"

    invoke-static {v3, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    const-wide/16 v1, 0x4b

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 86
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    invoke-interface {v1}, Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onDaemonDisconnected()Z

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 89
    :cond_2d
    return-void
.end method

.method public setIsListening(Z)V
    .registers 2
    .param p1, "isListening"    # Z

    .line 219
    iput-boolean p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    .line 220
    return-void
.end method
