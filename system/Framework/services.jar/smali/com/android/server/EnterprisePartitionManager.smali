.class public Lcom/android/server/EnterprisePartitionManager;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EnterprisePartitionManager$EpmMigrationCmd;,
        Lcom/android/server/EnterprisePartitionManager$EpmResponseCode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CopyFlagExitOneError:I = 0x8

.field public static final CopyFlagForce:I = 0x1

.field public static final CopyFlagRecursive:I = 0x2

.field public static final CopyFlagRemoveSource:I = 0x4

.field public static final CopyFlagRenameWithNumber:I = 0x20

.field private static final DLP_NOTIFY_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final ENODEV:I = 0x13

.field public static final ENOENT:I = 0x2

.field private static final EPM_SOCKET_NAME:Ljava/lang/String; = "epm"

.field private static final EPM_SUB_CMD_CALCULATE_PKG_DIR:Ljava/lang/String; = "calculate_pkg_dir"

.field private static final EPM_SUB_CMD_CLEAR_PKG_DATA_DIR:Ljava/lang/String; = "clear_pkg_data_dir"

.field private static final EPM_SUB_CMD_CREATE_CHAMBER:Ljava/lang/String; = "create_chamber"

.field private static final EPM_SUB_CMD_CREATE_ENC_DIR:Ljava/lang/String; = "create_enc_dir"

.field private static final EPM_SUB_CMD_REMOVE_CHAMBER:Ljava/lang/String; = "remove_chamber"

.field private static final EPM_SUB_CMD_REMOVE_ENC_DIR:Ljava/lang/String; = "remove_enc_dir"

.field static final EPM_TAG:Ljava/lang/String; = "EnterprisePartitionManager"

.field public static PARTITON_TYPE_INTERNAL_SDCARD:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_DEFAULT:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_READ:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_WRITE:I = 0x0

.field public static PARTITON_TYPE_NON_KNOX:I = 0x0

.field public static PARTITON_TYPE_PRIVATE_DATA:I = 0x0

.field public static PARTITON_TYPE_SECURE_FS_DATA:I = 0x0

.field public static PARTITON_TYPE_SECURE_FS_SDCARD:I = 0x0

.field public static final PartitionInserted:I = 0x276

.field public static final PartitionRemoved:I = 0x277

.field public static final TYPE_KNOX_CONTAINER_CE:I = 0x1

.field public static final TYPE_KNOX_CONTAINER_CE_NO_REMOUNT:I = 0x4

.field public static final TYPE_KNOX_CONTAINER_DE:I = 0x3

.field public static final TYPE_SECURE_FILE_SYSTEM:I = 0x2

.field public static final UnsolicitedDlpEvents:I = 0x262

.field public static final UnsolicitedShowToast:I = 0x259

.field private static final isKnoxBuildEnabled:Z

.field private static mInstallLock:Ljava/lang/Object;

.field private static final mKnoxInfo:Landroid/os/Bundle;

.field private static final mKnoxVersion:Ljava/lang/String;

.field private static mPackageTasker:Lcom/android/server/pm/Installer;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/EnterprisePartitionManager;


# instance fields
.field private mReady:Z

.field private mSessionIdDstPath:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storage:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 108
    const/16 v0, 0x65

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_PRIVATE_DATA:I

    .line 110
    const/16 v0, 0x66

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD:I

    .line 112
    const/16 v0, 0x67

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_NON_KNOX:I

    .line 114
    const/16 v0, 0x68

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    .line 116
    const/16 v0, 0x69

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    .line 118
    const/16 v0, 0x6a

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_DEFAULT:I

    .line 120
    const/16 v0, 0x6b

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_READ:I

    .line 122
    const/16 v0, 0x6c

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_WRITE:I

    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    .line 126
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    .line 127
    if-eqz v1, :cond_33

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    :cond_33
    move-object v1, v0

    :goto_34
    sput-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    .line 129
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    const-string/jumbo v2, "v00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    sput-boolean v1, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    .line 154
    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/EnterprisePartitionManager;->mReady:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    .line 60
    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    .line 165
    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_17

    .line 166
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    goto :goto_1c

    .line 168
    :cond_17
    const-string v0, "Knox is not supported on this device.."

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    .line 170
    :goto_1c
    return-void
.end method

