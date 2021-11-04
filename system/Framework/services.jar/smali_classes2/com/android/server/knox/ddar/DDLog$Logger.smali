.class public Lcom/android/server/knox/ddar/DDLog$Logger;
.super Ljava/lang/Object;
.source "DDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/DDLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logger"
.end annotation


# static fields
.field private static final ROTATE_SIZE:J = 0x400000L

.field public static final TAG:Ljava/lang/String; = "DualDAR:DDLog:Logger"

.field private static final TIME_FORMAT:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;


# instance fields
.field private cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

.field private currentFile:Ljava/io/File;

.field private final currentFileName:Ljava/lang/String;

.field private fos:Ljava/io/OutputStreamWriter;

.field private logWorker:Ljava/lang/Thread;

.field private loggerRunning:Z

.field private mCtx:Landroid/content/Context;

.field private final storageDir:Ljava/io/File;

.field private storeQ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->mCtx:Landroid/content/Context;

    .line 154
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    .line 155
    const-string v1, "ddar_fw_log"

    iput-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFileName:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 159
    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    .line 160
    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    .line 329
    new-instance v0, Lcom/android/server/knox/ddar/DDLog$Logger$2;

    const-string v1, "Log Worker"

    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/ddar/DDLog$Logger$2;-><init>(Lcom/android/server/knox/ddar/DDLog$Logger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->logWorker:Ljava/lang/Thread;

    .line 182
    iput-object p1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->mCtx:Landroid/content/Context;

    .line 183
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 146
    invoke-static {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->enqueLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/knox/ddar/DDLog$Logger;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/DDLog$Logger;

    .line 146
    iget-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/DDLog$Logger;

    .line 146
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/DDLog$Logger;

    .line 146
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/knox/ddar/DDLog$Logger;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/DDLog$Logger;
    .param p1, "x1"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/DDLog$Logger;->realStore(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupBackupFiles()V
    .registers 5

    .line 292
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    new-instance v1, Lcom/android/server/knox/ddar/DDLog$Logger$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/DDLog$Logger$1;-><init>(Lcom/android/server/knox/ddar/DDLog$Logger;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 299
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 300
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "is removed as next backup log file is ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DualDAR:DDLog:Logger"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 303
    .end local v1    # "i":I
    :cond_39
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDLog$Logger;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/knox/ddar/DDLog$Logger;

    monitor-enter v0

    .line 167
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;

    if-nez v1, :cond_11

    .line 168
    new-instance v1, Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/DDLog$Logger;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;

    .line 169
    invoke-virtual {v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->start()V

    .line 171
    :cond_11
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    .line 166
    .end local p0    # "context":Landroid/content/Context;
    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static enqueLog(Ljava/lang/String;)V
    .registers 3
    .param p0, "payload"    # Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/android/server/knox/ddar/DDLog$Logger;->getInstance()Lcom/android/server/knox/ddar/DDLog$Logger;

    move-result-object v0

    .line 187
    .local v0, "logger":Lcom/android/server/knox/ddar/DDLog$Logger;
    if-nez v0, :cond_c

    .line 189
    const-string v1, ""

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 193
    :cond_c
    invoke-virtual {v0, p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->log(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private getDeviceVersion()Ljava/lang/String;
    .registers 5

    .line 225
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "version":Ljava/lang/String;
    if-eqz v0, :cond_1e

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    .line 226
    :goto_1f
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/knox/ddar/DDLog$Logger;
    .registers 2

    const-class v0, Lcom/android/server/knox/ddar/DDLog$Logger;

    monitor-enter v0

    .line 175
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 175
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private internalClose()V
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_5

    return-void

    .line 256
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 257
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_11

    .line 262
    goto :goto_2b

    .line 259
    :catch_11
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception while closing stream! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualDAR:DDLog:Logger"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2b
    return-void
.end method

.method private moveCurrentToBackup()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "-yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "filePostFix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ddar_fw_log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v3, "newFile":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rename Log File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    const-string v5, "DualDAR:DDLog:Logger"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v4, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 327
    return-void
.end method

.method private openCurrentFile()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    const-string v2, "ddar_fw_log.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_37

    .line 308
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_37

    .line 309
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_37
    :goto_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened Existing or New Log file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, "DualDAR:DDLog:Logger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    .line 315
    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->beforeWrite(J)V

    .line 316
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    .line 317
    return-void
.end method

.method private declared-synchronized realStore(Ljava/lang/String;)V
    .registers 7
    .param p1, "what"    # Ljava/lang/String;

    monitor-enter p0

    .line 273
    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    if-nez v0, :cond_15

    .line 274
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->openCurrentFile()V

    .line 275
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current file set in realStore!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/knox/ddar/DDLog$Logger;
    .end local p1    # "what":Ljava/lang/String;
    throw v0

    .line 278
    .restart local p1    # "what":Ljava/lang/String;
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->getByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_4e

    .line 279
    const-string v0, "DualDAR:DDLog:Logger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' is larger than "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes. Rotating file."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->roll()Z

    .line 284
    :cond_4e
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_56
    .catchall {:try_start_1 .. :try_end_53} :catchall_54

    .line 288
    goto :goto_70

    .line 272
    .end local p1    # "what":Ljava/lang/String;
    :catchall_54
    move-exception p1

    goto :goto_72

    .line 285
    .restart local p1    # "what":Ljava/lang/String;
    :catch_56
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    :try_start_57
    const-string v1, "DualDAR:DDLog:Logger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while writing to stream! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_54

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_70
    monitor-exit p0

    return-void

    .line 272
    .end local p1    # "what":Ljava/lang/String;
    :goto_72
    monitor-exit p0

    throw p1
.end method

.method private roll()Z
    .registers 2

    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->internalClose()V

    .line 240
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->cleanupBackupFiles()V

    .line 241
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->moveCurrentToBackup()V

    .line 242
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->openCurrentFile()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_e

    .line 243
    const/4 v0, 0x1

    return v0

    .line 245
    :catch_e
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getCurrentTime()Ljava/lang/String;
    .registers 6

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    .local v0, "systemTime":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 233
    .local v2, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 234
    .local v3, "timeFormat":Ljava/text/Format;
    invoke-virtual {v3, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public log(Ljava/lang/String;)V
    .registers 5
    .param p1, "what"    # Ljava/lang/String;

    .line 197
    iget-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    if-nez v0, :cond_5

    .line 198
    return-void

    .line 201
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    .line 205
    goto :goto_3d

    .line 202
    :catch_23
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception while adding to store queue! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualDAR:DDLog:Logger"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method

.method public start()V
    .registers 4

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    .line 210
    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->logWorker:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 211
    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->logWorker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 212
    new-array v0, v0, [Ljava/lang/Object;

    .line 213
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->getDeviceVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 212
    const-string v1, "DDAR Logging Started [DeviceVersion : %s]\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/ddar/DDLog$Logger;->enqueLog(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public stop()V
    .registers 2

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    .line 218
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->internalClose()V

    .line 219
    return-void
.end method
