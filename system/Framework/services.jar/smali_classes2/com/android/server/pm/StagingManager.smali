.class public Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;,
        Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;,
        Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;,
        Lcom/android/server/pm/StagingManager$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StagingManager"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mContext:Landroid/content/Context;

.field private final mFailedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailureReason:Ljava/lang/String;

.field private final mFailureReasonFile:Ljava/io/File;

.field private mNativeFailureReason:Ljava/lang/String;

.field private final mPackageParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field

.field private final mPi:Lcom/android/server/pm/PackageInstallerService;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

.field private final mSessionRollbackIds:Landroid/util/SparseIntArray;

.field private final mStagedSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuccessfulStagedSessionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/Context;Ljava/util/function/Supplier;)V
    .registers 7
    .param p1, "pi"    # Lcom/android/server/pm/PackageInstallerService;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerService;",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p3, "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/staged-install/failure_reason.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 129
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 130
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/android/server/pm/StagingManager;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 133
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 134
    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 135
    new-instance v0, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    .line 136
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;-><init>(Lcom/android/server/pm/StagingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 139
    :try_start_56
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_62} :catch_76

    .line 140
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_62
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_6c

    .line 141
    :try_start_68
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_76

    goto :goto_77

    .line 139
    :catchall_6c
    move-exception v1

    :try_start_6d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v2

    :try_start_72
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "pi":Lcom/android/server/pm/PackageInstallerService;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    :goto_75
    throw v1
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_76

    .line 141
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "pi":Lcom/android/server/pm/PackageInstallerService;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "packageParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    :catch_76
    move-exception v0

    .line 143
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "StagingManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 144
    return-void
.end method

.method private abortCheckpoint(ILjava/lang/String;)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to install sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "failureReason":Ljava/lang/String;
    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->supportsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->needsCheckpoint()Z

    move-result v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_65

    if-eqz v2, :cond_64

    .line 404
    :try_start_2a
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_47

    .line 406
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_36
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 407
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_47

    .line 409
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_4d

    .line 404
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_3d
    move-exception v3

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v4

    :try_start_43
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "failureReason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "sessionId":I
    .end local p2    # "errorMsg":Ljava/lang/String;
    :goto_46
    throw v3
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_47

    .line 407
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "failureReason":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "sessionId":I
    .restart local p2    # "errorMsg":Ljava/lang/String;
    :catch_47
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Exception;
    :try_start_48
    const-string v3, "Failed to save failure reason: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4d
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 413
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 415
    :cond_5a
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    const-string v3, "StagingManager initiated"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IStorageManager;->abortChanges(Ljava/lang/String;Z)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_64} :catch_65

    .line 425
    :cond_64
    goto :goto_7e

    .line 418
    :catch_65
    move-exception v2

    .line 419
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Failed to abort checkpoint"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 422
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 424
    :cond_78
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 426
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7e
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/StagingManager;Landroid/content/pm/PackageInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->validateApexSignature(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->verifyApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/ApexManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/StagingManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->logFailedApexSessionsIfNecessary()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/StagingManager;I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # I

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;
    .param p1, "x1"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/StagingManager;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method private checkDowngrade(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .registers 14
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "activePackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "newPackage"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 348
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 349
    .local v0, "activeVersion":J
    iget-object v2, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v2, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 350
    .local v2, "newVersionCode":J
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_13

    move v4, v5

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    .line 352
    .local v4, "isAppDebuggable":Z
    :goto_14
    iget-object v6, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result v6

    .line 354
    .local v6, "allowsDowngrade":Z
    cmp-long v7, v0, v2

    if-lez v7, :cond_6d

    if-nez v6, :cond_6d

    .line 355
    iget-object v7, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v8, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v7

    if-nez v7, :cond_44

    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to abort apex session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "StagingManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_44
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Downgrade of APEX package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not allowed. Active version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " attempted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 364
    :cond_6d
    return-void
.end method

.method private checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 9
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 471
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 473
    return-void

    .line 476
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 477
    .local v2, "apexSession":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ApexManager;->isApkInApexInstallSuccess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 482
    .end local v2    # "apexSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_f

    .line 479
    .restart local v2    # "apexSession":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_28
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install apk-in-apex of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 483
    .end local v2    # "apexSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_40
    return-void
.end method

.method private checkRequiredVersionCode(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;)V
    .registers 10
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "activePackage"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 329
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 330
    return-void

    .line 332
    :cond_b
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 333
    .local v0, "activeVersion":J
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_67

    .line 334
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v2

    if-nez v2, :cond_39

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to abort apex session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_39
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed version of APEX package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match required. Active version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 343
    :cond_67
    return-void
.end method

.method private checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1172
    const-string/jumbo v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1173
    return-void

    .line 1176
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1178
    return-void

    .line 1181
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_64

    .line 1185
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1187
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 1188
    return-void

    .line 1190
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1193
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    # invokes: Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->startPreRebootVerification(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    goto :goto_63

    .line 1198
    :cond_37
    :try_start_37
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_3a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_37 .. :try_end_3a} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 1206
    :goto_3a
    goto :goto_63

    .line 1201
    :catch_3b
    move-exception v0

    .line 1202
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StagingManager"

    const-string v2, "Staged install failed due to unhandled exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Staged install failed due to unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_63

    .line 1199
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5e
    move-exception v0

    .line 1200
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageManagerException;)V

    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    goto :goto_3a

    .line 1208
    :goto_63
    return-void

    .line 1183
    :cond_64
    :goto_64
    return-void
