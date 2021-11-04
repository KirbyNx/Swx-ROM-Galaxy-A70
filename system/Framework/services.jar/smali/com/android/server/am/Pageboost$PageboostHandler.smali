.class final Lcom/android/server/am/Pageboost$PageboostHandler;
.super Landroid/os/Handler;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 2277
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2278
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;

    .line 2282
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2283
    .local v2, "pageInfo":Lcom/android/server/am/Pageboost$PageboostAppList;
    const/4 v0, 0x0

    .line 2284
    .local v0, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    const/4 v3, 0x0

    .line 2290
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget v4, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    const-string/jumbo v6, "pid"

    const/4 v7, 0x3

    const/16 v8, 0xbb8

    const-string/jumbo v9, "pkg"

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v4, :pswitch_data_366

    :pswitch_16
    goto/16 :goto_364

    .line 2537
    :pswitch_18
    # getter for: Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3300()Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 2538
    # getter for: Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3300()Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->munlockAllFiles()V

    .line 2540
    :cond_25
    const/4 v4, 0x0

    # setter for: Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    invoke-static {v4}, Lcom/android/server/am/Pageboost;->access$3302(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    goto/16 :goto_364

    .line 2532
    :pswitch_2b
    const-string v4, "boot_file"

    invoke-static {v4}, Lcom/android/server/am/Pageboost$VramdiskXMLParser;->getString(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    .line 2533
    .local v4, "bootFileList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    invoke-direct {v5, v4}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;-><init>(Ljava/util/LinkedList;)V

    # setter for: Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    invoke-static {v5}, Lcom/android/server/am/Pageboost;->access$3302(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    .line 2534
    # getter for: Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3300()Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mlockAllFiles()V

    .line 2535
    goto/16 :goto_364

    .line 2526
    .end local v4    # "bootFileList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :pswitch_42
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "stop alp by timeout"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 2528
    goto/16 :goto_364

    .line 2523
    :pswitch_51
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 2524
    goto/16 :goto_364

    .line 2514
    :pswitch_56
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    if-nez v4, :cond_5e

    .line 2515
    goto/16 :goto_364

    .line 2517
    :cond_5e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 2518
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2519
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "alp"

    invoke-static {v5, v6}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    goto/16 :goto_364

    .line 2397
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "packageName":Ljava/lang/String;
    :pswitch_6d
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 2398
    invoke-static {v0}, Lcom/android/server/am/Pageboost$MemUsageCollector;->collectMemUsage(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    .line 2399
    goto/16 :goto_364

    .line 2381
    :pswitch_77
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    if-nez v4, :cond_7f

    .line 2382
    goto/16 :goto_364

    .line 2385
    :cond_7f
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2386
    .local v4, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    .line 2388
    if-eqz v0, :cond_364

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getMemUsage()Lcom/android/server/am/Pageboost$MemUsage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/Pageboost$MemUsage;->getTotal()I

    move-result v5

    if-nez v5, :cond_364

    .line 2389
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getGameApp()Z

    move-result v5

    const/16 v6, 0x12

    if-eqz v5, :cond_a7

    .line 2390
    const v5, 0x88b8

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v6, v0, v5}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    goto/16 :goto_364

    .line 2392
    :cond_a7
    const/16 v5, 0x1388

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v6, v0, v5}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    goto/16 :goto_364

    .line 2494
    .end local v4    # "packageName":Ljava/lang/String;
    :pswitch_ae
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    if-nez v4, :cond_b6

    .line 2495
    goto/16 :goto_364

    .line 2497
    :cond_b6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 2498
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "status"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2499
    .local v7, "ProcStatus":I
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2500
    .local v6, "ProcPid":I
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2502
    .local v8, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    .line 2503
    if-eqz v0, :cond_364

    .line 2504
    if-ne v7, v11, :cond_db

    .line 2505
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2506
    iput v11, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    goto/16 :goto_364

    .line 2507
    :cond_db
    if-ne v7, v5, :cond_364

    .line 2508
    iput v10, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2509
    iput v10, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    goto/16 :goto_364

    .line 2369
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "ProcPid":I
    .end local v7    # "ProcStatus":I
    .end local v8    # "packageName":Ljava/lang/String;
    :pswitch_e3
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/Pageboost$IoRecord;

    .line 2370
    .local v4, "rec":Lcom/android/server/am/Pageboost$IoRecord;
    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$IoRecord;->getResultFromKernel()J

    .line 2371
    invoke-static {v4}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V

    .line 2373
    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$IoRecord;->getApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    .line 2374
    if-eqz v0, :cond_364

    .line 2375
    # invokes: Lcom/android/server/am/Pageboost$PageboostAppInfo;->initAalPrefetchList()V
    invoke-static {v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$2700(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    .line 2376
    # getter for: Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2800()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    goto/16 :goto_364

    .line 2334
    .end local v4    # "rec":Lcom/android/server/am/Pageboost$IoRecord;
    :pswitch_103
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    if-nez v4, :cond_10b

    .line 2335
    goto/16 :goto_364

    .line 2338
    :cond_10b
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2341
    .local v4, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v5

    .line 2342
    .end local v0    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .local v5, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    invoke-static {v5}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 2343
    const/4 v0, 0x0

    .line 2344
    .local v0, "trials":I
    iget v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2345
    .local v6, "pid":I
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Record App IO : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    if-nez v6, :cond_16a

    move v7, v6

    move v6, v0

    .line 2349
    .end local v0    # "trials":I
    .local v6, "trials":I
    .local v7, "pid":I
    :goto_144
    const/16 v0, 0xa

    if-ge v6, v0, :cond_168

    .line 2350
    :try_start_148
    # invokes: Lcom/android/server/am/Pageboost;->getPidFromPackageName(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/server/am/Pageboost;->access$1700(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 2351
    if-lez v7, :cond_150

    .line 2352
    goto :goto_168

    .line 2354
    :cond_150
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_155} :catch_158

    .line 2355
    add-int/lit8 v6, v6, 0x1

    goto :goto_144

    .line 2357
    :catch_158
    move-exception v0

    .line 2358
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to sleep"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    move v6, v7

    goto :goto_16a

    .line 2360
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_168
    :goto_168
    move v0, v6

    move v6, v7

    .line 2362
    .end local v7    # "pid":I
    .local v0, "trials":I
    .local v6, "pid":I
    :cond_16a
    :goto_16a
    if-lez v6, :cond_16f

    .line 2363
    invoke-static {v5, v6}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    .line 2543
    .end local v0    # "trials":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "pid":I
    :cond_16f
    move-object v0, v5

    goto/16 :goto_364

    .line 2491
    .end local v5    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .local v0, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :pswitch_172
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->sendData()V

    .line 2492
    goto/16 :goto_364

    .line 2410
    :pswitch_177
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    if-nez v4, :cond_17f

    .line 2411
    goto/16 :goto_364

    .line 2413
    :cond_17f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 2414
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2415
    .local v6, "launchedPid":I
    const-string/jumbo v8, "launchtime"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2416
    .local v8, "launchtime":I
    const/4 v12, 0x0

    .line 2417
    .local v12, "prefetch_hit":Z
    const-string v13, "0,0,0"

    .line 2419
    .local v13, "ioinfoStr":Ljava/lang/String;
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2420
    .local v9, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Launcher App Execution"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2600()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v14

    const-string v15, ","

    if-eqz v14, :cond_24d

    .line 2424
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    .line 2425
    if-eqz v0, :cond_241

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v14

    if-eqz v14, :cond_241

    .line 2426
    iget v14, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    if-ne v14, v11, :cond_1c0

    .line 2427
    iput v5, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 2429
    :cond_1c0
    if-eqz v6, :cond_209

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getPid()I

    move-result v5

    if-eq v6, v5, :cond_209

    .line 2430
    invoke-virtual {v0, v6}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setPid(I)V

    .line 2431
    if-lez v8, :cond_1d4

    const/16 v5, 0x2710

    if-ge v8, v5, :cond_1d4

    .line 2433
    invoke-virtual {v0, v8}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->updateExecTime(I)V

    .line 2436
    :cond_1d4
    new-array v5, v7, [J

    .line 2437
    .local v5, "ioinfo":[J
    invoke-virtual {v0, v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getIoinfo([J)V

    .line 2438
    aget-wide v16, v5, v10

    const-wide/16 v18, -0x1

    cmp-long v7, v16, v18

    if-eqz v7, :cond_206

    .line 2439
    const-string v7, ""

    .line 2440
    .end local v13    # "ioinfoStr":Ljava/lang/String;
    .local v7, "ioinfoStr":Ljava/lang/String;
    array-length v13, v5

    :goto_1e4
    if-ge v10, v13, :cond_202

    move/from16 v16, v12

    .end local v12    # "prefetch_hit":Z
    .local v16, "prefetch_hit":Z
    aget-wide v11, v5, v10

    .line 2441
    .local v11, "i":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2440
    .end local v11    # "i":J
    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v16

    const/4 v11, 0x1

    goto :goto_1e4

    .end local v16    # "prefetch_hit":Z
    .restart local v12    # "prefetch_hit":Z
    :cond_202
    move/from16 v16, v12

    .end local v12    # "prefetch_hit":Z
    .restart local v16    # "prefetch_hit":Z
    move-object v13, v7

    goto :goto_208

    .line 2438
    .end local v7    # "ioinfoStr":Ljava/lang/String;
    .end local v16    # "prefetch_hit":Z
    .restart local v12    # "prefetch_hit":Z
    .restart local v13    # "ioinfoStr":Ljava/lang/String;
    :cond_206
    move/from16 v16, v12

    .line 2443
    .end local v5    # "ioinfo":[J
    .end local v12    # "prefetch_hit":Z
    .restart local v16    # "prefetch_hit":Z
    :goto_208
    goto :goto_20c

    .line 2429
    .end local v16    # "prefetch_hit":Z
    .restart local v12    # "prefetch_hit":Z
    :cond_209
    move/from16 v16, v12

    .line 2444
    .end local v12    # "prefetch_hit":Z
    .restart local v16    # "prefetch_hit":Z
    const/4 v8, 0x0

    .line 2447
    :goto_20c
    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2600()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v5

    invoke-virtual {v5, v0, v8}, Lcom/android/server/am/Pageboost$PageboostPredictor;->checkPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result v5

    if-eqz v5, :cond_236

    .line 2448
    iget v5, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 2449
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prefetch Hit! : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    const/4 v12, 0x1

    .end local v16    # "prefetch_hit":Z
    .restart local v12    # "prefetch_hit":Z
    goto :goto_238

    .line 2447
    .end local v12    # "prefetch_hit":Z
    .restart local v16    # "prefetch_hit":Z
    :cond_236
    move/from16 v12, v16

    .line 2453
    .end local v16    # "prefetch_hit":Z
    .restart local v12    # "prefetch_hit":Z
    :goto_238
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v0, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    goto :goto_245

    .line 2425
    :cond_241
    move/from16 v16, v12

    .line 2455
    .end local v12    # "prefetch_hit":Z
    .restart local v16    # "prefetch_hit":Z
    move/from16 v12, v16

    .end local v16    # "prefetch_hit":Z
    .restart local v12    # "prefetch_hit":Z
    :goto_245
    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2600()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/Pageboost$PageboostPredictor;->finalizePredict()V

    goto :goto_24f

    .line 2423
    :cond_24d
    move/from16 v16, v12

    .line 2459
    :goto_24f
    if-eqz v0, :cond_364

    .line 2460
    if-lez v8, :cond_27b

    .line 2461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppEntry,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    goto/16 :goto_364

    .line 2462
    :cond_27b
    if-nez v8, :cond_364

    .line 2463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppReEntry,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    goto/16 :goto_364

    .line 2405
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "launchedPid":I
    .end local v8    # "launchtime":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "prefetch_hit":Z
    .end local v13    # "ioinfoStr":Ljava/lang/String;
    :pswitch_29f
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 2406
    const/16 v4, 0xc

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithBundle(ILandroid/os/Bundle;I)V
    invoke-static {v4, v5, v8}, Lcom/android/server/am/Pageboost;->access$2900(ILandroid/os/Bundle;I)V

    .line 2407
    goto/16 :goto_364

    .line 2401
    :pswitch_2ad
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 2402
    const/16 v4, 0xb

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithBundle(ILandroid/os/Bundle;I)V
    invoke-static {v4, v5, v8}, Lcom/android/server/am/Pageboost;->access$2900(ILandroid/os/Bundle;I)V

    .line 2403
    goto/16 :goto_364

    .line 2478
    :pswitch_2bb
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2479
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_364

    .line 2480
    # invokes: Lcom/android/server/am/Pageboost;->removePackage(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/am/Pageboost;->access$3200(Ljava/lang/String;)V

    goto/16 :goto_364

    .line 2472
    .end local v4    # "packageName":Ljava/lang/String;
    :pswitch_2c6
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2473
    .restart local v4    # "packageName":Ljava/lang/String;
    if-eqz v4, :cond_364

    .line 2474
    # invokes: Lcom/android/server/am/Pageboost;->addPackage(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/am/Pageboost;->access$3100(Ljava/lang/String;)V

    goto/16 :goto_364

    .line 2484
    .end local v4    # "packageName":Ljava/lang/String;
    :pswitch_2d1
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    if-nez v4, :cond_2d9

    .line 2485
    goto/16 :goto_364

    .line 2487
    :cond_2d9
    # getter for: Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2800()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V

    .line 2488
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->keepLastData()V

    .line 2489
    goto/16 :goto_364

    .line 2316
    :pswitch_2e9
    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Z

    move-result v4

    if-nez v4, :cond_2f1

    .line 2317
    goto/16 :goto_364

    .line 2319
    :cond_2f1
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    if-nez v4, :cond_2f9

    .line 2320
    goto/16 :goto_364

    .line 2322
    :cond_2f9
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2324
    .restart local v4    # "packageName":Ljava/lang/String;
    # invokes: Lcom/android/server/am/Pageboost;->getPidFromPackageName(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/server/am/Pageboost;->access$1700(Ljava/lang/String;)I

    move-result v5

    .line 2325
    .local v5, "pid":I
    if-lez v5, :cond_364

    .line 2326
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    .line 2327
    invoke-static {v0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v6

    if-eqz v6, :cond_364

    .line 2328
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "capturing App IO"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    invoke-static {v0, v5}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto :goto_364

    .line 2469
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pid":I
    :pswitch_31e
    # invokes: Lcom/android/server/am/Pageboost;->realupdatePackages()V
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3000()V

    .line 2470
    goto :goto_364

    .line 2306
    :pswitch_322
    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Z

    move-result v4

    if-eqz v4, :cond_364

    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2500()Z

    move-result v4

    if-eqz v4, :cond_32f

    .line 2307
    goto :goto_364

    .line 2309
    :cond_32f
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 2310
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Launcher Page Up"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2600()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v4

    if-eqz v4, :cond_364

    .line 2312
    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2600()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/am/Pageboost$PageboostPredictor;->predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V

    goto :goto_364

    .line 2296
    :pswitch_34b
    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Z

    move-result v4

    if-nez v4, :cond_352

    .line 2297
    goto :goto_364

    .line 2299
    :cond_352
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 2302
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 2303
    const/16 v4, 0x190

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v7, v2, v4}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    .line 2304
    goto :goto_364

    .line 2293
    :pswitch_360
    # invokes: Lcom/android/server/am/Pageboost;->delayedInitPageboost()V
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2300()V

    .line 2294
    nop

    .line 2543
    :cond_364
    :goto_364
    return-void

    nop

    :pswitch_data_366
    .packed-switch 0x1
        :pswitch_360
        :pswitch_34b
        :pswitch_322
        :pswitch_31e
        :pswitch_2e9
        :pswitch_2d1
        :pswitch_2c6
        :pswitch_2bb
        :pswitch_2ad
        :pswitch_29f
        :pswitch_177
        :pswitch_177
        :pswitch_172
        :pswitch_103
        :pswitch_e3
        :pswitch_ae
        :pswitch_77
        :pswitch_6d
        :pswitch_56
        :pswitch_51
        :pswitch_42
        :pswitch_16
        :pswitch_2b
        :pswitch_18
    .end packed-switch
.end method
