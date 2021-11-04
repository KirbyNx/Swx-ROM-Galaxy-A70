.class final Lcom/android/server/am/Pageboost$IoRecord;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IoRecord"
.end annotation


# static fields
.field private static final MAX_RECORD_SIZE:J = 0x19000000L

.field private static final RESULT_BUF_END_MAGIC:I = -0x1

.field private static final mNodeName:Ljava/lang/String; = "io_record_control"


# instance fields
.field private is64bit:Z

.field private mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

.field public mBytesRecorded:J

.field private mCorrectness:Z

.field private mPid:I

.field private mPkg:Ljava/lang/String;

.field private mRecordDone:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 8
    .param p1, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p2, "pidnum"    # I

    .line 1603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1594
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    .line 1598
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    .line 1599
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    .line 1600
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    .line 1604
    if-gtz p2, :cond_11

    .line 1605
    return-void

    .line 1608
    :cond_11
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1609
    .local v0, "pid":Ljava/lang/String;
    const-string v1, ""

    .line 1611
    .local v1, "target_file":Ljava/lang/String;
    iput p2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    .line 1612
    iget-object v2, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPkg:Ljava/lang/String;

    .line 1613
    iput-object p1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "io_record_control"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-static {v2, v3}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    .line 1616
    if-eqz v2, :cond_6a

    .line 1617
    iget v2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-static {v2}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    .line 1618
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IoRecord pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", started correctly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_6a
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/Pageboost$IoRecord;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Pageboost$IoRecord;

    .line 1590
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    return v0
.end method

