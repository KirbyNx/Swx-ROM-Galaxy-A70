.class Lcom/android/server/ipm/DexPreloader$DexPreloadTask;
.super Ljava/lang/Object;
.source "DexPreloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/DexPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexPreloadTask"
.end annotation


# instance fields
.field public dexPath:Ljava/lang/String;

.field mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pkgString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ipm/DexPreloader;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .line 358
    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->this$0:Lcom/android/server/ipm/DexPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->mFiles:Ljava/util/List;

    .line 359
    iput-object p2, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->pkgString:Ljava/lang/String;

    .line 360
    iput-object p3, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->dexPath:Ljava/lang/String;

    .line 361
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create a new DexPreloadTask pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method


# virtual methods
.method public LoadFiles(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cpuSuffix"    # Ljava/lang/String;
    .param p2, "FileName"    # Ljava/lang/String;

    .line 390
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->dexPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".art"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    .line 392
    invoke-virtual {p0, v0}, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->handleLoad(Ljava/io/File;)V

    .line 393
    return v2

    .line 395
    :cond_29
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->dexPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".odex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v3, 0x400

    if-eqz v1, :cond_60

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    div-long/2addr v5, v3

    div-long/2addr v5, v3

    const-wide/16 v3, 0x14

    cmp-long v1, v5, v3

    if-gez v1, :cond_5f

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->handleLoad(Ljava/io/File;)V

    .line 399
    :cond_5f
    return v2

    .line 401
    :cond_60
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mFile.length() is:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    div-long/2addr v5, v3

    div-long/2addr v5, v3

    goto :goto_7e

    :cond_7c
    const-wide/16 v5, 0x0

    :goto_7e
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v1, 0x0

    return v1
.end method

.method public handleLoad(Ljava/io/File;)V
    .registers 12
    .param p1, "mF"    # Ljava/io/File;

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dexpreload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 369
    :try_start_1a
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v0, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 370
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    .line 371
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 370
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 372
    .local v0, "buffer":Ljava/nio/MappedByteBuffer;
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 373
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is already preloaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 375
    :cond_55
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 378
    :goto_7b
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_7e} :catch_a6
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_7e} :catch_84
    .catchall {:try_start_1a .. :try_end_7e} :catchall_82

    .line 385
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 386
    goto :goto_c8

    .line 385
    .end local v0    # "buffer":Ljava/nio/MappedByteBuffer;
    .end local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_82
    move-exception v0

    goto :goto_c9

    .line 382
    :catch_84
    move-exception v0

    .line 383
    .local v0, "e":Ljava/io/IOException;
    :try_start_85
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dexpreload DexPreloadThread IO error file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_85 .. :try_end_a1} :catchall_82

    .line 385
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 386
    goto :goto_c8

    .line 379
    :catch_a6
    move-exception v0

    .line 380
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_a7
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dexpreload DexPreloadThread could not find file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_a7 .. :try_end_c3} :catchall_82

    .line 385
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 386
    nop

    .line 387
    :goto_c8
    return-void

    .line 385
    :goto_c9
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 386
    throw v0
.end method

.method public run()V
    .registers 6

    .line 408
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 410
    nop

    .line 411
    const-string/jumbo v0, "persist.sys.dexpreload_en"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 412
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->dexPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->pkgString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 413
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->dexPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/oat/arm64/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "/"

    const-string v3, "base"

    if-eqz v0, :cond_58

    .line 414
    invoke-virtual {p0, v2, v3}, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->LoadFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 416
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->dexPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->LoadFiles(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8b

    .line 418
    :cond_58
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->dexPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/oat/arm/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 419
    invoke-virtual {p0, v4, v3}, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->LoadFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 421
    iget-object v0, p0, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->dexPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/server/ipm/DexPreloader$DexPreloadTask;->LoadFiles(Ljava/lang/String;Ljava/lang/String;)Z

    .line 427
    :cond_8b
    :goto_8b
    return-void
.end method
