.class final Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
.super Landroid/os/Handler;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreRebootVerificationHandler"
.end annotation


# static fields
.field private static final MSG_PRE_REBOOT_VERIFICATION_APEX:I = 0x2

.field private static final MSG_PRE_REBOOT_VERIFICATION_APK:I = 0x3

.field private static final MSG_PRE_REBOOT_VERIFICATION_END:I = 0x4

.field private static final MSG_PRE_REBOOT_VERIFICATION_START:I = 0x1


# instance fields
.field private mIsReady:Z

.field private mPendingSessionIds:Landroid/util/IntArray;

.field private final mVerificationRunning:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/pm/StagingManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/StagingManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1307
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    .line 1308
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1304
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    .line 1309
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # I

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->startPreRebootVerification(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # I

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # I

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apk_Complete(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .param p1, "x1"    # I

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->isVerificationRunning(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    .line 1300
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->readyToStart()V

    return-void
.end method

.method private handlePreRebootVerification_Apex(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 8
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1483
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z
    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$1100(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 1487
    .local v0, "hasApex":Z
    if-eqz v0, :cond_40

    .line 1490
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    invoke-static {v1, p1}, Lcom/android/server/pm/StagingManager;->access$1200(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v1

    .line 1491
    .local v1, "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_13
    if-ge v2, v3, :cond_23

    .line 1492
    iget-object v4, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    # invokes: Lcom/android/server/pm/StagingManager;->validateApexSignature(Landroid/content/pm/PackageInfo;)V
    invoke-static {v4, v5}, Lcom/android/server/pm/StagingManager;->access$1300(Lcom/android/server/pm/StagingManager;Landroid/content/pm/PackageInfo;)V
    :try_end_20
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8 .. :try_end_20} :catch_30

    .line 1491
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1498
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_23
    nop

    .line 1500
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 1501
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1502
    .local v2, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->pruneCachedApksInApex(Ljava/util/List;)V

    goto :goto_40

    .line 1494
    .end local v1    # "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_30
    move-exception v1

    .line 1495
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    iget v2, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1496
    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1497
    return-void

    .line 1505
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_40
    :goto_40
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apex_Complete(I)V

    .line 1506
    return-void
.end method

.method private handlePreRebootVerification_Apk(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1515
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z
    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$1400(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1516
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apk_Complete(I)V

    .line 1517
    return-void

    .line 1521
    :cond_e
    :try_start_e
    const-string v0, "StagingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running a pre-reboot verification for APKs in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " by performing a dry-run install"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->verifyApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V
    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$1500(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_30
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e .. :try_end_30} :catch_31

    .line 1530
    goto :goto_40

    .line 1527
    :catch_31
    move-exception v0

    .line 1528
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1529
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1531
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_40
    return-void
.end method

.method private handlePreRebootVerification_End(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1543
    const-string v0, "StagingManager"

    :try_start_2
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1544
    .local v1, "storageManager":Landroid/os/storage/IStorageManager;
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1545
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_5a

    .line 1554
    .end local v1    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_10
    nop

    .line 1562
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionReady()V

    .line 1575
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1576
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z
    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$1100(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 1577
    .local v0, "hasApex":Z
    if-eqz v0, :cond_59

    .line 1579
    :try_start_42
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # getter for: Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;
    invoke-static {v1}, Lcom/android/server/pm/StagingManager;->access$1600(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/ApexManager;

    move-result-object v1

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->markStagedSessionReady(I)V
    :try_end_4d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_42 .. :try_end_4d} :catch_4e

    .line 1583
    goto :goto_59

    .line 1580
    :catch_4e
    move-exception v1

    .line 1581
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    iget v2, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1582
    return-void

    .line 1586
    .end local v0    # "hasApex":Z
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_59
    :goto_59
    return-void

    .line 1547
    :catch_5a
    move-exception v1

    .line 1549
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to get hold of StorageManager"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1550
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1552
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1553
    return-void
.end method

.method private handlePreRebootVerification_Start(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1450
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4f

    .line 1454
    nop

    .line 1455
    const-string/jumbo v0, "rollback"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1454
    invoke-static {v0}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v0

    .line 1459
    .local v0, "rm":Landroid/content/rollback/IRollbackManager;
    :try_start_15
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v0, v1}, Landroid/content/rollback/IRollbackManager;->notifyStagedSession(I)I

    move-result v1

    .line 1460
    .local v1, "rollbackId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 1461
    iget-object v2, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # getter for: Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/pm/StagingManager;->access$900(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_25} :catch_36

    .line 1462
    :try_start_25
    iget-object v3, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # getter for: Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/android/server/pm/StagingManager;->access$1000(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseIntArray;

    move-result-object v3

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1463
    monitor-exit v2

    goto :goto_35

    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_32

    .end local v0    # "rm":Landroid/content/rollback/IRollbackManager;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_34
    throw v3
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_35} :catch_36

    .line 1468
    .end local v1    # "rollbackId":I
    .restart local v0    # "rm":Landroid/content/rollback/IRollbackManager;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_35
    :goto_35
    goto :goto_4f

    .line 1465
    :catch_36
    move-exception v1

    .line 1466
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notifyStagedSession for session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1471
    .end local v0    # "rm":Landroid/content/rollback/IRollbackManager;
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Start_Complete(I)V

    .line 1472
    return-void
.end method

.method private isVerificationRunning(I)Z
    .registers 4
    .param p1, "sessionId"    # I

    .line 1427
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1428
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1429
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private notifyPreRebootVerification_Apex_Complete(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 1437
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1438
    return-void
.end method

.method private notifyPreRebootVerification_Apk_Complete(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 1441
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1442
    return-void
.end method

.method private notifyPreRebootVerification_Start_Complete(I)V
    .registers 4
    .param p1, "sessionId"    # I

    .line 1433
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1434
    return-void
.end method

.method private onPreRebootVerificationComplete(I)V
    .registers 6
    .param p1, "sessionId"    # I

    .line 1414
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1415
    :try_start_3
    const-string v1, "StagingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping preRebootVerification for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1417
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_31

    .line 1420
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;
    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$700(Lcom/android/server/pm/StagingManager;I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 1421
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1422
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 1424
    :cond_30
    return-void

    .line 1417
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private onPreRebootVerificationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 1402
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/PackageInstallerSession;)Z
    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$800(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to abort apex session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_20
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1408
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1409
    return-void
.end method

.method private declared-synchronized readyToStart()V
    .registers 3

    monitor-enter p0

    .line 1369
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mIsReady:Z

    .line 1370
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    if-eqz v0, :cond_20

    .line 1371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1372
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->startPreRebootVerification(I)V

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1374
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_22

    .line 1376
    :cond_20
    monitor-exit p0

    return-void

    .line 1368
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startPreRebootVerification(I)V
    .registers 7
    .param p1, "sessionId"    # I

    monitor-enter p0

    .line 1380
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mIsReady:Z

    if-nez v0, :cond_17

    .line 1381
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    if-nez v0, :cond_10

    .line 1382
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    .line 1384
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mPendingSessionIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_58

    .line 1385
    monitor-exit p0

    return-void

    .line 1388
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;
    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->access$700(Lcom/android/server/pm/StagingManager;I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 1389
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_58

    .line 1391
    if-eqz v0, :cond_52

    :try_start_22
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_52

    .line 1394
    :cond_29
    const-string v2, "StagingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting preRebootVerification for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v2, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->mVerificationRunning:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1396
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_50

    .line 1397
    const/4 v1, 0x0

    :try_start_47
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_58

    .line 1398
    monitor-exit p0

    return-void

    .line 1396
    :catchall_50
    move-exception v2

    goto :goto_56

    .line 1392
    :cond_52
    :goto_52
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_55

    monitor-exit p0

    return-void

    .line 1396
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    :catchall_55
    move-exception v2

    :goto_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_50

    :try_start_57
    throw v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    .line 1379
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .end local p1    # "sessionId":I
    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1332
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1333
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;
    invoke-static {v1, v0}, Lcom/android/server/pm/StagingManager;->access$700(Lcom/android/server/pm/StagingManager;I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    .line 1334
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    const-string v2, "StagingManager"

    if-nez v1, :cond_21

    .line 1335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session disappeared in the middle of pre-reboot verification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return-void

    .line 1339
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1341
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V

    .line 1342
    return-void

    .line 1345
    :cond_2b
    const/4 v3, 0x2

    :try_start_2c
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_46

    if-eq v4, v3, :cond_42

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3e

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3a

    goto :goto_4a

    .line 1356
    :cond_3a
    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_End(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_4a

    .line 1353
    :cond_3e
    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_Apk(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1354
    goto :goto_4a

    .line 1350
    :cond_42
    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_Apex(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1351
    goto :goto_4a

    .line 1347
    :cond_46
    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->handlePreRebootVerification_Start(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_49} :catch_4b

    .line 1348
    nop

    .line 1364
    :goto_4a
    goto :goto_65

    .line 1359
    :catch_4b
    move-exception v4

    .line 1360
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Pre-reboot verification failed due to unhandled exception"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pre-reboot verification failed due to unhandled exception: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 1365
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_65
    return-void
.end method