.method private static createBitmap(I)[B
    .registers 3
    .param p0, "nrpages"    # I

    .line 1674
    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 1675
    .local v0, "bitmapsize":I
    new-array v1, v0, [B

    return-object v1
.end method

.method public static emergencyReset()V
    .registers 2

    .line 1623
    const-string v0, "/proc/self/io_record_control"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1624
    return-void
.end method

.method private static fillBitmap([BIIZ)V
    .registers 10
    .param p0, "bitmap"    # [B
    .param p1, "startidx"    # I
    .param p2, "endidx"    # I
    .param p3, "set"    # Z

    .line 1684
    rem-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 1685
    div-int/lit8 v0, p1, 0x8

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 1686
    .local v0, "fillbyte":I
    rem-int/lit8 v2, p1, 0x8

    .local v2, "i":I
    :goto_d
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1e

    .line 1687
    if-eqz p3, :cond_17

    .line 1688
    shl-int v3, v1, v2

    or-int/2addr v0, v3

    goto :goto_1b

    .line 1690
    :cond_17
    shl-int v3, v1, v2

    not-int v3, v3

    and-int/2addr v0, v3

    .line 1686
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1693
    .end local v2    # "i":I
    :cond_1e
    div-int/lit8 v2, p1, 0x8

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    .line 1694
    div-int/lit8 v2, p1, 0x8

    add-int/2addr v2, v1

    mul-int/lit8 p1, v2, 0x8

    .line 1698
    .end local v0    # "fillbyte":I
    :cond_2a
    div-int/lit8 v0, p1, 0x8

    .line 1699
    .local v0, "fill_bytes_start":I
    div-int/lit8 v2, p2, 0x8

    .line 1700
    .local v2, "fill_bytes_end":I
    if-ge v0, v2, :cond_3a

    .line 1701
    if-eqz p3, :cond_35

    .line 1702
    const/16 v3, 0xff

    .local v3, "fillbyte":I
    goto :goto_36

    .line 1704
    .end local v3    # "fillbyte":I
    :cond_35
    const/4 v3, 0x0

    .line 1706
    .restart local v3    # "fillbyte":I
    :goto_36
    int-to-byte v4, v3

    invoke-static {p0, v0, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1710
    .end local v3    # "fillbyte":I
    :cond_3a
    rem-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_5d

    .line 1711
    div-int/lit8 v3, p2, 0x8

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1712
    .restart local v3    # "fillbyte":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_45
    rem-int/lit8 v5, p2, 0x8

    if-ge v4, v5, :cond_56

    .line 1713
    if-eqz p3, :cond_4f

    .line 1714
    shl-int v5, v1, v4

    or-int/2addr v3, v5

    goto :goto_53

    .line 1716
    :cond_4f
    shl-int v5, v1, v4

    not-int v5, v5

    and-int/2addr v3, v5

    .line 1712
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 1719
    .end local v4    # "i":I
    :cond_56
    div-int/lit8 v1, p2, 0x8

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 1721
    .end local v3    # "fillbyte":I
    :cond_5d
    return-void
.end method

.method private parsingResult([B)J
    .registers 26
    .param p1, "bytes"    # [B

    .line 1727
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1728
    .local v2, "cursor":I
    const-wide/16 v3, 0x0

    .line 1730
    .local v3, "ret":J
    const/4 v5, 0x0

    .line 1731
    .local v5, "fn":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1733
    .local v6, "overLimit":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/Pageboost$IoRecord;->isCorrect()Z

    move-result v7

    const-wide/16 v8, -0x1

    if-nez v7, :cond_12

    .line 1734
    return-wide v8

    .line 1737
    :cond_12
    # getter for: Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1600()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v10, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v10, v10, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1738
    # getter for: Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1600()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v10, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v10, v10, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1739
    .local v7, "tableName":Ljava/lang/String;
    if-nez v7, :cond_35

    .line 1740
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "db table failed"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    return-wide v8

    .line 1744
    :cond_35
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "db insert start"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :goto_3e
    array-length v8, v1

    if-ge v2, v8, :cond_116

    .line 1746
    const/4 v8, 0x0

    .line 1747
    .local v8, "lastBitmap":[B
    const/4 v9, -0x1

    .line 1748
    .local v9, "lastOffset":I
    const/4 v10, -0x1

    .line 1750
    .local v10, "lastSize":I
    add-int/lit8 v11, v2, 0x4

    invoke-static {v1, v2, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 1751
    .local v11, "arr":[B
    invoke-static {v11}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v15

    .line 1752
    .local v15, "pathsize":I
    add-int/lit8 v2, v2, 0x4

    .line 1754
    const/4 v14, -0x1

    if-ne v15, v14, :cond_55

    .line 1755
    goto/16 :goto_116

    .line 1758
    :cond_55
    add-int v12, v2, v15

    invoke-static {v1, v2, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 1759
    new-instance v12, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v11, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v5, v12

    .line 1760
    add-int/2addr v2, v15

    .line 1765
    :goto_64
    const/16 v18, 0x0

    .line 1767
    .local v18, "tmp_bitmap":[B
    add-int/lit8 v12, v2, 0x4

    invoke-static {v1, v2, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 1768
    invoke-static {v11}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v13

    .line 1769
    .local v13, "offset":I
    add-int/lit8 v2, v2, 0x4

    .line 1770
    add-int/lit8 v12, v2, 0x4

    invoke-static {v1, v2, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v19

    .line 1771
    .end local v11    # "arr":[B
    .local v19, "arr":[B
    invoke-static/range {v19 .. v19}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v11

    .line 1772
    .local v11, "nrpages":I
    add-int/lit8 v2, v2, 0x4

    .line 1775
    if-ne v13, v14, :cond_85

    if-ne v11, v14, :cond_85

    .line 1776
    move/from16 v16, v15

    goto :goto_a1

    .line 1780
    :cond_85
    iget-boolean v12, v0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    invoke-static {v5, v12}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isRecordingTarget(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_90

    .line 1781
    move-object/from16 v11, v19

    goto :goto_64

    .line 1785
    :cond_90
    move/from16 v16, v15

    .end local v15    # "pathsize":I
    .local v16, "pathsize":I
    int-to-long v14, v11

    const-wide/16 v20, 0x1000

    mul-long v14, v14, v20

    add-long/2addr v14, v3

    const-wide/32 v22, 0x19000000

    cmp-long v12, v14, v22

    if-lez v12, :cond_be

    .line 1786
    const/4 v6, 0x1

    .line 1787
    nop

    .line 1813
    .end local v11    # "nrpages":I
    .end local v13    # "offset":I
    .end local v18    # "tmp_bitmap":[B
    :goto_a1
    if-eqz v8, :cond_b7

    .line 1814
    # getter for: Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1600()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    array-length v15, v8

    const/16 v17, 0x0

    move-object v12, v7

    move-object v13, v5

    move v14, v9

    move/from16 v22, v16

    move/from16 v16, v15

    .end local v16    # "pathsize":I
    .local v22, "pathsize":I
    move-object v15, v8

    invoke-static/range {v11 .. v17}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 1815
    const/4 v8, 0x0

    goto :goto_b9

    .line 1813
    .end local v22    # "pathsize":I
    .restart local v16    # "pathsize":I
    :cond_b7
    move/from16 v22, v16

    .line 1817
    .end local v16    # "pathsize":I
    .restart local v22    # "pathsize":I
    :goto_b9
    if-eqz v6, :cond_bd

    .line 1818
    goto/16 :goto_116

    .line 1820
    .end local v8    # "lastBitmap":[B
    .end local v9    # "lastOffset":I
    .end local v10    # "lastSize":I
    :cond_bd
    goto :goto_3e

    .line 1789
    .end local v22    # "pathsize":I
    .restart local v8    # "lastBitmap":[B
    .restart local v9    # "lastOffset":I
    .restart local v10    # "lastSize":I
    .restart local v11    # "nrpages":I
    .restart local v13    # "offset":I
    .restart local v16    # "pathsize":I
    .restart local v18    # "tmp_bitmap":[B
    :cond_be
    move/from16 v22, v16

    .end local v16    # "pathsize":I
    .restart local v22    # "pathsize":I
    int-to-long v14, v11

    mul-long v14, v14, v20

    add-long/2addr v3, v14

    .line 1791
    if-eqz v8, :cond_d8

    .line 1792
    move-object v12, v8

    move/from16 v20, v13

    .end local v13    # "offset":I
    .local v20, "offset":I
    move v13, v9

    const/16 v21, -0x1

    move v14, v10

    move/from16 v15, v20

    move/from16 v16, v11

    move/from16 v17, v22

    invoke-static/range {v12 .. v17}, Lcom/android/server/am/Pageboost$IoRecord;->resizeBitmap([BIIIII)[B

    move-result-object v18

    goto :goto_dc

    .line 1791
    .end local v20    # "offset":I
    .restart local v13    # "offset":I
    :cond_d8
    move/from16 v20, v13

    const/16 v21, -0x1

    .line 1796
    .end local v13    # "offset":I
    .restart local v20    # "offset":I
    :goto_dc
    if-nez v18, :cond_107

    .line 1798
    if-eqz v8, :cond_f6

    .line 1799
    # getter for: Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1600()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    array-length v15, v8

    const/16 v17, 0x0

    move v14, v11

    .end local v11    # "nrpages":I
    .local v14, "nrpages":I
    move-object v11, v12

    move-object v12, v7

    move-object v13, v5

    move/from16 v23, v14

    .end local v14    # "nrpages":I
    .local v23, "nrpages":I
    move v14, v9

    move/from16 v16, v15

    move-object v15, v8

    invoke-static/range {v11 .. v17}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 1800
    const/4 v8, 0x0

    goto :goto_f8

    .line 1798
    .end local v23    # "nrpages":I
    .restart local v11    # "nrpages":I
    :cond_f6
    move/from16 v23, v11

    .line 1803
    .end local v11    # "nrpages":I
    .restart local v23    # "nrpages":I
    :goto_f8
    invoke-static/range {v23 .. v23}, Lcom/android/server/am/Pageboost$IoRecord;->createBitmap(I)[B

    move-result-object v8

    .line 1804
    const/4 v11, 0x0

    const/4 v12, 0x1

    move/from16 v13, v23

    .end local v23    # "nrpages":I
    .local v13, "nrpages":I
    invoke-static {v8, v11, v13, v12}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap([BIIZ)V

    .line 1805
    move/from16 v9, v20

    .line 1806
    move v10, v13

    goto :goto_10e

    .line 1808
    .end local v13    # "nrpages":I
    .restart local v11    # "nrpages":I
    :cond_107
    move v13, v11

    .end local v11    # "nrpages":I
    .restart local v13    # "nrpages":I
    move-object/from16 v8, v18

    .line 1809
    add-int v11, v20, v13

    sub-int/2addr v11, v9

    move v10, v11

    .line 1811
    .end local v13    # "nrpages":I
    .end local v18    # "tmp_bitmap":[B
    .end local v20    # "offset":I
    :goto_10e
    move-object/from16 v11, v19

    move/from16 v14, v21

    move/from16 v15, v22

    goto/16 :goto_64

    .line 1821
    .end local v8    # "lastBitmap":[B
    .end local v9    # "lastOffset":I
    .end local v10    # "lastSize":I
    .end local v19    # "arr":[B
    .end local v22    # "pathsize":I
    :cond_116
    :goto_116
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "db insert done, overLimit "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iput-wide v3, v0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    .line 1824
    return-wide v3
.end method

.method private static readInt([B)I
    .registers 3
    .param p0, "bytes"    # [B

    .line 1643
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    .line 1644
    .local v0, "value":I
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 1645
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 1646
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 1647
    return v0
.end method

.method private static resizeBitmap([BIIIII)[B
    .registers 13
    .param p0, "oldBitmap"    # [B
    .param p1, "lastOffset"    # I
    .param p2, "lastSize"    # I
    .param p3, "addedOffset"    # I
    .param p4, "addedSize"    # I
    .param p5, "threshold"    # I

    .line 1656
    const/4 v0, 0x0

    .line 1657
    .local v0, "ret":[B
    add-int v1, p1, p2

    sub-int v1, p3, v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    int-to-long v1, v1

    .line 1660
    .local v1, "zerofill_bytes":J
    int-to-long v3, p5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_29

    .line 1661
    add-int v3, p3, p4

    sub-int/2addr v3, p1

    .line 1662
    .local v3, "nrpages":I
    invoke-static {v3}, Lcom/android/server/am/Pageboost$IoRecord;->createBitmap(I)[B

    move-result-object v0

    .line 1664
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1666
    sub-int v4, p3, p1

    invoke-static {v0, p2, v4, v5}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap([BIIZ)V

    .line 1668
    sub-int v4, p3, p1

    add-int v5, p3, p4

    sub-int/2addr v5, p1

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap([BIIZ)V

    .line 1670
    .end local v3    # "nrpages":I
    :cond_29
    return-object v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "targetFileName"    # Ljava/lang/String;
    .param p1, "writeStr"    # Ljava/lang/String;

    .line 1627
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_20

    .line 1628
    .local v0, "fw":Ljava/io/FileWriter;
    :try_start_a
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 1630
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_20

    .line 1633
    .end local v0    # "fw":Ljava/io/FileWriter;
    nop

    .line 1634
    const/4 v0, 0x1

    return v0

    .line 1627
    .restart local v0    # "fw":Ljava/io/FileWriter;
    :catchall_16
    move-exception v1

    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    :try_start_1c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "targetFileName":Ljava/lang/String;
    .end local p1    # "writeStr":Ljava/lang/String;
    :goto_1f
    throw v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_20

    .line 1630
    .end local v0    # "fw":Ljava/io/FileWriter;
    .restart local p0    # "targetFileName":Ljava/lang/String;
    .restart local p1    # "writeStr":Ljava/lang/String;
    :catch_20
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1632
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .registers 2

    .line 1638
    iget-object v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    return-object v0
.end method

.method public getResultFromKernel()J
    .registers 11

    .line 1830
    const/4 v0, 0x0

    .line 1831
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->isCorrect()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_a

    .line 1832
    return-wide v2

    .line 1836
    :cond_a
    const-string v1, ""

    .line 1838
    .local v1, "target_file":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 1840
    .local v4, "bytes_recorded":J
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IoRecord pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "io_record_control"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1844
    const-string v6, "3"

    invoke-static {v1, v6}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_58

    .line 1845
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "StopRecording Failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    return-wide v2

    .line 1850
    :cond_58
    const-string v6, "4"

    invoke-static {v1, v6}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 1851
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PostRecording Failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    return-wide v2

    .line 1857
    :cond_6a
    const/4 v6, 0x0

    :try_start_6b
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v1, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v6

    .line 1858
    .local v6, "bytes":[B
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", result_size : "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-direct {p0, v6}, Lcom/android/server/am/Pageboost$IoRecord;->parsingResult([B)J

    move-result-wide v7
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_9a} :catch_bd

    move-wide v4, v7

    .line 1863
    nop

    .line 1866
    const-string v7, "1"

    invoke-static {v1, v7}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    .line 1867
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "iorecord re-init Failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    return-wide v2

    .line 1871
    :cond_af
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-ltz v7, :cond_b6

    .line 1872
    const/4 v0, 0x1

    .line 1875
    :cond_b6
    if-eqz v0, :cond_bc

    .line 1877
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    .line 1878
    return-wide v4

    .line 1880
    :cond_bc
    return-wide v2

    .line 1860
    .end local v6    # "bytes":[B
    :catch_bd
    move-exception v6

    .line 1861
    .local v6, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CatRecordedData Failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    return-wide v2
.end method

.method public isCorrect()Z
    .registers 2

    .line 1884
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    return v0
.end method
