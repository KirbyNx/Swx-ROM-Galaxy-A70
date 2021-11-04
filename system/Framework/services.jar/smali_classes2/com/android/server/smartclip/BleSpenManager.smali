.class Lcom/android/server/smartclip/BleSpenManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# static fields
.field private static final BLE_SPEN_ADDR_FILE_NAME:Ljava/lang/String; = "blespen_addr"

.field private static final BLE_SPEN_BASE_DIR:Ljava/lang/String; = "/efs/spen"

.field private static final BLE_SPEN_CMF_FILE_NAME:Ljava/lang/String; = "blespen_cmf"

.field private static final BLE_SPEN_COMMAND_FILE_PATH_NAME:Ljava/lang/String; = "/sys/class/sec/sec_epen/epen_ble_charging_mode"

.field private static final PKG_NAME_AIR_COMNAND:Ljava/lang/String; = "com.samsung.android.service.aircommand"

.field private static final SETTING_KEY_AIR_ACTION:Ljava/lang/String; = "spen_air_action"

.field private static final SVC_NAME_BLIND_CHARGE:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespen.RemoteSpenBlindChargeService"

.field private static final SVC_NAME_REMOTE_SPEN:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespen.RemoteSpenService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBundledRemoteSpenSupport:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mUnbundledRemoteSpenSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2312
    const-class v0, Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 2346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z

    .line 2326
    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z

    .line 2347
    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    .line 2348
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z

    .line 2349
    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SpenGarageSpecManager;->isUnbundledRemoteSpenSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z

    .line 2350
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mHandler:Landroid/os/Handler;

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2353
    invoke-direct {p0}, Lcom/android/server/smartclip/BleSpenManager;->registerAirActionSettingObserver()V

    .line 2355
    :cond_30
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/BleSpenManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/smartclip/BleSpenManager;

    .line 2311
    invoke-direct {p0}, Lcom/android/server/smartclip/BleSpenManager;->onAirActionSettingChanged()V

    return-void
.end method

.method private onAirActionSettingChanged()V
    .registers 5

    .line 2514
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result v0

    .line 2515
    .local v0, "isEnabled":Z
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAirActionSettingChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2517
    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 2518
    iget-object v2, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_2f

    .line 2520
    :cond_2a
    iget-object v2, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 2523
    :cond_2f
    :goto_2f
    return-void
.end method

.method private readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "filePathName"    # Ljava/lang/String;

    .line 2526
    const/4 v0, 0x0

    .line 2527
    .local v0, "readedStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2529
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 2530
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2531
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_1a} :catch_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_4f

    .line 2534
    :catch_1b
    move-exception v2

    .line 2535
    .local v2, "ie":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBleSpenAddress : e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    .line 2539
    goto :goto_50

    .line 2538
    :catch_36
    move-exception v3

    goto :goto_50

    .line 2532
    .end local v2    # "ie":Ljava/io/IOException;
    :catch_38
    move-exception v2

    .line 2533
    .local v2, "fe":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBleSpenAddress : file not exist. e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    .end local v2    # "fe":Ljava/io/FileNotFoundException;
    :goto_4f
    nop

    .line 2542
    :goto_50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2543
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readStringFromFile : empty file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    const/4 v0, 0x0

    .line 2546
    :cond_5f
    return-object v0
.end method

.method private registerAirActionSettingObserver()V
    .registers 6

    .line 2500
    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2501
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 2502
    const-string/jumbo v1, "spen_air_action"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/smartclip/BleSpenManager$1;

    iget-object v3, p0, Lcom/android/server/smartclip/BleSpenManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/smartclip/BleSpenManager$1;-><init>(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/Handler;)V

    .line 2501
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2511
    return-void
.end method

