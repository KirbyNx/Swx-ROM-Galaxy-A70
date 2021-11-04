.class final Lcom/android/server/am/Pageboost$HeimdalldPkgManager;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeimdalldPkgManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    }
.end annotation


# static fields
.field private static final BIGDATA_FILE:Ljava/lang/String; = "/data/misc/pageboost/heimdall_last_bigdata_string"

.field private static pkgInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3500()V
    .registers 0

    .line 2585
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->init()V

    return-void
.end method

.method static synthetic access$3700(Ljava/lang/String;IZZ)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 2585
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->updatePkgInfoList(Ljava/lang/String;IZZ)V

    return-void
.end method

.method static synthetic access$3900()V
    .registers 0

    .line 2585
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->dumpPkgInfoListToBigdata()V

    return-void
.end method

.method static synthetic access$4600()Ljava/lang/String;
    .registers 1

    .line 2585
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->getPkgInfoListString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()V
    .registers 0

    .line 2585
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->exportPkgInfoList()V

    return-void
.end method

.method private static declared-synchronized dumpPkgInfoListToBigdata()V
    .registers 6

    const-class v0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;

    monitor-enter v0

    .line 2701
    :try_start_3
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dumping data to bigdata"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    sget-object v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    .line 2703
    .local v2, "p":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->toJsonData()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->access$4000(Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    # invokes: Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->toJsonData()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->access$4000(Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->sendData(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->access$4100(Ljava/lang/String;)V

    .line 2705
    .end local v2    # "p":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    goto :goto_12

    .line 2706
    :cond_42
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "resetPkgInfoList"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->resetPkgInfoList()V
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_51

    .line 2708
    monitor-exit v0

    return-void

    .line 2700
    :catchall_51
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized exportPkgInfoList()V
    .registers 7

    const-class v0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;

    monitor-enter v0

    .line 2677
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/pageboost/heimdall_last_bigdata_string"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2678
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2679
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2682
    :cond_13
    sget-object v2, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_64
    .catchall {:try_start_3 .. :try_end_19} :catchall_62

    if-nez v2, :cond_1d

    .line 2683
    monitor-exit v0

    return-void

    .line 2686
    :cond_1d
    :try_start_1d
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/data/misc/pageboost/heimdall_last_bigdata_string"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2688
    .local v2, "writer":Ljava/io/OutputStreamWriter;
    sget-object v3, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    .line 2689
    .local v4, "p":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2690
    nop

    .end local v4    # "p":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    goto :goto_2f

    .line 2691
    :cond_55
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 2692
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "exportPkgInfoList"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_61} :catch_64
    .catchall {:try_start_1d .. :try_end_61} :catchall_62

    .line 2696
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_71

    .line 2676
    :catchall_62
    move-exception v1

    goto :goto_73

    .line 2693
    :catch_64
    move-exception v1

    .line 2694
    .local v1, "e":Ljava/lang/Exception;
    :try_start_65
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exportPkgInfoList: invalid bigdata file data"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_62

    .line 2697
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_71
    monitor-exit v0

    return-void

    .line 2676
    :goto_73
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getPkgInfoListString()Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;

    monitor-enter v0

    .line 2737
    :try_start_3
    const-string v1, ""

    .line 2738
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    .line 2739
    .local v3, "p":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->toJsonData()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->access$4000(Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_33

    move-object v1, v4

    .line 2740
    .end local v3    # "p":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    goto :goto_b

    .line 2741
    :cond_31
    monitor-exit v0

    return-object v1

    .line 2736
    .end local v1    # "str":Ljava/lang/String;
    :catchall_33
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized importPkgInfoList()V
    .registers 8

    const-class v0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;

    monitor-enter v0

    .line 2653
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/pageboost/heimdall_last_bigdata_string"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2654
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_63
    .catchall {:try_start_3 .. :try_end_e} :catchall_61

    if-nez v2, :cond_12

    .line 2655
    monitor-exit v0

    return-void

    .line 2657
    :cond_12
    :try_start_12
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/data/misc/pageboost/heimdall_last_bigdata_string"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2661
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_5a

    .line 2662
    new-instance v3, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    invoke-direct {v3, v4}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;-><init>(Ljava/lang/String;)V

    .line 2663
    .local v3, "pkgInfo":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    sget-object v5, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2664
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "importPkgInfoList: read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", parsed as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2666
    .end local v3    # "pkgInfo":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    :cond_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 2667
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_60} :catch_63
    .catchall {:try_start_12 .. :try_end_60} :catchall_61

    .line 2671
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_71

    .line 2652
    :catchall_61
    move-exception v1

    goto :goto_73

    .line 2668
    :catch_63
    move-exception v1

    .line 2669
    .local v1, "e":Ljava/lang/Exception;
    :try_start_64
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "invalid bigdata file data"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_61

    .line 2672
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_71
    monitor-exit v0

    return-void

    .line 2652
    :goto_73
    monitor-exit v0

    throw v1
.end method

.method private static init()V
    .registers 0

    .line 2643
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->resetPkgInfoList()V

    .line 2644
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->importPkgInfoList()V

    .line 2645
    return-void
.end method

.method private static declared-synchronized resetPkgInfoList()V
    .registers 2

    const-class v0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;

    monitor-enter v0

    .line 2648
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 2649
    monitor-exit v0

    return-void

    .line 2647
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized updatePkgInfoList(Ljava/lang/String;IZZ)V
    .registers 10
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "memUsage"    # I
    .param p2, "isGlbKill"    # Z
    .param p3, "isRealKill"    # Z

    const-class v0, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;

    monitor-enter v0

    .line 2712
    :try_start_3
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", memUsage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isGlbKill = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2714
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isRealKill = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2712
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    new-instance v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;-><init>(Ljava/lang/String;IZZ)V

    .line 2719
    .local v1, "pkgInfo":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    sget-object v2, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 2720
    sget-object v2, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    sget-object v3, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    move-object v1, v2

    .line 2722
    iget v2, v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->memUsage:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->memUsage:I

    .line 2723
    if-eqz p2, :cond_6d

    iget v2, v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    goto :goto_73

    .line 2724
    :cond_6d
    iget v2, v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    .line 2725
    :goto_73
    if-eqz p3, :cond_81

    iget v2, v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    goto :goto_81

    .line 2729
    :cond_7c
    sget-object v2, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2731
    :cond_81
    :goto_81
    sget-object v2, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;

    .line 2732
    .local v3, "p":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_a2

    .line 2733
    nop

    .end local v3    # "p":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    goto :goto_87

    .line 2734
    :cond_a0
    monitor-exit v0

    return-void

    .line 2711
    .end local v1    # "pkgInfo":Lcom/android/server/am/Pageboost$HeimdalldPkgManager$PkgInfo;
    .end local p0    # "pkgName":Ljava/lang/String;
    .end local p1    # "memUsage":I
    .end local p2    # "isGlbKill":Z
    .end local p3    # "isRealKill":Z
    :catchall_a2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
