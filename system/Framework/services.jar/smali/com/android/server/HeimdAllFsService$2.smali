.class Lcom/android/server/HeimdAllFsService$2;
.super Ljava/lang/Thread;
.source "HeimdAllFsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HeimdAllFsService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HeimdAllFsService;


# direct methods
.method constructor <init>(Lcom/android/server/HeimdAllFsService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/HeimdAllFsService;
    .param p2, "name"    # Ljava/lang/String;

    .line 394
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 398
    const-string/jumbo v0, "inprog"

    const-string v1, ".compress.tmp"

    const-string/jumbo v2, "persist.sys.heimdallfs.inprog"

    const-string/jumbo v3, "runIdleMaint, HeimdAllFS Thread End, latch down"

    const-string v4, "HeimdAllFS"

    :try_start_d
    const-string/jumbo v5, "runIdleMaint, HeimdAllFS Thread Start"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v5, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v5, v6}, Lcom/android/server/HeimdAllFsService;->access$102(Lcom/android/server/HeimdAllFsService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 401
    invoke-static {}, Lcom/android/server/HeimdAllFsService;->isServiceActivate()Z

    move-result v5
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_19a
    .catchall {:try_start_d .. :try_end_22} :catchall_198

    if-nez v5, :cond_39

    .line 451
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    # getter for: Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->access$100(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 453
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    # getter for: Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->access$100(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 402
    :cond_38
    return-void

    .line 404
    :cond_39
    :try_start_39
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 405
    .local v5, "cleanupRequired":Z
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v0, "persist.sys.heimdallfs.force.mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "forceServiceMode":Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    const-string v8, "/data/"

    invoke-direct {v6, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 409
    .local v6, "mStats":Landroid/os/StatFs;
    const-string v8, "compress"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d0

    .line 410
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v12

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6f

    goto :goto_d0

    .line 413
    :cond_6f
    const-string v7, "decompress"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b1

    .line 414
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v11, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v9, v11

    cmpl-double v7, v7, v9

    if-lez v7, :cond_8c

    goto :goto_b1

    .line 418
    :cond_8c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Do nothing!! available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", total : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v6}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 418
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 415
    :cond_b1
    :goto_b1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decompress!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v7, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/HeimdAllFsService;->doCompressService(Z)V

    goto :goto_ed

    .line 411
    :cond_d0
    :goto_d0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Compress!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v8, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {v8, v7}, Lcom/android/server/HeimdAllFsService;->doCompressService(Z)V

    .line 422
    :goto_ed
    if-eqz v5, :cond_178

    .line 424
    iget-object v7, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    # getter for: Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/HeimdAllFsService;->access$200(Lcom/android/server/HeimdAllFsService;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_102

    .line 425
    iget-object v7, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    iget-object v8, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {v8}, Lcom/android/server/HeimdAllFsService;->getPackagesOnUserdata()Ljava/util/List;

    move-result-object v8

    # setter for: Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;
    invoke-static {v7, v8}, Lcom/android/server/HeimdAllFsService;->access$202(Lcom/android/server/HeimdAllFsService;Ljava/util/List;)Ljava/util/List;

    .line 427
    :cond_102
    iget-object v7, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    # getter for: Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/HeimdAllFsService;->access$200(Lcom/android/server/HeimdAllFsService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_178

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 428
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v9, "tempFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_177

    .line 430
    # getter for: Lcom/android/server/HeimdAllFsService;->mDebugMode:Z
    invoke-static {}, Lcom/android/server/HeimdAllFsService;->access$300()Z

    move-result v10

    if-eqz v10, :cond_157

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cleanup : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_157} :catch_19a
    .catchall {:try_start_39 .. :try_end_157} :catchall_198

    .line 433
    :cond_157
    :try_start_157
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_15b
    .catchall {:try_start_157 .. :try_end_15a} :catchall_198

    .line 436
    goto :goto_177

    .line 434
    :catch_15b
    move-exception v10

    .line 435
    .local v10, "e":Ljava/lang/Exception;
    :try_start_15c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IO Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "tempFile":Ljava/io/File;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_177
    :goto_177
    goto :goto_10c

    .line 441
    :cond_178
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v1, "HeimdAllFS: HeimdAllFS Comp/Decomp process complete"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {v1}, Lcom/android/server/HeimdAllFsService;->scanApkPackagesForBigdata()V

    .line 446
    const-string v1, "HeimdAllFS: HeimdAllFS Thread End Normally"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_18b} :catch_19a
    .catchall {:try_start_15c .. :try_end_18b} :catchall_198

    .line 451
    nop

    .end local v0    # "forceServiceMode":Ljava/lang/String;
    .end local v5    # "cleanupRequired":Z
    .end local v6    # "mStats":Landroid/os/StatFs;
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    # getter for: Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->access$100(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 453
    goto :goto_1af

    .line 451
    :catchall_198
    move-exception v0

    goto :goto_1b9

    .line 447
    :catch_19a
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    :try_start_19b
    const-string v1, "HeimdAllFS: Exception!!"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a3
    .catchall {:try_start_19b .. :try_end_1a3} :catchall_198

    .line 451
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    # getter for: Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->access$100(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 453
    :goto_1af
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    # getter for: Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->access$100(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 455
    :cond_1b8
    return-void

    .line 451
    :goto_1b9
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    # getter for: Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/android/server/HeimdAllFsService;->access$100(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_1cd

    .line 453
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService$2;->this$0:Lcom/android/server/HeimdAllFsService;

    # getter for: Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/android/server/HeimdAllFsService;->access$100(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 454
    :cond_1cd
    throw v0
.end method
