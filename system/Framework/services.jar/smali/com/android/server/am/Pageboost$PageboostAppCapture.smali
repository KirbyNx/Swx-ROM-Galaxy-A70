.class final Lcom/android/server/am/Pageboost$PageboostAppCapture;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostAppCapture"
.end annotation


# static fields
.field private static final CAPTURE_FILE_APK:I = 0x1

.field private static final CAPTURE_FILE_MAP:I = 0x2

.field private static final CAPTURE_FILE_MAP_TIMEOUT:I = 0x3e8

.field private static final CAPTURE_RECORD:I = 0x3

.field private static final DATA_AMOUNT_PER_BYTE:I = 0x8000

.field private static final MAX_APK_FILE_SIZE:I = 0x3200000

.field private static final MAX_MAP_DBENTRY_SIZE:I = 0x20000

.field private static final MAX_MAP_FILE_SIZE:I = 0x9600000

.field private static final PAGEBOOST_IO_PREFETCH_LEVEL:I

.field private static record_ongoing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1893
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 1895
    nop

    .line 1896
    const-string/jumbo v0, "ro.config.pageboost.io_prefetch.level"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    .line 1895
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1905
    return-void
.end method

.method static synthetic access$4200()I
    .registers 1

    .line 1888
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    return v0
.end method

