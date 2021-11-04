.class abstract Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.super Ljava/lang/Object;
.source "AbstractProtoDiskReadWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;,
        Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_WRITE_DELAY:J = 0x1d4c0L

.field private static final SHUTDOWN_DISK_WRITE_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mRootDir:Ljava/io/File;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mScheduledFileDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4
    .param p1, "rootDir"    # Ljava/io/File;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 83
    iput-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    .line 84
    iput-object p2, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 85
    return-void
.end method

.method private declared-synchronized flushScheduledData()V
    .registers 5

    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 219
    iput-object v1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_37

    .line 220
    monitor-exit p0

    return-void

    .line 222
    .end local p0    # "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    .local v2, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 224
    .local v3, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2, v3}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->writeTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "data":Ljava/lang/Object;, "TT;"
    goto :goto_18

    .line 226
    :cond_2e
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    iput-object v1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_37

    .line 228
    monitor-exit p0

    return-void

    .line 217
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 245
    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$nRGnkY2tYZySym1eNN1hpDLyKgc(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->flushScheduledData()V

    return-void
.end method

.method static synthetic lambda$read$0(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "pathname"    # Ljava/io/File;

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private parseFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 234
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_28

    .line 235
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_9
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 236
    .local v2, "protoInputStream":Landroid/util/proto/ProtoInputStream;
    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;->read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1c

    .line 237
    if-eqz v1, :cond_1b

    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_28

    .line 236
    :cond_1b
    return-object v3

    .line 234
    .end local v2    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_27

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v3

    :try_start_24
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    .end local p1    # "file":Ljava/io/File;
    :cond_27
    :goto_27
    throw v2
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_28

    .line 237
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    .restart local p1    # "file":Ljava/io/File;
    :catch_28
    move-exception v1

    .line 238
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to parse protobuf file."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v1    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private declared-synchronized triggerScheduledFlushEarly()V
    .registers 5

    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_39

    .line 199
    :cond_12
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1c

    .line 203
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 208
    .end local p0    # "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    :cond_1c
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$AbstractProtoDiskReadWriter$nRGnkY2tYZySym1eNN1hpDLyKgc;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/-$$Lambda$AbstractProtoDiskReadWriter$nRGnkY2tYZySym1eNN1hpDLyKgc;-><init>(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_3b

    .line 210
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const-wide/16 v1, 0x1388

    :try_start_29
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_3b

    .line 213
    goto :goto_37

    .line 211
    :catch_2f
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    :try_start_30
    sget-object v2, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to save data immediately."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3b

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    monitor-exit p0

    return-void

    .line 196
    .end local v0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 194
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized delete(Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;

    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 91
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_34

    if-nez v1, :cond_12

    .line 92
    monitor-exit p0

    return-void

    .line 94
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_32

    .line 95
    sget-object v1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_34

    .line 97
    .end local p0    # "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    :cond_32
    monitor-exit p0

    return-void

    .line 88
    .end local v0    # "file":Ljava/io/File;
    .end local p1    # "fileName":Ljava/lang/String;
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method abstract protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter<",
            "TT;>;"
        }
    .end annotation
.end method

.method read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$AbstractProtoDiskReadWriter$RutlrISWNCUw_aU5FfyRnlVY9wk;

    invoke-direct {v1, p1}, Lcom/android/server/people/data/-$$Lambda$AbstractProtoDiskReadWriter$RutlrISWNCUw_aU5FfyRnlVY9wk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 129
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_37

    array-length v1, v0

    if-nez v1, :cond_11

    goto :goto_37

    .line 131
    :cond_11
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2f

    .line 133
    sget-object v1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found multiple files with the same name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2f
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->parseFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 130
    :cond_37
    :goto_37
    const/4 v1, 0x0

    return-object v1
.end method

.method readAll()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    sget-object v1, Lcom/android/server/people/data/-$$Lambda$AuvQl7mzpTuCl6KGI2jmWCB7WvI;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$AuvQl7mzpTuCl6KGI2jmWCB7WvI;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_c

    .line 147
    const/4 v1, 0x0

    return-object v1

    .line 150
    :cond_c
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 151
    .local v1, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 152
    .local v4, "file":Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->parseFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v5

    .line 153
    .local v5, "result":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_24

    .line 154
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 157
    :cond_27
    return-object v1
.end method

.method declared-synchronized saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-direct {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->triggerScheduledFlushEarly()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 191
    monitor-exit p0

    return-void

    .line 188
    .end local p0    # "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "data":Ljava/lang/Object;, "TT;"
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 170
    sget-object v0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string v1, "Worker is shutdown, failed to schedule data saving."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_31

    .line 171
    monitor-exit p0

    return-void

    .line 175
    .end local p0    # "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_31

    if-eqz v0, :cond_1d

    .line 176
    monitor-exit p0

    return-void

    .line 179
    .restart local p0    # "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$AbstractProtoDiskReadWriter$nRGnkY2tYZySym1eNN1hpDLyKgc;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/-$$Lambda$AbstractProtoDiskReadWriter$nRGnkY2tYZySym1eNN1hpDLyKgc;-><init>(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V

    const-wide/32 v2, 0x1d4c0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_31

    .line 181
    monitor-exit p0

    return-void

    .line 166
    .end local p0    # "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "data":Ljava/lang/Object;, "TT;"
    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method writeTo(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/android/server/people/data/AbstractProtoDiskReadWriter;, "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 104
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 106
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_2d

    move-object v2, v3

    .line 110
    nop

    .line 113
    :try_start_10
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 114
    .local v3, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;

    move-result-object v4

    invoke-interface {v4, v3, p2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;->write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 116
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_28

    .line 117
    const/4 v2, 0x0

    .line 120
    .end local v3    # "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_28
    move-exception v3

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 121
    throw v3

    .line 107
    :catch_2d
    move-exception v3

    .line 108
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write to protobuf file."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    return-void
.end method
