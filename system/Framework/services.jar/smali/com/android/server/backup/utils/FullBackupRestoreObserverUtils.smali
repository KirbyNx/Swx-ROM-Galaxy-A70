.class public Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;
.super Ljava/lang/Object;
.source "FullBackupRestoreObserverUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 4
    .param p0, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .line 78
    if-eqz p0, :cond_10

    .line 80
    :try_start_2
    invoke-interface {p0}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 84
    goto :goto_10

    .line 81
    :catch_6
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 p0, 0x0

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-object p0
.end method

.method public static sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 5
    .param p0, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    if-eqz p0, :cond_10

    .line 61
    :try_start_2
    invoke-interface {p0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 65
    goto :goto_10

    .line 62
    :catch_6
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 p0, 0x0

    .line 67
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-object p0
.end method

.method public static sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 4
    .param p0, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .line 37
    if-eqz p0, :cond_10

    .line 39
    :try_start_2
    invoke-interface {p0}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 43
    goto :goto_10

    .line 40
    :catch_6
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 p0, 0x0

    .line 45
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-object p0
.end method
