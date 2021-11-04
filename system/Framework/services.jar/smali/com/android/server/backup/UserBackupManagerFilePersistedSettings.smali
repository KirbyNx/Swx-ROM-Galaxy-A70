.class final Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;
.super Ljava/lang/Object;
.source "UserBackupManagerFilePersistedSettings.java"


# static fields
.field private static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readBackupEnableState(I)Z
    .registers 4
    .param p0, "userId"    # I

    .line 35
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->readBackupEnableState(Ljava/io/File;)Z

    move-result v0

    .line 36
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " readBackupEnableState enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return v0
.end method

.method private static readBackupEnableState(Ljava/io/File;)Z
    .registers 9
    .param p0, "baseDir"    # Ljava/io/File;

    .line 46
    new-instance v0, Ljava/io/File;

    const-string v1, "backup_enabled"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v0, "enableFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "BackupManagerService"

    if-eqz v1, :cond_4b

    .line 48
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_44

    .line 49
    .local v1, "fin":Ljava/io/FileInputStream;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v4

    .line 50
    .local v4, "state":I
    const/4 v5, 0x1

    if-eqz v4, :cond_32

    if-eq v4, v5, :cond_32

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected enabled state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_3a

    .line 54
    :cond_32
    if-eqz v4, :cond_35

    goto :goto_36

    :cond_35
    move v5, v2

    .line 55
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_44

    .line 54
    return v5

    .line 48
    .end local v4    # "state":I
    :catchall_3a
    move-exception v4

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v5

    :try_start_40
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "enableFile":Ljava/io/File;
    .end local p0    # "baseDir":Ljava/io/File;
    :goto_43
    throw v4
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 55
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "enableFile":Ljava/io/File;
    .restart local p0    # "baseDir":Ljava/io/File;
    :catch_44
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Cannot read enable state; assuming disabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_51

    .line 60
    :cond_4b
    const-string/jumbo v1, "isBackupEnabled() => false due to absent settings file"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_51
    return v2
.end method

.method static writeBackupEnableState(IZ)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "enable"    # Z

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " writeBackupEnableState enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(Ljava/io/File;Z)V

    .line 43
    return-void
.end method

.method private static writeBackupEnableState(Ljava/io/File;Z)V
    .registers 8
    .param p0, "baseDir"    # Ljava/io/File;
    .param p1, "enable"    # Z

    .line 66
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v1, "enableFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "backup_enabled-stage"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v2, "stage":Ljava/io/File;
    :try_start_10
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_15} :catch_39

    .line 69
    .local v3, "fout":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    :try_start_1a
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 70
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 71
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 72
    .local v4, "renamed":Z
    if-nez v4, :cond_2b

    .line 74
    const-string v5, "Write enable failed as could not rename staging file to actual"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_2f

    .line 77
    .end local v4    # "renamed":Z
    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_39

    .line 84
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_58

    .line 68
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catchall_2f
    move-exception v4

    :try_start_30
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v5

    :try_start_35
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "enableFile":Ljava/io/File;
    .end local v2    # "stage":Ljava/io/File;
    .end local p0    # "baseDir":Ljava/io/File;
    .end local p1    # "enable":Z
    :goto_38
    throw v4
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_39} :catch_39

    .line 77
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "enableFile":Ljava/io/File;
    .restart local v2    # "stage":Ljava/io/File;
    .restart local p0    # "baseDir":Ljava/io/File;
    .restart local p1    # "enable":Z
    :catch_39
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 85
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_58
    return-void
.end method
