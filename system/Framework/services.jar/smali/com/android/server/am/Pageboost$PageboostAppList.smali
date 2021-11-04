.class final Lcom/android/server/am/Pageboost$PageboostAppList;
.super Ljava/lang/Object;
.source "Pageboost.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostAppList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/android/server/am/Pageboost$PageboostAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mPageboostApps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/Pageboost$PageboostAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 502
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V
    .registers 5
    .param p1, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p2, "first"    # Z

    .line 514
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0

    .line 515
    if-eqz p2, :cond_b

    .line 516
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_10

    .line 518
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 520
    :goto_10
    monitor-exit v0

    .line 521
    return-void

    .line 520
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 5
    .param p1, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v1

    .line 534
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 535
    const/4 v0, 0x1

    .line 537
    :cond_d
    monitor-exit v1

    .line 538
    return v0

    .line 537
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    .local v0, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    const/4 v1, 0x0

    .line 544
    .local v1, "tmp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 545
    return-object v0

    .line 548
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v2

    .line 549
    :try_start_c
    iget-object v3, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 550
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/Pageboost$PageboostAppInfo;>;"
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 551
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-object v1, v4

    .line 552
    iget-object v4, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 553
    move-object v0, v1

    .line 557
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/Pageboost$PageboostAppInfo;>;"
    :cond_28
    monitor-exit v2

    .line 558
    return-object v0

    .line 557
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/server/am/Pageboost$PageboostAppInfo;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 604
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0

    .line 605
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 606
    .local v2, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    .end local v2    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    goto :goto_9

    .line 608
    :cond_1d
    monitor-exit v0

    .line 609
    return-void

    .line 608
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 5
    .param p1, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v1

    .line 526
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 527
    monitor-exit v1

    .line 528
    return v0

    .line 527
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v2
.end method

.method public removeFromName(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, "ret":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 565
    return-object v0

    .line 567
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v1

    .line 568
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/Pageboost$PageboostAppInfo;>;"
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 569
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 570
    .local v3, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    iget-object v4, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 571
    move-object v0, v3

    .line 572
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 573
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove app @ runtime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    goto :goto_46

    .line 576
    .end local v3    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :cond_45
    goto :goto_11

    .line 577
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/Pageboost$PageboostAppInfo;>;"
    :cond_46
    :goto_46
    monitor-exit v1

    .line 578
    return-object v0

    .line 577
    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_b .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public removeNotInstalled()V
    .registers 7

    .line 582
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0

    .line 583
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/Pageboost$PageboostAppInfo;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 585
    .local v2, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    iget v3, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    if-nez v3, :cond_37

    .line 586
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 587
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove not installed app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v2    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :cond_37
    goto :goto_9

    .line 590
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/Pageboost$PageboostAppInfo;>;"
    :cond_38
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 594
    const-string v0, ""

    .line 595
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v1

    .line 596
    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 597
    .local v3, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 598
    .end local v3    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    goto :goto_b

    .line 599
    :cond_31
    monitor-exit v1

    .line 600
    return-object v0

    .line 599
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw v2
.end method
