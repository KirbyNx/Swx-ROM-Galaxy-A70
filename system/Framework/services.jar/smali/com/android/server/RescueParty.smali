.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$RescuePartyObserver;
    }
.end annotation


# static fields
.field static final DEFAULT_OBSERVING_DURATION_MS:J

.field static final LEVEL_FACTORY_RESET:I = 0x7

.field static final LEVEL_HW_RESET:I = 0x1

.field static final LEVEL_ISRB_BOOT:I = 0x9

.field static final LEVEL_NONE:I = 0x0

.field static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x5

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x4

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x3

.field static final LEVEL_SYSUI_SAFEMODE:I = 0x2

.field static final LEVEL_WIFI:I = 0x6

.field private static final NAME:Ljava/lang/String; = "rescue-party-observer"

.field private static final PERSISTENT_MASK:I = 0x9

.field private static final PROP_BUILD_TIME:Ljava/lang/String; = "ro.build.date.utc"

.field private static final PROP_DEVICE_CONFIG_DISABLE_FLAG:Ljava/lang/String; = "persist.device_config.configuration.disable_rescue_party"

.field private static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field private static final PROP_ENABLE_ISRB:Ljava/lang/String; = "persist.sys.enable_isrb"

.field static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"

.field static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field static final PROP_RESCUE_LEVEL:Ljava/lang/String; = "sys.rescue_level"

.field static final PROP_RESCUE_LEVEL_FOR_BIGDATA:Ljava/lang/String; = "persist.sys.rescue_level"

.field static final PROP_SYS_EMERGENCY_RESET:Ljava/lang/String; = "persist.sys.emergency_reset"

.field private static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field static final TAG:Ljava/lang/String; = "RescueParty"

.field private static final TEST_TIME:J = 0x16f5caf7400L


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 116
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(ILjava/lang/Throwable;)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 83
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 83
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 83
    invoke-static {}, Lcom/android/server/RescueParty;->getNextRescueLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)I
    .registers 2
    .param p0, "x0"    # I

    .line 83
    invoke-static {p0}, Lcom/android/server/RescueParty;->mapRescueLevelToUserImpact(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(I)V
    .registers 1
    .param p0, "x0"    # I

    .line 83
    invoke-static {p0}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static executeRescueLevel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "failedPackage"    # Ljava/lang/String;

    .line 301
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 302
    .local v0, "level":I
    if-nez v0, :cond_b

    return-void

    .line 304
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ Attempting rescue level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_21

    const-string v2, ""

    goto :goto_32

    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RescueParty"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_3e
    invoke-static {p0, v0, p1}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V

    .line 307
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    .line 308
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished rescue level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_3e .. :try_end_5d} :catchall_5e

    .line 312
    goto :goto_62

    .line 310
    :catchall_5e
    move-exception v1

    .line 311
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/Throwable;)V

    .line 313
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_62
    return-void
.end method