.method private writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "filePathName"    # Ljava/lang/String;
    .param p2, "strToWrite"    # Ljava/lang/String;

    .line 2550
    if-nez p2, :cond_4

    .line 2551
    const-string p2, ""

    .line 2554
    :cond_4
    const/4 v0, 0x0

    .line 2556
    .local v0, "out":Ljava/io/BufferedWriter;
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 2558
    .local v1, "verifyDir":Ljava/io/File;
    if-nez v1, :cond_31

    .line 2559
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile : Parent dir is null! filePathName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_27} :catch_123
    .catchall {:try_start_5 .. :try_end_27} :catchall_121

    .line 2597
    if-eqz v0, :cond_2f

    .line 2598
    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_2f

    .line 2600
    :catch_2d
    move-exception v2

    goto :goto_30

    .line 2601
    :cond_2f
    :goto_2f
    nop

    .line 2560
    :goto_30
    return-void

    .line 2563
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_55

    .line 2564
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile : No directoy, make directoy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2568
    :cond_55
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_59} :catch_123
    .catchall {:try_start_31 .. :try_end_59} :catchall_121

    const-string/jumbo v3, "writeStringToFile : failed setreadable:"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_7e

    .line 2569
    :try_start_60
    invoke-virtual {v1, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 2570
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_7e
    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v2
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_82} :catch_123
    .catchall {:try_start_60 .. :try_end_82} :catchall_121

    const-string/jumbo v6, "writeStringToFile : failed setexecutable:"

    if-nez v2, :cond_a5

    .line 2574
    :try_start_87
    invoke-virtual {v1, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 2575
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :cond_a5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 2580
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2583
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2584
    .local v2, "dataFile":Ljava/io/File;
    invoke-virtual {v2, v5, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v7

    if-nez v7, :cond_db

    .line 2585
    sget-object v7, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_db
    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v3

    if-nez v3, :cond_f9

    .line 2588
    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    :cond_f9
    invoke-virtual {v2, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3

    if-nez v3, :cond_11a

    .line 2591
    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToFile : failed setWritable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_11a} :catch_123
    .catchall {:try_start_87 .. :try_end_11a} :catchall_121

    .line 2597
    .end local v1    # "verifyDir":Ljava/io/File;
    .end local v2    # "dataFile":Ljava/io/File;
    :cond_11a
    nop

    .line 2598
    :try_start_11b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11e} :catch_11f

    .line 2601
    :cond_11e
    :goto_11e
    goto :goto_141

    .line 2600
    :catch_11f
    move-exception v1

    .line 2602
    goto :goto_141

    .line 2596
    :catchall_121
    move-exception v1

    goto :goto_142

    .line 2593
    :catch_123
    move-exception v1

    .line 2594
    .local v1, "e":Ljava/io/IOException;
    :try_start_124
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile : e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catchall {:try_start_124 .. :try_end_13b} :catchall_121

    .line 2597
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_11e

    .line 2598
    :try_start_13d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_140} :catch_11f

    goto :goto_11e

    .line 2603
    :goto_141
    return-void

    .line 2597
    :goto_142
    if-eqz v0, :cond_14a

    .line 2598
    :try_start_144
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_148

    goto :goto_14a

    .line 2600
    :catch_148
    move-exception v2

    goto :goto_14b

    .line 2601
    :cond_14a
    :goto_14a
    nop

    .line 2602
    :goto_14b
    throw v1
.end method