.method public static capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 4
    .param p0, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p1, "pid"    # I

    .line 1968
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_9

    .line 1969
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto :goto_c

    .line 1971
    :cond_9
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->snapshot(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    .line 1973
    :goto_c
    return-void
.end method

.method public static captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V
    .registers 6
    .param p0, "rec"    # Lcom/android/server/am/Pageboost$IoRecord;

    .line 1991
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_73

    .line 1992
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->getApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    .line 1993
    .local v0, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 1994
    if-nez v0, :cond_18

    .line 1995
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "captureFinished requested for null app"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    return-void

    .line 1998
    :cond_18
    # getter for: Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z
    invoke-static {p0}, Lcom/android/server/am/Pageboost$IoRecord;->access$2000(Lcom/android/server/am/Pageboost$IoRecord;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1999
    sget v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedLevel(I)V

    .line 2000
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedSizeForPrefetch(JJ)V

    .line 2001
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureFinished success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 2004
    :cond_45
    invoke-static {}, Lcom/android/server/am/Pageboost$IoRecord;->emergencyReset()V

    .line 2005
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "captureFinished fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :goto_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordEnd,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z
    invoke-static {p0}, Lcom/android/server/am/Pageboost$IoRecord;->access$2000(Lcom/android/server/am/Pageboost$IoRecord;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 2009
    .end local v0    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :cond_73
    return-void
.end method

.method public static check64Bit(I)Z
    .registers 9
    .param p0, "pid"    # I

    .line 1924
    const/4 v0, 0x0

    .line 1925
    .local v0, "ret":Z
    if-gtz p0, :cond_4

    .line 1926
    return v0

    .line 1928
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/exe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1929
    .local v1, "target_file":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1930
    .local v2, "file":Ljava/io/File;
    :try_start_1f
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_59

    .line 1931
    .local v3, "f":Ljava/io/RandomAccessFile;
    const/4 v4, 0x6

    :try_start_28
    new-array v4, v4, [B

    .line 1932
    .local v4, "buf":[B
    const-string/jumbo v5, "\u007fELF"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 1933
    .local v5, "elf64":[B
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1939
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v4, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1940
    aget-byte v6, v4, v7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_48

    .line 1941
    const/4 v0, 0x1

    .line 1944
    :cond_48
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_4f

    .line 1945
    .end local v4    # "buf":[B
    .end local v5    # "elf64":[B
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_59

    .line 1948
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    goto :goto_5e

    .line 1930
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :catchall_4f
    move-exception v4

    :try_start_50
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v5

    :try_start_55
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ret":Z
    .end local v1    # "target_file":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "pid":I
    :goto_58
    throw v4
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_59

    .line 1945
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v0    # "ret":Z
    .restart local v1    # "target_file":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "pid":I
    :catch_59
    move-exception v3

    .line 1946
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1947
    const/4 v0, 0x0

    .line 1949
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5e
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "64 bit checked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return v0
.end method

.method public static isCaptureTarget(Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, "ret":Z
    if-eqz p0, :cond_2d

    .line 1911
    const-string v1, "/data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "/system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1912
    const-string v1, "/product"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1913
    :cond_1b
    const/4 v0, 0x1

    .line 1915
    const-string v1, "/data/misc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "(deleted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1916
    :cond_2c
    const/4 v0, 0x0

    .line 1920
    :cond_2d
    return v0
.end method

.method public static isRecordingCapture()Z
    .registers 2

    .line 1964
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isRecordingTarget(Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "is64bit"    # Z

    .line 1976
    const/4 v0, 0x0

    .line 1978
    .local v0, "ret":Z
    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1980
    if-eqz p1, :cond_15

    # getter for: Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1800()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1981
    const/4 v0, 0x1

    goto :goto_22

    .line 1982
    :cond_15
    if-nez p1, :cond_22

    # getter for: Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1983
    const/4 v0, 0x1

    .line 1986
    :cond_22
    :goto_22
    return v0
.end method

.method public static needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 3
    .param p0, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1954
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isFullyExecuted()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getCapturedLevel()I

    move-result v0

    sget v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    if-ge v0, v1, :cond_18

    .line 1957
    const/4 v0, 0x1

    return v0

    .line 1959
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static record(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 5
    .param p0, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p1, "pid"    # I

    .line 2012
    sget-boolean v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    if-eqz v0, :cond_1e

    .line 2013
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "record is ongoing. Abort for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    return-void

    .line 2017
    :cond_1e
    if-lez p1, :cond_58

    .line 2018
    new-instance v0, Lcom/android/server/am/Pageboost$IoRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/Pageboost$IoRecord;-><init>(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    .line 2019
    .local v0, "rec":Lcom/android/server/am/Pageboost$IoRecord;
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$IoRecord;->isCorrect()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2020
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 2021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordStart,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getGameApp()Z

    move-result v1

    const/16 v2, 0xf

    if-eqz v1, :cond_53

    .line 2023
    const v1, 0x88b8

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v2, v0, v1}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    goto :goto_58

    .line 2025
    :cond_53
    const/16 v1, 0x1388

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v2, v0, v1}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    .line 2029
    .end local v0    # "rec":Lcom/android/server/am/Pageboost$IoRecord;
    :cond_58
    :goto_58
    return-void
.end method

.method public static snapshot(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 32
    .param p0, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p1, "pid"    # I

    .line 2032
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 2033
    .local v2, "sizeCaptured":J
    const-wide/16 v4, 0x0

    .line 2034
    .local v4, "sizeMapCaptured":J
    const-wide/16 v6, 0x0

    .line 2035
    .local v6, "dbsizeMapCaptured":J
    const/4 v8, 0x0

    .line 2036
    .local v8, "ret":Z
    const-string v9, ""

    .line 2038
    .local v9, "target_file":Ljava/lang/String;
    # getter for: Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1800()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v10

    if-eqz v10, :cond_2b5

    # getter for: Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1800()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/Pageboost$FileMapList;->isCorrect()Z

    move-result v10

    if-nez v10, :cond_21

    move-object/from16 v21, v9

    goto/16 :goto_2b7

    .line 2041
    :cond_21
    # getter for: Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v10

    if-eqz v10, :cond_2b2

    # getter for: Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/Pageboost$FileMapList;->isCorrect()Z

    move-result v10

    if-nez v10, :cond_35

    move-object/from16 v21, v9

    goto/16 :goto_2b4

    .line 2045
    :cond_35
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IO Capture start for : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "pid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    # getter for: Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1600()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2047
    # getter for: Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1600()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2048
    .local v10, "tableName":Ljava/lang/String;
    if-nez v10, :cond_6e

    .line 2049
    return-void

    .line 2052
    :cond_6e
    const/4 v11, 0x2

    sget v13, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    if-gt v11, v13, :cond_1dd

    .line 2053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 2055
    .local v15, "startTime":J
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    move-result v11

    .line 2058
    .local v11, "is64bit":Z
    new-instance v13, Lcom/android/server/am/Pageboost$FileMapList;

    invoke-direct {v13, v1}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    .line 2060
    .local v13, "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    invoke-virtual {v13}, Lcom/android/server/am/Pageboost$FileMapList;->isCorrect()Z

    move-result v17

    if-eqz v17, :cond_1d6

    .line 2062
    # getter for: Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;
    invoke-static {v13}, Lcom/android/server/am/Pageboost$FileMapList;->access$2100(Lcom/android/server/am/Pageboost$FileMapList;)Ljava/util/Hashtable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_92
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_19b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Ljava/lang/String;

    .line 2063
    .local v14, "file":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a9

    .line 2064
    move/from16 v18, v8

    goto :goto_c7

    .line 2068
    :cond_a9
    if-eqz v11, :cond_b8

    move/from16 v18, v8

    .end local v8    # "ret":Z
    .local v18, "ret":Z
    # getter for: Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1800()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 2069
    goto :goto_c7

    .line 2068
    .end local v18    # "ret":Z
    .restart local v8    # "ret":Z
    :cond_b8
    move/from16 v18, v8

    .line 2070
    .end local v8    # "ret":Z
    .restart local v18    # "ret":Z
    :cond_ba
    if-nez v11, :cond_ca

    # getter for: Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 2071
    nop

    .line 2062
    .end local v14    # "file":Ljava/lang/String;
    .end local v18    # "ret":Z
    .restart local v8    # "ret":Z
    :goto_c7
    move/from16 v8, v18

    .end local v8    # "ret":Z
    .restart local v18    # "ret":Z
    goto :goto_92

    .line 2074
    .restart local v14    # "file":Ljava/lang/String;
    :cond_ca
    new-instance v8, Lcom/android/server/am/Pageboost$FileMapInfo;

    invoke-direct {v8, v1}, Lcom/android/server/am/Pageboost$FileMapInfo;-><init>(I)V

    .line 2075
    .local v8, "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    invoke-virtual {v8}, Lcom/android/server/am/Pageboost$FileMapInfo;->isCorrect()Z

    move-result v20

    move-object/from16 v21, v9

    .end local v9    # "target_file":Ljava/lang/String;
    .local v21, "target_file":Ljava/lang/String;
    const-string v9, "/"

    if-eqz v20, :cond_156

    .line 2076
    move/from16 v20, v11

    .end local v11    # "is64bit":Z
    .local v20, "is64bit":Z
    iget-object v11, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    move-object/from16 v22, v13

    const/4 v13, 0x1

    .end local v13    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    .local v22, "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    # invokes: Lcom/android/server/am/Pageboost$FileMapInfo;->getFileMapInfo(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J
    invoke-static {v8, v14, v13, v10, v11}, Lcom/android/server/am/Pageboost$FileMapInfo;->access$2200(Lcom/android/server/am/Pageboost$FileMapInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J

    move-result-object v11

    .line 2077
    .local v11, "tmp":[J
    if-eqz v11, :cond_153

    .line 2078
    const/16 v19, 0x0

    aget-wide v23, v11, v19

    .line 2079
    .local v23, "size":J
    aget-wide v25, v11, v13

    .line 2080
    .local v25, "dbsize":J
    const/4 v13, 0x1

    .line 2081
    .end local v18    # "ret":Z
    .local v13, "ret":Z
    add-long v2, v2, v23

    .line 2082
    add-long v4, v4, v23

    .line 2083
    add-long v6, v6, v25

    .line 2084
    const-wide/32 v27, 0x9600000

    cmp-long v18, v4, v27

    if-lez v18, :cond_11f

    .line 2085
    move-wide/from16 v27, v2

    .end local v2    # "sizeCaptured":J
    .local v27, "sizeCaptured":J
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v8

    .end local v8    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .local v29, "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    const-string v8, "IO Capture \'map\' over limit : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v8, 0x9600000

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    goto :goto_14b

    .line 2088
    .end local v27    # "sizeCaptured":J
    .end local v29    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .restart local v2    # "sizeCaptured":J
    .restart local v8    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    :cond_11f
    move-wide/from16 v27, v2

    move-object/from16 v29, v8

    .end local v2    # "sizeCaptured":J
    .end local v8    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .restart local v27    # "sizeCaptured":J
    .restart local v29    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    const-wide/32 v2, 0x20000

    cmp-long v2, v6, v2

    if-lez v2, :cond_14f

    .line 2089
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO Capture \'map\' over dbsize limit : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v8, 0x20000

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    nop

    .line 2102
    .end local v11    # "tmp":[J
    .end local v14    # "file":Ljava/lang/String;
    .end local v23    # "size":J
    .end local v25    # "dbsize":J
    .end local v29    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    :goto_14b
    move v8, v13

    move-wide/from16 v2, v27

    goto :goto_1a3

    .line 2088
    .restart local v11    # "tmp":[J
    .restart local v14    # "file":Ljava/lang/String;
    .restart local v23    # "size":J
    .restart local v25    # "dbsize":J
    .restart local v29    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    :cond_14f
    move v8, v13

    move-wide/from16 v2, v27

    goto :goto_15e

    .line 2077
    .end local v13    # "ret":Z
    .end local v23    # "size":J
    .end local v25    # "dbsize":J
    .end local v27    # "sizeCaptured":J
    .end local v29    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .restart local v2    # "sizeCaptured":J
    .restart local v8    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .restart local v18    # "ret":Z
    :cond_153
    move-object/from16 v29, v8

    .end local v8    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .restart local v29    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    goto :goto_15c

    .line 2075
    .end local v20    # "is64bit":Z
    .end local v22    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    .end local v29    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .restart local v8    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .local v11, "is64bit":Z
    .local v13, "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    :cond_156
    move-object/from16 v29, v8

    move/from16 v20, v11

    move-object/from16 v22, v13

    .line 2096
    .end local v8    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .end local v11    # "is64bit":Z
    .end local v13    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    .restart local v20    # "is64bit":Z
    .restart local v22    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    .restart local v29    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    :goto_15c
    move/from16 v8, v18

    .end local v18    # "ret":Z
    .local v8, "ret":Z
    :goto_15e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 2097
    .local v23, "currentTime":J
    sub-long v25, v23, v15

    const-wide/16 v27, 0x3e8

    cmp-long v11, v25, v27

    if-lez v11, :cond_191

    .line 2098
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v25, v2

    .end local v2    # "sizeCaptured":J
    .local v25, "sizeCaptured":J
    const-string v2, "IO Capture \'map\' timed out : "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v23, v15

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    move-wide/from16 v2, v25

    goto :goto_1a3

    .line 2097
    .end local v25    # "sizeCaptured":J
    .restart local v2    # "sizeCaptured":J
    :cond_191
    move-wide/from16 v25, v2

    .line 2101
    .end local v2    # "sizeCaptured":J
    .end local v14    # "file":Ljava/lang/String;
    .end local v29    # "fminfo":Lcom/android/server/am/Pageboost$FileMapInfo;
    .restart local v25    # "sizeCaptured":J
    move/from16 v11, v20

    move-object/from16 v9, v21

    move-object/from16 v13, v22

    goto/16 :goto_92

    .line 2062
    .end local v20    # "is64bit":Z
    .end local v21    # "target_file":Ljava/lang/String;
    .end local v22    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    .end local v23    # "currentTime":J
    .end local v25    # "sizeCaptured":J
    .restart local v2    # "sizeCaptured":J
    .restart local v9    # "target_file":Ljava/lang/String;
    .restart local v11    # "is64bit":Z
    .restart local v13    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    :cond_19b
    move/from16 v18, v8

    move-object/from16 v21, v9

    move/from16 v20, v11

    move-object/from16 v22, v13

    .line 2102
    .end local v9    # "target_file":Ljava/lang/String;
    .end local v11    # "is64bit":Z
    .end local v13    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    .restart local v20    # "is64bit":Z
    .restart local v21    # "target_file":Ljava/lang/String;
    .restart local v22    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    :goto_1a3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 2103
    .local v13, "currentTime":J
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v2

    .end local v2    # "sizeCaptured":J
    .local v17, "sizeCaptured":J
    const-string v2, "IO Capture \'mapped files\' pid : "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size : "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " time : "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v13, v15

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v2, v17

    goto :goto_1df

    .line 2060
    .end local v17    # "sizeCaptured":J
    .end local v20    # "is64bit":Z
    .end local v21    # "target_file":Ljava/lang/String;
    .end local v22    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    .restart local v2    # "sizeCaptured":J
    .restart local v9    # "target_file":Ljava/lang/String;
    .restart local v11    # "is64bit":Z
    .local v13, "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    :cond_1d6
    move-object/from16 v21, v9

    move/from16 v20, v11

    move-object/from16 v22, v13

    .end local v9    # "target_file":Ljava/lang/String;
    .end local v11    # "is64bit":Z
    .end local v13    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    .restart local v20    # "is64bit":Z
    .restart local v21    # "target_file":Ljava/lang/String;
    .restart local v22    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    goto :goto_1df

    .line 2052
    .end local v15    # "startTime":J
    .end local v20    # "is64bit":Z
    .end local v21    # "target_file":Ljava/lang/String;
    .end local v22    # "fmlist":Lcom/android/server/am/Pageboost$FileMapList;
    .restart local v9    # "target_file":Ljava/lang/String;
    :cond_1dd
    move-object/from16 v21, v9

    .line 2107
    .end local v9    # "target_file":Ljava/lang/String;
    .restart local v21    # "target_file":Ljava/lang/String;
    :goto_1df
    sget v9, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v11, 0x1

    if-gt v11, v9, :cond_263

    .line 2108
    iget-object v9, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 2109
    .local v9, "apkPath":Ljava/lang/String;
    if-eqz v9, :cond_25e

    invoke-static {v9}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25e

    .line 2110
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2111
    .local v11, "apkFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_259

    .line 2112
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v13

    long-to-int v13, v13

    .line 2113
    .local v13, "length":I
    const/high16 v14, 0x3200000

    if-le v13, v14, :cond_206

    .line 2114
    const/high16 v13, 0x3200000

    move v15, v13

    goto :goto_207

    .line 2113
    :cond_206
    move v15, v13

    .line 2116
    .end local v13    # "length":I
    .local v15, "length":I
    :goto_207
    const v13, 0x8000

    div-int v14, v15, v13

    .line 2117
    .local v14, "bytes":I
    if-lez v14, :cond_252

    .line 2118
    new-array v13, v14, [B

    .line 2119
    .local v13, "apkBitmap":[B
    move-wide/from16 v22, v6

    .end local v6    # "dbsizeMapCaptured":J
    .local v22, "dbsizeMapCaptured":J
    const/4 v6, -0x1

    invoke-static {v13, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 2120
    # getter for: Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1600()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v7, v13

    .end local v13    # "apkBitmap":[B
    .local v7, "apkBitmap":[B
    move-object v13, v6

    move v6, v14

    .end local v14    # "bytes":I
    .local v6, "bytes":I
    move-object v14, v10

    move/from16 v20, v8

    move v8, v15

    .end local v15    # "length":I
    .local v8, "length":I
    .local v20, "ret":Z
    move-object v15, v9

    move-object/from16 v17, v7

    move/from16 v18, v6

    invoke-static/range {v13 .. v19}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 2121
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IO Capture \'apk\', pid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const/4 v13, 0x1

    .line 2123
    .end local v20    # "ret":Z
    .local v13, "ret":Z
    int-to-long v14, v8

    add-long/2addr v2, v14

    move v8, v13

    goto :goto_269

    .line 2117
    .end local v7    # "apkBitmap":[B
    .end local v13    # "ret":Z
    .end local v22    # "dbsizeMapCaptured":J
    .local v6, "dbsizeMapCaptured":J
    .local v8, "ret":Z
    .restart local v14    # "bytes":I
    .restart local v15    # "length":I
    :cond_252
    move-wide/from16 v22, v6

    move/from16 v20, v8

    move v6, v14

    move v8, v15

    .end local v14    # "bytes":I
    .end local v15    # "length":I
    .local v6, "bytes":I
    .local v8, "length":I
    .restart local v20    # "ret":Z
    .restart local v22    # "dbsizeMapCaptured":J
    goto :goto_267

    .line 2111
    .end local v20    # "ret":Z
    .end local v22    # "dbsizeMapCaptured":J
    .local v6, "dbsizeMapCaptured":J
    .local v8, "ret":Z
    :cond_259
    move-wide/from16 v22, v6

    move/from16 v20, v8

    .end local v6    # "dbsizeMapCaptured":J
    .end local v8    # "ret":Z
    .restart local v20    # "ret":Z
    .restart local v22    # "dbsizeMapCaptured":J
    goto :goto_267

    .line 2109
    .end local v11    # "apkFile":Ljava/io/File;
    .end local v20    # "ret":Z
    .end local v22    # "dbsizeMapCaptured":J
    .restart local v6    # "dbsizeMapCaptured":J
    .restart local v8    # "ret":Z
    :cond_25e
    move-wide/from16 v22, v6

    move/from16 v20, v8

    .end local v6    # "dbsizeMapCaptured":J
    .end local v8    # "ret":Z
    .restart local v20    # "ret":Z
    .restart local v22    # "dbsizeMapCaptured":J
    goto :goto_267

    .line 2107
    .end local v9    # "apkPath":Ljava/lang/String;
    .end local v20    # "ret":Z
    .end local v22    # "dbsizeMapCaptured":J
    .restart local v6    # "dbsizeMapCaptured":J
    .restart local v8    # "ret":Z
    :cond_263
    move-wide/from16 v22, v6

    move/from16 v20, v8

    .line 2130
    .end local v6    # "dbsizeMapCaptured":J
    .end local v8    # "ret":Z
    .restart local v20    # "ret":Z
    .restart local v22    # "dbsizeMapCaptured":J
    :goto_267
    move/from16 v8, v20

    .end local v20    # "ret":Z
    .restart local v8    # "ret":Z
    :goto_269
    if-eqz v8, :cond_289

    .line 2131
    sget v6, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    invoke-virtual {v0, v6}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedLevel(I)V

    .line 2132
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedSizeForPrefetch(JJ)V

    .line 2133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capture,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 2135
    :cond_289
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Capture end for : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " done correctly? "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    return-void

    .line 2041
    .end local v10    # "tableName":Ljava/lang/String;
    .end local v21    # "target_file":Ljava/lang/String;
    .end local v22    # "dbsizeMapCaptured":J
    .restart local v6    # "dbsizeMapCaptured":J
    .local v9, "target_file":Ljava/lang/String;
    :cond_2b2
    move-object/from16 v21, v9

    .line 2042
    .end local v9    # "target_file":Ljava/lang/String;
    .restart local v21    # "target_file":Ljava/lang/String;
    :goto_2b4
    return-void

    .line 2038
    .end local v21    # "target_file":Ljava/lang/String;
    .restart local v9    # "target_file":Ljava/lang/String;
    :cond_2b5
    move-object/from16 v21, v9

    .line 2039
    .end local v9    # "target_file":Ljava/lang/String;
    .restart local v21    # "target_file":Ljava/lang/String;
    :goto_2b7
    return-void
.end method
