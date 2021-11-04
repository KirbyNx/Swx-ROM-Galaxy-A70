.class public Lcom/android/server/backup/fullbackup/FullBackupEngine;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    }
.end annotation


# static fields
.field private static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mExtraFlag:I

.field private mIncludeApks:Z

.field private final mOpToken:I

.field private mOutput:Ljava/io/OutputStream;

.field private mPkg:Landroid/content/pm/PackageInfo;

.field private mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

.field private mPrivilegeApp:Z

.field private final mQuota:J

.field private mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

.field private final mTransportFlags:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIIIZ)V
    .registers 15
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "preflightHook"    # Lcom/android/server/backup/fullbackup/FullBackupPreflight;
    .param p4, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p5, "alsoApks"    # Z
    .param p6, "timeoutMonitor"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p7, "quota"    # J
    .param p9, "opToken"    # I
    .param p10, "transportFlags"    # I
    .param p11, "extraFlag"    # I
    .param p12, "privilegeApp"    # Z

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 222
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 223
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    .line 224
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 225
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    .line 226
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    .line 227
    iput-wide p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    .line 228
    iput p9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 229
    iput p10, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 231
    iput p11, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mExtraFlag:I

    .line 232
    iput-boolean p12, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPrivilegeApp:Z

    .line 234
    nop

    .line 236
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 235
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 238
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 58
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 58
    iget v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 58
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupRestoreTask;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 58
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 58
    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    return-wide v0
.end method

.method static synthetic access$500()Lcom/android/server/backup/BackupManagerYuva;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    return-object v0
.end method

.method private initializeAgent()Z
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 348
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 349
    invoke-virtual {v0, v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 352
    :cond_11
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private tearDown()V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_b

    .line 357
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 359
    :cond_b
    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    move-object/from16 v10, p0

    const-string v11, "Error bringing down backup stack"

    const/16 v12, -0x3eb

    .line 263
    .local v12, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    const-string v13, "BackupManagerService"

    if-eqz v0, :cond_12b

    .line 264
    const/4 v1, 0x0

    .line 266
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v14, 0x0

    const/4 v15, 0x1

    :try_start_11
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_a9
    .catchall {:try_start_11 .. :try_end_15} :catchall_a6

    move-object/from16 v16, v0

    .line 268
    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v16, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_17
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v5, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    aget-object v6, v16, v15

    iget v7, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    iget-boolean v8, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    iget v9, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mExtraFlag:I

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZI)V

    .line 277
    .local v0, "runner":Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    aget-object v1, v16, v15

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 278
    const/4 v1, 0x0

    aput-object v1, v16, v15

    .line 279
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "app-data-runner"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 280
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 282
    aget-object v2, v16, v14

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-static {v2, v3}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 284
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v2

    if-nez v2, :cond_72

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup failed on package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_73

    .line 287
    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_71} :catch_a2
    .catchall {:try_start_17 .. :try_end_71} :catchall_9d

    goto :goto_73

    .line 293
    :cond_72
    const/4 v12, 0x0

    .line 304
    .end local v0    # "runner":Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_73
    :goto_73
    :try_start_73
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 305
    if-eqz v16, :cond_8c

    .line 306
    aget-object v0, v16, v14

    if-eqz v0, :cond_83

    .line 307
    aget-object v0, v16, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 309
    :cond_83
    aget-object v0, v16, v15

    if-eqz v0, :cond_8c

    .line 310
    aget-object v0, v16, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_8c} :catch_8e

    .line 319
    :cond_8c
    goto/16 :goto_102

    .line 313
    :catch_8e
    move-exception v0

    .line 314
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v13, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v1, -0x3e8

    .line 316
    .end local v12    # "result":I
    .local v1, "result":I
    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_9b

    .line 317
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9b
    move v12, v1

    goto :goto_102

    .line 302
    .end local v1    # "result":I
    .restart local v12    # "result":I
    :catchall_9d
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v16

    goto :goto_103

    .line 295
    :catch_a2
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_aa

    .line 302
    .end local v16    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_a6
    move-exception v0

    move-object v2, v0

    goto :goto_103

    .line 295
    :catch_a9
    move-exception v0

    .line 296
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_aa
    :try_start_aa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error backing up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_d7

    .line 298
    sget-object v2, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_d7
    .catchall {:try_start_aa .. :try_end_d7} :catchall_a6

    .line 300
    :cond_d7
    const/16 v2, -0x3eb

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "result":I
    .local v2, "result":I
    :try_start_d9
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 305
    if-eqz v1, :cond_f2

    .line 306
    aget-object v0, v1, v14

    if-eqz v0, :cond_e9

    .line 307
    aget-object v0, v1, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 309
    :cond_e9
    aget-object v0, v1, v15

    if-eqz v0, :cond_f2

    .line 310
    aget-object v0, v1, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_f2} :catch_f4

    .line 319
    :cond_f2
    move v12, v2

    goto :goto_102

    .line 313
    :catch_f4
    move-exception v0

    .line 314
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v13, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v2, -0x3e8

    .line 316
    sget-object v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_101

    .line 317
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    :cond_101
    move v12, v2

    .line 321
    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v2    # "result":I
    .restart local v12    # "result":I
    :goto_102
    goto :goto_14a

    .line 304
    .restart local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :goto_103
    :try_start_103
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 305
    if-eqz v1, :cond_11c

    .line 306
    aget-object v0, v1, v14

    if-eqz v0, :cond_113

    .line 307
    aget-object v0, v1, v14

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 309
    :cond_113
    aget-object v0, v1, v15

    if-eqz v0, :cond_11c

    .line 310
    aget-object v0, v1, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_11c} :catch_11d

    .line 319
    :cond_11c
    goto :goto_12a

    .line 313
    :catch_11d
    move-exception v0

    .line 314
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v13, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v12, -0x3e8

    .line 316
    sget-object v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_12a

    .line 317
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12a
    :goto_12a
    throw v2

    .line 322
    .end local v1    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_12b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind to full agent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_14a

    .line 324
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    .line 327
    :cond_14a
    :goto_14a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->tearDown()V

    .line 328
    return v12
.end method

.method public synthetic lambda$sendQuotaExceeded$0$FullBackupEngine(JJLandroid/app/backup/IBackupCallback;)V
    .registers 12
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J
    .param p5, "callback"    # Landroid/app/backup/IBackupCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method public preflightCheck()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    if-nez v0, :cond_6

    .line 246
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_6
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 249
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, v1, v2}, Lcom/android/server/backup/fullbackup/FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v0

    .line 253
    .local v0, "result":I
    return v0

    .line 255
    .end local v0    # "result":I
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind to full agent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v0, -0x3eb

    return v0
.end method

.method public sendQuotaExceeded(JJ)V
    .registers 12
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    .line 332
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 334
    :try_start_6
    new-instance v0, Lcom/android/server/backup/fullbackup/-$$Lambda$FullBackupEngine$LOxiPZZ-0md-PJkeX7qAKOXet5g;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/fullbackup/-$$Lambda$FullBackupEngine$LOxiPZZ-0md-PJkeX7qAKOXet5g;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;JJ)V

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 336
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide v1

    .line 334
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/remote/RemoteCall;->execute(Lcom/android/server/backup/remote/RemoteCallable;J)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_19

    .line 339
    goto :goto_21

    .line 337
    :catch_19
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Remote exception while telling agent about quota exceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    return-void
.end method