.end method

.method private createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;
    .registers 26
    .param p1, "originalSession"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "preReboot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 736
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Unable to get size of: "

    if-eqz p2, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    .line 737
    :cond_a
    const/4 v3, 0x2

    :goto_b
    nop

    .line 738
    .local v3, "errorCode":I
    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string v5, "StagingManager"

    if-eqz v4, :cond_12c

    .line 743
    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v1, v4}, Lcom/android/server/pm/StagingManager;->findAPKsInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 744
    .local v4, "apkFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f7

    .line 750
    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v6

    .line 751
    .local v6, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 752
    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 754
    if-eqz p2, :cond_40

    .line 755
    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v9, -0x40001

    and-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 756
    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x800000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_47

    .line 758
    :cond_40
    iget v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x80000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 761
    :goto_47
    :try_start_47
    iget-object v8, v1, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 762
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v9

    .line 761
    invoke-virtual {v8, v6, v9, v7}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v7

    .line 764
    .local v7, "apkSessionId":I
    iget-object v8, v1, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v8

    .line 765
    .local v8, "apkSession":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 766
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    move v15, v10

    move v13, v9

    .end local v9    # "i":I
    .local v13, "i":I
    .local v15, "size":I
    :goto_61
    if-ge v13, v15, :cond_d7

    .line 767
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v14, v9

    .line 768
    .local v14, "apkFilePath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v9

    .line 769
    .local v11, "apkFile":Ljava/io/File;
    const/high16 v9, 0x10000000

    invoke-static {v11, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    move-object/from16 v16, v9

    .line 771
    .local v16, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v16, :cond_7d

    const-wide/16 v9, -0x1

    goto :goto_81

    :cond_7d
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9

    :goto_81
    move-wide/from16 v17, v9

    .line 772
    .local v17, "sizeBytes":J
    const-wide/16 v9, 0x0

    cmp-long v9, v17, v9

    if-ltz v9, :cond_a6

    .line 777
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v19, 0x0

    move-object v9, v8

    move-object/from16 v21, v11

    .end local v11    # "apkFile":Ljava/io/File;
    .local v21, "apkFile":Ljava/io/File;
    move-wide/from16 v11, v19

    move/from16 v19, v13

    move-object/from16 v22, v14

    .end local v13    # "i":I
    .end local v14    # "apkFilePath":Ljava/lang/String;
    .local v19, "i":I
    .local v22, "apkFilePath":Ljava/lang/String;
    move-wide/from16 v13, v17

    move/from16 v20, v15

    .end local v15    # "size":I
    .local v20, "size":I
    move-object/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageInstallerSession;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 766
    .end local v16    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "sizeBytes":J
    .end local v21    # "apkFile":Ljava/io/File;
    .end local v22    # "apkFilePath":Ljava/lang/String;
    add-int/lit8 v13, v19, 0x1

    move/from16 v15, v20

    .end local v19    # "i":I
    .restart local v13    # "i":I
    goto :goto_61

    .line 773
    .end local v20    # "size":I
    .restart local v11    # "apkFile":Ljava/io/File;
    .restart local v14    # "apkFilePath":Ljava/lang/String;
    .restart local v15    # "size":I
    .restart local v16    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "sizeBytes":J
    :cond_a6
    move-object/from16 v21, v11

    move/from16 v19, v13

    move-object/from16 v22, v14

    move/from16 v20, v15

    .end local v11    # "apkFile":Ljava/io/File;
    .end local v13    # "i":I
    .end local v14    # "apkFilePath":Ljava/lang/String;
    .end local v15    # "size":I
    .restart local v19    # "i":I
    .restart local v20    # "size":I
    .restart local v21    # "apkFile":Ljava/io/File;
    .restart local v22    # "apkFilePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v22

    .end local v22    # "apkFilePath":Ljava/lang/String;
    .local v10, "apkFilePath":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "errorCode":I
    .end local v4    # "apkFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "originalSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local p2    # "preReboot":Z
    throw v9
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_d7} :catch_d8
    .catch Landroid/os/ParcelableException; {:try_start_47 .. :try_end_d7} :catch_d8

    .line 779
    .end local v10    # "apkFilePath":Ljava/lang/String;
    .end local v16    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "sizeBytes":J
    .end local v19    # "i":I
    .end local v20    # "size":I
    .end local v21    # "apkFile":Ljava/io/File;
    .restart local v3    # "errorCode":I
    .restart local v4    # "apkFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "originalSession":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p2    # "preReboot":Z
    :cond_d7
    return-object v8

    .line 780
    .end local v7    # "apkSessionId":I
    .end local v8    # "apkSession":Lcom/android/server/pm/PackageInstallerSession;
    :catch_d8
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure to install APK staged session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "Failed to create/write APK session"

    invoke-direct {v5, v3, v7, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 745
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_f7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find staged APK in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 747
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 739
    .end local v4    # "apkFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12c
    const-string v0, "Attempting to install a staged APK session with no staging dir"

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v4, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private ensureActiveApexSessionIsAborted(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1090
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1091
    return v1

    .line 1093
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    .line 1094
    .local v0, "apexSession":Landroid/apex/ApexSessionInfo;
    if-eqz v0, :cond_25

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_25

    .line 1098
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result v1
    :try_end_21
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_19 .. :try_end_21} :catch_22

    return v1

    .line 1099
    :catch_22
    move-exception v1

    .line 1100
    .local v1, "ignore":Lcom/android/server/pm/PackageManagerException;
    const/4 v2, 0x0

    return v2

    .line 1095
    .end local v1    # "ignore":Lcom/android/server/pm/PackageManagerException;
    :cond_25
    :goto_25
    return v1
.end method

.method private extractApexSessions(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .registers 10
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v0, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v1, "childrenSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 444
    :try_start_13
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v4, :cond_2d

    aget v6, v3, v5

    .line 445
    .local v6, "childSessionId":I
    iget-object v7, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 446
    .local v7, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v7, :cond_2a

    .line 447
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v6    # "childSessionId":I
    .end local v7    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 450
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_48

    .line 451
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_33
    if-ge v2, v3, :cond_47

    .line 452
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 453
    .local v4, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {p0, v4}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 454
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v4    # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 457
    .end local v1    # "childrenSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_47
    goto :goto_4e

    .line 450
    .restart local v1    # "childrenSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :catchall_48
    move-exception v3

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v3

    .line 458
    .end local v1    # "childrenSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_4b
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :goto_4e
    return-object v0
.end method

.method private extractApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;
    .registers 15
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "preReboot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 793
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    .line 794
    :cond_4
    const/4 v0, 0x2

    :goto_5
    nop

    .line 795
    .local v0, "errorCode":I
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 796
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    return-object v1

    .line 797
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d4

    .line 802
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v3

    .line 804
    :try_start_26
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v4

    .line 805
    .local v4, "childSessionIds":[I
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2d
    if-ge v7, v5, :cond_45

    aget v8, v4, v7

    .line 806
    .local v8, "id":I
    iget-object v9, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageInstallerSession;

    .line 807
    .local v9, "s":Lcom/android/server/pm/PackageInstallerSession;
    invoke-static {v9}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v10

    if-nez v10, :cond_42

    .line 808
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    .end local v8    # "id":I
    .end local v9    # "s":Lcom/android/server/pm/PackageInstallerSession;
    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 811
    .end local v4    # "childSessionIds":[I
    :cond_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_d1

    .line 812
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 814
    return-object v2

    .line 816
    :cond_4d
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v2

    .line 817
    .local v2, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iput-boolean v6, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 818
    if-eqz p2, :cond_5f

    .line 819
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v4, -0x40001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 822
    :cond_5f
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 823
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 822
    invoke-virtual {v3, v2, v4, v6}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v3

    .line 825
    .local v3, "apkParentSessionId":I
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    .line 827
    .local v4, "apkParentSession":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_6f
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->open()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_b0

    .line 833
    nop

    .line 835
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_78
    if-ge v5, v6, :cond_af

    .line 836
    nop

    .line 837
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 836
    invoke-direct {p0, v7, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v7

    .line 839
    .local v7, "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_85
    iget v8, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PackageInstallerSession;->addChildSessionId(I)V
    :try_end_8a
    .catch Ljava/lang/IllegalStateException; {:try_start_85 .. :try_end_8a} :catch_8e

    .line 844
    nop

    .line 835
    .end local v7    # "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 840
    .restart local v7    # "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    :catch_8e
    move-exception v8

    .line 841
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string v9, "StagingManager"

    const-string v10, "Failed to add a child session for installing the APK files"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to add a child session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v9

    .line 846
    .end local v5    # "i":I
    .end local v6    # "size":I
    .end local v7    # "apkChildSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :cond_af
    return-object v4

    .line 828
    :catch_b0
    move-exception v5

    .line 829
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to prepare multi-package session for staged session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "StagingManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "Unable to prepare multi-package session for staged session"

    invoke-direct {v6, v0, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 811
    .end local v2    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v3    # "apkParentSessionId":I
    .end local v4    # "apkParentSession":Lcom/android/server/pm/PackageInstallerSession;
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_d1
    move-exception v2

    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v2

    .line 848
    .end local v1    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_d4
    return-object v2
.end method

.method private findAPKsInDir(Ljava/io/File;)Ljava/util/List;
    .registers 9
    .param p1, "stageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 704
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    .line 705
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 706
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v4    # "file":Ljava/io/File;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 710
    :cond_31
    return-object v0
.end method

.method private getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 4
    .param p1, "sessionId"    # I

    .line 1294
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1295
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1296
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 1297
    return-object v1

    .line 1296
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private installApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 10
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 885
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->extractApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    .line 887
    .local v1, "apksToInstall":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v1, :cond_8

    .line 888
    return-void

    .line 891
    :cond_8
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    const-string v3, "StagingManager"

    if-eqz v2, :cond_3e

    .line 894
    nop

    .line 895
    const-string/jumbo v2, "rollback"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 894
    invoke-static {v2}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v2

    .line 897
    .local v2, "rm":Landroid/content/rollback/IRollbackManager;
    :try_start_1f
    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v2, v4, v5}, Landroid/content/rollback/IRollbackManager;->notifyStagedApkSession(II)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 901
    goto :goto_3e

    .line 898
    :catch_27
    move-exception v4

    .line 899
    .local v4, "re":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to notifyStagedApkSession for session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    .end local v2    # "rm":Landroid/content/rollback/IRollbackManager;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_3e
    :goto_3e
    new-instance v2, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;-><init>(Lcom/android/server/pm/StagingManager$1;)V

    .line 905
    .local v2, "receiver":Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;
    invoke-virtual {v2}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    .line 906
    invoke-virtual {v2}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->getResult()Landroid/content/Intent;

    move-result-object v0

    .line 907
    .local v0, "result":Landroid/content/Intent;
    const/4 v4, 0x1

    const-string v5, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 909
    .local v4, "status":I
    if-nez v4, :cond_59

    .line 917
    return-void

    .line 910
    :cond_59
    const-string v5, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 912
    .local v5, "errorMessage":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure to install APK staged session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/4 v6, 0x2

    invoke-direct {v3, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private static isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3
    .param p0, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 367
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z
    .registers 2
    .param p0, "apexSessionInfo"    # Landroid/apex/ApexSessionInfo;

    .line 1113
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .registers 3
    .param p1, "session"    # Landroid/apex/ApexSessionInfo;

    .line 1106
    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 8
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1123
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 1125
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_d
    if-ge v3, v2, :cond_1d

    aget v4, v0, v3

    .line 1126
    .local v4, "childSession":I
    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 1127
    return v1

    .line 1125
    .end local v4    # "childSession":I
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1130
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 1132
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1133
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 1134
    .local v0, "parent":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v0, :cond_34

    .line 1135
    return v1

    .line 1137
    :cond_34
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    return v1

    .line 1139
    .end local v0    # "parent":Lcom/android/server/pm/PackageInstallerSession;
    :cond_39
    const-string v0, "StagingManager"

    const-string v2, "Attempting to restore an invalid multi-package session."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return v1
.end method

.method static synthetic lambda$sessionContainsApex$0(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2
    .param p0, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 390
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sessionContainsApk$1(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2
    .param p0, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 394
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private logFailedApexSessionsIfNecessary()V
    .registers 5

    .line 1211
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 1212
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1213
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1216
    :cond_14
    monitor-exit v0

    .line 1217
    return-void

    .line 1216
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private needsCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->needsCheckpoint()Z

    move-result v0

    return v0
.end method

.method private parentOrOwnSessionId(Lcom/android/server/pm/PackageInstallerSession;)I
    .registers 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 925
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v0

    goto :goto_d

    :cond_b
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    :goto_d
    return v0
.end method

.method private prepareForLoggingApexdRevert(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "nativeFailureReason"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 573
    :try_start_3
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    .line 574
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 575
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_14
    monitor-exit v0

    .line 578
    return-void

    .line 577
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 8
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resuming session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StagingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 585
    .local v0, "hasApex":Z
    const/4 v1, 0x0

    .line 586
    .local v1, "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    if-eqz v0, :cond_61

    .line 588
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_36

    iget-object v2, v1, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 593
    iget-object v2, v1, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/StagingManager;->prepareForLoggingApexdRevert(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 596
    :cond_36
    if-eqz v1, :cond_61

    iget-boolean v2, v1, Landroid/apex/ApexSessionInfo;->isVerified:Z

    if-eqz v2, :cond_61

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found pending staged session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " still to be verified, resuming pre-reboot verification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    # invokes: Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->startPreRebootVerification(I)V
    invoke-static {v2, v3}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    .line 604
    return-void

    .line 616
    :cond_61
    const/4 v2, 0x3

    :try_start_62
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->supportsCheckpoint()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->needsCheckpoint()Z

    move-result v3

    if-nez v3, :cond_ae

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reverting back to safe state. Marking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " as failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, "errorMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a5

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 622
    :cond_a5
    const-string v4, "StagingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_ad} :catch_1a1

    .line 624
    return-void

    .line 638
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_ae
    nop

    .line 641
    if-eqz v0, :cond_10e

    .line 642
    const/4 v2, 0x2

    if-eqz v1, :cond_104

    .line 648
    invoke-static {v1}, Lcom/android/server/pm/StagingManager;->isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 649
    const-string v3, "APEX activation failed. Check logcat messages from apexd for more information."

    .line 651
    .restart local v3    # "errorMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d7

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session reverted due to crashing native process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 655
    :cond_d7
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v4, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 658
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_dd
    iget-boolean v3, v1, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v3, :cond_10e

    iget-boolean v3, v1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v3, :cond_e6

    goto :goto_10e

    .line 662
    :cond_e6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Staged session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "at boot didn\'t activate nor fail. Marking it as failed anyway."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    .restart local v3    # "errorMsg":Ljava/lang/String;
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v4, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 643
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_104
    const-string v3, "apexd did not know anything about a staged session supposed to be activated"

    .line 645
    .restart local v3    # "errorMsg":Ljava/lang/String;
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "apexd did not know anything about a staged session supposed to be activated"

    invoke-direct {v4, v2, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 669
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_10e
    :goto_10e
    if-eqz v0, :cond_133

    .line 670
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 671
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreForApexSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APEX packages in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " were successfully activated. Proceeding with APK packages, if any"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing APK packages in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as applied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StagingManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionApplied()V

    .line 681
    if-eqz v0, :cond_1a0

    .line 683
    :try_start_170
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->supportsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_189

    .line 686
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v2
    :try_end_179
    .catch Landroid/os/RemoteException; {:try_start_170 .. :try_end_179} :catch_191

    .line 687
    :try_start_179
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    monitor-exit v2

    goto :goto_190

    :catchall_186
    move-exception v3

    monitor-exit v2
    :try_end_188
    .catchall {:try_start_179 .. :try_end_188} :catchall_186

    .end local v0    # "hasApex":Z
    .end local v1    # "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_188
    throw v3

    .line 691
    .restart local v0    # "hasApex":Z
    .restart local v1    # "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_189
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_188 .. :try_end_190} :catch_191

    .line 697
    :goto_190
    goto :goto_1a0

    .line 693
    :catch_191
    move-exception v2

    .line 694
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "StagingManager"

    const-string v4, "Checkpoint support unknown, marking session as successful immediately."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 699
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1a0
    :goto_1a0
    return-void

    .line 626
    :catch_1a1
    move-exception v3

    .line 628
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checkpoint support unknown. Aborting staged install for session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StagingManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    const-string v4, "Checkpoint support unknown. Aborting staged install."

    invoke-virtual {p1, v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 633
    if-eqz v0, :cond_1c6

    .line 634
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 636
    :cond_1c6
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "Checkpoint support unknown"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method private retrieveRollbackIdForCommitSession(I)I
    .registers 8
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 316
    .local v0, "rm":Landroid/content/rollback/RollbackManager;
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v1

    .line 317
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_13
    if-ge v2, v3, :cond_29

    .line 318
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/RollbackInfo;

    .line 319
    .local v4, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v5

    if-ne v5, p1, :cond_26

    .line 320
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    return v5

    .line 317
    .end local v4    # "rollback":Landroid/content/rollback/RollbackInfo;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 323
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_29
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find rollback id for commit session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z
    .registers 11
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)Z"
        }
    .end annotation

    .line 372
    .local p2, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_b

    .line 373
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 376
    :try_start_e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v1

    .line 377
    .local v1, "childSessionIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_2d

    aget v5, v1, v4

    .line 379
    .local v5, "id":I
    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 381
    .local v6, "s":Lcom/android/server/pm/PackageInstallerSession;
    invoke-interface {p2, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 382
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 377
    .end local v5    # "id":I
    .end local v6    # "s":Lcom/android/server/pm/PackageInstallerSession;
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 385
    :cond_2d
    monitor-exit v0

    return v3

    .line 386
    .end local v1    # "childSessionIds":[I
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 390
    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$cCrTSWVAewHcbpkNkEhDosvsa7E;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$cCrTSWVAewHcbpkNkEhDosvsa7E;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 394
    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$DPIjX5kTmtybLfpjEIRETYd18kE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$DPIjX5kTmtybLfpjEIRETYd18kE;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private snapshotAndRestoreApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # [I
    .param p3, "rm"    # Landroid/content/rollback/IRollbackManager;

    .line 527
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    :try_start_8
    invoke-interface/range {v0 .. v7}, Landroid/content/rollback/IRollbackManager;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 531
    goto :goto_23

    .line 529
    :catch_c
    move-exception v0

    .line 530
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error snapshotting/restoring user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StagingManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method private snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # [I
    .param p3, "rm"    # Landroid/content/rollback/IRollbackManager;

    .line 536
    move-object/from16 v9, p1

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    .line 537
    .local v10, "mPmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    .line 538
    .local v11, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v12, "StagingManager"

    if-nez v11, :cond_2d

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "for snapshotting/restoring user data."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void

    .line 544
    :cond_2d
    const/4 v0, -0x1

    .line 545
    .local v0, "appId":I
    const-wide/16 v1, -0x1

    .line 546
    .local v1, "ceDataInode":J
    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 547
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_71

    .line 548
    iget v14, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 549
    .end local v0    # "appId":I
    .local v14, "appId":I
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v15

    .line 552
    .end local v1    # "ceDataInode":J
    .local v15, "ceDataInode":J
    const/4 v0, 0x1

    move-object/from16 v8, p2

    invoke-virtual {v13, v8, v0}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v17

    .line 554
    .local v17, "installedUsers":[I
    invoke-static {v11, v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v18

    .line 556
    .local v18, "seInfo":Ljava/lang/String;
    const/4 v0, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move v4, v14

    move-wide v5, v15

    move-object/from16 v7, v18

    move v8, v0

    :try_start_54
    invoke-interface/range {v1 .. v8}, Landroid/content/rollback/IRollbackManager;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_58

    .line 560
    goto :goto_6f

    .line 558
    :catch_58
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 559
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error snapshotting/restoring user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v17    # "installedUsers":[I
    .end local v18    # "seInfo":Ljava/lang/String;
    :goto_6f
    move v0, v14

    move-wide v1, v15

    .end local v14    # "appId":I
    .end local v15    # "ceDataInode":J
    .local v0, "appId":I
    .restart local v1    # "ceDataInode":J
    :cond_71
    return-void
.end method

.method private snapshotAndRestoreForApexSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 14
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 492
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 495
    .local v0, "doSnapshotOrRestore":Z
    :goto_14
    if-nez v0, :cond_17

    .line 496
    return-void

    .line 500
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v1

    .line 501
    .local v1, "apexSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 502
    return-void

    .line 505
    :cond_22
    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    .line 506
    .local v2, "um":Landroid/os/UserManagerInternal;
    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 507
    .local v3, "allUsers":[I
    nop

    .line 508
    const-string/jumbo v4, "rollback"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 507
    invoke-static {v4}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v4

    .line 510
    .local v4, "rm":Landroid/content/rollback/IRollbackManager;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "sessionsSize":I
    :goto_3f
    if-ge v5, v6, :cond_6a

    .line 511
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V

    .line 516
    iget-object v8, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 517
    .local v8, "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "apksSize":I
    :goto_59
    if-ge v9, v10, :cond_67

    .line 518
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11, v3, v4}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILandroid/content/rollback/IRollbackManager;)V

    .line 517
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    .line 510
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "j":I
    .end local v10    # "apksSize":I
    :cond_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 521
    .end local v5    # "i":I
    .end local v6    # "sessionsSize":I
    :cond_6a
    return-void
.end method

.method private submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .registers 20
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 241
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v3, v0

    .line 242
    .local v3, "childSessionIds":Landroid/util/IntArray;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2b

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v5, v0

    move v6, v4

    :goto_17
    if-ge v6, v5, :cond_2b

    aget v7, v0, v6

    .line 244
    .local v7, "id":I
    invoke-direct {v1, v7}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 245
    invoke-virtual {v3, v7}, Landroid/util/IntArray;->add(I)V

    .line 243
    .end local v7    # "id":I
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 249
    :cond_2b
    new-instance v0, Landroid/apex/ApexSessionParams;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams;-><init>()V

    move-object v5, v0

    .line 250
    .local v5, "apexSessionParams":Landroid/apex/ApexSessionParams;
    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v0, v5, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 251
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, v5, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 252
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-ne v0, v6, :cond_4e

    .line 253
    iput-boolean v7, v5, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 254
    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {v1, v0}, Lcom/android/server/pm/StagingManager;->retrieveRollbackIdForCommitSession(I)I

    move-result v0

    iput v0, v5, Landroid/apex/ApexSessionParams;->rollbackId:I

    goto :goto_61

    .line 256
    :cond_4e
    iget-object v6, v1, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v6

    .line 257
    :try_start_51
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 258
    .local v0, "rollbackId":I
    if-eq v0, v9, :cond_60

    .line 259
    iput-boolean v7, v5, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 260
    iput v0, v5, Landroid/apex/ApexSessionParams;->rollbackId:I

    .line 262
    .end local v0    # "rollbackId":I
    :cond_60
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_159

    .line 272
    :goto_61
    :try_start_61
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 273
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/ApexManager;->submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;

    move-result-object v0
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_152

    move-object v6, v0

    .line 275
    .local v6, "apexInfoList":Landroid/apex/ApexInfoList;
    iget-object v0, v1, Lcom/android/server/pm/StagingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 276
    nop

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 278
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 279
    .local v9, "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v6, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v10, v0

    move v11, v4

    :goto_83
    if-ge v11, v10, :cond_131

    aget-object v12, v0, v11

    .line 281
    .local v12, "apexInfo":Landroid/apex/ApexInfo;
    const/16 v13, 0x80

    .line 282
    .local v13, "flags":I
    :try_start_89
    iget-object v14, v1, Lcom/android/server/pm/StagingManager;->mPackageParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v14}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_91
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_89 .. :try_end_91} :catch_116

    .line 283
    .local v14, "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :try_start_91
    new-instance v15, Ljava/io/File;

    iget-object v7, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v15

    .line 284
    .local v7, "apexFile":Ljava/io/File;
    const/16 v15, 0x80

    invoke-virtual {v14, v7, v15, v4}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v16

    move-object/from16 v17, v16

    .line 286
    .local v17, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    move-object/from16 v4, v17

    .end local v17    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .local v4, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    invoke-static {v4, v12, v15}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generate(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v15
    :try_end_a7
    .catchall {:try_start_91 .. :try_end_a7} :catchall_108

    .line 287
    .local v15, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v15, :cond_ee

    .line 292
    .end local v4    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v7    # "apexFile":Ljava/io/File;
    if-eqz v14, :cond_ae

    :try_start_ab
    invoke-virtual {v14}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_ae
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_ab .. :try_end_ae} :catch_116

    .line 295
    .end local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_ae
    nop

    .line 296
    iget-object v4, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v4, v7, v14}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 298
    .local v4, "activePackage":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_cd

    .line 303
    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/StagingManager;->checkRequiredVersionCode(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;)V

    .line 304
    invoke-direct {v1, v2, v4, v15}, Lcom/android/server/pm/StagingManager;->checkDowngrade(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 305
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v7, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v4    # "activePackage":Landroid/content/pm/PackageInfo;
    .end local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v13    # "flags":I
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_83

    .line 299
    .restart local v4    # "activePackage":Landroid/content/pm/PackageInfo;
    .restart local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v13    # "flags":I
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to install new APEX package "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "StagingManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "It is forbidden to install new APEX packages."

    const/4 v10, 0x1

    invoke-direct {v0, v10, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 288
    .local v4, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .restart local v7    # "apexFile":Ljava/io/File;
    .restart local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_ee
    :try_start_ee
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to generate package info: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v0, v11, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "childSessionIds":Landroid/util/IntArray;
    .end local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .end local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v13    # "flags":I
    .end local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    throw v0
    :try_end_108
    .catchall {:try_start_ee .. :try_end_108} :catchall_108

    .line 282
    .end local v4    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v7    # "apexFile":Ljava/io/File;
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "childSessionIds":Landroid/util/IntArray;
    .restart local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .restart local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .restart local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v13    # "flags":I
    .restart local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_108
    move-exception v0

    move-object v4, v0

    if-eqz v14, :cond_115

    :try_start_10c
    invoke-virtual {v14}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_110

    goto :goto_115

    :catchall_110
    move-exception v0

    move-object v7, v0

    :try_start_112
    invoke-virtual {v4, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "childSessionIds":Landroid/util/IntArray;
    .end local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .end local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v13    # "flags":I
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_115
    :goto_115
    throw v4
    :try_end_116
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_112 .. :try_end_116} :catch_116

    .line 292
    .end local v14    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v3    # "childSessionIds":Landroid/util/IntArray;
    .restart local v5    # "apexSessionParams":Landroid/apex/ApexSessionParams;
    .restart local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .restart local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v13    # "flags":I
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catch_116
    move-exception v0

    .line 293
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse APEX package "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-direct {v4, v10, v7, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 308
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v12    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v13    # "flags":I
    :cond_131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has following APEX packages: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "StagingManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-object v8

    .line 275
    .end local v6    # "apexInfoList":Landroid/apex/ApexInfoList;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "apexPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_152
    move-exception v0

    iget-object v4, v1, Lcom/android/server/pm/StagingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 276
    throw v0

    .line 262
    :catchall_159
    move-exception v0

    :try_start_15a
    monitor-exit v6
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    throw v0
.end method

.method private supportsCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0

    return v0
.end method

.method private updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 6
    .param p1, "sessionInfo"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 179
    .local v1, "storedSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_16

    .line 180
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    .end local v1    # "storedSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_16
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private validateApexSignature(Landroid/content/pm/PackageInfo;)V
    .registers 12
    .param p1, "newApexPkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 194
    const-string v0, "Failed to parse APEX package "

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 195
    .local v1, "apexPath":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 196
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v3

    .line 201
    .local v3, "minSignatureScheme":I
    const/4 v4, 0x1

    :try_start_11
    invoke-static {v1, v3}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v5
    :try_end_15
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_11 .. :try_end_15} :catch_96

    .line 205
    .local v5, "newSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 208
    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 210
    .local v6, "existingApexPkg":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_7f

    .line 218
    :try_start_1e
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0
    :try_end_26
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1e .. :try_end_26} :catch_65

    .line 223
    .local v0, "existingSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 226
    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_64

    const/16 v7, 0x8

    .line 228
    invoke-virtual {v0, v5, v7}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-eqz v7, :cond_36

    goto :goto_64

    .line 233
    :cond_36
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APK-container signature of APEX package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not compatible with the one currently installed on device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 230
    :cond_64
    :goto_64
    return-void

    .line 220
    .end local v0    # "existingSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :catch_65
    move-exception v7

    .line 221
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v4, v0, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 213
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown apex package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    .end local v5    # "newSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v6    # "existingApexPkg":Landroid/content/pm/PackageInfo;
    :catch_96
    move-exception v5

    .line 203
    .local v5, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v4, v0, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private verifyApksInSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 854
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->extractApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 856
    .local v0, "apksToVerify":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v0, :cond_8

    .line 857
    return-void

    .line 860
    :cond_8
    new-instance v1, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;-><init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-direct {v1, v2}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;-><init>(Ljava/util/function/Consumer;)V

    .line 879
    .local v1, "receiver":Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;
    invoke-virtual {v1}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    .line 880
    return-void
.end method


# virtual methods
.method abortCommittedSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 7
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1034
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 1035
    .local v0, "sessionId":I
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "StagingManager"

    if-eqz v1, :cond_20

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot abort applied session : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return v2

    .line 1039
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 1043
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    const-string v4, "Session "

    if-nez v1, :cond_46

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has been abandoned already"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return v2

    .line 1050
    :cond_46
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    # invokes: Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->isVerificationRunning(I)Z
    invoke-static {v1, v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$200(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " aborted before pre-reboot verification completed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return v2

    .line 1057
    :cond_66
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1058
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1060
    :try_start_72
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 1061
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v1

    .line 1062
    .local v1, "apexSession":Landroid/apex/ApexSessionInfo;
    if-eqz v1, :cond_8b

    invoke-direct {p0, v1}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_8b

    .line 1067
    :cond_83
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    goto :goto_a6

    .line 1063
    :cond_8b
    :goto_8b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot abort session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " because it is not active."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_a6} :catch_a7

    .line 1074
    .end local v1    # "apexSession":Landroid/apex/ApexSessionInfo;
    :goto_a6
    goto :goto_bc

    .line 1069
    :catch_a7
    move-exception v1

    .line 1073
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not contact apexd to abort staged session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_bc
    :goto_bc
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1081
    const/4 v1, 0x1

    return v1

    .line 1040
    :cond_c1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Committed session must be destroyed before aborting it from StagingManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method abortSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1014
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1015
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1016
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mSessionRollbackIds:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1017
    monitor-exit v0

    .line 1018
    return-void

    .line 1017
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method checkNonOverlappingWithStagedSessions(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 11
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 941
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 943
    return-void

    .line 945
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f0

    .line 950
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 951
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isCheckpointSupported()Z

    move-result v0

    .line 953
    .local v0, "supportsCheckpoint":Z
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 954
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    :try_start_20
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_eb

    .line 955
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 956
    .local v3, "stagedSession":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v4

    if-nez v4, :cond_e7

    .line 957
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 958
    goto/16 :goto_e7

    .line 960
    :cond_44
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 963
    goto/16 :goto_e7

    .line 966
    :cond_4c
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 967
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v4

    .line 968
    .local v4, "parentId":I
    iget-object v5, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 969
    .local v5, "parentSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v5, :cond_e7

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v6

    if-nez v6, :cond_e7

    .line 970
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 972
    goto/16 :goto_e7

    .line 979
    .end local v4    # "parentId":I
    .end local v5    # "parentSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_6e
    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v5, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    if-ne v4, v5, :cond_92

    .line 980
    const-string v4, "StagingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is already staged"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    goto :goto_e7

    .line 986
    :cond_92
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, -0x77

    if-nez v4, :cond_b8

    .line 997
    if-nez v0, :cond_e7

    .line 998
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->parentOrOwnSessionId(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/android/server/pm/StagingManager;->parentOrOwnSessionId(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v7

    if-ne v4, v7, :cond_b0

    goto :goto_e7

    .line 999
    :cond_b0
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v7, "Cannot stage multiple sessions without checkpoint support"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "supportsCheckpoint":Z
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    throw v4

    .line 987
    .restart local v0    # "supportsCheckpoint":Z
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_b8
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has been staged already by session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "supportsCheckpoint":Z
    .end local p0    # "this":Lcom/android/server/pm/StagingManager;
    .end local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    throw v4

    .line 954
    .end local v3    # "stagedSession":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v0    # "supportsCheckpoint":Z
    .restart local p0    # "this":Lcom/android/server/pm/StagingManager;
    .restart local p1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_e7
    :goto_e7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    .line 1004
    .end local v2    # "i":I
    :cond_eb
    monitor-exit v1

    .line 1005
    return-void

    .line 1004
    :catchall_ed
    move-exception v2

    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_20 .. :try_end_ef} :catchall_ed

    throw v2

    .line 946
    .end local v0    # "supportsCheckpoint":Z
    :cond_f0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot stage session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with package name null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method commitSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 920
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 921
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    # invokes: Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->startPreRebootVerification(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$000(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    .line 922
    return-void
.end method

.method createSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .param p1, "sessionInfo"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1008
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1009
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1010
    monitor-exit v0

    .line 1011
    return-void

    .line 1010
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public synthetic lambda$verifyApksInSession$2$StagingManager(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/Intent;)V
    .registers 8
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "result"    # Landroid/content/Intent;

    .line 862
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 864
    .local v0, "status":I
    if-eqz v0, :cond_3f

    .line 865
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure to verify APK staged session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StagingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 871
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    # invokes: Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->onPreRebootVerificationComplete(I)V
    invoke-static {v1, v3}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$1700(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    .line 873
    return-void

    .line 875
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_3f
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    # invokes: Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->notifyPreRebootVerification_Apk_Complete(I)V
    invoke-static {v1, v2}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$1800(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;I)V

    .line 877
    return-void
.end method

.method markStagedSessionsAsSuccessful()V
    .registers 5

    .line 1220
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v0

    .line 1221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1222
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 1221
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1224
    .end local v1    # "i":I
    :cond_20
    monitor-exit v0

    .line 1225
    return-void

    .line 1224
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method onInstallationFailure(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageManagerException;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "e"    # Lcom/android/server/pm/PackageManagerException;

    .line 714
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 715
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(ILjava/lang/String;)V

    .line 718
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 719
    return-void

    .line 722
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    move-result v0

    const-string v1, "StagingManager"

    if-nez v0, :cond_29

    .line 723
    const-string v0, "Failed to abort APEXd session"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 725
    :cond_29
    const-string v0, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 730
    :goto_34
    return-void
.end method

.method restoreSession(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "isDeviceUpgrading"    # Z

    .line 1144
    move-object v0, p1

    .line 1145
    .local v0, "sessionToResume":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1146
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1149
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1150
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1152
    monitor-exit v1

    return-void

    .line 1155
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1156
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    move-object v0, v2

    .line 1159
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_46

    .line 1162
    if-eqz p2, :cond_42

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-nez v1, :cond_42

    .line 1163
    const/4 v1, 0x2

    const-string v2, "Build fingerprint has changed"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 1165
    return-void

    .line 1167
    :cond_42
    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1168
    return-void

    .line 1159
    :catchall_46
    move-exception v2

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v2
.end method

.method systemReady()V
    .registers 5

    .line 1228
    new-instance v0, Lcom/android/server/pm/StagingManager$Lifecycle;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/StagingManager$Lifecycle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager$Lifecycle;->startService(Lcom/android/server/pm/StagingManager;)V

    .line 1230
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/StagingManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$1;-><init>(Lcom/android/server/pm/StagingManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1240
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1241
    return-void
.end method
