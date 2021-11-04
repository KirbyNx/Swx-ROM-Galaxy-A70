.class public Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
.super Ljava/lang/Object;
.source "TimeZoneDistroInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller$UninstallResultType;,
        Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller$InstallResultType;
    }
.end annotation


# static fields
.field private static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field public static final INSTALL_FAIL_BAD_DISTRO_FORMAT_VERSION:I = 0x2

.field public static final INSTALL_FAIL_BAD_DISTRO_STRUCTURE:I = 0x1

.field public static final INSTALL_FAIL_RULES_TOO_OLD:I = 0x3

.field public static final INSTALL_FAIL_VALIDATION_ERROR:I = 0x4

.field public static final INSTALL_SUCCESS:I = 0x0

.field private static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field private static final STAGED_TZ_DATA_DIR_NAME:Ljava/lang/String; = "staged"

.field public static final UNINSTALL_FAIL:I = 0x2

.field public static final UNINSTALL_NOTHING_INSTALLED:I = 0x1

.field public static final UNINSTALL_SUCCESS:I = 0x0

.field public static final UNINSTALL_TOMBSTONE_FILE_NAME:Ljava/lang/String; = "STAGED_UNINSTALL_TOMBSTONE"

.field private static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final baseVersionFile:Ljava/io/File;

.field private final currentTzDataDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;

.field private final oldStagedDataDir:Ljava/io/File;

.field private final stagedTzDataDir:Ljava/io/File;

.field private final workingDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "baseVersionFile"    # Ljava/io/File;
    .param p3, "installDir"    # Ljava/io/File;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->baseVersionFile:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "old"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    .line 127
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "staged"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    .line 128
    new-instance v0, Ljava/io/File;

    const-string v1, "current"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    .line 129
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "working"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    .line 130
    return-void
.end method

.method private checkDistroDataFilesExist(Ljava/io/File;)Z
    .registers 4
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Verifying distro contents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string/jumbo v0, "tzdata"

    const-string/jumbo v1, "icu/icu_tzdata.dat"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/timezone/distro/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkDistroRulesNewerThanBase(Ljava/io/File;Lcom/android/timezone/distro/DistroVersion;)Z
    .registers 11
    .param p1, "baseVersionFile"    # Ljava/io/File;
    .param p2, "distroVersion"    # Lcom/android/timezone/distro/DistroVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Reading base time zone rules version"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0, p1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readBaseVersion(Ljava/io/File;)Llibcore/timezone/TzDataSetVersion;

    move-result-object v0

    .line 443
    .local v0, "baseVersion":Llibcore/timezone/TzDataSetVersion;
    invoke-virtual {v0}, Llibcore/timezone/TzDataSetVersion;->getRulesVersion()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "baseRulesVersion":Ljava/lang/String;
    iget-object v2, p2, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 446
    .local v2, "distroRulesVersion":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 447
    .local v3, "canApply":Z
    :goto_1a
    const-string v4, ", baseRulesVersion="

    if-nez v3, :cond_3b

    .line 448
    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed rules version check: distroRulesVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 451
    :cond_3b
    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Passed rules version check: distroRulesVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_57
    return v3
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .registers 6
    .param p1, "dir"    # Ljava/io/File;

    .line 398
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 399
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :try_start_1c
    invoke-static {p1}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 405
    goto :goto_37

    .line 402
    :catch_20
    move-exception v0

    .line 404
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v0    # "e":Ljava/io/IOException;
    :cond_37
    :goto_37
    return-void
.end method

