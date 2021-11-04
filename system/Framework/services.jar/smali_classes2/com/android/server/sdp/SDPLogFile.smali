.class public Lcom/android/server/sdp/SDPLogFile;
.super Ljava/lang/Object;
.source "SDPLogFile.java"


# static fields
.field private static final DEBUG:Z

.field private static final EOL:B = 0xat

.field private static final EOL_SIZE:I = 0x1

.field private static final FILE_LATEST_VERSION:I = 0x2

.field private static final FILE_OFFSET:I = 0x0

.field private static final FILE_PATH:Ljava/lang/String; = "/data/log/sdp_log"

.field private static final LONG_SIZE:I = 0x8

.field private static final MAX_FILE_SIZE:J = 0x200000L

.field private static final MAX_FILE_SIZE_IN_MB:J = 0x2L

.field private static final MAX_HEADER_LENGTH:J = 0x11L

.field private static final TAG:Ljava/lang/String; = "SDPLogFile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sdp/SDPLogFile;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static LogD(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 141
    sget-boolean v0, Lcom/android/server/sdp/SDPLogFile;->DEBUG:Z

    if-eqz v0, :cond_b

    if-eqz p0, :cond_b

    .line 142
    const-string v0, "SDPLogFile"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_b
    return-void
.end method

.method private static LogE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 153
    if-eqz p0, :cond_7

    .line 154
    const-string v0, "SDPLogFile"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_7
    return-void
.end method

.method private static LogI(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 147
    if-eqz p0, :cond_7

    .line 148
    const-string v0, "SDPLogFile"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_7
    return-void
.end method

.method private static check(Ljava/io/RandomAccessFile;)V
    .registers 9
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 110
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 113
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 114
    .local v2, "fileLength":J
    cmp-long v0, v2, v0

    if-eqz v0, :cond_53

    .line 116
    const-wide/16 v0, 0x11

    cmp-long v0, v2, v0

    if-lez v0, :cond_4b

    .line 118
    const-wide/32 v0, 0x200000

    cmp-long v4, v2, v0

    if-gtz v4, :cond_43

    .line 123
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    .line 124
    .local v4, "filePointer":J
    cmp-long v0, v4, v0

    if-gtz v0, :cond_3b

    .line 129
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_26} :catch_5b

    .line 130
    .local v0, "fileVersion":J
    const-wide/16 v6, 0x2

    cmp-long v6, v0, v6

    if-nez v6, :cond_33

    .line 135
    .end local v0    # "fileVersion":J
    .end local v2    # "fileLength":J
    .end local v4    # "filePointer":J
    nop

    .line 137
    const-string v0, "Header Check : Passed!"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLogFile;->LogD(Ljava/lang/String;)V

    .line 138
    return-void

    .line 131
    .restart local v0    # "fileVersion":J
    .restart local v2    # "fileLength":J
    .restart local v4    # "filePointer":J
    :cond_33
    :try_start_33
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Version mismatched"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "file":Ljava/io/RandomAccessFile;
    throw v6

    .line 125
    .end local v0    # "fileVersion":J
    .restart local p0    # "file":Ljava/io/RandomAccessFile;
    :cond_3b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "File corrupted"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "file":Ljava/io/RandomAccessFile;
    throw v0

    .line 119
    .end local v4    # "filePointer":J
    .restart local p0    # "file":Ljava/io/RandomAccessFile;
    :cond_43
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "File size exceeded"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "file":Ljava/io/RandomAccessFile;
    throw v0

    .line 117
    .restart local p0    # "file":Ljava/io/RandomAccessFile;
    :cond_4b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Broken file header"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "file":Ljava/io/RandomAccessFile;
    throw v0

    .line 115
    .restart local p0    # "file":Ljava/io/RandomAccessFile;
    :cond_53
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "File created from scratch"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "file":Ljava/io/RandomAccessFile;
    throw v0
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_5b} :catch_5b

    .line 133
    .end local v2    # "fileLength":J
    .restart local p0    # "file":Ljava/io/RandomAccessFile;
    :catch_5b
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unexpected error"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static checkAndReset(Ljava/io/RandomAccessFile;)V
    .registers 6
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "resetMessageBytes":[B
    :try_start_1
    invoke-static {p0}, Lcom/android/server/sdp/SDPLogFile;->check(Ljava/io/RandomAccessFile;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_5

    .line 91
    goto :goto_2a

    .line 88
    :catch_5
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLogFile;->LogD(Ljava/lang/String;)V

    .line 93
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_2a
    if-eqz v0, :cond_4f

    .line 94
    const-wide/16 v1, 0x11

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v3, v1

    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    .line 96
    .local v3, "endOfFile":J
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 97
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 98
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 99
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 102
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 103
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 104
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 106
    .end local v3    # "endOfFile":J
    :cond_4f
    return-void
.end method

.method public static saveFile(Ljava/util/Queue;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p0, "logQ":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving logs... [QS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLogFile;->LogI(Ljava/lang/String;)V

    .line 35
    const-string v0, "Target path : /data/log/sdp_log"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLogFile;->LogD(Ljava/lang/String;)V

    .line 37
    :try_start_22
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "/data/log/sdp_log"

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_a5

    .line 39
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_2c
    invoke-static {v0}, Lcom/android/server/sdp/SDPLogFile;->checkAndReset(Ljava/io/RandomAccessFile;)V

    .line 41
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v3

    .line 43
    .local v3, "filePointer":J
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 45
    :goto_3b
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 46
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 47
    .local v5, "log":Ljava/lang/String;
    if-nez v5, :cond_4a

    .line 48
    goto :goto_3b

    .line 50
    :cond_4a
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 51
    .local v6, "data":[B
    array-length v7, v6

    int-to-long v7, v7

    add-long/2addr v7, v3

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    const-wide/32 v9, 0x200000

    cmp-long v7, v7, v9

    if-lez v7, :cond_60

    .line 52
    const-wide/16 v7, 0x11

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    :cond_60
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 55
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->write(I)V

    .line 57
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    move-wide v3, v7

    .line 58
    .end local v5    # "log":Ljava/lang/String;
    .end local v6    # "data":[B
    goto :goto_3b

    .line 60
    :cond_6e
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 61
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 63
    invoke-static {}, Lcom/android/server/sdp/SDPLogFile;->setPermission()V

    .line 65
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Saving success! [FP : %d, FS : %d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 66
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 65
    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLogFile;->LogI(Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_2c .. :try_end_97} :catchall_9b

    .line 67
    .end local v3    # "filePointer":J
    :try_start_97
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_a5

    .line 70
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    goto :goto_c1

    .line 37
    .restart local v0    # "file":Ljava/io/RandomAccessFile;
    :catchall_9b
    move-exception v1

    :try_start_9c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    goto :goto_a4

    :catchall_a0
    move-exception v2

    :try_start_a1
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "logQ":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :goto_a4
    throw v1
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a5} :catch_a5

    .line 67
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    .restart local p0    # "logQ":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :catch_a5
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save logs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLogFile;->LogE(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c1
    return-void
.end method

.method private static setPermission()V
    .registers 4

    .line 75
    nop

    .line 76
    const-string v0, "/data/log/sdp_log"

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x3ef

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    .line 81
    .local v0, "permResult":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set permission : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLogFile;->LogI(Ljava/lang/String;)V

    .line 82
    return-void
.end method