.method private static executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    invoke-static {}, Lcom/android/server/RescueParty;->saveRescuePartyLog()V

    .line 366
    const/16 v0, 0x7a

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 367
    const-string v0, "RescueParty"

    const/4 v1, 0x1

    const-string/jumbo v2, "persist.sys.enable_isrb"

    const/16 v3, 0x32

    packed-switch p1, :pswitch_data_80

    :pswitch_13
    goto :goto_7f

    .line 416
    :pswitch_14
    invoke-static {p0}, Lcom/android/server/RescueParty;->resetBuildTime(Landroid/content/Context;)V

    .line 417
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "LEVEL_ISRB_BOOT rescueParty set ISRB_ENABLE."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {}, Lcom/android/server/RescueParty;->rebootDevice()V

    goto :goto_7f

    .line 396
    :pswitch_27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string/jumbo v0, "persist.sys.rescue_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {p0, v3}, Lcom/android/server/RescueParty;->waitForDumpstate(Landroid/content/Context;I)V

    .line 402
    new-instance v0, Lcom/android/server/RescueParty$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/RescueParty$1;-><init>(Landroid/content/Context;I)V

    .line 412
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 413
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 414
    goto :goto_7f

    .line 392
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "thread":Ljava/lang/Thread;
    :pswitch_48
    invoke-static {}, Lcom/android/server/RescueParty;->resetAllWifiStoreData()V

    .line 393
    goto :goto_7f

    .line 389
    :pswitch_4c
    const/4 v0, 0x4

    invoke-static {p0, v0, p2}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 390
    goto :goto_7f

    .line 386
    :pswitch_51
    const/4 v0, 0x3

    invoke-static {p0, v0, p2}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 387
    goto :goto_7f

    .line 383
    :pswitch_56
    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 384
    goto :goto_7f

    .line 373
    :pswitch_5b
    const-string v2, "com.android.systemui"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 374
    const-string/jumbo v2, "setSysUiSafeMode = true"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 376
    .local v0, "sbi":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSysUiSafeMode(Z)V

    .line 379
    .end local v0    # "sbi":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_74
    invoke-static {p0}, Lcom/android/server/RescueParty;->resetWallpaperData(Landroid/content/Context;)V

    .line 381
    goto :goto_7f

    .line 369
    :pswitch_78
    invoke-static {p0, v3}, Lcom/android/server/RescueParty;->waitForDumpstate(Landroid/content/Context;I)V

    .line 370
    invoke-static {}, Lcom/android/server/RescueParty;->rebootDevice()V

    .line 371
    nop

    .line 422
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_78
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_48
        :pswitch_27
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private static fetchCompleteList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 523
    .local p0, "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "folderList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 525
    .local v1, "listOfFile":[Ljava/io/File;
    if-eqz v1, :cond_31

    .line 526
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    .line 527
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 528
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    nop

    .line 530
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-static {p0, p1, v5}, Lcom/android/server/RescueParty;->fetchCompleteList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2e

    .line 532
    :cond_27
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v4    # "tempFile":Ljava/io/File;
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 536
    :cond_31
    return-void
.end method

.method private static getAllUserIds()[I
    .registers 7

    .line 756
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 758
    .local v0, "userIds":[I
    :try_start_6
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_f
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_28

    .line 760
    .local v4, "file":Ljava/io/File;
    :try_start_13
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 761
    .local v5, "userId":I
    if-eqz v5, :cond_22

    .line 762
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_21} :catch_23
    .catchall {:try_start_13 .. :try_end_21} :catchall_28

    move-object v0, v6

    .line 765
    .end local v5    # "userId":I
    :cond_22
    goto :goto_24

    .line 764
    :catch_23
    move-exception v5

    .line 758
    .end local v4    # "file":Ljava/io/File;
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 769
    :cond_27
    goto :goto_30

    .line 767
    :catchall_28
    move-exception v1

    .line 768
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "RescueParty"

    const-string v3, "Trouble discovering users"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_30
    return-object v0
.end method

.method static getElapsedRealtime()J
    .registers 2

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getNextRescueLevel()I
    .registers 6

    .line 261
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x7

    const-string v5, "RescueParty"

    if-eq v2, v3, :cond_2d

    .line 262
    const-string v2, "!@ getNextRescueLevel not LEVEL_ISRB_BOOT"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_22

    .line 264
    const-string v0, "!@ getNextRescueLevel shoule be ISRB"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v3

    .line 273
    :cond_22
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0

    .line 268
    :cond_2d
    const-string v0, "!@ getNextRescueLevel is LEVEL_ISRB_BOOT"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v4
.end method

.method private static getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 450
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 451
    :catch_a
    move-exception v0

    .line 453
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private static handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 206
    const-string/jumbo v0, "monitor_callback_type"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "callbackType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x2ccdde53

    const/4 v3, 0x1

    if-eq v1, v2, :cond_23

    const v2, 0x45856cc0    # 4269.5938f

    if-eq v1, v2, :cond_19

    :cond_18
    goto :goto_2e

    :cond_19
    const-string v1, "access_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    goto :goto_2f

    :cond_23
    const-string/jumbo v1, "namespace_updated_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    goto :goto_2f

    :goto_2e
    const/4 v1, -0x1

    :goto_2f
    const-string/jumbo v2, "namespace"

    if-eqz v1, :cond_55

    if-eq v1, v3, :cond_3e

    .line 224
    const-string v1, "RescueParty"

    const-string v2, "Unrecognized DeviceConfig callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 215
    :cond_3e
    const-string v1, "calling_package"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "callingPackage":Ljava/lang/String;
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "namespace":Ljava/lang/String;
    if-eqz v2, :cond_5e

    if-eqz v1, :cond_5e

    .line 218
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v3

    # invokes: Lcom/android/server/RescueParty$RescuePartyObserver;->recordDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v1, v2}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$000(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 209
    .end local v1    # "callingPackage":Ljava/lang/String;
    .end local v2    # "namespace":Ljava/lang/String;
    :cond_55
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "updatedNamespace":Ljava/lang/String;
    if-eqz v1, :cond_5e

    .line 211
    invoke-static {p0, v1}, Lcom/android/server/RescueParty;->startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    .end local v1    # "updatedNamespace":Ljava/lang/String;
    :cond_5e
    :goto_5e
    return-void
.end method

.method private static handleNativeRescuePartyResets()V
    .registers 4

    .line 246
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 247
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetNativeCategories()[Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "resetNativeCategories":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 249
    const/4 v2, 0x4

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 253
    .end local v0    # "resetNativeCategories":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private static incrementRescueLevel(I)V
    .registers 7
    .param p0, "triggerUid"    # I

    .line 282
    const-string/jumbo v0, "persist.sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    const-string/jumbo v4, "sys.rescue_level"

    if-ne v2, v3, :cond_15

    .line 283
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_15
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_24

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ incrementRescueLevel by uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RescueParty"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Lcom/android/server/RescueParty;->getNextRescueLevel()I

    move-result v1

    .line 291
    .local v1, "level":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]---"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {v1, p0}, Lcom/android/server/EventLogTags;->writeRescueLevel(II)V

    .line 296
    const/4 v0, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incremented rescue level to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-static {v1}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " triggered by UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 298
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .registers 3

    .line 184
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method private static isDisabled()Z
    .registers 5

    .line 140
    const-string/jumbo v0, "persist.sys.enable_rescue"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    return v1

    .line 146
    :cond_b
    const-string/jumbo v0, "persist.device_config.configuration.disable_rescue_party"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "RescueParty"

    if-eqz v0, :cond_1d

    .line 147
    const-string v0, "Disabled because of DeviceConfig flag"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v2

    .line 152
    :cond_1d
    const-string/jumbo v0, "persist.sys.emergency_reset"

    const-string v4, ""

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "emergency"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 153
    const-string v0, "!@ RescueParty last level is already done"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v2

    .line 158
    :cond_34
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_3e

    .line 159
    const-string v0, "Disabled because of eng build"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v2

    .line 166
    :cond_3e
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 167
    const-string v0, "Disabled because of active USB connection"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v2

    .line 172
    :cond_4e
    const-string/jumbo v0, "persist.sys.disable_rescue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 173
    const-string v0, "Disabled because of manual property"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v2

    .line 177
    :cond_5d
    return v1
.end method

.method private static isUsbActive()Z
    .registers 5

    .line 778
    const-string/jumbo v0, "ro.hardware.virtual_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "RescueParty"

    if-eqz v0, :cond_13

    .line 779
    const-string v0, "Assuming virtual device is connected over USB"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x1

    return v0

    .line 783
    :cond_13
    :try_start_13
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    .line 784
    invoke-static {v0, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "state":Ljava/lang/String;
    const-string v3, "CONFIGURED"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    return v1

    .line 786
    .end local v0    # "state":Ljava/lang/String;
    :catchall_2d
    move-exception v0

    .line 787
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "Failed to determine if device was on USB"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    return v1
.end method

.method static synthetic lambda$onSettingsProviderPublished$0(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 196
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 197
    return-void
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "level"    # I

    .line 793
    packed-switch p0, :pswitch_data_24

    .line 803
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 802
    :pswitch_8
    const-string v0, "ISRB_BOOT"

    return-object v0

    .line 801
    :pswitch_b
    const-string v0, "FACTORY_RESET"

    return-object v0

    .line 800
    :pswitch_e
    const-string v0, "LEVEL_WIFI"

    return-object v0

    .line 799
    :pswitch_11
    const-string v0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object v0

    .line 798
    :pswitch_14
    const-string v0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object v0

    .line 797
    :pswitch_17
    const-string v0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object v0

    .line 796
    :pswitch_1a
    const-string v0, "LEVEL_SYSUI_SAFEMODE"

    return-object v0

    .line 795
    :pswitch_1d
    const-string v0, "HW_RESET"

    return-object v0

    .line 794
    :pswitch_20
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private static logRescueException(ILjava/lang/Throwable;)V
    .registers 5
    .param p0, "level"    # I
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 425
    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed rescue level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-static {p0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 427
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 429
    return-void
.end method

.method private static mapRescueLevelToUserImpact(I)I
    .registers 2
    .param p0, "rescueLevel"    # I

    .line 432
    packed-switch p0, :pswitch_data_a

    .line 444
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 442
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 436
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 192
    invoke-static {}, Lcom/android/server/RescueParty;->handleNativeRescuePartyResets()V

    .line 193
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/-$$Lambda$RescueParty$M16YDzk6heHIMmIiCwHVSe9Y_o8;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$RescueParty$M16YDzk6heHIMmIiCwHVSe9Y_o8;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-static {v0, v1}, Landroid/provider/Settings$Config;->registerMonitorCallback(Landroid/content/ContentResolver;Landroid/os/RemoteCallback;)V

    .line 198
    return-void
.end method

.method private static performScopedReset(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resetMode"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;

    .line 584
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    .line 585
    .local v0, "rescuePartyObserver":Lcom/android/server/RescueParty$RescuePartyObserver;
    # invokes: Lcom/android/server/RescueParty$RescuePartyObserver;->getAffectedNamespaceSet(Ljava/lang/String;)Ljava/util/Set;
    invoke-static {v0, p2}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$300(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 587
    .local v1, "affectedNamespaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_f

    .line 588
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    goto :goto_49

    .line 590
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing scoped reset for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", affected namespaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    const-string v3, "RescueParty"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 595
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 596
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    goto :goto_39

    .line 599
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_49
    :goto_49
    return-void
.end method

.method private static rebootDevice()V
    .registers 2

    .line 343
    const-string/jumbo v0, "sys.powerctl"

    const-string/jumbo v1, "reboot,RescueParty"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-wide/16 v0, 0x2710

    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    .line 347
    goto :goto_10

    .line 346
    :catch_f
    move-exception v0

    .line 348
    :goto_10
    const-string v0, "RescueParty"

    const-string v1, "!@ RescueParty did not trigger reboot for 10 seconds"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method public static registerHealthObserver(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 134
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    .line 135
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 136
    return-void
.end method

.method private static removeFile(Ljava/lang/String;)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RescueParty"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 494
    return-void
.end method

.method private static removeFiles(Ljava/lang/String;)V
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v1, "folderList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1, p0}, Lcom/android/server/RescueParty;->fetchCompleteList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 513
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 514
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/RescueParty;->removeFile(Ljava/lang/String;)V

    .line 515
    .end local v3    # "filePath":Ljava/lang/String;
    goto :goto_11

    .line 516
    :cond_21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 517
    .restart local v3    # "filePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/RescueParty;->removeFile(Ljava/lang/String;)V

    .line 518
    .end local v3    # "filePath":Ljava/lang/String;
    goto :goto_25

    .line 519
    :cond_35
    return-void
.end method

.method private static resetAllSettings(Landroid/content/Context;ILjava/lang/String;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "res":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 545
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 548
    goto :goto_12

    .line 546
    :catch_9
    move-exception v2

    .line 547
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to reset config settings"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 550
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_14
    invoke-static {v1, v3, p1, v2}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    .line 553
    goto :goto_21

    .line 551
    :catch_18
    move-exception v4

    .line 552
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to reset global settings"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 554
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_21
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_26
    if-ge v2, v5, :cond_49

    aget v6, v4, v2

    .line 556
    .local v6, "userId":I
    :try_start_2a
    invoke-static {v1, v3, p1, v6}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 559
    goto :goto_46

    .line 557
    :catch_2e
    move-exception v7

    .line 558
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to reset secure settings for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 554
    .end local v6    # "userId":I
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 561
    :cond_49
    if-nez v0, :cond_4c

    .line 564
    return-void

    .line 562
    :cond_4c
    throw v0
.end method

.method private static resetAllWifiStoreData()V
    .registers 7

    .line 458
    const-string v0, "RescueParty"

    const-string/jumbo v1, "remove Wi-Fi networks"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v0, "/data/system/wifigeofence.db"

    invoke-static {v0}, Lcom/android/server/RescueParty;->removeFile(Ljava/lang/String;)V

    .line 461
    const-string v0, "/data/system/wifigeofence.db-journal"

    invoke-static {v0}, Lcom/android/server/RescueParty;->removeFile(Ljava/lang/String;)V

    .line 462
    const-string v0, "/data/system/WifiConfigStore.db"

    invoke-static {v0}, Lcom/android/server/RescueParty;->removeFile(Ljava/lang/String;)V

    .line 463
    const-string v0, "/data/system/WifiConfigStore.db-journal"

    invoke-static {v0}, Lcom/android/server/RescueParty;->removeFile(Ljava/lang/String;)V

    .line 465
    const-string v0, "/data/misc/wifi"

    invoke-static {v0}, Lcom/android/server/RescueParty;->removeFiles(Ljava/lang/String;)V

    .line 466
    const-string v0, "/data/misc/apexdata/com.android.wifi"

    invoke-static {v0}, Lcom/android/server/RescueParty;->removeFiles(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_63

    aget v3, v0, v2

    .line 469
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc_ce/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/wifi"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/RescueParty;->removeFiles(Ljava/lang/String;)V

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/apexdata/com.android.wifi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/RescueParty;->removeFiles(Ljava/lang/String;)V

    .line 468
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 472
    :cond_63
    return-void
.end method

.method private static resetBuildTime(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 499
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_4
    const-string v1, "RescueParty"

    const-string v2, "Fake time Set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string/jumbo v1, "ro.build.date.utc"

    const-wide/32 v2, 0x5e0b7080

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 501
    .local v1, "mBuildtime":J
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 502
    const-string v3, "auto_time"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    const-string v3, "auto_time_zone"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_28

    .line 506
    nop

    .end local v1    # "mBuildtime":J
    goto :goto_29

    .line 504
    :catchall_28
    move-exception v1

    .line 507
    :goto_29
    return-void
.end method

.method private static resetDeviceConfig(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resetMode"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;

    .line 568
    invoke-static {}, Lcom/android/server/RescueParty;->shouldPerformScopedResets()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_9

    goto :goto_d

    .line 571
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->performScopedReset(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_11

    .line 569
    :cond_d
    :goto_d
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 573
    :goto_11
    return-void
.end method

.method private static resetWallpaperData(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 476
    const-string v0, "android"

    const-string v1, "RescueParty"

    const-string/jumbo v2, "reset wallpaper"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :try_start_a
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    .line 479
    .local v1, "service":Landroid/app/IWallpaperManager;
    if-eqz v1, :cond_2a

    .line 480
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    .line 481
    const/16 v2, 0x11

    invoke-interface {v1, v0, v2, v3}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    .line 482
    const/4 v2, 0x2

    invoke-interface {v1, v0, v2, v3}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    .line 483
    const/16 v2, 0x12

    invoke-interface {v1, v0, v2, v3}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_2b

    .line 486
    .end local v1    # "service":Landroid/app/IWallpaperManager;
    :cond_2a
    goto :goto_2c

    .line 485
    :catchall_2b
    move-exception v0

    .line 487
    :goto_2c
    return-void
.end method

.method private static saveRescuePartyLog()V
    .registers 9

    .line 353
    const-string v0, "/cache/recovery/rescueparty_log"

    :try_start_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "sdfTime":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 355
    .local v2, "now":J
    new-instance v4, Ljava/util/Date;

    const-wide/32 v5, 0x927c0

    sub-long v5, v2, v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "strTime":Ljava/lang/String;
    const-string v5, "RescueParty"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveRescuePartyLog : logcat -v raw -b crash -t \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' -f /cache/recovery/rescueparty_log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v6, "rm"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 358
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "logcat"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "-v"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "raw"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "-b"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "crash"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "-t"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    aput-object v4, v6, v7

    const/4 v7, 0x7

    const-string v8, "-f"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7d} :catch_7f

    .line 360
    nop

    .end local v1    # "sdfTime":Ljava/text/SimpleDateFormat;
    .end local v2    # "now":J
    .end local v4    # "strTime":Ljava/lang/String;
    goto :goto_80

    .line 359
    :catch_7f
    move-exception v0

    .line 361
    :goto_80
    return-void
.end method

.method private static shouldPerformScopedResets()Z
    .registers 3

    .line 576
    nop

    .line 577
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 576
    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 579
    .local v0, "rescueLevel":I
    const/4 v2, 0x4

    if-gt v0, v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private static startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updatedNamespace"    # Ljava/lang/String;

    .line 230
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    .line 231
    .local v0, "rescuePartyObserver":Lcom/android/server/RescueParty$RescuePartyObserver;
    # invokes: Lcom/android/server/RescueParty$RescuePartyObserver;->getCallingPackagesSet(Ljava/lang/String;)Ljava/util/Set;
    invoke-static {v0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$100(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 232
    .local v1, "callingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_b

    .line 233
    return-void

    .line 235
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, "callingPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting to observe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", updated namespace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RescueParty"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v3

    sget-wide v4, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    .line 243
    return-void
.end method

.method private static waitForDumpstate(Landroid/content/Context;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # I

    .line 316
    const-string v0, "RescueParty"

    const-string v1, "!@ make dumpstate_sys_error for rescueparty"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v1, "dumpstate.is_running"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "dump_running":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "bugreportm"

    if-eqz v2, :cond_32

    .line 320
    const-string v2, "cancel previous dumpstate, and start new one"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v2, "ctl.stop"

    const-string v4, "bugreportd"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v4, "dumpstate"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v4, "dumpstatez"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_32
    const-string v2, "bugreport.mode"

    const-string/jumbo v4, "sys_rescue"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "dumpstate.process"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "ctl.start"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "count":I
    :goto_45
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "count":I
    .local v2, "count":I
    if-ge v0, p1, :cond_63

    .line 333
    const-wide/16 v3, 0x3e8

    :try_start_4b
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 335
    goto :goto_50

    .line 334
    :catch_4f
    move-exception v0

    .line 337
    :goto_50
    const-string/jumbo v0, "init.svc.bugreportm"

    const-string/jumbo v3, "stopped"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 338
    goto :goto_63

    .line 337
    :cond_61
    move v0, v2

    goto :goto_45

    .line 340
    :cond_63
    :goto_63
    return-void
.end method