.method private addToAuditLog(IIIILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "opCode"    # I
    .param p3, "pid"    # I
    .param p4, "inode"    # I
    .param p5, "filePath"    # Ljava/lang/String;

    .line 182
    return-void
.end method

.method private command(Ljava/lang/Object;)V
    .registers 2
    .param p1, "cmd"    # Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private createConnector()V
    .registers 1

    .line 134
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/EnterprisePartitionManager;

    monitor-enter v0

    .line 158
    :try_start_3
    sput-object p0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    .line 159
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    if-nez v1, :cond_10

    .line 160
    new-instance v1, Lcom/android/server/EnterprisePartitionManager;

    invoke-direct {v1}, Lcom/android/server/EnterprisePartitionManager;-><init>()V

    sput-object v1, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    .line 161
    :cond_10
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object v1

    .line 157
    .end local p0    # "c":Landroid/content/Context;
    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isEPMSupported()Z
    .registers 1

    .line 141
    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    return v0
.end method

.method private isFailed(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "evt"    # Ljava/lang/Object;

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method private isOnGoing(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "evt"    # Ljava/lang/Object;

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method private isSuccess(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "evt"    # Ljava/lang/Object;

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method private isUserUnlocked(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 598
    const-string v0, "EnterprisePartitionManager"

    const/4 v1, 0x0

    .line 599
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 601
    .local v2, "token":J
    :try_start_7
    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 602
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v5

    move v1, v5

    if-nez v5, :cond_2d

    .line 603
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not unlocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_32

    .line 608
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_2d
    nop

    :goto_2e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    goto :goto_4d

    .line 605
    :catchall_32
    move-exception v4

    .line 606
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check user state... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_4e

    .line 608
    nop

    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_2e

    .line 610
    :goto_4d
    return v1

    .line 608
    :catchall_4e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    throw v0
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 189
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 193
    return-void
.end method

.method private rescanSdcard(Landroid/content/Context;Ljava/io/File;I)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    return-void
.end method

.method public static setInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 3
    .param p0, "installer"    # Lcom/android/server/pm/Installer;
    .param p1, "installLock"    # Ljava/lang/Object;

    .line 146
    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_9

    .line 147
    sput-object p0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 148
    sput-object p1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    goto :goto_c

    .line 150
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    .line 152
    :goto_c
    return-void
.end method


# virtual methods
.method public calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J
    .registers 6
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "partitionType"    # I
    .param p4, "subDirs"    # [Ljava/lang/String;

    .line 654
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelCopyChunks(J)V
    .registers 7
    .param p1, "sessionId"    # J

    .line 435
    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 436
    .local v0, "dstRealPath":Ljava/lang/String;
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_36

    .line 440
    :cond_19
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_1c
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/server/pm/Installer;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 443
    iget-object v2, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1c .. :try_end_2d} :catch_30
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2e

    goto :goto_31

    .line 446
    :catchall_2e
    move-exception v2

    goto :goto_34

    .line 445
    :catch_30
    move-exception v2

    :cond_31
    :goto_31
    nop

    .line 446
    :try_start_32
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :goto_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2e

    throw v2

    .line 438
    :cond_36
    :goto_36
    return-void
.end method

.method public clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "partitionType"    # I
    .param p4, "subDirs"    # [Ljava/lang/String;
    .param p5, "alsoDeleteDir"    # I

    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 11
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "fromContainerId"    # I
    .param p3, "toPath"    # Ljava/lang/String;
    .param p4, "toContainerId"    # I

    .line 510
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 16
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "fromContainerId"    # I
    .param p3, "toPath"    # Ljava/lang/String;
    .param p4, "toContainerId"    # I
    .param p5, "copyFlag"    # I

    .line 523
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_7

    const/16 v0, -0x13

    return v0

    .line 525
    :cond_7
    const/4 v0, -0x1

    .line 529
    .local v0, "res":I
    invoke-static {p1, p2}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 530
    .local v7, "srcRealPath":Ljava/lang/String;
    const/4 v1, -0x2

    if-eqz v7, :cond_50

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_50

    .line 533
    :cond_16
    invoke-static {p3, p4}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 534
    .local v8, "dstRealPath":Ljava/lang/String;
    if-eqz v8, :cond_4f

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_4f

    .line 537
    :cond_23
    invoke-direct {p0, p2}, Lcom/android/server/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-direct {p0, p4}, Lcom/android/server/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_4c

    .line 541
    :cond_30
    sget-object v9, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    .line 543
    :try_start_33
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v2, v7

    move v3, p2

    move-object v4, v8

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v1
    :try_end_3e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_33 .. :try_end_3e} :catch_46
    .catchall {:try_start_33 .. :try_end_3e} :catchall_44

    if-eqz v1, :cond_42

    .line 545
    const/4 v0, 0x0

    goto :goto_43

    .line 547
    :cond_42
    const/4 v0, -0x1

    .line 551
    :goto_43
    goto :goto_48

    .line 552
    :catchall_44
    move-exception v1

    goto :goto_4a

    .line 549
    :catch_46
    move-exception v1

    .line 550
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const/4 v0, -0x1

    .line 552
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_48
    :try_start_48
    monitor-exit v9

    .line 554
    return v0

    .line 552
    :goto_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_44

    throw v1

    .line 538
    :cond_4c
    :goto_4c
    mul-int/lit8 v1, v0, 0x2

    return v1

    .line 535
    :cond_4f
    :goto_4f
    return v1

    .line 531
    .end local v8    # "dstRealPath":Ljava/lang/String;
    :cond_50
    :goto_50
    return v1
.end method

.method public copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I
    .registers 32
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "fromContainerId"    # I
    .param p3, "toPath"    # Ljava/lang/String;
    .param p4, "toContainerId"    # I
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSource"    # Z

    .line 455
    move-object/from16 v1, p0

    move/from16 v14, p2

    move/from16 v15, p4

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_d

    const/16 v0, -0x13

    return v0

    .line 457
    :cond_d
    const/16 v16, -0x1

    .line 458
    .local v16, "res":I
    const/16 v0, 0x20

    .line 460
    .local v0, "flag":I
    invoke-static/range {p1 .. p2}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "srcRealPath":Ljava/lang/String;
    const/4 v3, -0x2

    if-eqz v2, :cond_11f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    goto/16 :goto_11f

    .line 464
    :cond_20
    invoke-static/range {p3 .. p4}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, "dstRealPath":Ljava/lang/String;
    if-eqz v4, :cond_11e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2e

    goto/16 :goto_11e

    .line 468
    :cond_2e
    invoke-direct {v1, v14}, Lcom/android/server/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_11b

    invoke-direct {v1, v15}, Lcom/android/server/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_11b

    .line 471
    :cond_3c
    if-eqz v14, :cond_79

    if-eqz v2, :cond_79

    .line 472
    const-string v3, "/storage/emulated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/mnt/user/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/storage"

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "srcRealPath : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "EnterprisePartitionManager"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v2

    goto :goto_7b

    .line 476
    :cond_79
    move-object/from16 v17, v2

    .end local v2    # "srcRealPath":Ljava/lang/String;
    .local v17, "srcRealPath":Ljava/lang/String;
    :goto_7b
    if-eqz v15, :cond_b6

    if-eqz v4, :cond_b6

    .line 477
    const-string v2, "/storage/emulated"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/storage"

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dstRealPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterprisePartitionManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v4

    goto :goto_b7

    .line 481
    :cond_b6
    move-object v12, v4

    .end local v4    # "dstRealPath":Ljava/lang/String;
    .local v12, "dstRealPath":Ljava/lang/String;
    :goto_b7
    iget-object v2, v1, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    .line 482
    iget-object v2, v1, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_cc
    if-eqz p10, :cond_d3

    .line 485
    or-int/lit8 v0, v0, 0x4

    move/from16 v18, v0

    goto :goto_d5

    .line 484
    :cond_d3
    move/from16 v18, v0

    .line 487
    .end local v0    # "flag":I
    .local v18, "flag":I
    :goto_d5
    sget-object v19, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v19

    .line 489
    :try_start_d8
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;
    :try_end_da
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_d8 .. :try_end_da} :catch_111
    .catchall {:try_start_d8 .. :try_end_da} :catchall_10d

    move/from16 v13, p7

    int-to-long v10, v13

    move-object/from16 v3, v17

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v6, p4

    move/from16 v7, v18

    move-wide/from16 v8, p5

    move-object/from16 v20, v12

    .end local v12    # "dstRealPath":Ljava/lang/String;
    .local v20, "dstRealPath":Ljava/lang/String;
    move-wide/from16 v12, p8

    :try_start_ec
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/Installer;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v0

    .line 492
    .local v0, "ret":I
    const/16 v2, 0xc9

    if-ne v0, v2, :cond_f6

    .line 493
    const/4 v2, 0x0

    .end local v16    # "res":I
    .local v2, "res":I
    goto :goto_106

    .line 494
    .end local v2    # "res":I
    .restart local v16    # "res":I
    :cond_f6
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_105

    .line 495
    iget-object v2, v1, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_103
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ec .. :try_end_103} :catch_10b
    .catchall {:try_start_ec .. :try_end_103} :catchall_109

    .line 496
    const/4 v2, 0x0

    .end local v16    # "res":I
    .restart local v2    # "res":I
    goto :goto_106

    .line 498
    .end local v2    # "res":I
    .restart local v16    # "res":I
    :cond_105
    move v2, v0

    .line 502
    .end local v0    # "ret":I
    .end local v16    # "res":I
    .restart local v2    # "res":I
    :goto_106
    move/from16 v16, v2

    goto :goto_117

    .line 503
    .end local v2    # "res":I
    .restart local v16    # "res":I
    :catchall_109
    move-exception v0

    goto :goto_119

    .line 500
    :catch_10b
    move-exception v0

    goto :goto_114

    .line 503
    .end local v20    # "dstRealPath":Ljava/lang/String;
    .restart local v12    # "dstRealPath":Ljava/lang/String;
    :catchall_10d
    move-exception v0

    move-object/from16 v20, v12

    .end local v12    # "dstRealPath":Ljava/lang/String;
    .restart local v20    # "dstRealPath":Ljava/lang/String;
    goto :goto_119

    .line 500
    .end local v20    # "dstRealPath":Ljava/lang/String;
    .restart local v12    # "dstRealPath":Ljava/lang/String;
    :catch_111
    move-exception v0

    move-object/from16 v20, v12

    .line 501
    .end local v12    # "dstRealPath":Ljava/lang/String;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v20    # "dstRealPath":Ljava/lang/String;
    :goto_114
    const/4 v2, -0x1

    .end local v16    # "res":I
    .restart local v2    # "res":I
    move/from16 v16, v2

    .line 503
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v2    # "res":I
    .restart local v16    # "res":I
    :goto_117
    :try_start_117
    monitor-exit v19

    .line 504
    return v16

    .line 503
    :goto_119
    monitor-exit v19
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_109

    throw v0

    .line 469
    .end local v17    # "srcRealPath":Ljava/lang/String;
    .end local v18    # "flag":I
    .end local v20    # "dstRealPath":Ljava/lang/String;
    .local v0, "flag":I
    .local v2, "srcRealPath":Ljava/lang/String;
    .restart local v4    # "dstRealPath":Ljava/lang/String;
    :cond_11b
    :goto_11b
    mul-int/lit8 v3, v16, 0x2

    return v3

    .line 466
    :cond_11e
    :goto_11e
    return v3

    .line 462
    .end local v4    # "dstRealPath":Ljava/lang/String;
    :cond_11f
    :goto_11f
    return v3
.end method

.method public createChamber(II)Z
    .registers 4
    .param p1, "engineId"    # I
    .param p2, "userId"    # I

    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method public createEncPkgDir(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "dirName"    # Ljava/lang/String;

    .line 636
    const/4 v0, 0x1

    return v0
.end method

.method public createPartition(II)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # I

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, "res":Z
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    return v1

    .line 346
    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "realPath":Ljava/lang/String;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 348
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "path translation failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterprisePartitionManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object v1, p1

    .line 352
    :cond_2b
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_2e
    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Installer;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result v3
    :try_end_34
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2e .. :try_end_34} :catch_38
    .catchall {:try_start_2e .. :try_end_34} :catchall_36

    move v0, v3

    .line 357
    goto :goto_3a

    .line 358
    :catchall_36
    move-exception v3

    goto :goto_3c

    .line 355
    :catch_38
    move-exception v3

    .line 356
    .local v3, "e":Lcom/android/server/pm/Installer$InstallerException;
    const/4 v0, 0x0

    .line 358
    .end local v3    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_3a
    :try_start_3a
    monitor-exit v2

    .line 359
    return v0

    .line 358
    :goto_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_36

    throw v3
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 391
    .local v1, "res":I
    invoke-static {p1, p2}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "realPath":Ljava/lang/String;
    if-eqz p2, :cond_44

    if-eqz p1, :cond_44

    .line 393
    const-string v3, "/storage/emulated"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/user/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/storage"

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFileInfo - realath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnterprisePartitionManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_44
    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v3, :cond_9c

    if-eqz v2, :cond_9c

    .line 398
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_9c

    .line 404
    :cond_51
    const/4 v3, 0x0

    .line 405
    .local v3, "resLong":[J
    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 407
    :try_start_55
    sget-object v5, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v5

    move-object v3, v5

    .line 408
    const/4 v5, 0x0

    aget-wide v5, v3, v5
    :try_end_5f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_55 .. :try_end_5f} :catch_63
    .catchall {:try_start_55 .. :try_end_5f} :catchall_61

    long-to-int v1, v5

    .line 411
    goto :goto_65

    .line 412
    :catchall_61
    move-exception v5

    goto :goto_9a

    .line 409
    :catch_63
    move-exception v5

    .line 410
    .local v5, "e":Lcom/android/server/pm/Installer$InstallerException;
    const/4 v1, -0x1

    .line 412
    .end local v5    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_65
    :try_start_65
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_61

    .line 414
    const-wide/16 v4, 0x0

    .line 415
    .local v4, "lastModified":J
    const-wide/16 v6, 0x0

    .line 416
    .local v6, "fileSize":J
    const/4 v8, 0x0

    .line 417
    .local v8, "isDir":Z
    if-eqz v3, :cond_82

    if-nez v1, :cond_82

    .line 418
    const/4 v9, 0x1

    aget-wide v4, v3, v9

    .line 419
    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    .line 420
    const/4 v9, 0x2

    aget-wide v6, v3, v9

    .line 421
    const/4 v9, 0x3

    aget-wide v9, v3, v9

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_82

    const/4 v8, 0x1

    .line 424
    :cond_82
    const-string/jumbo v9, "result"

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string/jumbo v9, "last_modified_date"

    invoke-virtual {v0, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 426
    const-string v9, "file_size"

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 427
    const-string/jumbo v9, "is_dir"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    return-object v0

    .line 412
    .end local v4    # "lastModified":J
    .end local v6    # "fileSize":J
    .end local v8    # "isDir":Z
    :goto_9a
    :try_start_9a
    monitor-exit v4
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_61

    throw v5

    .line 399
    .end local v3    # "resLong":[J
    :cond_9c
    :goto_9c
    const/4 v1, -0x2

    .line 400
    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    return-object v0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, "res":Z
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    return-object v2

    .line 369
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v1, "fList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 372
    .local v3, "sessionId":J
    invoke-static {p1, p2}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "realPath":Ljava/lang/String;
    if-eqz v5, :cond_35

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_35

    .line 376
    :cond_1d
    sget-object v6, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    .line 378
    :try_start_20
    sget-object v7, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v7, v5, v3, v4, v1}, Lcom/android/server/pm/Installer;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result v7
    :try_end_26
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_20 .. :try_end_26} :catch_2a
    .catchall {:try_start_20 .. :try_end_26} :catchall_28

    move v0, v7

    .line 381
    goto :goto_2c

    .line 382
    :catchall_28
    move-exception v2

    goto :goto_33

    .line 379
    :catch_2a
    move-exception v7

    .line 380
    .local v7, "e":Lcom/android/server/pm/Installer$InstallerException;
    const/4 v0, 0x0

    .line 382
    .end local v7    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_2c
    :try_start_2c
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_28

    .line 383
    if-eqz v0, :cond_32

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    :cond_32
    return-object v2

    .line 382
    :goto_33
    :try_start_33
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_28

    throw v2

    .line 374
    :cond_35
    :goto_35
    return-object v2
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, "res":Z
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    return v2

    .line 317
    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "realPath":Ljava/lang/String;
    if-eqz p2, :cond_45

    if-eqz p1, :cond_45

    .line 319
    const-string v3, "/storage/emulated"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/user/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/storage"

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFileInfo - realath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnterprisePartitionManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_45
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 324
    :cond_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path translation failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnterprisePartitionManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object v1, p1

    .line 328
    :cond_65
    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 330
    :try_start_68
    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v4

    .line 331
    .local v4, "ret":[J
    aget-wide v5, v4, v2
    :try_end_70
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_68 .. :try_end_70} :catch_7b
    .catchall {:try_start_68 .. :try_end_70} :catchall_79

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_77

    const/4 v2, 0x1

    :cond_77
    move v0, v2

    .line 334
    .end local v4    # "ret":[J
    goto :goto_7d

    .line 335
    :catchall_79
    move-exception v2

    goto :goto_7f

    .line 332
    :catch_7b
    move-exception v2

    .line 333
    .local v2, "e":Lcom/android/server/pm/Installer$InstallerException;
    const/4 v0, 0x0

    .line 335
    .end local v2    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_7d
    :try_start_7d
    monitor-exit v3

    .line 336
    return v0

    .line 335
    :goto_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_79

    throw v2
