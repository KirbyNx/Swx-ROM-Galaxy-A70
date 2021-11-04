.class public Lcom/android/server/am/LmkdConnection;
.super Ljava/lang/Object;
.source "LmkdConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;
    }
.end annotation


# static fields
.field private static final LMKD_REPLY_MAX_SIZE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mInputBuf:Ljava/nio/ByteBuffer;

.field private final mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

.field private mLmkdInputStream:Ljava/io/InputStream;

.field private mLmkdOutputStream:Ljava/io/OutputStream;

.field private mLmkdSocket:Landroid/net/LocalSocket;

.field private final mLmkdSocketLock:Ljava/lang/Object;

.field private final mMsgQueue:Landroid/os/MessageQueue;

.field private mReplyBuf:Ljava/nio/ByteBuffer;

.field private final mReplyBufLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V
    .registers 5
    .param p1, "msgQueue"    # Landroid/os/MessageQueue;
    .param p2, "listener"    # Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 89
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 91
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 95
    nop

    .line 96
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 108
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    .line 109
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LmkdConnection;Ljava/io/FileDescriptor;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/LmkdConnection;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/LmkdConnection;->fileDescriptorEventHandler(Ljava/io/FileDescriptor;I)I

    move-result v0

    return v0
.end method

.method private fileDescriptorEventHandler(Ljava/io/FileDescriptor;I)I
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 158
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 159
    return v1

    .line 161
    :cond_6
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_d

    .line 162
    invoke-direct {p0}, Lcom/android/server/am/LmkdConnection;->processIncomingData()V

    .line 164
    :cond_d
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_43

    .line 165
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_14
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 168
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 167
    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 169
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 170
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 171
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_40

    .line 173
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_36

    .line 175
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 176
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 178
    :cond_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_3d

    .line 180
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    invoke-interface {v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->onDisconnect()V

    .line 181
    return v1

    .line 178
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    .line 171
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1

    .line 183
    :cond_43
    const/4 v0, 0x5

    return v0
.end method

.method private openSocket()Landroid/net/LocalSocket;
    .registers 5

    .line 237
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    .line 238
    .local v0, "socket":Landroid/net/LocalSocket;
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    .line 244
    nop

    .line 245
    return-object v0

    .line 241
    .end local v0    # "socket":Landroid/net/LocalSocket;
    :catch_15
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, 0x0

    return-object v1
.end method

.method private processIncomingData()V
    .registers 6

    .line 187
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/LmkdConnection;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 188
    .local v0, "len":I
    if-lez v0, :cond_62

    .line 189
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_4c

    .line 191
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, v4, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 193
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 194
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 196
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5d

    .line 197
    :cond_32
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->handleUnsolicitedMessage(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 200
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 201
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 202
    const-string v2, "ActivityManager"

    const-string v3, "Received an unexpected packet from lmkd"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 204
    :cond_4c
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->handleUnsolicitedMessage(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 207
    const-string v2, "ActivityManager"

    const-string v3, "Received an unexpected packet from lmkd"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_5d
    :goto_5d
    monitor-exit v1

    goto :goto_62

    :catchall_5f
    move-exception v2

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_b .. :try_end_61} :catchall_5f

    throw v2

    .line 211
    :cond_62
    :goto_62
    return-void
.end method

.method private read(Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 260
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_17
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v0

    return v1

    .line 266
    :catchall_15
    move-exception v1

    goto :goto_1b

    .line 263
    :catch_17
    move-exception v1

    .line 265
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 266
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_15

    throw v1
.end method

.method private write(Ljava/nio/ByteBuffer;)Z
    .registers 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 249
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_17
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 254
    nop

    .line 255
    const/4 v1, 0x1

    :try_start_13
    monitor-exit v0

    return v1

    .line 256
    :catchall_15
    move-exception v1

    goto :goto_1a

    .line 252
    :catch_17
    move-exception v2

    .line 253
    .local v2, "ex":Ljava/io/IOException;
    monitor-exit v0

    return v1

    .line 256
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_15

    throw v1
.end method


# virtual methods
.method public connect()Z
    .registers 10

    .line 113
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 115
    monitor-exit v0

    return v2

    .line 118
    :cond_a
    invoke-direct {p0}, Lcom/android/server/am/LmkdConnection;->openSocket()Landroid/net/LocalSocket;

    move-result-object v1

    .line 120
    .local v1, "socket":Landroid/net/LocalSocket;
    const/4 v3, 0x0

    if-nez v1, :cond_1a

    .line 121
    const-string v2, "ActivityManager"

    const-string v4, "Failed to connect to lowmemorykiller, retry later"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_5d

    return v3

    .line 128
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 129
    .local v4, "ostream":Ljava/io/OutputStream;
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_22} :catch_57
    .catchall {:try_start_1a .. :try_end_22} :catchall_5d

    .line 133
    .local v5, "istream":Ljava/io/InputStream;
    nop

    .line 135
    :try_start_23
    iget-object v6, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    if-eqz v6, :cond_3b

    iget-object v6, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    invoke-interface {v6, v4}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->onConnect(Ljava/io/OutputStream;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 136
    const-string v2, "ActivityManager"

    const-string v6, "Failed to communicate with lowmemorykiller, retry later"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    monitor-exit v0

    return v3

    .line 141
    :cond_3b
    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 142
    iput-object v4, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 143
    iput-object v5, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 144
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x5

    new-instance v8, Lcom/android/server/am/LmkdConnection$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/LmkdConnection$1;-><init>(Lcom/android/server/am/LmkdConnection;)V

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 152
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 153
    .end local v1    # "socket":Landroid/net/LocalSocket;
    .end local v4    # "ostream":Ljava/io/OutputStream;
    .end local v5    # "istream":Ljava/io/InputStream;
    monitor-exit v0

    .line 154
    return v2

    .line 130
    .restart local v1    # "socket":Landroid/net/LocalSocket;
    :catch_57
    move-exception v2

    .line 131
    .local v2, "ex":Ljava/io/IOException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 132
    monitor-exit v0

    return v3

    .line 153
    .end local v1    # "socket":Landroid/net/LocalSocket;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_23 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 6
    .param p1, "req"    # Ljava/nio/ByteBuffer;
    .param p2, "repl"    # Ljava/nio/ByteBuffer;

    .line 276
    if-nez p2, :cond_7

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0

    .line 280
    :cond_7
    const/4 v0, 0x0

    .line 282
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_b
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_28

    if-eqz v2, :cond_23

    .line 288
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 289
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_21
    .catchall {:try_start_13 .. :try_end_1a} :catchall_28

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    move v0, v2

    .line 292
    goto :goto_23

    .line 290
    :catch_21
    move-exception v2

    .line 291
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    .line 296
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_23
    :goto_23
    const/4 v2, 0x0

    :try_start_24
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 297
    monitor-exit v1

    .line 298
    return v0

    .line 297
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public isConnected()Z
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 216
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public waitForConnection(J)Z
    .registers 7
    .param p1, "timeoutMs"    # J

    .line 220
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 222
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    return v2

    .line 225
    :cond_a
    const/4 v1, 0x0

    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 226
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_18
    .catchall {:try_start_b .. :try_end_12} :catchall_1b

    if-eqz v3, :cond_15

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    :try_start_16
    monitor-exit v0

    return v2

    .line 227
    :catch_18
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/InterruptedException;
    monitor-exit v0

    return v1

    .line 230
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v1
.end method