.method private readBaseVersion(Ljava/io/File;)Llibcore/timezone/TzDataSetVersion;
    .registers 6
    .param p1, "baseVersionFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 391
    :try_start_6
    invoke-static {p1}, Llibcore/timezone/TzDataSetVersion;->readFromFile(Ljava/io/File;)Llibcore/timezone/TzDataSetVersion;

    move-result-object v0
    :try_end_a
    .catch Llibcore/timezone/TzDataSetVersion$TzDataSetException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 392
    :catch_b
    move-exception v0

    .line 393
    .local v0, "e":Llibcore/timezone/TzDataSetVersion$TzDataSetException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 386
    .end local v0    # "e":Llibcore/timezone/TzDataSetVersion$TzDataSetException;
    :cond_23
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version file cannot be found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base version file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;
    .registers 6
    .param p1, "distroDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading distro format version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v0, Ljava/io/File;

    const-string v1, "distro_version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    .local v0, "distroVersionFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 427
    sget v1, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    .line 428
    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->readBytes(Ljava/io/File;I)[B

    move-result-object v1

    .line 429
    .local v1, "versionBytes":[B
    invoke-static {v1}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v2

    return-object v2

    .line 425
    .end local v1    # "versionBytes":[B
    :cond_2e
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No distro version file found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private unpackDistro(Lcom/android/timezone/distro/TimeZoneDistro;Ljava/io/File;)V
    .registers 6
    .param p1, "distro"    # Lcom/android/timezone/distro/TimeZoneDistro;
    .param p2, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unpacking update content to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p1, p2}, Lcom/android/timezone/distro/TimeZoneDistro;->extractTo(Ljava/io/File;)V

    .line 412
    return-void
.end method


# virtual methods
.method getCurrentTzDataDir()Ljava/io/File;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getInstalledDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 351
    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_a
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0

    return-object v0
.end method

.method getOldStagedDataDir()Ljava/io/File;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getStagedDistroOperation()Lcom/android/timezone/distro/StagedDistroOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_a
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    const-string v2, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 368
    invoke-static {}, Lcom/android/timezone/distro/StagedDistroOperation;->uninstall()Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v0

    return-object v0

    .line 370
    :cond_1e
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0

    invoke-static {v0}, Lcom/android/timezone/distro/StagedDistroOperation;->install(Lcom/android/timezone/distro/DistroVersion;)Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v0

    return-object v0
.end method

.method getStagedTzDataDir()Ljava/io/File;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method getWorkingDir()Ljava/io/File;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    return-object v0
.end method

.method public readBaseVersion()Llibcore/timezone/TzDataSetVersion;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->baseVersionFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readBaseVersion(Ljava/io/File;)Llibcore/timezone/TzDataSetVersion;

    move-result-object v0

    return-object v0
.end method

.method public stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I
    .registers 15
    .param p1, "distro"    # Lcom/android/timezone/distro/TimeZoneDistro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const-string v0, " failed validation"

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 161
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v1}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 163
    :cond_f
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 164
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v1}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 167
    :cond_1c
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v2, "Unpacking / verifying time zone update"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_23
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, p1, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->unpackDistro(Lcom/android/timezone/distro/TimeZoneDistro;Ljava/io/File;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2cb

    .line 173
    const/4 v1, 0x1

    :try_start_29
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v2
    :try_end_2f
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_29 .. :try_end_2f} :catch_2a4
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2cb

    .line 177
    .local v2, "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    nop

    .line 178
    if-nez v2, :cond_45

    .line 179
    :try_start_32
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v3, "Update not applied: Distro version could not be loaded"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2cb

    .line 180
    nop

    .line 280
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 180
    return v1

    .line 187
    :cond_45
    :try_start_45
    new-instance v3, Llibcore/timezone/TzDataSetVersion;

    iget v4, v2, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v5, v2, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget-object v6, v2, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v7, v2, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v3, v4, v5, v6, v7}, Llibcore/timezone/TzDataSetVersion;-><init>(IILjava/lang/String;I)V
    :try_end_52
    .catch Llibcore/timezone/TzDataSetVersion$TzDataSetException; {:try_start_45 .. :try_end_52} :catch_290
    .catchall {:try_start_45 .. :try_end_52} :catchall_2cb

    .line 193
    .local v3, "distroTzDataSetVersion":Llibcore/timezone/TzDataSetVersion;
    nop

    .line 194
    :try_start_53
    invoke-static {v3}, Llibcore/timezone/TzDataSetVersion;->isCompatibleWithThisDevice(Llibcore/timezone/TzDataSetVersion;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 195
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update not applied: Distro format version check failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_2cb

    .line 197
    const/4 v0, 0x2

    .line 280
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 197
    return v0

    .line 200
    :cond_7b
    :try_start_7b
    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->checkDistroDataFilesExist(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 201
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v4, "Update not applied: Distro is missing required data file(s)"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_7b .. :try_end_8a} :catchall_2cb

    .line 202
    nop

    .line 280
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 202
    return v1

    .line 205
    :cond_96
    :try_start_96
    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->baseVersionFile:Ljava/io/File;

    invoke-direct {p0, v4, v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->checkDistroRulesNewerThanBase(Ljava/io/File;Lcom/android/timezone/distro/DistroVersion;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 206
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Update not applied: Distro rules version check failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_96 .. :try_end_a5} :catchall_2cb

    .line 207
    const/4 v0, 0x3

    .line 280
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 207
    return v0

    .line 211
    :cond_b1
    :try_start_b1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v6, "tzdata"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v4, "zoneInfoFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Llibcore/timezone/ZoneInfoDb;->loadTzData(Ljava/lang/String;)Llibcore/timezone/ZoneInfoDb;

    move-result-object v5
    :try_end_c3
    .catchall {:try_start_b1 .. :try_end_c3} :catchall_2cb

    .line 213
    .local v5, "tzData":Llibcore/timezone/ZoneInfoDb;
    const/4 v6, 0x4

    const-string v7, "Update not applied: "

    if-nez v5, :cond_ed

    .line 214
    :try_start_c8
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " could not be loaded"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_c8 .. :try_end_e1} :catchall_2cb

    .line 215
    nop

    .line 280
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 215
    return v6

    .line 218
    :cond_ed
    :try_start_ed
    invoke-virtual {v5}, Llibcore/timezone/ZoneInfoDb;->validate()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_264
    .catchall {:try_start_ed .. :try_end_f0} :catchall_262

    .line 223
    :try_start_f0
    invoke-virtual {v5}, Llibcore/timezone/ZoneInfoDb;->close()V

    .line 224
    nop

    .line 227
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v10, "tzlookup.xml"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .local v8, "tzLookupFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_102
    .catchall {:try_start_f0 .. :try_end_102} :catchall_2cb

    const-string v10, " does not exist"

    if-nez v9, :cond_129

    .line 229
    :try_start_106
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_106 .. :try_end_11d} :catchall_2cb

    .line 230
    nop

    .line 280
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 230
    return v1

    .line 233
    :cond_129
    nop

    .line 234
    :try_start_12a
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Llibcore/timezone/TimeZoneFinder;->createInstance(Ljava/lang/String;)Llibcore/timezone/TimeZoneFinder;

    move-result-object v9

    .line 235
    .local v9, "timeZoneFinder":Llibcore/timezone/TimeZoneFinder;
    invoke-virtual {v9}, Llibcore/timezone/TimeZoneFinder;->validate()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_135} :catch_23e
    .catchall {:try_start_12a .. :try_end_135} :catchall_2cb

    .line 239
    .end local v9    # "timeZoneFinder":Llibcore/timezone/TimeZoneFinder;
    nop

    .line 242
    :try_start_136
    new-instance v9, Ljava/io/File;

    iget-object v11, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v12, "telephonylookup.xml"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    .local v9, "telephonyLookupFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_169

    .line 245
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catchall {:try_start_136 .. :try_end_15d} :catchall_2cb

    .line 246
    nop

    .line 280
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 246
    return v1

    .line 249
    :cond_169
    nop

    .line 250
    :try_start_16a
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/timezone/TelephonyLookup;->createInstance(Ljava/lang/String;)Llibcore/timezone/TelephonyLookup;

    move-result-object v1

    .line 251
    .local v1, "telephonyLookup":Llibcore/timezone/TelephonyLookup;
    invoke-virtual {v1}, Llibcore/timezone/TelephonyLookup;->validate()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_175} :catch_21a
    .catchall {:try_start_16a .. :try_end_175} :catchall_2cb

    .line 256
    .end local v1    # "telephonyLookup":Llibcore/timezone/TelephonyLookup;
    nop

    .line 261
    :try_start_176
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Applying time zone update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    .line 265
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_188
    .catchall {:try_start_176 .. :try_end_188} :catchall_2cb

    const-string v1, " to "

    const-string v6, "Moving "

    if-nez v0, :cond_1a7

    .line 266
    :try_start_18e
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Nothing to unstage at "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cc

    .line 268
    :cond_1a7
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0, v7}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 275
    :goto_1cc
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 277
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install staged: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " successfully created"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20e
    .catchall {:try_start_18e .. :try_end_20e} :catchall_2cb

    .line 278
    const/4 v0, 0x0

    .line 280
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 278
    return v0

    .line 252
    :catch_21a
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    :try_start_21b
    iget-object v10, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_232
    .catchall {:try_start_21b .. :try_end_232} :catchall_2cb

    .line 255
    nop

    .line 280
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 255
    return v6

    .line 236
    .end local v1    # "e":Ljava/io/IOException;
    .end local v9    # "telephonyLookupFile":Ljava/io/File;
    :catch_23e
    move-exception v1

    .line 237
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_23f
    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_256
    .catchall {:try_start_23f .. :try_end_256} :catchall_2cb

    .line 238
    nop

    .line 280
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 238
    return v6

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "tzLookupFile":Ljava/io/File;
    :catchall_262
    move-exception v0

    goto :goto_28b

    .line 219
    :catch_264
    move-exception v1

    .line 220
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_265
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27c
    .catchall {:try_start_265 .. :try_end_27c} :catchall_262

    .line 221
    nop

    .line 223
    :try_start_27d
    invoke-virtual {v5}, Llibcore/timezone/ZoneInfoDb;->close()V
    :try_end_280
    .catchall {:try_start_27d .. :try_end_280} :catchall_2cb

    .line 280
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 221
    return v6

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    :goto_28b
    :try_start_28b
    invoke-virtual {v5}, Llibcore/timezone/ZoneInfoDb;->close()V

    .line 224
    nop

    .end local p0    # "this":Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .end local p1    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    throw v0

    .line 190
    .end local v3    # "distroTzDataSetVersion":Llibcore/timezone/TzDataSetVersion;
    .end local v4    # "zoneInfoFile":Ljava/io/File;
    .end local v5    # "tzData":Llibcore/timezone/ZoneInfoDb;
    .restart local p0    # "this":Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .restart local p1    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    :catch_290
    move-exception v0

    .line 191
    .local v0, "e":Llibcore/timezone/TzDataSetVersion$TzDataSetException;
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v4, "Update not applied: Distro version could not be converted"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_298
    .catchall {:try_start_28b .. :try_end_298} :catchall_2cb

    .line 192
    nop

    .line 280
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 192
    return v1

    .line 174
    .end local v0    # "e":Llibcore/timezone/TzDataSetVersion$TzDataSetException;
    .end local v2    # "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    :catch_2a4
    move-exception v0

    .line 175
    .local v0, "e":Lcom/android/timezone/distro/DistroException;
    :try_start_2a5
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid distro version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/timezone/distro/DistroException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bf
    .catchall {:try_start_2a5 .. :try_end_2bf} :catchall_2cb

    .line 176
    nop

    .line 280
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 176
    return v1

    .line 280
    .end local v0    # "e":Lcom/android/timezone/distro/DistroException;
    :catchall_2cb
    move-exception v0

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 281
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 282
    throw v0
.end method

.method public stageUninstall()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Uninstalling time zone update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 302
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 304
    :cond_14
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 305
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 310
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_f7

    const-string v1, " to "

    const-string v2, "Moving "

    if-nez v0, :cond_46

    .line 311
    :try_start_2d
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing to unstage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 313
    :cond_46
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 321
    :goto_6b
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_98

    .line 322
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing to uninstall at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_2d .. :try_end_8c} :catchall_f7

    .line 323
    nop

    .line 337
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 338
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 323
    return v3

    .line 327
    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 328
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string v4, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->createEmptyFile(Ljava/io/File;)V

    .line 331
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 333
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uninstall staged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " successfully created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_98 .. :try_end_eb} :catchall_f7

    .line 335
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 338
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 335
    return v0

    .line 337
    :catchall_f7
    move-exception v0

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 338
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 339
    throw v0
.end method