.end method

.method public isMounted(I)Z
    .registers 3
    .param p1, "containerId"    # I

    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public migrateSdpDb(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "dbPath"    # Ljava/lang/String;

    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "subCmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "sdpEnabled"    # Z
    .param p4, "type"    # I

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 11
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "fromContainerId"    # I
    .param p3, "toPath"    # Ljava/lang/String;
    .param p4, "toContainerId"    # I

    .line 516
    const/16 v5, 0x24

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 16
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "fromContainerId"    # I
    .param p3, "toPath"    # Ljava/lang/String;
    .param p4, "toContainerId"    # I
    .param p5, "copyFlag"    # I

    .line 561
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_7

    const/16 v0, -0x13

    return v0

    .line 563
    :cond_7
    const/4 v0, -0x1

    .line 564
    .local v0, "res":I
    or-int/lit8 p5, p5, 0x4

    .line 569
    invoke-static {p1, p2}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 570
    .local v7, "srcRealPath":Ljava/lang/String;
    const/4 v1, -0x2

    if-eqz v7, :cond_52

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_52

    .line 573
    :cond_18
    invoke-static {p3, p4}, Lcom/android/server/sdp/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 574
    .local v8, "dstRealPath":Ljava/lang/String;
    if-eqz v8, :cond_51

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_51

    .line 577
    :cond_25
    invoke-direct {p0, p2}, Lcom/android/server/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-direct {p0, p4}, Lcom/android/server/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_4e

    .line 581
    :cond_32
    sget-object v9, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    .line 583
    :try_start_35
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v2, v7

    move v3, p2

    move-object v4, v8

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v1
    :try_end_40
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_35 .. :try_end_40} :catch_48
    .catchall {:try_start_35 .. :try_end_40} :catchall_46

    if-eqz v1, :cond_44

    .line 585
    const/4 v0, 0x0

    goto :goto_45

    .line 587
    :cond_44
    const/4 v0, -0x1

    .line 591
    :goto_45
    goto :goto_4a

    .line 592
    :catchall_46
    move-exception v1

    goto :goto_4c

    .line 589
    :catch_48
    move-exception v1

    .line 590
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const/4 v0, -0x1

    .line 592
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_4a
    :try_start_4a
    monitor-exit v9

    .line 594
    return v0

    .line 592
    :goto_4c
    monitor-exit v9
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_46

    throw v1

    .line 578
    :cond_4e
    :goto_4e
    mul-int/lit8 v1, v0, 0x2

    return v1

    .line 575
    :cond_51
    :goto_51
    return v1

    .line 571
    .end local v8    # "dstRealPath":Ljava/lang/String;
    :cond_52
    :goto_52
    return v1
