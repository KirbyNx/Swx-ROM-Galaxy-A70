.class Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1428
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1429
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1430
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 1434
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ce

    .line 1481
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_cc

    .line 1459
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/usage/UsageStatsService;->onPackageRemoved(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V

    .line 1460
    goto/16 :goto_cc

    .line 1446
    :pswitch_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/usage/UsageStatsService;->onUserUnlocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/usage/UsageStatsService;->access$800(Lcom/android/server/usage/UsageStatsService;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_20

    .line 1453
    goto/16 :goto_cc

    .line 1447
    :catch_20
    move-exception v0

    .line 1448
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_47

    .line 1451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to unlock stopped or removed user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_cc

    .line 1449
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_47
    throw v0

    .line 1439
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_48
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 1440
    goto/16 :goto_cc

    .line 1462
    :pswitch_53
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1463
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1465
    .local v1, "procState":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_5d

    move v2, v3

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x1

    .line 1466
    .local v2, "newCounter":I
    :goto_5e
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsService;->access$1000(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v4

    monitor-enter v4

    .line 1467
    :try_start_65
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;
    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->access$1000(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1468
    .local v3, "oldCounter":I
    if-eq v2, v3, :cond_ad

    .line 1469
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;
    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->access$1000(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_7a
    .catchall {:try_start_65 .. :try_end_7a} :catchall_af

    .line 1471
    :try_start_7a
    # getter for: Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;
    invoke-static {}, Lcom/android/server/usage/UsageStatsService;->access$1100()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_95} :catch_96
    .catchall {:try_start_7a .. :try_end_95} :catchall_af

    .line 1474
    goto :goto_ad

    .line 1472
    :catch_96
    move-exception v5

    .line 1473
    .local v5, "e":Ljava/io/IOException;
    :try_start_97
    const-string v6, "UsageStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update counter set: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    .end local v3    # "oldCounter":I
    .end local v5    # "e":Ljava/io/IOException;
    :cond_ad
    :goto_ad
    monitor-exit v4

    .line 1477
    goto :goto_cc

    .line 1476
    :catchall_af
    move-exception v3

    monitor-exit v4
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_af

    throw v3

    .line 1456
    .end local v0    # "uid":I
    .end local v1    # "procState":I
    .end local v2    # "newCounter":I
    :pswitch_b2
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    .line 1457
    goto :goto_cc

    .line 1442
    :pswitch_ba
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    .line 1443
    goto :goto_cc

    .line 1436
    :pswitch_c0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 1437
    nop

    .line 1484
    :goto_cc
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_ba
        :pswitch_b2
        :pswitch_53
        :pswitch_48
        :pswitch_17
        :pswitch_a
    .end packed-switch
.end method
