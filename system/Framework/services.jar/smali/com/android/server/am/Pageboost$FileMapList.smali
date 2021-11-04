.class final Lcom/android/server/am/Pageboost$FileMapList;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileMapList"
.end annotation


# static fields
.field private static final mNodeName:Ljava/lang/String; = "filemap_list"


# instance fields
.field private mCorrectness:Z

.field private mFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPid:I


# direct methods
.method constructor <init>(I)V
    .registers 11
    .param p1, "pidnum"    # I

    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    .line 1476
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mPid:I

    .line 1477
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    .line 1480
    if-gtz p1, :cond_12

    .line 1481
    return-void

    .line 1483
    :cond_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1484
    .local v1, "pid":Ljava/lang/String;
    const-string v2, ""

    .line 1485
    .local v2, "target_file":Ljava/lang/String;
    iput p1, p0, Lcom/android/server/am/Pageboost$FileMapList;->mPid:I

    .line 1486
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filemap pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "filemap_list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1488
    :try_start_4d
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_57} :catch_90

    .line 1489
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x1

    :try_start_58
    iput-boolean v4, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    .line 1490
    const-string v4, ""

    .line 1491
    .local v4, "line":Ljava/lang/String;
    :goto_5c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_67

    .line 1492
    invoke-direct {p0, v4}, Lcom/android/server/am/Pageboost$FileMapList;->add(Ljava/lang/String;)V

    goto :goto_5c

    .line 1494
    :cond_67
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", done correctly"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_58 .. :try_end_82} :catchall_86

    .line 1495
    .end local v4    # "line":Ljava/lang/String;
    :try_start_82
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_90

    .line 1498
    .end local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_ae

    .line 1488
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_86
    move-exception v4

    :try_start_87
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception v6

    :try_start_8c
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "pid":Ljava/lang/String;
    .end local v2    # "target_file":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/am/Pageboost$FileMapList;
    .end local p1    # "pidnum":I
    :goto_8f
    throw v4
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_90} :catch_90

    .line 1495
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "pid":Ljava/lang/String;
    .restart local v2    # "target_file":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/am/Pageboost$FileMapList;
    .restart local p1    # "pidnum":I
    :catch_90
    move-exception v3

    .line 1496
    .local v3, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", aborted"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    .line 1499
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_ae
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/Pageboost$FileMapList;)Ljava/util/Hashtable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Pageboost$FileMapList;

    .line 1473
    iget-object v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    return-object v0
.end method

.method private add(Ljava/lang/String;)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;

    .line 1502
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1503
    iget-object v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    :cond_14
    return-void
.end method


# virtual methods
.method public contain(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 1508
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isCorrect()Z
    .registers 2

    .line 1512
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    return v0
.end method