.end method

.method public removeChamber(II)Z
    .registers 4
    .param p1, "engineId"    # I
    .param p2, "userId"    # I

    .line 650
    const/4 v0, 0x1

    return v0
.end method

.method public removeEncPkgDir(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "dirName"    # Ljava/lang/String;

    .line 642
    const/4 v0, 0x1

    return v0
.end method

.method public removePartition(II)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # I

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public varargs sendDLPCommand(II[Ljava/lang/Object;)Z
    .registers 5
    .param p1, "cmdType"    # I
    .param p2, "numberOfArguments"    # I
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public setDualDARPolicy(II)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 296
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    .line 297
    if-eqz v0, :cond_13

    .line 298
    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->setDualDARPolicy(II)Z

    move-result v0

    return v0

    .line 300
    :cond_13
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public setEviction(IZ)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "evict"    # Z

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEviction(user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evict:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterprisePartitionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_27
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Installer;->setEviction(IZ)Z

    move-result v1
    :try_end_2d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_27 .. :try_end_2d} :catch_31
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2f

    :try_start_2d
    monitor-exit v0

    return v1

    .line 291
    :catchall_2f
    move-exception v1

    goto :goto_35

    .line 288
    :catch_31
    move-exception v1

    .line 289
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 291
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_2f

    throw v1
.end method

.method public setSdpPolicy(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 265
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    .line 266
    if-eqz v0, :cond_13

    .line 267
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->setSdpPolicy(I)Z

    move-result v0

    return v0

    .line 269
    :cond_13
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public setSdpPolicyToPath(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    .line 275
    if-eqz v0, :cond_13

    .line 276
    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->setSdpPolicyToPath(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 278
    :cond_13
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public syncFS(II)Z
    .registers 4
    .param p1, "parentId"    # I
    .param p2, "personaId"    # I

    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public unmount(II)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # I

    .line 250
    const/4 v0, 0x0

    return v0
.end method
