.class Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;
.super Ljava/lang/Thread;
.source "LockSettingsServiceLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsServiceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveLssLog"
.end annotation


# instance fields
.field private mContents:Ljava/lang/String;

.field private mIsSaveLssLogDone:Z

.field private mType:I

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsServiceLog;ILjava/lang/String;)V
    .registers 4
    .param p2, "type"    # I
    .param p3, "contents"    # Ljava/lang/String;

    .line 290
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 286
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mIsSaveLssLogDone:Z

    .line 287
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mContents:Ljava/lang/String;

    .line 291
    const-string p1, "LockSettingsLog"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mType:I

    .line 293
    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mContents:Ljava/lang/String;

    .line 294
    return-void
.end method

.method private setPermissions()V
    .registers 7

    .line 316
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    # getter for: Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$500(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 317
    :try_start_7
    const-string v1, "LockSettingsLog"

    const-string/jumbo v2, "setPermissions - Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    # getter for: Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$000(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mType:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_49

    .line 322
    .local v1, "lss_save":Ljava/io/File;
    :try_start_22
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "file_path":Ljava/lang/String;
    const/16 v3, 0x1a0

    const/16 v4, 0x3e8

    const/16 v5, 0x3ef

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_49

    .line 329
    .end local v2    # "file_path":Ljava/lang/String;
    goto :goto_47

    .line 327
    :catch_30
    move-exception v2

    .line 328
    .local v2, "e":Ljava/io/IOException;
    :try_start_31
    const-string v3, "LockSettingsLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpstate_LssLog - getCanonicalPath error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v1    # "lss_save":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_47
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private writeLockSettingsLog()V
    .registers 6

    .line 297
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    # getter for: Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$400(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_14

    .line 298
    const-string v0, "LockSettingsLog"

    const-string v1, "Dump is in progress!! Cannot written log"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 301
    :cond_14
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    # getter for: Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$500(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 303
    :try_start_1b
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    # getter for: Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;
    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$000(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mType:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 304
    .local v1, "w":Ljava/io/BufferedWriter;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    # invokes: Lcom/android/server/locksettings/LockSettingsServiceLog;->makeLogTime()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$600(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mContents:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 306
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_56} :catch_59
    .catchall {:try_start_1b .. :try_end_56} :catchall_57

    .line 309
    .end local v1    # "w":Ljava/io/BufferedWriter;
    goto :goto_70

    .line 311
    :catchall_57
    move-exception v1

    goto :goto_82

    .line 307
    :catch_59
    move-exception v1

    .line 308
    .local v1, "e":Ljava/io/IOException;
    :try_start_5a
    const-string v2, "LockSettingsLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LockSettingsLog - makefile error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v1    # "e":Ljava/io/IOException;
    :goto_70
    const-string v1, "LockSettingsLog"

    const-string v2, "LockSettingsLog - file written"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_57

    .line 312
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    # getter for: Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$400(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 313
    return-void

    .line 311
    :goto_82
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_57

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 350
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->writeLockSettingsLog()V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mIsSaveLssLogDone:Z

    .line 353
    return-void
.end method

.method public waitUntilSaveLssLogDone(JJ)I
    .registers 10
    .param p1, "minTimeout"    # J
    .param p3, "maxTimeout"    # J

    .line 336
    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 337
    long-to-int v2, p1

    .local v2, "i":I
    :goto_8
    int-to-long v3, v2

    cmp-long v3, v3, p3

    if-gez v3, :cond_18

    .line 338
    iget-boolean v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->mIsSaveLssLogDone:Z

    if-eqz v3, :cond_12

    .line 339
    return v2

    .line 340
    :cond_12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_19

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 344
    .end local v2    # "i":I
    :cond_18
    goto :goto_31

    .line 342
    :catch_19
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitUntilSaveLssLogDone error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsLog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    const/4 v0, -0x1

    return v0
.end method
