.class final Lcom/android/server/am/Pageboost$FileMapInfo;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileMapInfo"
.end annotation


# static fields
.field private static final mNodeName:Ljava/lang/String; = "filemap_info"


# instance fields
.field private mCorrectness:Z

.field private mPid:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "pidnum"    # I

    .line 1521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1518
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    .line 1519
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    .line 1522
    if-gtz p1, :cond_b

    .line 1523
    return-void

    .line 1525
    :cond_b
    iput p1, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    .line 1526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    .line 1527
    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/am/Pageboost$FileMapInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J
    .registers 6
    .param p0, "x0"    # Lcom/android/server/am/Pageboost$FileMapInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 1516
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/Pageboost$FileMapInfo;->getFileMapInfo(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method private getFileMapInfo(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J
    .registers 27
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "toDB"    # Z
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "apkPath"    # Ljava/lang/String;

    .line 1532
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 1533
    .local v2, "ret":J
    const-wide/16 v4, 0x0

    .line 1535
    .local v4, "dbsize_ret":J
    iget-boolean v0, v1, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    if-nez v0, :cond_c

    .line 1536
    const/4 v0, 0x0

    return-object v0

    .line 1539
    :cond_c
    iget v0, v1, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1540
    .local v6, "pid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "filemap_info"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1542
    .local v7, "target_file":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_2e
    new-instance v0, Ljava/io/FileWriter;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_111

    move-object v11, v0

    .line 1543
    .local v11, "fw":Ljava/io/FileWriter;
    move-object/from16 v14, p1

    :try_start_3b
    invoke-virtual {v11, v14}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1545
    const/4 v0, 0x0

    .line 1546
    .local v0, "previ":I
    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v7, v12}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    invoke-static {v12}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v12

    move-object v13, v12

    .line 1547
    .local v13, "bytes":[B
    if-eqz p2, :cond_4e

    .line 1548
    array-length v12, v13
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_105

    int-to-long v4, v12

    .line 1550
    :cond_4e
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4f
    :try_start_4f
    array-length v15, v13

    if-ge v12, v15, :cond_f1

    .line 1551
    aget-byte v15, v13, v12

    const/16 v10, 0xa

    if-ne v15, v10, :cond_e0

    .line 1552
    invoke-static {v13, v0, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 1553
    .local v10, "arr2":[B
    new-instance v15, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v10, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v9, v15

    .line 1554
    .local v9, "arr2str":Ljava/lang/String;
    const-string v15, " "

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1555
    .local v15, "numbers":[Ljava/lang/String;
    array-length v8, v15

    const/4 v1, 0x2

    if-ne v8, v1, :cond_ca

    .line 1556
    const/4 v1, 0x0

    aget-object v8, v15, v1

    const-string/jumbo v1, "mapped"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_78
    .catchall {:try_start_4f .. :try_end_78} :catchall_100

    if-eqz v1, :cond_8e

    .line 1557
    const/4 v1, 0x1

    :try_start_7b
    aget-object v8, v15, v1

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_105

    .line 1558
    .local v16, "size":J
    const-wide/16 v19, 0x1000

    mul-long v19, v19, v16

    add-long v2, v2, v19

    .line 1559
    add-int/lit8 v0, v12, 0x1

    .line 1560
    .end local v16    # "size":J
    move-wide/from16 v20, v2

    move-object v2, v13

    goto/16 :goto_e5

    .line 1561
    :cond_8e
    const/4 v1, 0x0

    :try_start_8f
    aget-object v8, v15, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v8, v15

    .end local v15    # "numbers":[Ljava/lang/String;
    .local v8, "numbers":[Ljava/lang/String;
    move v15, v1

    .line 1562
    .local v15, "offset":I
    const/4 v1, 0x1

    aget-object v16, v8, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_100

    move/from16 v19, v16

    .line 1563
    .local v19, "arrsize":I
    move/from16 v17, v0

    .end local v0    # "previ":I
    .local v17, "previ":I
    add-int/lit8 v0, v12, 0x1

    add-int v16, v12, v19

    move-wide/from16 v20, v2

    .end local v2    # "ret":J
    .local v20, "ret":J
    add-int/lit8 v2, v16, 0x1

    :try_start_aa
    invoke-static {v13, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    .line 1564
    .local v16, "data":[B
    add-int v0, v12, v19

    add-int/2addr v0, v1

    .line 1565
    .end local v12    # "i":I
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 1568
    .end local v17    # "previ":I
    .local v1, "previ":I
    if-eqz p2, :cond_c6

    .line 1569
    # getter for: Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1600()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/16 v18, 0x0

    move-object v2, v13

    .end local v13    # "bytes":[B
    .local v2, "bytes":[B
    move-object/from16 v13, p3

    move-object/from16 v14, p1

    move/from16 v17, v19

    invoke-static/range {v12 .. v18}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto :goto_c7

    .line 1568
    .end local v2    # "bytes":[B
    .restart local v13    # "bytes":[B
    :cond_c6
    move-object v2, v13

    .line 1571
    .end local v13    # "bytes":[B
    .end local v15    # "offset":I
    .end local v16    # "data":[B
    .end local v19    # "arrsize":I
    .restart local v2    # "bytes":[B
    :goto_c7
    move v12, v0

    move v0, v1

    goto :goto_e5

    .line 1573
    .end local v1    # "previ":I
    .end local v8    # "numbers":[Ljava/lang/String;
    .end local v20    # "ret":J
    .local v0, "previ":I
    .local v2, "ret":J
    .restart local v12    # "i":I
    .restart local v13    # "bytes":[B
    .local v15, "numbers":[Ljava/lang/String;
    :cond_ca
    move/from16 v17, v0

    move-wide/from16 v20, v2

    move-object v2, v13

    move-object v8, v15

    .end local v0    # "previ":I
    .end local v13    # "bytes":[B
    .end local v15    # "numbers":[Ljava/lang/String;
    .local v2, "bytes":[B
    .restart local v8    # "numbers":[Ljava/lang/String;
    .restart local v17    # "previ":I
    .restart local v20    # "ret":J
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unknown error during parsing of filemap_info"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_aa .. :try_end_da} :catchall_db

    .line 1574
    goto :goto_f6

    .line 1542
    .end local v2    # "bytes":[B
    .end local v8    # "numbers":[Ljava/lang/String;
    .end local v9    # "arr2str":Ljava/lang/String;
    .end local v10    # "arr2":[B
    .end local v12    # "i":I
    .end local v17    # "previ":I
    :catchall_db
    move-exception v0

    move-object v1, v0

    move-wide/from16 v2, v20

    goto :goto_107

    .line 1551
    .end local v20    # "ret":J
    .restart local v0    # "previ":I
    .local v2, "ret":J
    .restart local v12    # "i":I
    .restart local v13    # "bytes":[B
    :cond_e0
    move/from16 v17, v0

    move-wide/from16 v20, v2

    move-object v2, v13

    .line 1550
    .end local v13    # "bytes":[B
    .local v2, "bytes":[B
    .restart local v20    # "ret":J
    :goto_e5
    const/4 v1, 0x1

    add-int/2addr v12, v1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object v13, v2

    move-wide/from16 v2, v20

    goto/16 :goto_4f

    .end local v20    # "ret":J
    .local v2, "ret":J
    .restart local v13    # "bytes":[B
    :cond_f1
    move/from16 v17, v0

    move-wide/from16 v20, v2

    move-object v2, v13

    .line 1578
    .end local v0    # "previ":I
    .end local v2    # "ret":J
    .end local v12    # "i":I
    .end local v13    # "bytes":[B
    .restart local v20    # "ret":J
    :goto_f6
    :try_start_f6
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_f9} :catch_fc

    .line 1580
    .end local v11    # "fw":Ljava/io/FileWriter;
    move-wide/from16 v2, v20

    goto :goto_115

    .line 1578
    :catch_fc
    move-exception v0

    move-wide/from16 v2, v20

    goto :goto_112

    .line 1542
    .end local v20    # "ret":J
    .restart local v2    # "ret":J
    .restart local v11    # "fw":Ljava/io/FileWriter;
    :catchall_100
    move-exception v0

    move-wide/from16 v20, v2

    move-object v1, v0

    .end local v2    # "ret":J
    .restart local v20    # "ret":J
    goto :goto_107

    .end local v20    # "ret":J
    .restart local v2    # "ret":J
    :catchall_105
    move-exception v0

    move-object v1, v0

    :goto_107
    :try_start_107
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10b

    goto :goto_110

    :catchall_10b
    move-exception v0

    move-object v8, v0

    :try_start_10d
    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "ret":J
    .end local v4    # "dbsize_ret":J
    .end local v6    # "pid":Ljava/lang/String;
    .end local v7    # "target_file":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/am/Pageboost$FileMapInfo;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "toDB":Z
    .end local p3    # "tableName":Ljava/lang/String;
    .end local p4    # "apkPath":Ljava/lang/String;
    :goto_110
    throw v1
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_111} :catch_111

    .line 1578
    .end local v11    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "ret":J
    .restart local v4    # "dbsize_ret":J
    .restart local v6    # "pid":Ljava/lang/String;
    .restart local v7    # "target_file":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/am/Pageboost$FileMapInfo;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "toDB":Z
    .restart local p3    # "tableName":Ljava/lang/String;
    .restart local p4    # "apkPath":Ljava/lang/String;
    :catch_111
    move-exception v0

    .line 1579
    .local v0, "e":Ljava/lang/Exception;
    :goto_112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1582
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_115
    const/4 v1, 0x2

    new-array v0, v1, [J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    return-object v0
.end method


# virtual methods
.method public isCorrect()Z
    .registers 2

    .line 1586
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    return v0
.end method
