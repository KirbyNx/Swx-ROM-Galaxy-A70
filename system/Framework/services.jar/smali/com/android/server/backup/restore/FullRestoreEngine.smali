.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# static fields
.field private static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field final mApkCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppVersion:J

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field final mBuffer:[B

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mIsAdbRestore:Z

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mPipesClosed:Z

.field private final mPipesLock:Ljava/lang/Object;

.field mPrivilegeApp:Z

.field final mSessionFlag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mSessionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private final mUserId:I

.field private mWidgetData:[B

.field restorePass:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZ)V
    .registers 11
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p6, "allowApks"    # Z
    .param p7, "ephemeralOpToken"    # I
    .param p8, "isAdbRestore"    # Z

    .line 153
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 79
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 130
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 131
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    .line 154
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 155
    iput p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 156
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 157
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 158
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 159
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 160
    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 161
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 162
    nop

    .line 163
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 162
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 165
    iput-boolean p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 166
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 169
    invoke-static {}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 170
    const-string v0, "BackupManagerService"

    const-string v1, "Backup Manager Yuva is Supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 174
    :cond_8c
    return-void
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 756
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 763
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 760
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method private static isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .registers 4
    .param p0, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 731
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 735
    return v1

    .line 738
    :cond_c
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 743
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v2, "no_backup/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 747
    return v1

    .line 752
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$restoreOneFile$0(J)V
    .registers 2
    .param p0, "bytesRead"    # J

    .line 202
    return-void
.end method

.method private setUpPipes()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 667
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    .line 668
    monitor-exit v0

    .line 669
    return-void

    .line 668
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 773
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 774
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 773
    const-string/jumbo v2, "packages_to_clear_data_before_full_restore"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "packageListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 778
    const/4 v1, 0x0

    return v1

    .line 781
    :cond_1b
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 782
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 10
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    .line 690
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_61

    .line 693
    if-eqz p2, :cond_50

    .line 694
    :try_start_6
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    .line 695
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 696
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    .line 697
    .local v3, "fullBackupAgentTimeoutMillis":J
    new-instance v5, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v5, v1, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;I)V

    .line 699
    .local v5, "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 701
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 705
    new-instance v1, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v1, v2, v0, v6}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 707
    .local v1, "runner":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-finished-runner"

    invoke-direct {v2, v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 708
    .end local v1    # "runner":Ljava/lang/Runnable;
    goto :goto_4d

    .line 709
    :cond_42
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 710
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 709
    invoke-interface {v1, v0, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 713
    :goto_4d
    invoke-virtual {v5}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 716
    .end local v0    # "token":I
    .end local v3    # "fullBackupAgentTimeoutMillis":J
    .end local v5    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :cond_50
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_55} :catch_56

    .line 719
    goto :goto_5e

    .line 717
    :catch_56
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 722
    :cond_61
    return-void
.end method

.method private tearDownPipes()V
    .registers 5

    .line 675
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    if-eqz v1, :cond_26

    .line 678
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 679
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 681
    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_1e
    .catchall {:try_start_b .. :try_end_1d} :catchall_28

    .line 684
    goto :goto_26

    .line 682
    :catch_1e
    move-exception v1

    .line 683
    .local v1, "e":Ljava/io/IOException;
    :try_start_1f
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    .end local v1    # "e":Ljava/io/IOException;
    :cond_26
    :goto_26
    monitor-exit v0

    .line 687
    return-void

    .line 686
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v1
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getRestorePass()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    return v0
.end method

.method public getWidgetData()[B
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .registers 2

    .line 725
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 726
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 728
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 49
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 197
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v2

    const/4 v15, 0x0

    const-string v11, "BackupManagerService"

    if-nez v2, :cond_17

    .line 198
    const-string v2, "Restore engine used after halting"

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v15

    .line 202
    :cond_17
    sget-object v10, Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;->INSTANCE:Lcom/android/server/backup/restore/-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU;

    .line 204
    .local v10, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v2, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v9, p7

    invoke-direct {v2, v12, v10, v9}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v8, v2

    .line 212
    .local v8, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v7, -0x3

    const/4 v6, 0x1

    :try_start_23
    invoke-virtual {v8}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v2

    move-object v5, v2

    .line 213
    .local v5, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v5, :cond_87c

    .line 214
    iput-boolean v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    .line 219
    iget-object v2, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v4, v2

    .line 220
    .local v4, "pkg":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_35} :catch_8a5
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_35} :catch_889

    const/4 v3, 0x0

    if-nez v2, :cond_a6

    .line 223
    if-eqz v14, :cond_65

    .line 224
    :try_start_3a
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but saw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 227
    invoke-virtual {v1, v15}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 228
    return v15

    .line 234
    :cond_65
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 235
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_74
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v2, :cond_a6

    .line 242
    const-string v2, "Saw new package; finalizing old one"

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 246
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v2, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 247
    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 248
    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_8b} :catch_99
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_8b} :catch_8c

    goto :goto_a6

    .line 638
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_8c
    move-exception v0

    move-object v2, v0

    move/from16 v31, v6

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_896

    .line 627
    :catch_99
    move-exception v0

    move-object v2, v0

    move/from16 v31, v6

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_8b2

    .line 252
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_a6
    :goto_a6
    :try_start_a6
    iget-object v2, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_manifest"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ae} :catch_8a5
    .catch Ljava/lang/NullPointerException; {:try_start_a6 .. :try_end_ae} :catch_889

    if-eqz v2, :cond_15b

    .line 253
    :try_start_b0
    invoke-virtual {v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v2
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b4} :catch_99
    .catch Ljava/lang/NullPointerException; {:try_start_b0 .. :try_end_b4} :catch_8c

    .line 257
    .local v2, "signatures":[Landroid/content/pm/Signature;
    :try_start_b4
    iget-wide v6, v5, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 258
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/content/pm/PackageManagerInternal;

    .line 260
    .local v21, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 261
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    iget v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-boolean v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    .line 260
    move-object/from16 v16, v8

    move/from16 v18, p5

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    move/from16 v22, v3

    move/from16 v23, v6

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;IZ)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v3

    .line 263
    .local v3, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v6, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_f5} :catch_14e
    .catch Ljava/lang/NullPointerException; {:try_start_b4 .. :try_end_f5} :catch_141

    const/4 v7, 0x1

    if-ne v6, v7, :cond_129

    .line 268
    :try_start_f8
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    iget v15, v5, Lcom/android/server/backup/FileMetadata;->splitCount:I
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fc} :catch_11c
    .catch Ljava/lang/NullPointerException; {:try_start_f8 .. :try_end_fc} :catch_10f

    add-int/2addr v15, v7

    :try_start_fd
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v6, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_129

    .line 638
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    .end local v3    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v21    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :catch_10f
    move-exception v0

    move-object v2, v0

    move/from16 v31, v7

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_896

    .line 627
    :catch_11c
    move-exception v0

    move-object v2, v0

    move/from16 v31, v7

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_8b2

    .line 276
    .restart local v2    # "signatures":[Landroid/content/pm/Signature;
    .restart local v3    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v21    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_129
    :goto_129
    iget-wide v6, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v8, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 277
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v6, v4}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_136} :catch_14e
    .catch Ljava/lang/NullPointerException; {:try_start_fd .. :try_end_136} :catch_141

    .line 278
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    .end local v3    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v21    # "pmi":Landroid/content/pm/PackageManagerInternal;
    move/from16 v11, p6

    move-object v2, v5

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    goto/16 :goto_885

    .line 638
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_141
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_896

    .line 627
    :catch_14e
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_8b2

    .line 278
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_15b
    :try_start_15b
    iget-object v2, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v6, "_meta"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_163} :catch_874
    .catch Ljava/lang/NullPointerException; {:try_start_15b .. :try_end_163} :catch_86c

    if-eqz v2, :cond_19f

    .line 280
    :try_start_165
    invoke-virtual {v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 286
    invoke-virtual {v8}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 288
    invoke-virtual {v8}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_172} :catch_14e
    .catch Ljava/lang/NullPointerException; {:try_start_165 .. :try_end_172} :catch_141

    .line 290
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_172
    iget-wide v6, v5, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v8, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_177} :catch_191
    .catch Ljava/lang/NullPointerException; {:try_start_172 .. :try_end_177} :catch_183

    move/from16 v11, p6

    move-object v4, v2

    move-object v2, v5

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    goto/16 :goto_887

    .line 638
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_183
    move-exception v0

    move-object v9, v2

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    move-object v2, v0

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_896

    .line 627
    :catch_191
    move-exception v0

    move-object v9, v2

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    move-object v2, v0

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_8b2

    .line 294
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_19f
    const/4 v15, 0x1

    .line 295
    .local v15, "okay":Z
    :try_start_1a0
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/RestorePolicy;

    move-object/from16 v29, v2

    .line 296
    .local v29, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v6

    aget v2, v2, v6
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1b2} :catch_874
    .catch Ljava/lang/NullPointerException; {:try_start_1a0 .. :try_end_1b2} :catch_86c

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3e6

    const/4 v7, 0x2

    const-string v3, "a"

    if-eq v2, v7, :cond_1f9

    if-eq v2, v6, :cond_1d5

    .line 382
    :try_start_1bd
    const-string v2, "Invalid policy from manifest"

    invoke-static {v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v15, 0x0

    .line 384
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v5

    move-object v14, v8

    move-object/from16 v32, v10

    move-object v12, v11

    move v3, v15

    const/16 v31, 0x1

    move-object v15, v4

    goto/16 :goto_3f2

    .line 366
    :cond_1d5
    iget-object v2, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ee

    .line 368
    const-string v2, "apk present but ACCEPT"

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1e2} :catch_14e
    .catch Ljava/lang/NullPointerException; {:try_start_1bd .. :try_end_1e2} :catch_141

    .line 374
    const/4 v15, 0x0

    move-object v2, v5

    move-object v14, v8

    move-object/from16 v32, v10

    move-object v12, v11

    move v3, v15

    const/16 v31, 0x1

    move-object v15, v4

    goto/16 :goto_3f2

    .line 366
    :cond_1ee
    move-object v2, v5

    move-object v14, v8

    move-object/from16 v32, v10

    move-object v12, v11

    move v3, v15

    const/16 v31, 0x1

    move-object v15, v4

    goto/16 :goto_3f2

    .line 304
    :cond_1f9
    :try_start_1f9
    iget-object v2, v5, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b3

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK file; installing; copying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    .line 310
    .local v7, "installerPackageName":Ljava/lang/String;
    iget-boolean v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    invoke-static {v2}, Lcom/android/server/backup/utils/RestoreUtils;->setPrivilegeApp(Z)V

    .line 313
    sget-object v2, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_378

    .line 315
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_23a} :catch_3d6
    .catch Ljava/lang/NullPointerException; {:try_start_1f9 .. :try_end_23a} :catch_3c6

    if-nez v2, :cond_292

    .line 316
    :try_start_23c
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/server/backup/utils/RestoreUtils;->createSession(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 317
    .local v2, "sessionId":I
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_23c .. :try_end_248} :catch_285
    .catch Ljava/lang/NullPointerException; {:try_start_23c .. :try_end_248} :catch_278

    move-object/from16 v16, v8

    const/4 v6, 0x1

    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v16, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_24b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25b
    .catch Ljava/io/IOException; {:try_start_24b .. :try_end_25b} :catch_26a
    .catch Ljava/lang/NullPointerException; {:try_start_24b .. :try_end_25b} :catch_25c

    goto :goto_295

    .line 638
    .end local v2    # "sessionId":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "installerPackageName":Ljava/lang/String;
    .end local v15    # "okay":Z
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_25c
    move-exception v0

    move-object v2, v0

    move/from16 v31, v6

    move-object/from16 v32, v10

    move-object v10, v12

    move-object/from16 v3, v16

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_896

    .line 627
    :catch_26a
    move-exception v0

    move-object v2, v0

    move/from16 v31, v6

    move-object/from16 v32, v10

    move-object v10, v12

    move-object/from16 v3, v16

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_8b2

    .line 638
    .end local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_278
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    move-object v12, v11

    move/from16 v11, p6

    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_896

    .line 627
    .end local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_285
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    move-object v12, v11

    move/from16 v11, p6

    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_8b2

    .line 315
    .end local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "installerPackageName":Ljava/lang/String;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v15    # "okay":Z
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_292
    move-object/from16 v16, v8

    const/4 v6, 0x1

    .line 321
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_295
    :try_start_295
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 322
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_2a7
    .catch Ljava/io/IOException; {:try_start_295 .. :try_end_2a7} :catch_367
    .catch Ljava/lang/NullPointerException; {:try_start_295 .. :try_end_2a7} :catch_356

    .line 321
    move-object/from16 v3, p1

    move/from16 v17, v15

    move-object v15, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .local v15, "pkg":Ljava/lang/String;
    .local v17, "okay":Z
    move-object v4, v5

    move-object/from16 v30, v5

    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .local v30, "info":Lcom/android/server/backup/FileMetadata;
    move-object v5, v7

    move/from16 v31, v6

    move-object v6, v10

    move-object/from16 v18, v7

    .end local v7    # "installerPackageName":Ljava/lang/String;
    .local v18, "installerPackageName":Ljava/lang/String;
    move v7, v8

    :try_start_2b6
    invoke-static/range {v2 .. v7}, Lcom/android/server/backup/utils/RestoreUtils;->writeSession(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v2

    move/from16 v19, v2

    .line 323
    .local v19, "isSuccessfullyCopied":Z
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d3
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2d3} :catch_354
    .catch Ljava/lang/NullPointerException; {:try_start_2b6 .. :try_end_2d3} :catch_352

    .line 325
    if-nez v19, :cond_300

    .line 326
    :try_start_2d5
    const-string v2, "APK file; copy error"

    invoke-static {v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e1
    .catch Ljava/io/IOException; {:try_start_2d5 .. :try_end_2e1} :catch_2f4
    .catch Ljava/lang/NullPointerException; {:try_start_2d5 .. :try_end_2e1} :catch_2e8

    move-object/from16 v32, v10

    move-object v12, v11

    move-object/from16 v14, v16

    goto/16 :goto_350

    .line 638
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "okay":Z
    .end local v18    # "installerPackageName":Ljava/lang/String;
    .end local v19    # "isSuccessfullyCopied":Z
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v30    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_2e8
    move-exception v0

    move-object v2, v0

    move-object/from16 v32, v10

    move-object v10, v12

    move-object/from16 v3, v16

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_896

    .line 627
    :catch_2f4
    move-exception v0

    move-object v2, v0

    move-object/from16 v32, v10

    move-object v10, v12

    move-object/from16 v3, v16

    move-object v12, v11

    move/from16 v11, p6

    goto/16 :goto_8b2

    .line 328
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v17    # "okay":Z
    .restart local v18    # "installerPackageName":Ljava/lang/String;
    .restart local v19    # "isSuccessfullyCopied":Z
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v30    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_300
    :try_start_300
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_34b

    .line 330
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 331
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    iget v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 334
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20
    :try_end_328
    .catch Ljava/io/IOException; {:try_start_300 .. :try_end_328} :catch_354
    .catch Ljava/lang/NullPointerException; {:try_start_300 .. :try_end_328} :catch_352

    .line 330
    move-object/from16 v2, p1

    move-object/from16 v7, v30

    move-object/from16 v14, v16

    move/from16 v16, v8

    .end local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v14, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move-object/from16 v8, v18

    move-object v9, v10

    move-object/from16 v32, v10

    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v32, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    move/from16 v10, v16

    move-object v12, v11

    move/from16 v11, v20

    :try_start_33a
    invoke-static/range {v2 .. v11}, Lcom/android/server/backup/utils/RestoreUtils;->installApkSplitSupport(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;II)Z

    move-result v2

    .line 336
    .local v2, "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_345

    .line 337
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_347

    .line 338
    :cond_345
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 336
    :goto_347
    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_350

    .line 328
    .end local v2    # "isSuccessfullyInstalled":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_34b
    move-object/from16 v32, v10

    move-object v12, v11

    move-object/from16 v14, v16

    .line 340
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v19    # "isSuccessfullyCopied":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_350
    goto/16 :goto_3ab

    .line 638
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "okay":Z
    .end local v18    # "installerPackageName":Ljava/lang/String;
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v30    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_352
    move-exception v0

    goto :goto_359

    .line 627
    :catch_354
    move-exception v0

    goto :goto_36a

    .line 638
    :catch_356
    move-exception v0

    move/from16 v31, v6

    :goto_359
    move-object/from16 v32, v10

    move-object/from16 v10, p1

    move-object/from16 v9, p7

    move-object v2, v0

    move-object v12, v11

    move-object/from16 v3, v16

    move/from16 v11, p6

    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto/16 :goto_896

    .line 627
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_367
    move-exception v0

    move/from16 v31, v6

    :goto_36a
    move-object/from16 v32, v10

    move-object/from16 v10, p1

    move-object/from16 v9, p7

    move-object v2, v0

    move-object v12, v11

    move-object/from16 v3, v16

    move/from16 v11, p6

    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto/16 :goto_8b2

    .line 341
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "installerPackageName":Ljava/lang/String;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v15, "okay":Z
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_378
    move/from16 v31, v3

    move-object/from16 v30, v5

    move-object/from16 v18, v7

    move-object v14, v8

    move-object/from16 v32, v10

    move-object v12, v11

    move/from16 v17, v15

    move-object v15, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "installerPackageName":Ljava/lang/String;
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v15, "pkg":Ljava/lang/String;
    .restart local v17    # "okay":Z
    .restart local v18    # "installerPackageName":Ljava/lang/String;
    .restart local v30    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 342
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    iget v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 341
    move-object/from16 v2, p1

    move-object/from16 v7, v30

    move-object/from16 v8, v18

    move-object/from16 v9, v32

    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v2

    .line 347
    .restart local v2    # "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_3a6

    .line 348
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_3a8

    .line 349
    :cond_3a6
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 347
    :goto_3a8
    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v2    # "isSuccessfullyInstalled":Z
    :goto_3ab
    move-object/from16 v2, v30

    .end local v30    # "info":Lcom/android/server/backup/FileMetadata;
    .local v2, "info":Lcom/android/server/backup/FileMetadata;
    iget-wide v3, v2, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v14, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 356
    return v31

    .line 360
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v17    # "okay":Z
    .end local v18    # "installerPackageName":Ljava/lang/String;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v15, "okay":Z
    :cond_3b3
    move-object v2, v5

    move-object v14, v8

    move-object/from16 v32, v10

    move-object v12, v11

    move/from16 v17, v15

    const/16 v31, 0x1

    move-object v15, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v15, "pkg":Ljava/lang/String;
    .restart local v17    # "okay":Z
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c4
    .catch Ljava/io/IOException; {:try_start_33a .. :try_end_3c4} :catch_40c
    .catch Ljava/lang/NullPointerException; {:try_start_33a .. :try_end_3c4} :catch_401

    .line 361
    const/4 v3, 0x0

    .line 363
    .end local v17    # "okay":Z
    .local v3, "okay":Z
    goto :goto_3f2

    .line 638
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v3    # "okay":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_3c6
    move-exception v0

    move-object/from16 v32, v10

    const/16 v31, 0x1

    move-object/from16 v10, p1

    move-object/from16 v9, p7

    move-object v2, v0

    move-object v3, v8

    move-object v12, v11

    move/from16 v11, p6

    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto/16 :goto_896

    .line 627
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_3d6
    move-exception v0

    move-object/from16 v32, v10

    const/16 v31, 0x1

    move-object/from16 v10, p1

    move-object/from16 v9, p7

    move-object v2, v0

    move-object v3, v8

    move-object v12, v11

    move/from16 v11, p6

    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto/16 :goto_8b2

    .line 298
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v15, "okay":Z
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_3e6
    move-object v2, v5

    move/from16 v31, v7

    move-object v14, v8

    move-object/from16 v32, v10

    move-object v12, v11

    move/from16 v17, v15

    move-object v15, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v15, "pkg":Ljava/lang/String;
    .restart local v17    # "okay":Z
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    const/4 v3, 0x0

    .line 299
    .end local v17    # "okay":Z
    .restart local v3    # "okay":Z
    nop

    .line 389
    :goto_3f2
    :try_start_3f2
    invoke-static {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v4
    :try_end_3f6
    .catch Ljava/io/IOException; {:try_start_3f2 .. :try_end_3f6} :catch_861
    .catch Ljava/lang/NullPointerException; {:try_start_3f2 .. :try_end_3f6} :catch_857

    if-eqz v4, :cond_417

    :try_start_3f8
    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v4
    :try_end_3fe
    .catch Ljava/io/IOException; {:try_start_3f8 .. :try_end_3fe} :catch_40c
    .catch Ljava/lang/NullPointerException; {:try_start_3f8 .. :try_end_3fe} :catch_401

    if-nez v4, :cond_418

    goto :goto_417

    .line 638
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v3    # "okay":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_401
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p6

    move-object/from16 v9, p7

    move-object v2, v0

    move-object v3, v14

    goto/16 :goto_896

    .line 627
    :catch_40c
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p6

    move-object/from16 v9, p7

    move-object v2, v0

    move-object v3, v14

    goto/16 :goto_8b2

    .line 390
    .restart local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3    # "okay":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_417
    :goto_417
    const/4 v3, 0x0

    .line 398
    :cond_418
    const-string/jumbo v4, "k"

    if-eqz v3, :cond_4a0

    :try_start_41d
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_41f
    .catch Ljava/io/IOException; {:try_start_41d .. :try_end_41f} :catch_40c
    .catch Ljava/lang/NullPointerException; {:try_start_41d .. :try_end_41f} :catch_401

    if-nez v5, :cond_4a0

    .line 404
    :try_start_421
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 405
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 406
    const/4 v8, 0x0

    invoke-virtual {v5, v15, v8, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 410
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_457

    .line 417
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v5

    .line 419
    .local v5, "forceClear":Z
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v7, :cond_448

    if-eqz v5, :cond_452

    .line 421
    :cond_448
    const-string v7, "Clearing app data preparatory to full restore"

    invoke-static {v12, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v15}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 431
    :cond_452
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v5    # "forceClear":Z
    :cond_457
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 441
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 442
    iget-object v8, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_468

    .line 443
    const/4 v6, 0x0

    goto :goto_469

    .line 444
    :cond_468
    nop

    .line 441
    :goto_469
    invoke-virtual {v5, v7, v6}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 445
    iput-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_471
    .catch Ljava/io/IOException; {:try_start_421 .. :try_end_471} :catch_472
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_421 .. :try_end_471} :catch_472
    .catch Ljava/lang/NullPointerException; {:try_start_421 .. :try_end_471} :catch_401

    .line 451
    goto :goto_47d

    .line 446
    :catch_472
    move-exception v0

    move-object v5, v0

    .line 448
    .local v5, "e":Ljava/lang/Exception;
    :try_start_474
    sget-object v6, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v6, :cond_47d

    .line 449
    sget-object v6, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    .line 453
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_47d
    :goto_47d
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_4a0

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create agent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v3, 0x0

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 457
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_4a0
    if-eqz v3, :cond_4c9

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c9

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " but agent is for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c8
    .catch Ljava/io/IOException; {:try_start_474 .. :try_end_4c8} :catch_40c
    .catch Ljava/lang/NullPointerException; {:try_start_474 .. :try_end_4c8} :catch_401

    .line 466
    const/4 v3, 0x0

    .line 473
    :cond_4c9
    if-eqz v3, :cond_811

    .line 474
    const/4 v7, 0x1

    .line 475
    .local v7, "agentSuccess":Z
    :try_start_4cc
    iget-wide v8, v2, Lcom/android/server/backup/FileMetadata;->size:J

    .line 476
    .local v8, "toCopy":J
    const-string v10, "com.android.sharedstoragebackup"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4d4
    .catch Ljava/io/IOException; {:try_start_4cc .. :try_end_4d4} :catch_861
    .catch Ljava/lang/NullPointerException; {:try_start_4cc .. :try_end_4d4} :catch_857

    .line 477
    .local v10, "isSharedStorage":Z
    if-eqz v10, :cond_4df

    .line 478
    :try_start_4d6
    iget-object v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v11}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_4dc
    .catch Ljava/io/IOException; {:try_start_4d6 .. :try_end_4dc} :catch_40c
    .catch Ljava/lang/NullPointerException; {:try_start_4d6 .. :try_end_4dc} :catch_401

    move-wide/from16 v35, v16

    goto :goto_4e7

    .line 479
    :cond_4df
    :try_start_4df
    iget-object v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v11}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_4e5
    .catch Ljava/io/IOException; {:try_start_4df .. :try_end_4e5} :catch_861
    .catch Ljava/lang/NullPointerException; {:try_start_4df .. :try_end_4e5} :catch_857

    move-wide/from16 v35, v16

    :goto_4e7
    nop

    .line 481
    .local v35, "timeout":J
    :try_start_4e8
    iget-object v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v38, 0x1

    move-object/from16 v33, v11

    move/from16 v34, p6

    move-object/from16 v37, v5

    invoke-virtual/range {v33 .. v38}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 486
    const-string/jumbo v5, "obb"

    iget-object v6, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_500
    .catch Ljava/io/IOException; {:try_start_4e8 .. :try_end_500} :catch_6e7
    .catch Landroid/os/RemoteException; {:try_start_4e8 .. :try_end_500} :catch_6b8
    .catch Ljava/lang/NullPointerException; {:try_start_4e8 .. :try_end_500} :catch_6ad

    const-string v6, " : "

    if-eqz v5, :cond_5b8

    .line 488
    :try_start_504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring OBB file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v18, v5, v6

    iget-wide v5, v2, Lcom/android/server/backup/FileMetadata;->size:J

    iget v11, v2, Lcom/android/server/backup/FileMetadata;->type:I
    :try_end_52b
    .catch Ljava/io/IOException; {:try_start_504 .. :try_end_52b} :catch_5a8
    .catch Landroid/os/RemoteException; {:try_start_504 .. :try_end_52b} :catch_598
    .catch Ljava/lang/NullPointerException; {:try_start_504 .. :try_end_52b} :catch_6ad

    move/from16 v30, v3

    .end local v3    # "okay":Z
    .local v30, "okay":Z
    :try_start_52d
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_52f
    .catch Ljava/io/IOException; {:try_start_52d .. :try_end_52f} :catch_58a
    .catch Landroid/os/RemoteException; {:try_start_52d .. :try_end_52f} :catch_57c
    .catch Ljava/lang/NullPointerException; {:try_start_52d .. :try_end_52f} :catch_6ad

    move/from16 v33, v7

    move-wide/from16 v37, v8

    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .local v33, "agentSuccess":Z
    .local v37, "toCopy":J
    :try_start_533
    iget-wide v7, v2, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_535
    .catch Ljava/io/IOException; {:try_start_533 .. :try_end_535} :catch_572
    .catch Landroid/os/RemoteException; {:try_start_533 .. :try_end_535} :catch_568
    .catch Ljava/lang/NullPointerException; {:try_start_533 .. :try_end_535} :catch_6ad

    move/from16 v34, v10

    .end local v10    # "isSharedStorage":Z
    .local v34, "isSharedStorage":Z
    :try_start_537
    iget-wide v9, v2, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_539
    .catch Ljava/io/IOException; {:try_start_537 .. :try_end_539} :catch_560
    .catch Landroid/os/RemoteException; {:try_start_537 .. :try_end_539} :catch_558
    .catch Ljava/lang/NullPointerException; {:try_start_537 .. :try_end_539} :catch_6ad

    move-object/from16 v39, v14

    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v39, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_53b
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 494
    invoke-virtual {v14}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 491
    move-object/from16 v16, v4

    move-object/from16 v17, v15

    move-wide/from16 v19, v5

    move/from16 v21, v11

    move-object/from16 v22, v3

    move-wide/from16 v23, v7

    move-wide/from16 v25, v9

    move/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_554
    .catch Ljava/io/IOException; {:try_start_53b .. :try_end_554} :catch_61d
    .catch Landroid/os/RemoteException; {:try_start_53b .. :try_end_554} :catch_617
    .catch Ljava/lang/NullPointerException; {:try_start_53b .. :try_end_554} :catch_6cf

    move-object/from16 v40, v15

    goto/16 :goto_68b

    .line 534
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_558
    move-exception v0

    move-object/from16 v39, v14

    move-object v3, v0

    move-object/from16 v40, v15

    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6c6

    .line 529
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_560
    move-exception v0

    move-object/from16 v39, v14

    move-object v3, v0

    move-object/from16 v40, v15

    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6f5

    .line 534
    .end local v34    # "isSharedStorage":Z
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "isSharedStorage":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_568
    move-exception v0

    move/from16 v34, v10

    move-object/from16 v39, v14

    move-object v3, v0

    move-object/from16 v40, v15

    .end local v10    # "isSharedStorage":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v34    # "isSharedStorage":Z
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6c6

    .line 529
    .end local v34    # "isSharedStorage":Z
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "isSharedStorage":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_572
    move-exception v0

    move/from16 v34, v10

    move-object/from16 v39, v14

    move-object v3, v0

    move-object/from16 v40, v15

    .end local v10    # "isSharedStorage":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v34    # "isSharedStorage":Z
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6f5

    .line 534
    .end local v33    # "agentSuccess":Z
    .end local v34    # "isSharedStorage":Z
    .end local v37    # "toCopy":J
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7    # "agentSuccess":Z
    .restart local v8    # "toCopy":J
    .restart local v10    # "isSharedStorage":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_57c
    move-exception v0

    move/from16 v33, v7

    move-wide/from16 v37, v8

    move/from16 v34, v10

    move-object/from16 v39, v14

    move-object v3, v0

    move-object/from16 v40, v15

    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v10    # "isSharedStorage":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v33    # "agentSuccess":Z
    .restart local v34    # "isSharedStorage":Z
    .restart local v37    # "toCopy":J
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6c6

    .line 529
    .end local v33    # "agentSuccess":Z
    .end local v34    # "isSharedStorage":Z
    .end local v37    # "toCopy":J
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7    # "agentSuccess":Z
    .restart local v8    # "toCopy":J
    .restart local v10    # "isSharedStorage":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_58a
    move-exception v0

    move/from16 v33, v7

    move-wide/from16 v37, v8

    move/from16 v34, v10

    move-object/from16 v39, v14

    move-object v3, v0

    move-object/from16 v40, v15

    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v10    # "isSharedStorage":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v33    # "agentSuccess":Z
    .restart local v34    # "isSharedStorage":Z
    .restart local v37    # "toCopy":J
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6f5

    .line 534
    .end local v30    # "okay":Z
    .end local v33    # "agentSuccess":Z
    .end local v34    # "isSharedStorage":Z
    .end local v37    # "toCopy":J
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "okay":Z
    .restart local v7    # "agentSuccess":Z
    .restart local v8    # "toCopy":J
    .restart local v10    # "isSharedStorage":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_598
    move-exception v0

    move/from16 v30, v3

    move/from16 v33, v7

    move-wide/from16 v37, v8

    move/from16 v34, v10

    move-object/from16 v39, v14

    move-object v3, v0

    move-object/from16 v40, v15

    .end local v3    # "okay":Z
    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v10    # "isSharedStorage":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v30    # "okay":Z
    .restart local v33    # "agentSuccess":Z
    .restart local v34    # "isSharedStorage":Z
    .restart local v37    # "toCopy":J
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6c6

    .line 529
    .end local v30    # "okay":Z
    .end local v33    # "agentSuccess":Z
    .end local v34    # "isSharedStorage":Z
    .end local v37    # "toCopy":J
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "okay":Z
    .restart local v7    # "agentSuccess":Z
    .restart local v8    # "toCopy":J
    .restart local v10    # "isSharedStorage":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_5a8
    move-exception v0

    move/from16 v30, v3

    move/from16 v33, v7

    move-wide/from16 v37, v8

    move/from16 v34, v10

    move-object/from16 v39, v14

    move-object v3, v0

    move-object/from16 v40, v15

    .end local v3    # "okay":Z
    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v10    # "isSharedStorage":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v30    # "okay":Z
    .restart local v33    # "agentSuccess":Z
    .restart local v34    # "isSharedStorage":Z
    .restart local v37    # "toCopy":J
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6f5

    .line 495
    .end local v30    # "okay":Z
    .end local v33    # "agentSuccess":Z
    .end local v34    # "isSharedStorage":Z
    .end local v37    # "toCopy":J
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "okay":Z
    .restart local v7    # "agentSuccess":Z
    .restart local v8    # "toCopy":J
    .restart local v10    # "isSharedStorage":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_5b8
    move/from16 v30, v3

    move/from16 v33, v7

    move-wide/from16 v37, v8

    move/from16 v34, v10

    move-object/from16 v39, v14

    .end local v3    # "okay":Z
    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v10    # "isSharedStorage":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v30    # "okay":Z
    .restart local v33    # "agentSuccess":Z
    .restart local v34    # "isSharedStorage":Z
    .restart local v37    # "toCopy":J
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_5c2
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_5c8
    .catch Ljava/io/IOException; {:try_start_5c2 .. :try_end_5c8} :catch_6a8
    .catch Landroid/os/RemoteException; {:try_start_5c2 .. :try_end_5c8} :catch_6a3
    .catch Ljava/lang/NullPointerException; {:try_start_5c2 .. :try_end_5c8} :catch_6cf

    if-eqz v3, :cond_623

    .line 499
    :try_start_5ca
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-wide v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v3, v2, Lcom/android/server/backup/FileMetadata;->version:J

    .line 504
    new-instance v3, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 507
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v2

    move-object/from16 v21, v5

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 509
    .local v3, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-key-value-runner"

    invoke-direct {v4, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_613
    .catch Ljava/io/IOException; {:try_start_5ca .. :try_end_613} :catch_61d
    .catch Landroid/os/RemoteException; {:try_start_5ca .. :try_end_613} :catch_617
    .catch Ljava/lang/NullPointerException; {:try_start_5ca .. :try_end_613} :catch_6cf

    .line 510
    .end local v3    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    move-object/from16 v40, v15

    goto/16 :goto_68b

    .line 534
    :catch_617
    move-exception v0

    move-object v3, v0

    move-object/from16 v40, v15

    goto/16 :goto_6c6

    .line 529
    :catch_61d
    move-exception v0

    move-object v3, v0

    move-object/from16 v40, v15

    goto/16 :goto_6f5

    .line 518
    :cond_623
    :try_start_623
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_62e
    .catch Ljava/io/IOException; {:try_start_623 .. :try_end_62e} :catch_6a8
    .catch Landroid/os/RemoteException; {:try_start_623 .. :try_end_62e} :catch_6a3
    .catch Ljava/lang/NullPointerException; {:try_start_623 .. :try_end_62e} :catch_6cf

    if-eqz v3, :cond_65c

    .line 519
    :try_start_630
    const-string/jumbo v3, "system process agent - spinning a thread"

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v3, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v20, v6, v7

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 522
    .local v3, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-sys-runner"

    invoke-direct {v4, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_659
    .catch Ljava/io/IOException; {:try_start_630 .. :try_end_659} :catch_61d
    .catch Landroid/os/RemoteException; {:try_start_630 .. :try_end_659} :catch_617
    .catch Ljava/lang/NullPointerException; {:try_start_630 .. :try_end_659} :catch_6cf

    .line 523
    .end local v3    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    move-object/from16 v40, v15

    goto :goto_68b

    .line 524
    :cond_65c
    :try_start_65c
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v17, v4, v5

    iget-wide v4, v2, Lcom/android/server/backup/FileMetadata;->size:J

    iget v6, v2, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v7, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v9, v2, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_66d
    .catch Ljava/io/IOException; {:try_start_65c .. :try_end_66d} :catch_6a8
    .catch Landroid/os/RemoteException; {:try_start_65c .. :try_end_66d} :catch_6a3
    .catch Ljava/lang/NullPointerException; {:try_start_65c .. :try_end_66d} :catch_6cf

    move-object v11, v15

    .end local v15    # "pkg":Ljava/lang/String;
    .local v11, "pkg":Ljava/lang/String;
    :try_start_66e
    iget-wide v14, v2, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_670
    .catch Ljava/io/IOException; {:try_start_66e .. :try_end_670} :catch_69d
    .catch Landroid/os/RemoteException; {:try_start_66e .. :try_end_670} :catch_698
    .catch Ljava/lang/NullPointerException; {:try_start_66e .. :try_end_670} :catch_6cf

    move-object/from16 v40, v11

    .end local v11    # "pkg":Ljava/lang/String;
    .local v40, "pkg":Ljava/lang/String;
    :try_start_672
    iget-object v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 526
    invoke-virtual {v11}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 524
    move-object/from16 v16, v3

    move-wide/from16 v18, v4

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v9

    move-wide/from16 v25, v14

    move/from16 v27, p6

    invoke-interface/range {v16 .. v28}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_68b
    .catch Ljava/io/IOException; {:try_start_672 .. :try_end_68b} :catch_694
    .catch Landroid/os/RemoteException; {:try_start_672 .. :try_end_68b} :catch_691
    .catch Ljava/lang/NullPointerException; {:try_start_672 .. :try_end_68b} :catch_6cf

    .line 540
    :goto_68b
    move/from16 v3, v30

    move/from16 v7, v33

    goto/16 :goto_6fd

    .line 534
    :catch_691
    move-exception v0

    move-object v3, v0

    goto :goto_6c6

    .line 529
    :catch_694
    move-exception v0

    move-object v3, v0

    goto/16 :goto_6f5

    .line 534
    .end local v40    # "pkg":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    :catch_698
    move-exception v0

    move-object/from16 v40, v11

    move-object v3, v0

    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v40    # "pkg":Ljava/lang/String;
    goto :goto_6c6

    .line 529
    .end local v40    # "pkg":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    :catch_69d
    move-exception v0

    move-object/from16 v40, v11

    move-object v3, v0

    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v40    # "pkg":Ljava/lang/String;
    goto/16 :goto_6f5

    .line 534
    .end local v40    # "pkg":Ljava/lang/String;
    .restart local v15    # "pkg":Ljava/lang/String;
    :catch_6a3
    move-exception v0

    move-object/from16 v40, v15

    move-object v3, v0

    .end local v15    # "pkg":Ljava/lang/String;
    .restart local v40    # "pkg":Ljava/lang/String;
    goto :goto_6c6

    .line 529
    .end local v40    # "pkg":Ljava/lang/String;
    .restart local v15    # "pkg":Ljava/lang/String;
    :catch_6a8
    move-exception v0

    move-object/from16 v40, v15

    move-object v3, v0

    .end local v15    # "pkg":Ljava/lang/String;
    .restart local v40    # "pkg":Ljava/lang/String;
    goto :goto_6f5

    .line 638
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v30    # "okay":Z
    .end local v33    # "agentSuccess":Z
    .end local v34    # "isSharedStorage":Z
    .end local v35    # "timeout":J
    .end local v37    # "toCopy":J
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v40    # "pkg":Ljava/lang/String;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_6ad
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p6

    move-object/from16 v9, p7

    move-object v2, v0

    move-object v3, v14

    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_896

    .line 534
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .local v3, "okay":Z
    .restart local v7    # "agentSuccess":Z
    .restart local v8    # "toCopy":J
    .restart local v10    # "isSharedStorage":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v35    # "timeout":J
    :catch_6b8
    move-exception v0

    move/from16 v30, v3

    move/from16 v33, v7

    move-wide/from16 v37, v8

    move/from16 v34, v10

    move-object/from16 v39, v14

    move-object/from16 v40, v15

    move-object v3, v0

    .line 537
    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v10    # "isSharedStorage":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v15    # "pkg":Ljava/lang/String;
    .local v3, "e":Landroid/os/RemoteException;
    .restart local v30    # "okay":Z
    .restart local v33    # "agentSuccess":Z
    .restart local v34    # "isSharedStorage":Z
    .restart local v37    # "toCopy":J
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "pkg":Ljava/lang/String;
    :goto_6c6
    :try_start_6c6
    const-string v4, "Agent crashed during full restore"

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6cb
    .catch Ljava/io/IOException; {:try_start_6c6 .. :try_end_6cb} :catch_6db
    .catch Ljava/lang/NullPointerException; {:try_start_6c6 .. :try_end_6cb} :catch_6cf

    .line 538
    const/4 v7, 0x0

    .line 539
    .end local v33    # "agentSuccess":Z
    .restart local v7    # "agentSuccess":Z
    const/4 v4, 0x0

    move v3, v4

    .end local v30    # "okay":Z
    .local v4, "okay":Z
    goto :goto_6fd

    .line 638
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "okay":Z
    .end local v7    # "agentSuccess":Z
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v34    # "isSharedStorage":Z
    .end local v35    # "timeout":J
    .end local v37    # "toCopy":J
    .end local v40    # "pkg":Ljava/lang/String;
    :catch_6cf
    move-exception v0

    move-object/from16 v10, p1

    :goto_6d2
    move/from16 v11, p6

    move-object/from16 v9, p7

    move-object v2, v0

    move-object/from16 v3, v39

    goto/16 :goto_896

    .line 627
    :catch_6db
    move-exception v0

    move-object/from16 v10, p1

    :goto_6de
    move/from16 v11, p6

    move-object/from16 v9, p7

    move-object v2, v0

    move-object/from16 v3, v39

    goto/16 :goto_8b2

    .line 529
    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .local v3, "okay":Z
    .restart local v7    # "agentSuccess":Z
    .restart local v8    # "toCopy":J
    .restart local v10    # "isSharedStorage":Z
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v35    # "timeout":J
    :catch_6e7
    move-exception v0

    move/from16 v30, v3

    move/from16 v33, v7

    move-wide/from16 v37, v8

    move/from16 v34, v10

    move-object/from16 v39, v14

    move-object/from16 v40, v15

    move-object v3, v0

    .line 531
    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v10    # "isSharedStorage":Z
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v15    # "pkg":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    .restart local v30    # "okay":Z
    .restart local v33    # "agentSuccess":Z
    .restart local v34    # "isSharedStorage":Z
    .restart local v37    # "toCopy":J
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "pkg":Ljava/lang/String;
    :goto_6f5
    :try_start_6f5
    const-string v4, "Couldn\'t establish restore"

    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6fa
    .catch Ljava/io/IOException; {:try_start_6f5 .. :try_end_6fa} :catch_805
    .catch Ljava/lang/NullPointerException; {:try_start_6f5 .. :try_end_6fa} :catch_7f9

    .line 532
    const/4 v7, 0x0

    .line 533
    .end local v33    # "agentSuccess":Z
    .restart local v7    # "agentSuccess":Z
    const/4 v3, 0x0

    .line 540
    .end local v30    # "okay":Z
    .local v3, "okay":Z
    nop

    .line 543
    :goto_6fd
    if-eqz v3, :cond_79b

    .line 547
    const/4 v4, 0x1

    .line 548
    .local v4, "pipeOkay":Z
    :try_start_700
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v6, v6, v31

    .line 549
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_70d
    .catch Ljava/io/IOException; {:try_start_700 .. :try_end_70d} :catch_78f
    .catch Ljava/lang/NullPointerException; {:try_start_700 .. :try_end_70d} :catch_783

    move-wide/from16 v8, v37

    .line 550
    .end local v37    # "toCopy":J
    .local v5, "pipe":Ljava/io/FileOutputStream;
    .restart local v8    # "toCopy":J
    :goto_70f
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_760

    .line 551
    :try_start_715
    array-length v6, v13

    int-to-long v10, v6

    cmp-long v6, v8, v10

    if-lez v6, :cond_71d

    .line 552
    array-length v6, v13
    :try_end_71c
    .catch Ljava/io/IOException; {:try_start_715 .. :try_end_71c} :catch_6db
    .catch Ljava/lang/NullPointerException; {:try_start_715 .. :try_end_71c} :catch_6cf

    goto :goto_71e

    :cond_71d
    long-to-int v6, v8

    .line 553
    .local v6, "toRead":I
    :goto_71e
    move-object/from16 v10, p1

    const/4 v11, 0x0

    :try_start_721
    invoke-virtual {v10, v13, v11, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_725
    .catch Ljava/io/IOException; {:try_start_721 .. :try_end_725} :catch_75d
    .catch Ljava/lang/NullPointerException; {:try_start_721 .. :try_end_725} :catch_75a

    move v11, v14

    .line 554
    .local v11, "nRead":I
    if-gtz v11, :cond_72b

    .line 555
    move/from16 v16, v3

    goto :goto_764

    .line 557
    :cond_72b
    int-to-long v14, v11

    sub-long/2addr v8, v14

    .line 561
    if-eqz v4, :cond_755

    .line 563
    const/4 v14, 0x0

    :try_start_730
    invoke-virtual {v5, v13, v14, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_733
    .catch Ljava/io/IOException; {:try_start_730 .. :try_end_733} :catch_736
    .catch Ljava/lang/NullPointerException; {:try_start_730 .. :try_end_733} :catch_75a

    .line 568
    move/from16 v16, v3

    goto :goto_757

    .line 564
    :catch_736
    move-exception v0

    move-object v14, v0

    .line 565
    .local v14, "e":Ljava/io/IOException;
    :try_start_738
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    .end local v3    # "okay":Z
    .local v16, "okay":Z
    const-string v3, "Failed to write to restore pipe: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-static {v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_752
    .catch Ljava/io/IOException; {:try_start_738 .. :try_end_752} :catch_75d
    .catch Ljava/lang/NullPointerException; {:try_start_738 .. :try_end_752} :catch_75a

    .line 567
    const/4 v3, 0x0

    move v4, v3

    .end local v4    # "pipeOkay":Z
    .local v3, "pipeOkay":Z
    goto :goto_757

    .line 561
    .end local v14    # "e":Ljava/io/IOException;
    .end local v16    # "okay":Z
    .local v3, "okay":Z
    .restart local v4    # "pipeOkay":Z
    :cond_755
    move/from16 v16, v3

    .line 570
    .end local v3    # "okay":Z
    .end local v6    # "toRead":I
    .end local v11    # "nRead":I
    .restart local v16    # "okay":Z
    :goto_757
    move/from16 v3, v16

    goto :goto_70f

    .line 638
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "pipeOkay":Z
    .end local v5    # "pipe":Ljava/io/FileOutputStream;
    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v16    # "okay":Z
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v34    # "isSharedStorage":Z
    .end local v35    # "timeout":J
    .end local v40    # "pkg":Ljava/lang/String;
    :catch_75a
    move-exception v0

    goto/16 :goto_6d2

    .line 627
    :catch_75d
    move-exception v0

    goto/16 :goto_6de

    .line 550
    .restart local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3    # "okay":Z
    .restart local v4    # "pipeOkay":Z
    .restart local v5    # "pipe":Ljava/io/FileOutputStream;
    .restart local v7    # "agentSuccess":Z
    .restart local v8    # "toCopy":J
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v34    # "isSharedStorage":Z
    .restart local v35    # "timeout":J
    .restart local v40    # "pkg":Ljava/lang/String;
    :cond_760
    move-object/from16 v10, p1

    move/from16 v16, v3

    .line 574
    .end local v3    # "okay":Z
    .restart local v16    # "okay":Z
    :goto_764
    :try_start_764
    iget-wide v14, v2, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_766
    .catch Ljava/io/IOException; {:try_start_764 .. :try_end_766} :catch_781
    .catch Ljava/lang/NullPointerException; {:try_start_764 .. :try_end_766} :catch_77f

    move-object/from16 v3, v39

    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v3, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_768
    invoke-virtual {v3, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 578
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_76d
    .catch Ljava/io/IOException; {:try_start_768 .. :try_end_76d} :catch_77a
    .catch Ljava/lang/NullPointerException; {:try_start_768 .. :try_end_76d} :catch_775

    move/from16 v11, p6

    :try_start_76f
    invoke-virtual {v6, v11}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v6

    move v7, v6

    goto :goto_7a5

    .line 638
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v4    # "pipeOkay":Z
    .end local v5    # "pipe":Ljava/io/FileOutputStream;
    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v16    # "okay":Z
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v34    # "isSharedStorage":Z
    .end local v35    # "timeout":J
    .end local v40    # "pkg":Ljava/lang/String;
    :catch_775
    move-exception v0

    move/from16 v11, p6

    goto/16 :goto_84c

    .line 627
    :catch_77a
    move-exception v0

    move/from16 v11, p6

    goto/16 :goto_852

    .line 638
    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_77f
    move-exception v0

    goto :goto_786

    .line 627
    :catch_781
    move-exception v0

    goto :goto_792

    .line 638
    :catch_783
    move-exception v0

    move-object/from16 v10, p1

    :goto_786
    move/from16 v11, p6

    move-object/from16 v9, p7

    move-object v2, v0

    move-object/from16 v3, v39

    goto/16 :goto_803

    .line 627
    :catch_78f
    move-exception v0

    move-object/from16 v10, p1

    :goto_792
    move/from16 v11, p6

    move-object/from16 v9, p7

    move-object v2, v0

    move-object/from16 v3, v39

    goto/16 :goto_80f

    .line 543
    .restart local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .local v3, "okay":Z
    .restart local v7    # "agentSuccess":Z
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v34    # "isSharedStorage":Z
    .restart local v35    # "timeout":J
    .restart local v37    # "toCopy":J
    .restart local v40    # "pkg":Ljava/lang/String;
    :cond_79b
    move-object/from16 v10, p1

    move/from16 v11, p6

    move/from16 v16, v3

    move-object/from16 v3, v39

    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v3, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v16    # "okay":Z
    move-wide/from16 v8, v37

    .line 583
    .end local v37    # "toCopy":J
    .restart local v8    # "toCopy":J
    :goto_7a5
    if-nez v7, :cond_7f4

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Agent failure restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v40

    .end local v40    # "pkg":Ljava/lang/String;
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; ending restore"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v6, 0x12

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 588
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 589
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 590
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v4, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_7e9

    .line 592
    sget-object v4, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    .line 596
    :cond_7e9
    if-eqz p4, :cond_7f6

    .line 597
    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 598
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 599
    return v4

    .line 583
    .end local v5    # "pkg":Ljava/lang/String;
    .restart local v40    # "pkg":Ljava/lang/String;
    :cond_7f4
    move-object/from16 v5, v40

    .line 607
    .end local v7    # "agentSuccess":Z
    .end local v8    # "toCopy":J
    .end local v34    # "isSharedStorage":Z
    .end local v35    # "timeout":J
    .end local v40    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_7f6
    move/from16 v30, v16

    goto :goto_819

    .line 638
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v16    # "okay":Z
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_7f9
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p6

    move-object/from16 v3, v39

    move-object/from16 v9, p7

    move-object v2, v0

    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_803
    goto/16 :goto_896

    .line 627
    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_805
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p6

    move-object/from16 v3, v39

    move-object/from16 v9, p7

    move-object v2, v0

    .end local v39    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_80f
    goto/16 :goto_8b2

    .line 473
    .restart local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .local v3, "okay":Z
    .local v14, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_811
    move-object/from16 v10, p1

    move/from16 v11, p6

    move/from16 v30, v3

    move-object v3, v14

    move-object v5, v15

    .line 607
    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v15    # "pkg":Ljava/lang/String;
    .local v3, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v30    # "okay":Z
    :goto_819
    if-nez v30, :cond_885

    .line 611
    iget-wide v6, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v6, v8

    const-wide/16 v8, -0x200

    and-long/2addr v6, v8

    .line 612
    .local v6, "bytesToConsume":J
    :goto_823
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_841

    .line 613
    array-length v4, v13

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-lez v4, :cond_831

    .line 614
    array-length v4, v13

    goto :goto_832

    :cond_831
    long-to-int v4, v6

    .line 615
    .local v4, "toRead":I
    :goto_832
    const/4 v8, 0x0

    invoke-virtual {v10, v13, v8, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    int-to-long v8, v9

    .line 616
    .local v8, "nRead":J
    const-wide/16 v14, 0x0

    cmp-long v16, v8, v14

    if-gtz v16, :cond_83f

    .line 617
    goto :goto_841

    .line 619
    :cond_83f
    sub-long/2addr v6, v8

    .line 620
    .end local v4    # "toRead":I
    .end local v8    # "nRead":J
    goto :goto_823

    .line 621
    :cond_841
    :goto_841
    sget-object v4, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_885

    .line 622
    sget-object v4, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_84a
    .catch Ljava/io/IOException; {:try_start_76f .. :try_end_84a} :catch_851
    .catch Ljava/lang/NullPointerException; {:try_start_76f .. :try_end_84a} :catch_84b

    goto :goto_885

    .line 638
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "bytesToConsume":J
    .end local v29    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v30    # "okay":Z
    :catch_84b
    move-exception v0

    :goto_84c
    move-object/from16 v9, p7

    move-object v2, v0

    goto/16 :goto_896

    .line 627
    :catch_851
    move-exception v0

    :goto_852
    move-object/from16 v9, p7

    move-object v2, v0

    goto/16 :goto_8b2

    .line 638
    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_857
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p6

    move-object v3, v14

    move-object/from16 v9, p7

    move-object v2, v0

    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto :goto_896

    .line 627
    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_861
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p6

    move-object v3, v14

    move-object/from16 v9, p7

    move-object v2, v0

    .end local v14    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_8b2

    .line 638
    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v8, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v10, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_86c
    move-exception v0

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    goto :goto_890

    .line 627
    :catch_874
    move-exception v0

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    const/16 v31, 0x1

    goto :goto_8ac

    .line 213
    .local v5, "info":Lcom/android/server/backup/FileMetadata;
    :cond_87c
    move/from16 v11, p6

    move-object v2, v5

    move/from16 v31, v6

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    .line 647
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_885
    :goto_885
    move-object/from16 v4, p7

    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v4, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_887
    move-object v5, v2

    goto :goto_8d8

    .line 638
    .end local v2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_889
    move-exception v0

    move/from16 v31, v6

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    :goto_890
    move-object v12, v11

    move/from16 v11, p6

    move-object/from16 v9, p7

    move-object v2, v0

    .line 640
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "e":Ljava/lang/NullPointerException;
    .restart local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v9, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_896
    const-string v4, "NullPointerException  exception on restore "

    invoke-static {v12, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    sget-object v4, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_8a2

    .line 643
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    .line 646
    :cond_8a2
    const/4 v5, 0x0

    move-object v4, v9

    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    goto :goto_8d8

    .line 627
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v9    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_8a5
    move-exception v0

    move/from16 v31, v6

    move-object v3, v8

    move-object/from16 v32, v10

    move-object v10, v12

    :goto_8ac
    move-object v12, v11

    move/from16 v11, p6

    move-object/from16 v9, p7

    move-object v2, v0

    .line 629
    .end local v8    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v10    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v32    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_8b2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "io exception on restore socket read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    sget-object v4, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_8d2

    .line 632
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    .line 634
    :cond_8d2
    const/4 v4, -0x3

    invoke-virtual {v1, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 635
    const/4 v5, 0x0

    .line 647
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    move-object v4, v9

    .line 651
    .end local v9    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_8d8
    if-nez v5, :cond_8eb

    .line 655
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 656
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 657
    if-eqz p2, :cond_8ec

    .line 658
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v6, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_8ec

    .line 651
    :cond_8eb
    const/4 v2, 0x0

    .line 661
    :cond_8ec
    :goto_8ec
    if-eqz v5, :cond_8f1

    move/from16 v15, v31

    goto :goto_8f2

    :cond_8f1
    move v15, v2

    :goto_8f2
    return v15
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_14

    .line 789
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 793
    goto :goto_14

    .line 790
    :catch_8
    move-exception v0

    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 795
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public setPrivilegeApp(Z)V
    .registers 2
    .param p1, "privilegeApp"    # Z

    .line 178
    iput-boolean p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    .line 179
    return-void
.end method
