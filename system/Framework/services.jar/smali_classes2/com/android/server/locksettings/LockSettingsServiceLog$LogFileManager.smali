.class Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;
.super Ljava/lang/Object;
.source "LockSettingsServiceLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsServiceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogFileManager"
.end annotation


# instance fields
.field private mErrorCode:Ljava/lang/String;

.field private mLastFileName:Ljava/lang/String;

.field private mUploadFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "err"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mErrorCode:Ljava/lang/String;

    .line 359
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    .line 360
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    .line 363
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mErrorCode:Ljava/lang/String;

    .line 364
    return-void
.end method


# virtual methods
.method public deleteUploadFile()V
    .registers 8

    .line 385
    const-string v0, "delete uploaded Filename = "

    const-string v1, "LockSettingsLog"

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 386
    return-void

    .line 389
    :cond_9
    :try_start_9
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x80000

    cmp-long v3, v3, v5

    if-lez v3, :cond_49

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", FileSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " byte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_4a

    .line 396
    .end local v2    # "file":Ljava/io/File;
    :cond_49
    goto :goto_67

    .line 394
    :catch_4a
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public getLastFileName()Ljava/lang/String;
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/log/LockSettingsLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    .line 370
    :cond_1e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadFileName()Ljava/lang/String;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    return-object v0
.end method

.method public prepareUpload()V
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 379
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mUploadFileName:Ljava/lang/String;

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->mLastFileName:Ljava/lang/String;

    .line 382
    :cond_9
    return-void
.end method
