.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;,
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field private final mBackupRunnerOpToken:I

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private volatile mIsDoingBackup:Z

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field mUpdateSchedule:Z

.field private mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mUserId:I

.field mUserInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V
    .registers 29
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "whichPackages"    # [Ljava/lang/String;
    .param p5, "updateSchedule"    # Z
    .param p6, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p7, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p8, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p9, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p10, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p11, "userInitiated"    # Z

    .line 162
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-direct {v1, v4}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 163
    iput-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 164
    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 165
    move/from16 v6, p5

    iput-boolean v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 166
    move-object/from16 v7, p7

    iput-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 167
    move-object/from16 v8, p6

    iput-object v8, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    array-length v9, v3

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 169
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 170
    move-object/from16 v10, p9

    iput-object v10, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 171
    if-eqz p10, :cond_39

    move-object/from16 v0, p10

    goto :goto_3b

    :cond_39
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_3b
    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 172
    move/from16 v11, p11

    iput-boolean v11, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 175
    nop

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 175
    const-string v12, "Timeout parameters cannot be null"

    invoke-static {v0, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    const-string v12, "PFTBT"

    if-eqz v0, :cond_72

    .line 182
    const-string v0, "Skipping full backup. A backup is already in progress."

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 185
    return-void

    .line 188
    :cond_72
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->registerTask()V

    .line 190
    array-length v13, v3

    const/4 v0, 0x0

    move v14, v0

    :goto_78
    if-ge v14, v13, :cond_123

    aget-object v15, v3, v14

    .line 192
    .local v15, "pkg":Ljava/lang/String;
    :try_start_7c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 193
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    const/high16 v4, 0x8000000

    invoke-virtual {v0, v15, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 195
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iput-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 196
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .local v16, "pm":Landroid/content/pm/PackageManager;
    iget v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-static {v4, v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 204
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v0, v5, v4, v7, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 209
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v4, -0x7d1

    invoke-static {v0, v15, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 211
    goto :goto_115

    .line 212
    :cond_ac
    invoke-static {v3}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 219
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0xa

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v0, v4, v5, v7, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 224
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v4, -0x7d1

    invoke-static {v0, v15, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 226
    goto :goto_115

    .line 227
    :cond_c8
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 234
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0xb

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v0, v4, v5, v7, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 239
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v4, -0x7d1

    invoke-static {v0, v15, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 241
    goto :goto_115

    .line 243
    :cond_e6
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_eb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c .. :try_end_eb} :catch_ed

    .line 251
    nop

    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_115

    .line 244
    :catch_ed
    move-exception v0

    .line 245
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found; ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0xc

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v3, v4, v5, v7, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 190
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "pkg":Ljava/lang/String;
    :goto_115
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    goto/16 :goto_78

    .line 254
    :cond_123
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 99
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 99
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 99
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .param p1, "x1"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 99
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p1
.end method

.method static synthetic lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 3
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "listenerCaller"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public static newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 27
    .param p0, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p2, "whichPackages"    # [Ljava/lang/String;
    .param p3, "updateSchedule"    # Z
    .param p4, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p5, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p6, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p8, "userInitiated"    # Z
    .param p9, "caller"    # Ljava/lang/String;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    .line 112
    .local v0, "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v14

    .line 113
    .local v14, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    new-instance v15, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;

    .local v15, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct {v15, v0, v14}, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 116
    new-instance v16, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v14

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object v12, v15

    move/from16 v13, p8

    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    return-object v16
.end method

.method private registerTask()V
    .registers 7

    .line 258
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 259
    :try_start_7
    const-string v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupmanager pftbt token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v1
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .line 668
    if-eqz p1, :cond_29

    .line 669
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "Unable to close pipe!"

    const-string v3, "PFTBT"

    const/4 v4, 0x0

    if-eqz v1, :cond_18

    .line 670
    aget-object v1, p1, v0

    .line 671
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v0

    .line 673
    :try_start_10
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    .line 676
    goto :goto_18

    .line 674
    :catch_14
    move-exception v0

    .line 675
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_18
    :goto_18
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_29

    .line 679
    aget-object v1, p1, v0

    .line 680
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v0

    .line 682
    :try_start_21
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 685
    goto :goto_29

    .line 683
    :catch_25
    move-exception v0

    .line 684
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_29
    :goto_29
    return-void
.end method

.method public execute()V
    .registers 1

    .line 273
    return-void
.end method

.method public handleCancel(Z)V
    .registers 7
    .param p1, "cancelAll"    # Z

    .line 277
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    if-nez p1, :cond_c

    .line 284
    :try_start_5
    const-string v1, "PFTBT"

    const-string v2, "Expected cancelAll to be true."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_19

    .line 288
    const-string v1, "PFTBT"

    const-string v2, "Ignoring duplicate cancel call."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v0

    return-void

    .line 292
    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 293
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_4a

    .line 294
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_4c

    .line 297
    :try_start_27
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v2, "PFTBT.handleCancel()"

    .line 298
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportClient;->getConnectedTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 299
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_4c

    .line 303
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_4a

    .line 300
    :catch_33
    move-exception v1

    .line 301
    .local v1, "e":Landroid/util/AndroidException;
    :try_start_34
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v1    # "e":Landroid/util/AndroidException;
    :cond_4a
    :goto_4a
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .line 311
    return-void
.end method

.method public run()V
    .registers 38

    .line 317
    move-object/from16 v10, p0

    const/4 v1, 0x0

    .line 320
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 322
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v3, 0x0

    .line 323
    .local v3, "backoff":J
    const/4 v11, 0x0

    .line 326
    .local v11, "backupRunStatus":I
    const/4 v13, 0x0

    :try_start_8
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6fa

    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 327
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v5

    if-nez v5, :cond_1c

    move/from16 v28, v11

    goto/16 :goto_6fc

    .line 350
    :cond_1c
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v6, "PFTBT.run()"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_7c4
    .catchall {:try_start_8 .. :try_end_24} :catchall_7be

    move-object v15, v5

    .line 351
    .local v15, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v9, 0x1

    if-nez v15, :cond_ae

    .line 352
    :try_start_28
    const-string v5, "PFTBT"

    const-string v6, "Transport not present; full data backup not performed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/16 v11, -0x3e8

    .line 354
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0xf

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v5, v6, v7, v9, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_aa
    .catchall {:try_start_28 .. :try_end_3d} :catchall_859

    .line 630
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_45

    .line 631
    const/16 v11, -0x7d3

    move v5, v11

    goto :goto_46

    .line 630
    :cond_45
    move v5, v11

    .line 635
    .end local v11    # "backupRunStatus":I
    .local v5, "backupRunStatus":I
    :goto_46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PFTBT"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v6, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 639
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 640
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 644
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_73

    .line 645
    iget v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 648
    :cond_73
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 649
    :try_start_7a
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v13}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 650
    monitor-exit v6
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_a6

    .line 652
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v6, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 654
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 658
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_95

    .line 659
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 662
    :cond_95
    const-string v6, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 358
    return-void

    .line 650
    :catchall_a6
    move-exception v0

    move-object v7, v0

    :try_start_a8
    monitor-exit v6
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a6

    throw v7

    .line 617
    .end local v5    # "backupRunStatus":I
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v11    # "backupRunStatus":I
    :catch_aa
    move-exception v0

    move-object v5, v0

    goto/16 :goto_7c8

    .line 362
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_ae
    :try_start_ae
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v8, v5

    .line 363
    .local v8, "N":I
    const/16 v5, 0x2000

    new-array v5, v5, [B
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b9} :catch_7c4
    .catchall {:try_start_ae .. :try_end_b9} :catchall_7be

    .line 364
    .local v5, "buffer":[B
    const/4 v6, 0x0

    move-wide/from16 v35, v3

    move v4, v6

    move-wide/from16 v6, v35

    .end local v3    # "backoff":J
    .local v4, "i":I
    .local v6, "backoff":J
    :goto_bf
    if-ge v4, v8, :cond_677

    .line 365
    :try_start_c1
    iput-object v13, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 366
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 367
    .local v3, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 369
    .local v12, "packageName":Ljava/lang/String;
    const-string v13, "PFTBT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Initiating full-data transport backup of "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " token: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v9, 0xb18

    invoke-static {v9, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 374
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_f6} :catch_66d
    .catchall {:try_start_c1 .. :try_end_f6} :catchall_663

    move-object v13, v9

    .line 377
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v13, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_f7
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    if-eqz v2, :cond_fd

    const/4 v2, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v2, 0x0

    :goto_fe
    move v14, v2

    .line 379
    .local v14, "flags":I
    const-wide v18, 0x7fffffffffffffffL

    .line 380
    .local v18, "quota":J
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_107} :catch_657
    .catchall {:try_start_f7 .. :try_end_107} :catchall_64b

    .line 381
    :try_start_107
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_109
    .catchall {:try_start_107 .. :try_end_109} :catchall_622

    if-eqz v2, :cond_126

    .line 382
    :try_start_10b
    monitor-exit v9
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_112

    move-wide/from16 v24, v6

    move/from16 v28, v11

    goto/16 :goto_681

    .line 402
    :catchall_112
    move-exception v0

    move/from16 v20, v4

    move-wide/from16 v24, v6

    move/from16 v26, v8

    move-object/from16 v17, v9

    move/from16 v28, v11

    move-object v2, v12

    move/from16 v29, v14

    move-object v4, v3

    move-object v14, v5

    move-object v5, v13

    move-object v3, v0

    goto/16 :goto_634

    .line 384
    :cond_126
    move/from16 v20, v4

    const/4 v2, 0x0

    .end local v4    # "i":I
    .local v20, "i":I
    :try_start_129
    aget-object v4, v13, v2

    invoke-interface {v15, v3, v4, v14}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v2
    :try_end_12f
    .catchall {:try_start_129 .. :try_end_12f} :catchall_611

    move/from16 v21, v2

    .line 387
    .local v21, "backupPackageStatus":I
    if-nez v21, :cond_1cb

    .line 388
    :try_start_133
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v15, v2, v4}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v22
    :try_end_13a
    .catchall {:try_start_133 .. :try_end_13a} :catchall_1b9

    move-wide/from16 v24, v6

    .end local v6    # "backoff":J
    .local v24, "backoff":J
    move-wide/from16 v6, v22

    .line 391
    .end local v18    # "quota":J
    .local v6, "quota":J
    :try_start_13e
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_142
    .catchall {:try_start_13e .. :try_end_142} :catchall_1a7

    move-object/from16 v18, v2

    .line 392
    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v18, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_144
    new-instance v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v17, 0x1

    aget-object v19, v18, v17

    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    iget v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 395
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v22
    :try_end_152
    .catchall {:try_start_144 .. :try_end_152} :catchall_193

    move/from16 v23, v1

    move-object v1, v4

    move-object/from16 v26, v2

    move-object/from16 v2, p0

    move-object/from16 v27, v3

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v27, "currentPackage":Landroid/content/pm/PackageInfo;
    move-object/from16 v3, v19

    move/from16 v28, v11

    move-object v11, v4

    .end local v11    # "backupRunStatus":I
    .local v28, "backupRunStatus":I
    move-object/from16 v4, v27

    move/from16 v29, v14

    move-object v14, v5

    .end local v5    # "buffer":[B
    .local v14, "buffer":[B
    .local v29, "flags":I
    move-object/from16 v5, v26

    move/from16 v26, v8

    .end local v8    # "N":I
    .local v26, "N":I
    move/from16 v8, v23

    move-object/from16 v23, v12

    move/from16 v12, v17

    move-object/from16 v17, v9

    .end local v12    # "packageName":Ljava/lang/String;
    .local v23, "packageName":Ljava/lang/String;
    move/from16 v9, v22

    :try_start_173
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;JII)V

    iput-object v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 397
    aget-object v1, v18, v12

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 398
    const/4 v1, 0x0

    aput-object v1, v18, v12

    .line 400
    iput-boolean v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_182
    .catchall {:try_start_173 .. :try_end_182} :catchall_186

    move-object/from16 v1, v18

    goto/16 :goto_1dd

    .line 402
    .end local v21    # "backupPackageStatus":I
    :catchall_186
    move-exception v0

    move-object v3, v0

    move-object v5, v13

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v4, v27

    move-wide/from16 v18, v6

    goto/16 :goto_634

    .end local v23    # "packageName":Ljava/lang/String;
    .end local v26    # "N":I
    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v28    # "backupRunStatus":I
    .end local v29    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .local v14, "flags":I
    :catchall_193
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v17, v9

    move/from16 v28, v11

    move/from16 v29, v14

    move-object v14, v5

    move-object v4, v3

    move-object v2, v12

    move-object v5, v13

    move-object/from16 v1, v18

    move-object v3, v0

    move-wide/from16 v18, v6

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .local v14, "buffer":[B
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v26    # "N":I
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "backupRunStatus":I
    .restart local v29    # "flags":I
    goto/16 :goto_634

    .end local v18    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v26    # "N":I
    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v28    # "backupRunStatus":I
    .end local v29    # "flags":I
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .local v14, "flags":I
    :catchall_1a7
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v17, v9

    move/from16 v28, v11

    move/from16 v29, v14

    move-object v14, v5

    move-object v4, v3

    move-wide/from16 v18, v6

    move-object v2, v12

    move-object v5, v13

    move-object v3, v0

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .local v14, "buffer":[B
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v26    # "N":I
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "backupRunStatus":I
    .restart local v29    # "flags":I
    goto/16 :goto_634

    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "backoff":J
    .end local v26    # "N":I
    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v28    # "backupRunStatus":I
    .end local v29    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .local v6, "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .local v14, "flags":I
    .local v18, "quota":J
    :catchall_1b9
    move-exception v0

    move-wide/from16 v24, v6

    move/from16 v26, v8

    move-object/from16 v17, v9

    move/from16 v28, v11

    move/from16 v29, v14

    move-object v14, v5

    move-object v4, v3

    move-object v2, v12

    move-object v5, v13

    move-object v3, v0

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .local v14, "buffer":[B
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v24    # "backoff":J
    .restart local v26    # "N":I
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "backupRunStatus":I
    .restart local v29    # "flags":I
    goto/16 :goto_634

    .line 387
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "backoff":J
    .end local v26    # "N":I
    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v28    # "backupRunStatus":I
    .end local v29    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v6    # "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .local v14, "flags":I
    .restart local v21    # "backupPackageStatus":I
    :cond_1cb
    move-object/from16 v27, v3

    move-wide/from16 v24, v6

    move/from16 v26, v8

    move-object/from16 v17, v9

    move/from16 v28, v11

    move-object/from16 v23, v12

    move/from16 v29, v14

    const/4 v12, 0x1

    move-object v14, v5

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .local v14, "buffer":[B
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v24    # "backoff":J
    .restart local v26    # "N":I
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "backupRunStatus":I
    .restart local v29    # "flags":I
    move-wide/from16 v6, v18

    .line 402
    .end local v18    # "quota":J
    .local v6, "quota":J
    :goto_1dd
    :try_start_1dd
    monitor-exit v17
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_604

    .line 403
    if-nez v21, :cond_3cc

    .line 407
    const/4 v3, 0x0

    :try_start_1e1
    aget-object v4, v13, v3

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 408
    const/4 v4, 0x0

    aput-object v4, v13, v3

    .line 412
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v5, "package-backup-bridge"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 417
    new-instance v3, Ljava/io/FileInputStream;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    .line 418
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 419
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    aget-object v5, v13, v12

    .line 420
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 421
    .local v4, "out":Ljava/io/FileOutputStream;
    const-wide/16 v8, 0x0

    .line 422
    .local v8, "totalRead":J
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v18
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_215} :catch_3c0
    .catchall {:try_start_1e1 .. :try_end_215} :catchall_3b4

    move-wide/from16 v30, v18

    .line 424
    .local v30, "preflightResult":J
    const-wide/16 v18, 0x0

    move-object v5, v13

    move-wide/from16 v12, v30

    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v30    # "preflightResult":J
    .local v5, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v12, "preflightResult":J
    cmp-long v17, v12, v18

    if-gez v17, :cond_259

    .line 430
    :try_start_220
    iget-object v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-wide/from16 v30, v8

    .end local v8    # "totalRead":J
    .local v30, "totalRead":J
    const-string v8, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    .line 434
    const/4 v9, 0x0

    invoke-static {v9, v8, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v8
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_22d} :catch_24e
    .catchall {:try_start_220 .. :try_end_22d} :catchall_243

    .line 430
    move-object/from16 v32, v1

    const/4 v1, 0x3

    const/16 v9, 0x10

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v32, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_232
    invoke-static {v11, v9, v2, v1, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 437
    long-to-int v1, v12

    move-object/from16 v2, v23

    move-wide/from16 v8, v30

    move-object/from16 v30, v3

    move-object/from16 v23, v4

    .end local v21    # "backupPackageStatus":I
    .local v1, "backupPackageStatus":I
    goto/16 :goto_30d

    .line 630
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "quota":J
    .end local v12    # "preflightResult":J
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v20    # "i":I
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v26    # "N":I
    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "flags":I
    .end local v30    # "totalRead":J
    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_243
    move-exception v0

    move-object/from16 v32, v1

    move-object v2, v5

    move-wide/from16 v3, v24

    move/from16 v11, v28

    move-object v5, v0

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_85b

    .line 617
    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catch_24e
    move-exception v0

    move-object/from16 v32, v1

    move-object v2, v5

    move-wide/from16 v3, v24

    move/from16 v11, v28

    move-object v5, v0

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_7c8

    .line 439
    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "quota":J
    .restart local v8    # "totalRead":J
    .restart local v12    # "preflightResult":J
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v20    # "i":I
    .restart local v21    # "backupPackageStatus":I
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v26    # "N":I
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "flags":I
    :cond_259
    move-object/from16 v32, v1

    move-wide/from16 v30, v8

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v8    # "totalRead":J
    .restart local v30    # "totalRead":J
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    move-wide/from16 v8, v30

    .line 441
    .end local v30    # "totalRead":J
    .local v1, "nRead":I
    .restart local v8    # "totalRead":J
    :goto_260
    invoke-virtual {v3, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    move v1, v2

    .line 445
    if-lez v1, :cond_2aa

    .line 446
    const/4 v2, 0x0

    invoke-virtual {v4, v14, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 447
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_26e} :catch_3a9
    .catchall {:try_start_232 .. :try_end_26e} :catchall_39e

    .line 448
    :try_start_26e
    iget-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_270
    .catchall {:try_start_26e .. :try_end_270} :catchall_29f

    if-nez v11, :cond_280

    .line 449
    :try_start_272
    invoke-interface {v15, v1}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v11
    :try_end_276
    .catchall {:try_start_272 .. :try_end_276} :catchall_279

    move/from16 v21, v11

    .end local v21    # "backupPackageStatus":I
    .local v11, "backupPackageStatus":I
    goto :goto_280

    .line 451
    .end local v11    # "backupPackageStatus":I
    .restart local v21    # "backupPackageStatus":I
    :catchall_279
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v11, v23

    move-object v3, v0

    goto :goto_2a5

    :cond_280
    :goto_280
    :try_start_280
    monitor-exit v2
    :try_end_281
    .catchall {:try_start_280 .. :try_end_281} :catchall_29f

    .line 452
    move-object/from16 v30, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v30, "in":Ljava/io/FileInputStream;
    int-to-long v2, v1

    add-long/2addr v8, v2

    .line 453
    :try_start_285
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v2, :cond_29a

    cmp-long v2, v12, v18

    if-lez v2, :cond_29a

    .line 454
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    new-instance v3, Landroid/app/backup/BackupProgress;

    invoke-direct {v3, v12, v13, v8, v9}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 455
    move-object/from16 v11, v23

    .end local v23    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    invoke-static {v2, v11, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_299} :catch_3a9
    .catchall {:try_start_285 .. :try_end_299} :catchall_39e

    goto :goto_29c

    .line 453
    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v23    # "packageName":Ljava/lang/String;
    :cond_29a
    move-object/from16 v11, v23

    .line 459
    .end local v23    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :goto_29c
    move/from16 v2, v21

    goto :goto_2b0

    .line 451
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v30    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v23    # "packageName":Ljava/lang/String;
    :catchall_29f
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v11, v23

    move-object v3, v0

    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v23    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v30    # "in":Ljava/io/FileInputStream;
    :goto_2a5
    :try_start_2a5
    monitor-exit v2
    :try_end_2a6
    .catchall {:try_start_2a5 .. :try_end_2a6} :catchall_2a7

    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v24    # "backoff":J
    .end local v28    # "backupRunStatus":I
    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_2a6
    throw v3

    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v24    # "backoff":J
    .restart local v28    # "backupRunStatus":I
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_2a7
    move-exception v0

    move-object v3, v0

    goto :goto_2a5

    .line 445
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v30    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v23    # "packageName":Ljava/lang/String;
    :cond_2aa
    move-object/from16 v30, v3

    move-object/from16 v11, v23

    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v23    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v30    # "in":Ljava/io/FileInputStream;
    move/from16 v2, v21

    .line 459
    .end local v21    # "backupPackageStatus":I
    .local v2, "backupPackageStatus":I
    :goto_2b0
    if-lez v1, :cond_2bc

    if-eqz v2, :cond_2b5

    goto :goto_2bc

    :cond_2b5
    move/from16 v21, v2

    move-object/from16 v23, v11

    move-object/from16 v3, v30

    goto :goto_260

    .line 462
    :cond_2bc
    :goto_2bc
    const/16 v3, -0x3ed

    if-ne v2, v3, :cond_304

    .line 463
    const-string v3, "PFTBT"

    move/from16 v18, v1

    .end local v1    # "nRead":I
    .local v18, "nRead":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "backupPackageStatus":I
    .local v19, "backupPackageStatus":I
    const-string v2, "Package hit quota limit in-flight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0x12

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v4

    move-object/from16 v16, v11

    const/4 v4, 0x1

    const/4 v11, 0x0

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v11    # "packageName":Ljava/lang/String;
    .local v16, "packageName":Ljava/lang/String;
    .local v23, "out":Ljava/io/FileOutputStream;
    invoke-static {v1, v2, v3, v4, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    move-object/from16 v2, v16

    .end local v16    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    iput-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 470
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v1, v8, v9, v6, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    goto :goto_30b

    .line 462
    .end local v18    # "nRead":I
    .end local v19    # "backupPackageStatus":I
    .end local v23    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "nRead":I
    .local v2, "backupPackageStatus":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_304
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v23, v4

    move-object v2, v11

    .line 474
    .end local v1    # "nRead":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v11    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .restart local v19    # "backupPackageStatus":I
    .restart local v23    # "out":Ljava/io/FileOutputStream;
    :goto_30b
    move/from16 v1, v19

    .end local v19    # "backupPackageStatus":I
    .local v1, "backupPackageStatus":I
    :goto_30d
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v3

    .line 476
    .local v3, "backupRunnerResult":I
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_316
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_316} :catch_3a9
    .catchall {:try_start_2a6 .. :try_end_316} :catchall_39e

    .line 477
    const/4 v11, 0x0

    :try_start_317
    iput-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 479
    iget-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_31b
    .catchall {:try_start_317 .. :try_end_31b} :catchall_393

    if-nez v11, :cond_333

    .line 480
    if-nez v3, :cond_327

    .line 485
    :try_start_31f
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v11

    .line 486
    .local v11, "finishResult":I
    if-nez v1, :cond_326

    .line 487
    move v1, v11

    .line 489
    .end local v11    # "finishResult":I
    :cond_326
    goto :goto_333

    .line 490
    :cond_327
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_32a
    .catchall {:try_start_31f .. :try_end_32a} :catchall_32b

    goto :goto_333

    .line 493
    :catchall_32b
    move-exception v0

    move/from16 v18, v3

    move-wide/from16 v33, v6

    move-object v3, v0

    goto/16 :goto_399

    :cond_333
    :goto_333
    :try_start_333
    monitor-exit v4
    :try_end_334
    .catchall {:try_start_333 .. :try_end_334} :catchall_393

    .line 504
    if-nez v1, :cond_339

    .line 506
    if-eqz v3, :cond_339

    .line 509
    move v1, v3

    .line 522
    :cond_339
    if-eqz v1, :cond_35c

    .line 523
    :try_start_33b
    const-string v4, "PFTBT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "backupRunnerResult":I
    .local v18, "backupRunnerResult":I
    const-string v3, "Error "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " backing up "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35e

    .line 522
    .end local v18    # "backupRunnerResult":I
    .restart local v3    # "backupRunnerResult":I
    :cond_35c
    move/from16 v18, v3

    .line 529
    .end local v3    # "backupRunnerResult":I
    .restart local v18    # "backupRunnerResult":I
    :goto_35e
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v3
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_362} :catch_3a9
    .catchall {:try_start_33b .. :try_end_362} :catchall_39e

    .line 531
    .end local v24    # "backoff":J
    .local v3, "backoff":J
    :try_start_362
    const-string v11, "PFTBT"

    move/from16 v19, v1

    .end local v1    # "backupPackageStatus":I
    .restart local v19    # "backupPackageStatus":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v33, v6

    .end local v6    # "quota":J
    .local v33, "quota":J
    const-string v6, "Transport suggested backoff="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37c
    .catch Ljava/lang/Exception; {:try_start_362 .. :try_end_37c} :catch_38a
    .catchall {:try_start_362 .. :try_end_37c} :catchall_381

    move-wide v6, v3

    move/from16 v1, v19

    goto/16 :goto_3d7

    .line 630
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v8    # "totalRead":J
    .end local v12    # "preflightResult":J
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v18    # "backupRunnerResult":I
    .end local v19    # "backupPackageStatus":I
    .end local v20    # "i":I
    .end local v23    # "out":Ljava/io/FileOutputStream;
    .end local v26    # "N":I
    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "flags":I
    .end local v30    # "in":Ljava/io/FileInputStream;
    .end local v33    # "quota":J
    :catchall_381
    move-exception v0

    move-object v2, v5

    move/from16 v11, v28

    move-object/from16 v1, v32

    move-object v5, v0

    goto/16 :goto_85b

    .line 617
    :catch_38a
    move-exception v0

    move-object v2, v5

    move/from16 v11, v28

    move-object/from16 v1, v32

    move-object v5, v0

    goto/16 :goto_7c8

    .line 493
    .restart local v1    # "backupPackageStatus":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .local v3, "backupRunnerResult":I
    .restart local v6    # "quota":J
    .restart local v8    # "totalRead":J
    .restart local v12    # "preflightResult":J
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v20    # "i":I
    .restart local v23    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "backoff":J
    .restart local v26    # "N":I
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "flags":I
    .restart local v30    # "in":Ljava/io/FileInputStream;
    :catchall_393
    move-exception v0

    move/from16 v18, v3

    move-wide/from16 v33, v6

    move-object v3, v0

    .end local v3    # "backupRunnerResult":I
    .end local v6    # "quota":J
    .restart local v18    # "backupRunnerResult":I
    .restart local v33    # "quota":J
    :goto_399
    :try_start_399
    monitor-exit v4
    :try_end_39a
    .catchall {:try_start_399 .. :try_end_39a} :catchall_39b

    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v24    # "backoff":J
    .end local v28    # "backupRunStatus":I
    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_39a
    throw v3
    :try_end_39b
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_39b} :catch_3a9
    .catchall {:try_start_39a .. :try_end_39b} :catchall_39e

    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v24    # "backoff":J
    .restart local v28    # "backupRunStatus":I
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_39b
    move-exception v0

    move-object v3, v0

    goto :goto_399

    .line 630
    .end local v1    # "backupPackageStatus":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v8    # "totalRead":J
    .end local v12    # "preflightResult":J
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v18    # "backupRunnerResult":I
    .end local v20    # "i":I
    .end local v23    # "out":Ljava/io/FileOutputStream;
    .end local v26    # "N":I
    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "flags":I
    .end local v30    # "in":Ljava/io/FileInputStream;
    .end local v33    # "quota":J
    :catchall_39e
    move-exception v0

    move-object v2, v5

    move-wide/from16 v3, v24

    move/from16 v11, v28

    move-object/from16 v1, v32

    move-object v5, v0

    goto/16 :goto_85b

    .line 617
    :catch_3a9
    move-exception v0

    move-object v2, v5

    move-wide/from16 v3, v24

    move/from16 v11, v28

    move-object/from16 v1, v32

    move-object v5, v0

    goto/16 :goto_7c8

    .line 630
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_3b4
    move-exception v0

    move-object/from16 v32, v1

    move-object v5, v13

    move-object v2, v5

    move-wide/from16 v3, v24

    move/from16 v11, v28

    move-object v5, v0

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_85b

    .line 617
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_3c0
    move-exception v0

    move-object/from16 v32, v1

    move-object v5, v13

    move-object v2, v5

    move-wide/from16 v3, v24

    move/from16 v11, v28

    move-object v5, v0

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_7c8

    .line 403
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "quota":J
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v20    # "i":I
    .restart local v21    # "backupPackageStatus":I
    .local v23, "packageName":Ljava/lang/String;
    .restart local v26    # "N":I
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "flags":I
    :cond_3cc
    move-object/from16 v32, v1

    move-wide/from16 v33, v6

    move-object v5, v13

    move-object/from16 v2, v23

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v6    # "quota":J
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v33    # "quota":J
    move/from16 v1, v21

    move-wide/from16 v6, v24

    .line 538
    .end local v21    # "backupPackageStatus":I
    .end local v24    # "backoff":J
    .local v1, "backupPackageStatus":I
    .local v6, "backoff":J
    :goto_3d7
    :try_start_3d7
    iget-boolean v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_3d9
    .catch Ljava/lang/Exception; {:try_start_3d7 .. :try_end_3d9} :catch_5f9
    .catchall {:try_start_3d7 .. :try_end_3d9} :catchall_5ee

    if-eqz v3, :cond_3f9

    .line 539
    :try_start_3db
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 539
    invoke-virtual {v3, v2, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    goto :goto_3f9

    .line 630
    .end local v1    # "backupPackageStatus":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v20    # "i":I
    .end local v26    # "N":I
    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "flags":I
    .end local v33    # "quota":J
    :catchall_3e5
    move-exception v0

    move-object v2, v5

    move-wide v3, v6

    move/from16 v11, v28

    move-object/from16 v1, v32

    move-object v5, v0

    goto/16 :goto_85b

    .line 617
    :catch_3ef
    move-exception v0

    move-object v2, v5

    move-wide v3, v6

    move/from16 v11, v28

    move-object/from16 v1, v32

    move-object v5, v0

    goto/16 :goto_7c8

    .line 543
    .restart local v1    # "backupPackageStatus":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v20    # "i":I
    .restart local v26    # "N":I
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "flags":I
    .restart local v33    # "quota":J
    :cond_3f9
    :goto_3f9
    const/16 v3, -0x3ea

    if-ne v1, v3, :cond_445

    .line 544
    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 545
    invoke-static {v4, v2, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 548
    const-string v3, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transport rejected backup of "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", skipping"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v3, 0xb19

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v4, v8

    const-string/jumbo v8, "transport rejected"

    const/4 v9, 0x1

    aput-object v8, v4, v9

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 556
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v3, :cond_43f

    .line 557
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-object/from16 v4, v27

    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v4, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move-object/from16 v8, v32

    goto/16 :goto_5a3

    .line 556
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_43f
    move-object/from16 v4, v27

    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    move-object/from16 v8, v32

    goto/16 :goto_5a3

    .line 561
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_445
    move-object/from16 v4, v27

    const/4 v9, 0x1

    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    const/16 v3, -0x3ed

    if-ne v1, v3, :cond_477

    .line 562
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 563
    invoke-static {v8, v2, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 566
    const-string v3, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transport quota exceeded for package: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v3, 0xb1d

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 570
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move-object/from16 v8, v32

    goto/16 :goto_5a3

    .line 572
    :cond_477
    const/16 v3, -0x3eb

    if-ne v1, v3, :cond_4a6

    .line 573
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 574
    invoke-static {v8, v2, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 576
    const-string v3, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Application failure for package: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v3, 0xb07

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 578
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    move-object/from16 v8, v32

    goto/16 :goto_5a3

    .line 580
    :cond_4a6
    const/16 v3, -0x7d3

    if-ne v1, v3, :cond_4df

    .line 581
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 582
    invoke-static {v8, v2, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 584
    const-string v3, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Backup cancelled. package="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", cancelAll="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/16 v3, 0xb1e

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 587
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4db
    .catch Ljava/lang/Exception; {:try_start_3db .. :try_end_4db} :catch_3ef
    .catchall {:try_start_3db .. :try_end_4db} :catchall_3e5

    move-object/from16 v8, v32

    goto/16 :goto_5a3

    .line 589
    :cond_4df
    if-eqz v1, :cond_591

    .line 590
    :try_start_4e1
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v8, -0x3e8

    .line 591
    invoke-static {v3, v2, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 593
    const-string v3, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport failed; aborting backup: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v3, 0xb1a

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_506
    .catch Ljava/lang/Exception; {:try_start_4e1 .. :try_end_506} :catch_5f9
    .catchall {:try_start_4e1 .. :try_end_506} :catchall_5ee

    .line 596
    const/16 v11, -0x3e8

    .line 597
    .end local v28    # "backupRunStatus":I
    .local v11, "backupRunStatus":I
    :try_start_508
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_50f
    .catch Ljava/lang/Exception; {:try_start_508 .. :try_end_50f} :catch_588
    .catchall {:try_start_508 .. :try_end_50f} :catchall_57f

    .line 630
    iget-boolean v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v3, :cond_517

    .line 631
    const/16 v11, -0x7d3

    move v3, v11

    goto :goto_518

    .line 630
    :cond_517
    move v3, v11

    .line 635
    .end local v11    # "backupRunStatus":I
    .local v3, "backupRunStatus":I
    :goto_518
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full backup completed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PFTBT"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v8, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 639
    invoke-virtual {v10, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 640
    move-object/from16 v8, v32

    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v8, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 644
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v9, :cond_547

    .line 645
    iget v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v9, v11}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 648
    :cond_547
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 649
    :try_start_54e
    iget-object v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 650
    monitor-exit v9
    :try_end_555
    .catchall {:try_start_54e .. :try_end_555} :catchall_57b

    .line 652
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v11, "PFTBT.run()"

    invoke-interface {v9, v11}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 654
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 658
    iget-boolean v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v9, :cond_56a

    .line 659
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v9, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 662
    :cond_56a
    const-string v9, "PFTBT"

    const-string v11, "Full data backup pass finished."

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 598
    return-void

    .line 650
    :catchall_57b
    move-exception v0

    move-object v11, v0

    :try_start_57d
    monitor-exit v9
    :try_end_57e
    .catchall {:try_start_57d .. :try_end_57e} :catchall_57b

    throw v11

    .line 630
    .end local v1    # "backupPackageStatus":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "backupRunStatus":I
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v20    # "i":I
    .end local v26    # "N":I
    .end local v29    # "flags":I
    .end local v33    # "quota":J
    .restart local v11    # "backupRunStatus":I
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_57f
    move-exception v0

    move-object/from16 v8, v32

    move-object v2, v5

    move-wide v3, v6

    move-object v1, v8

    move-object v5, v0

    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_85b

    .line 617
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catch_588
    move-exception v0

    move-object/from16 v8, v32

    move-object v2, v5

    move-wide v3, v6

    move-object v1, v8

    move-object v5, v0

    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_7c8

    .line 601
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v11    # "backupRunStatus":I
    .restart local v1    # "backupPackageStatus":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v20    # "i":I
    .restart local v26    # "N":I
    .restart local v28    # "backupRunStatus":I
    .restart local v29    # "flags":I
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v33    # "quota":J
    :cond_591
    move-object/from16 v8, v32

    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_593
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 602
    const/4 v11, 0x0

    invoke-static {v3, v2, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 604
    const/16 v3, 0xb1b

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 605
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 607
    :goto_5a3
    invoke-virtual {v10, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 608
    invoke-virtual {v10, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 609
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5d0

    .line 610
    const-string v3, "PFTBT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unbinding agent in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c3
    .catch Ljava/lang/Exception; {:try_start_593 .. :try_end_5c3} :catch_5e5
    .catchall {:try_start_593 .. :try_end_5c3} :catchall_5dc

    .line 612
    :try_start_5c3
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v11}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_5ce
    .catch Landroid/os/RemoteException; {:try_start_5c3 .. :try_end_5ce} :catch_5cf
    .catch Ljava/lang/Exception; {:try_start_5c3 .. :try_end_5ce} :catch_5e5
    .catchall {:try_start_5c3 .. :try_end_5ce} :catchall_5dc

    goto :goto_5d0

    .line 614
    :catch_5cf
    move-exception v0

    .line 364
    .end local v1    # "backupPackageStatus":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "flags":I
    .end local v33    # "quota":J
    :cond_5d0
    :goto_5d0
    add-int/lit8 v4, v20, 0x1

    move-object v2, v5

    move-object v1, v8

    move-object v5, v14

    move/from16 v8, v26

    move/from16 v11, v28

    const/4 v13, 0x0

    .end local v20    # "i":I
    .local v4, "i":I
    goto/16 :goto_bf

    .line 630
    .end local v4    # "i":I
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v26    # "N":I
    :catchall_5dc
    move-exception v0

    move-object v2, v5

    move-wide v3, v6

    move-object v1, v8

    move/from16 v11, v28

    move-object v5, v0

    goto/16 :goto_85b

    .line 617
    :catch_5e5
    move-exception v0

    move-object v2, v5

    move-wide v3, v6

    move-object v1, v8

    move/from16 v11, v28

    move-object v5, v0

    goto/16 :goto_7c8

    .line 630
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_5ee
    move-exception v0

    move-object/from16 v8, v32

    move-object v2, v5

    move-wide v3, v6

    move-object v1, v8

    move/from16 v11, v28

    move-object v5, v0

    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_85b

    .line 617
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catch_5f9
    move-exception v0

    move-object/from16 v8, v32

    move-object v2, v5

    move-wide v3, v6

    move-object v1, v8

    move/from16 v11, v28

    move-object v5, v0

    .end local v32    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_7c8

    .line 402
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v6, "quota":J
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v20    # "i":I
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v24    # "backoff":J
    .restart local v26    # "N":I
    .restart local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "flags":I
    :catchall_604
    move-exception v0

    move-object v8, v1

    move-wide/from16 v33, v6

    move-object v5, v13

    move-object/from16 v2, v23

    move-object/from16 v4, v27

    move-object v3, v0

    move-wide/from16 v18, v33

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v6    # "quota":J
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v27    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v2    # "packageName":Ljava/lang/String;
    .local v4, "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v33    # "quota":J
    goto :goto_634

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v24    # "backoff":J
    .end local v26    # "N":I
    .end local v28    # "backupRunStatus":I
    .end local v29    # "flags":I
    .end local v33    # "quota":J
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v3, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "buffer":[B
    .local v6, "backoff":J
    .local v8, "N":I
    .restart local v11    # "backupRunStatus":I
    .local v12, "packageName":Ljava/lang/String;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v14, "flags":I
    .local v18, "quota":J
    :catchall_611
    move-exception v0

    move-object v4, v3

    move-wide/from16 v24, v6

    move/from16 v26, v8

    move-object/from16 v17, v9

    move/from16 v28, v11

    move-object v2, v12

    move/from16 v29, v14

    move-object v14, v5

    move-object v5, v13

    move-object v3, v0

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v14, "buffer":[B
    .restart local v24    # "backoff":J
    .restart local v26    # "N":I
    .restart local v28    # "backupRunStatus":I
    .restart local v29    # "flags":I
    goto :goto_634

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v20    # "i":I
    .end local v24    # "backoff":J
    .end local v26    # "N":I
    .end local v28    # "backupRunStatus":I
    .end local v29    # "flags":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v4, "i":I
    .local v5, "buffer":[B
    .restart local v6    # "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v14, "flags":I
    :catchall_622
    move-exception v0

    move/from16 v20, v4

    move-wide/from16 v24, v6

    move/from16 v26, v8

    move-object/from16 v17, v9

    move/from16 v28, v11

    move-object v2, v12

    move/from16 v29, v14

    move-object v4, v3

    move-object v14, v5

    move-object v5, v13

    move-object v3, v0

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "packageName":Ljava/lang/String;
    .local v4, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v14, "buffer":[B
    .restart local v20    # "i":I
    .restart local v24    # "backoff":J
    .restart local v26    # "N":I
    .restart local v28    # "backupRunStatus":I
    .restart local v29    # "flags":I
    :goto_634
    :try_start_634
    monitor-exit v17
    :try_end_635
    .catchall {:try_start_634 .. :try_end_635} :catchall_648

    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v24    # "backoff":J
    .end local v28    # "backupRunStatus":I
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_635
    throw v3
    :try_end_636
    .catch Ljava/lang/Exception; {:try_start_635 .. :try_end_636} :catch_63f
    .catchall {:try_start_635 .. :try_end_636} :catchall_636

    .line 630
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v18    # "quota":J
    .end local v20    # "i":I
    .end local v26    # "N":I
    .end local v29    # "flags":I
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v24    # "backoff":J
    .restart local v28    # "backupRunStatus":I
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_636
    move-exception v0

    move-object v2, v5

    move-wide/from16 v3, v24

    move/from16 v11, v28

    move-object v5, v0

    goto/16 :goto_85b

    .line 617
    :catch_63f
    move-exception v0

    move-object v2, v5

    move-wide/from16 v3, v24

    move/from16 v11, v28

    move-object v5, v0

    goto/16 :goto_7c8

    .line 402
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v14    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v18    # "quota":J
    .restart local v20    # "i":I
    .restart local v26    # "N":I
    .restart local v29    # "flags":I
    :catchall_648
    move-exception v0

    move-object v3, v0

    goto :goto_634

    .line 630
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v18    # "quota":J
    .end local v20    # "i":I
    .end local v24    # "backoff":J
    .end local v26    # "N":I
    .end local v28    # "backupRunStatus":I
    .end local v29    # "flags":I
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_64b
    move-exception v0

    move-wide/from16 v24, v6

    move/from16 v28, v11

    move-object v5, v13

    move-object v2, v5

    move-wide/from16 v3, v24

    move-object v5, v0

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v24    # "backoff":J
    .restart local v28    # "backupRunStatus":I
    goto/16 :goto_85b

    .line 617
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v24    # "backoff":J
    .end local v28    # "backupRunStatus":I
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_657
    move-exception v0

    move-wide/from16 v24, v6

    move/from16 v28, v11

    move-object v5, v13

    move-object v2, v5

    move-wide/from16 v3, v24

    move-object v5, v0

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v24    # "backoff":J
    .restart local v28    # "backupRunStatus":I
    goto/16 :goto_7c8

    .line 630
    .end local v5    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v24    # "backoff":J
    .end local v28    # "backupRunStatus":I
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    :catchall_663
    move-exception v0

    move-wide/from16 v24, v6

    move/from16 v28, v11

    move-object v5, v0

    move-wide/from16 v3, v24

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .restart local v24    # "backoff":J
    .restart local v28    # "backupRunStatus":I
    goto/16 :goto_85b

    .line 617
    .end local v24    # "backoff":J
    .end local v28    # "backupRunStatus":I
    .restart local v6    # "backoff":J
    .restart local v11    # "backupRunStatus":I
    :catch_66d
    move-exception v0

    move-wide/from16 v24, v6

    move/from16 v28, v11

    move-object v5, v0

    move-wide/from16 v3, v24

    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .restart local v24    # "backoff":J
    .restart local v28    # "backupRunStatus":I
    goto/16 :goto_7c8

    .line 364
    .end local v24    # "backoff":J
    .end local v28    # "backupRunStatus":I
    .local v4, "i":I
    .local v5, "buffer":[B
    .restart local v6    # "backoff":J
    .restart local v8    # "N":I
    .restart local v11    # "backupRunStatus":I
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_677
    move/from16 v20, v4

    move-object v14, v5

    move-wide/from16 v24, v6

    move/from16 v26, v8

    move/from16 v28, v11

    .end local v4    # "i":I
    .end local v5    # "buffer":[B
    .end local v6    # "backoff":J
    .end local v8    # "N":I
    .end local v11    # "backupRunStatus":I
    .restart local v14    # "buffer":[B
    .restart local v20    # "i":I
    .restart local v24    # "backoff":J
    .restart local v26    # "N":I
    .restart local v28    # "backupRunStatus":I
    move-object v13, v2

    .line 630
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v20    # "i":I
    .end local v26    # "N":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_681
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_688

    .line 631
    const/16 v11, -0x7d3

    .end local v28    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    goto :goto_68a

    .line 630
    .end local v11    # "backupRunStatus":I
    .restart local v28    # "backupRunStatus":I
    :cond_688
    move/from16 v11, v28

    .line 635
    .end local v28    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :goto_68a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PFTBT"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 639
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 640
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 644
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v2, :cond_6b7

    .line 645
    iget v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 648
    :cond_6b7
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 649
    :try_start_6be
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 650
    monitor-exit v5
    :try_end_6c5
    .catchall {:try_start_6be .. :try_end_6c5} :catchall_6f1

    .line 652
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v3, "PFTBT.run()"

    invoke-interface {v2, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 654
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 658
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v2, :cond_6dd

    .line 659
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v6, v24

    .end local v24    # "backoff":J
    .restart local v6    # "backoff":J
    invoke-virtual {v2, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_6df

    .line 658
    .end local v6    # "backoff":J
    .restart local v24    # "backoff":J
    :cond_6dd
    move-wide/from16 v6, v24

    .line 662
    .end local v24    # "backoff":J
    .restart local v6    # "backoff":J
    :goto_6df
    const-string v2, "PFTBT"

    const-string v3, "Full data backup pass finished."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 664
    goto/16 :goto_854

    .line 650
    .end local v6    # "backoff":J
    .restart local v24    # "backoff":J
    :catchall_6f1
    move-exception v0

    move-wide/from16 v6, v24

    move-object v2, v0

    .end local v24    # "backoff":J
    .restart local v6    # "backoff":J
    :goto_6f5
    :try_start_6f5
    monitor-exit v5
    :try_end_6f6
    .catchall {:try_start_6f5 .. :try_end_6f6} :catchall_6f7

    throw v2

    :catchall_6f7
    move-exception v0

    move-object v2, v0

    goto :goto_6f5

    .line 326
    .end local v6    # "backoff":J
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v3, "backoff":J
    :cond_6fa
    move/from16 v28, v11

    .line 330
    .end local v11    # "backupRunStatus":I
    .restart local v28    # "backupRunStatus":I
    :goto_6fc
    :try_start_6fc
    const-string v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "full backup requested but enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 331
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " setupComplete="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 332
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_737

    .line 337
    const/16 v5, 0xd

    .local v5, "monitoringEvent":I
    goto :goto_739

    .line 339
    .end local v5    # "monitoringEvent":I
    :cond_737
    const/16 v5, 0xe

    .line 341
    .restart local v5    # "monitoringEvent":I
    :goto_739
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 342
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v5, v8, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 345
    const/4 v6, 0x0

    iput-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_746
    .catch Ljava/lang/Exception; {:try_start_6fc .. :try_end_746} :catch_7b9
    .catchall {:try_start_6fc .. :try_end_746} :catchall_7b3

    .line 346
    const/16 v6, -0x7d1

    .line 630
    .end local v28    # "backupRunStatus":I
    .local v6, "backupRunStatus":I
    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v7, :cond_74e

    .line 631
    const/16 v6, -0x7d3

    .line 635
    :cond_74e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PFTBT"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v7, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 639
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 640
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 644
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v7, :cond_77b

    .line 645
    iget v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v7, v8}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 648
    :cond_77b
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 649
    :try_start_782
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 650
    monitor-exit v7
    :try_end_789
    .catchall {:try_start_782 .. :try_end_789} :catchall_7af

    .line 652
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v8, "PFTBT.run()"

    invoke-interface {v7, v8}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 654
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 658
    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v7, :cond_79e

    .line 659
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 662
    :cond_79e
    const-string v7, "PFTBT"

    const-string v8, "Full data backup pass finished."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 347
    return-void

    .line 650
    :catchall_7af
    move-exception v0

    move-object v8, v0

    :try_start_7b1
    monitor-exit v7
    :try_end_7b2
    .catchall {:try_start_7b1 .. :try_end_7b2} :catchall_7af

    throw v8

    .line 630
    .end local v5    # "monitoringEvent":I
    .end local v6    # "backupRunStatus":I
    .restart local v28    # "backupRunStatus":I
    :catchall_7b3
    move-exception v0

    move-object v5, v0

    move/from16 v11, v28

    goto/16 :goto_85b

    .line 617
    :catch_7b9
    move-exception v0

    move-object v5, v0

    move/from16 v11, v28

    goto :goto_7c8

    .line 630
    .end local v28    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :catchall_7be
    move-exception v0

    move/from16 v28, v11

    move-object v5, v0

    .end local v11    # "backupRunStatus":I
    .restart local v28    # "backupRunStatus":I
    goto/16 :goto_85b

    .line 617
    .end local v28    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :catch_7c4
    move-exception v0

    move/from16 v28, v11

    move-object v5, v0

    .line 618
    .local v5, "e":Ljava/lang/Exception;
    :goto_7c8
    const/16 v11, -0x3e8

    .line 619
    :try_start_7ca
    const-string v6, "PFTBT"

    const-string v7, "Exception trying full transport backup"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x13

    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v9, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 626
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    .line 624
    const/4 v13, 0x0

    invoke-static {v13, v9, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 620
    const/4 v12, 0x3

    invoke-static {v6, v7, v8, v12, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_7e9
    .catchall {:try_start_7ca .. :try_end_7e9} :catchall_859

    .line 630
    .end local v5    # "e":Ljava/lang/Exception;
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_7f0

    .line 631
    const/16 v5, -0x7d3

    .end local v11    # "backupRunStatus":I
    .local v5, "backupRunStatus":I
    goto :goto_7f1

    .line 630
    .end local v5    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :cond_7f0
    move v5, v11

    .line 635
    .end local v11    # "backupRunStatus":I
    .restart local v5    # "backupRunStatus":I
    :goto_7f1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PFTBT"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v6, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 639
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 640
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 644
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_81e

    .line 645
    iget v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 648
    :cond_81e
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 649
    :try_start_825
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 650
    monitor-exit v6
    :try_end_82c
    .catchall {:try_start_825 .. :try_end_82c} :catchall_855

    .line 652
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v6, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 654
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 658
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_841

    .line 659
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 662
    :cond_841
    const-string v6, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 664
    move-object v13, v2

    move-wide v6, v3

    move v11, v5

    .line 665
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "backoff":J
    .end local v5    # "backupRunStatus":I
    .local v6, "backoff":J
    .restart local v11    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_854
    return-void

    .line 650
    .end local v6    # "backoff":J
    .end local v11    # "backupRunStatus":I
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "backoff":J
    .restart local v5    # "backupRunStatus":I
    :catchall_855
    move-exception v0

    move-object v7, v0

    :try_start_857
    monitor-exit v6
    :try_end_858
    .catchall {:try_start_857 .. :try_end_858} :catchall_855

    throw v7

    .line 630
    .end local v5    # "backupRunStatus":I
    .restart local v11    # "backupRunStatus":I
    :catchall_859
    move-exception v0

    move-object v5, v0

    :goto_85b
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v6, :cond_861

    .line 631
    const/16 v11, -0x7d3

    .line 635
    :cond_861
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PFTBT"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v6, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 639
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 640
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 644
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_88e

    .line 645
    iget v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 648
    :cond_88e
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 649
    :try_start_895
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 650
    monitor-exit v6
    :try_end_89c
    .catchall {:try_start_895 .. :try_end_89c} :catchall_8c2

    .line 652
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v6, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 654
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 658
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_8b1

    .line 659
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 662
    :cond_8b1
    const-string v6, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 664
    throw v5

    .line 650
    :catchall_8c2
    move-exception v0

    move-object v5, v0

    :try_start_8c4
    monitor-exit v6
    :try_end_8c5
    .catchall {:try_start_8c4 .. :try_end_8c5} :catchall_8c2

    throw v5
.end method

.method public unregisterTask()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 268
    return-void
.end method