# virtual methods
.method public declared-synchronized disableCharging()V
    .registers 2

    monitor-enter p0

    .line 2419
    :try_start_1
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/BleSpenManager;->writeBleSpenCommand(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2420
    monitor-exit p0

    return-void

    .line 2418
    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBleSpenAddress()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 2358
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2359
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string v1, "getBleSpenAddress : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    .line 2360
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2362
    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_addr"

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 2357
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBleSpenCmfCode()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 2374
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2375
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string v1, "getBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    .line 2376
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2378
    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_cmf"

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 2373
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAirActionSettingEnabled()Z
    .registers 5

    .line 2494
    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2495
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "spen_air_action"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2496
    .local v1, "settingValue":I
    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public declared-synchronized isSupportBleSpen()Z
    .registers 2

    monitor-enter p0

    .line 2391
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    .line 2391
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBleSpenAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    monitor-enter p0

    .line 2366
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2367
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setBleSpenAddress : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    .line 2368
    monitor-exit p0

    return-void

    .line 2370
    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_addr"

    invoke-direct {p0, v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    .line 2371
    monitor-exit p0

    return-void

    .line 2365
    .end local p1    # "address":Ljava/lang/String;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBleSpenCmfCode(Ljava/lang/String;)V
    .registers 4
    .param p1, "cmfCode"    # Ljava/lang/String;

    monitor-enter p0

    .line 2382
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2383
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    .line 2384
    monitor-exit p0

    return-void

    .line 2386
    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :cond_11
    :try_start_11
    const-string v0, "/efs/spen/blespen_cmf"

    invoke-direct {p0, v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    .line 2387
    monitor-exit p0

    return-void

    .line 2381
    .end local p1    # "cmfCode":Ljava/lang/String;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startBlindChargeService(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 2464
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2465
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startBlindChargeService : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_5d

    .line 2466
    monitor-exit p0

    return-void

    .line 2469
    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2470
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startBlindChargeService : BLE Spen is disabled on knox container enabled mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_5d

    .line 2471
    monitor-exit p0

    return-void

    .line 2475
    :cond_21
    :try_start_21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2476
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.service.aircommand"

    const-string v2, "com.samsung.android.service.aircommand.remotespen.RemoteSpenBlindChargeService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2477
    if-eqz p2, :cond_32

    .line 2478
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2480
    :cond_32
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    .line 2481
    .local v1, "serviceName":Landroid/content/ComponentName;
    if-nez v1, :cond_42

    .line 2482
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startBlindChargeService : failed to launch the service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_42} :catch_43
    .catchall {:try_start_21 .. :try_end_42} :catchall_5d

    .line 2486
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "serviceName":Landroid/content/ComponentName;
    :cond_42
    goto :goto_5b

    .line 2484
    :catch_43
    move-exception v0

    .line 2485
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_44
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBlindChargeService : Failed to start service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5d

    .line 2487
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_5b
    monitor-exit p0

    return-void

    .line 2463
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "extras":Landroid/os/Bundle;
    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startRemoteSpenService(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 2423
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2424
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRemoteSpenService : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_6a

    .line 2425
    monitor-exit p0

    return-void

    .line 2428
    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2429
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRemoteSpenService : BLE Spen is disabled on knox container enabled mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_6a

    .line 2430
    monitor-exit p0

    return-void

    .line 2433
    :cond_21
    const/4 v0, 0x0

    .line 2434
    .local v0, "isBound":Z
    if-eqz v0, :cond_2e

    .line 2435
    :try_start_24
    sget-object v1, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startRemoteSpenService : already bounded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_6a

    .line 2436
    monitor-exit p0

    return-void

    .line 2440
    :cond_2e
    :try_start_2e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2441
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.service.aircommand"

    const-string v3, "com.samsung.android.service.aircommand.remotespen.RemoteSpenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2442
    if-eqz p2, :cond_3f

    .line 2443
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2445
    :cond_3f
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2446
    .local v2, "serviceName":Landroid/content/ComponentName;
    if-nez v2, :cond_4f

    .line 2447
    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRemoteSpenService : failed to launch the service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_4f} :catch_50
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_4f} :catch_50
    .catchall {:try_start_2e .. :try_end_4f} :catchall_6a

    .line 2460
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    :cond_4f
    goto :goto_68

    .line 2458
    :catch_50
    move-exception v1

    .line 2459
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_51
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemoteSpenService : Failed to start BLE SPen service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_6a

    .line 2461
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_68
    monitor-exit p0

    return-void

    .line 2422
    .end local v0    # "isBound":Z
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "extras":Landroid/os/Bundle;
    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeBleSpenCommand(Ljava/lang/String;)V
    .registers 8
    .param p1, "command"    # Ljava/lang/String;

    monitor-enter p0

    .line 2395
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2396
    sget-object v0, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeBleSpenCommand : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_95

    .line 2397
    monitor-exit p0

    return-void

    .line 2400
    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :cond_11
    const/4 v0, 0x0

    .line 2402
    .local v0, "writer":Ljava/io/FileWriter;
    :try_start_12
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/class/sec/sec_epen/epen_ble_charging_mode"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 2403
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_3e
    .catchall {:try_start_12 .. :try_end_1d} :catchall_3c

    .line 2408
    nop

    .line 2410
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_95

    .line 2413
    :goto_21
    goto :goto_73

    .line 2411
    :catch_22
    move-exception v1

    .line 2412
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBleSpenCommand : close : e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_37
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_95

    .line 2413
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_73

    .line 2408
    :catchall_3c
    move-exception v1

    goto :goto_76

    .line 2405
    :catch_3e
    move-exception v1

    .line 2406
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3f
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBleSpenCommand : e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_75

    .line 2408
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_73

    .line 2410
    :try_start_59
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_95

    goto :goto_21

    .line 2411
    :catch_5d
    move-exception v1

    .line 2412
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5e
    sget-object v2, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBleSpenCommand : close : e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_95

    goto :goto_37

    .line 2416
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_73
    :goto_73
    monitor-exit p0

    return-void

    .line 2408
    .restart local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :catchall_75
    move-exception v1

    :goto_76
    if-eqz v0, :cond_94

    .line 2410
    :try_start_78
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_95

    .line 2413
    goto :goto_94

    .line 2411
    .end local p0    # "this":Lcom/android/server/smartclip/BleSpenManager;
    :catch_7c
    move-exception v2

    .line 2412
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7d
    sget-object v3, Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeBleSpenCommand : close : e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2415
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_94
    :goto_94
    throw v1
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_95

    .line 2394
    .end local v0    # "writer":Ljava/io/FileWriter;
    .end local p1    # "command":Ljava/lang/String;
    :catchall_95
    move-exception p1

    monitor-exit p0

    throw p1
.end method
