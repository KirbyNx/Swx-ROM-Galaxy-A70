.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
    }
.end annotation


# static fields
.field public static final DEX_OPT_FAILED:I = -0x1

.field public static final DEX_OPT_PERFORMED:I = 0x1

.field public static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageDexOptimizer"

.field private static final WAKELOCK_TIMEOUT_MS:J = 0xa1220L


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 109
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 111
    const-string/jumbo v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 112
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .registers 3
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 117
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 118
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 120
    return-void
.end method

.method private acquireWakeLockLI(I)J
    .registers 5
    .param p1, "uid"    # I

    .line 443
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_7

    .line 444
    const-wide/16 v0, -0x1

    return-wide v0

    .line 446
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xa1220

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 126
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v0

    if-nez v0, :cond_14

    .line 127
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private dexOptPath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;IZ)I
    .registers 44
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "isa"    # Ljava/lang/String;
    .param p5, "compilerFilter"    # Ljava/lang/String;
    .param p6, "profileUpdated"    # Z
    .param p7, "classLoaderContext"    # Ljava/lang/String;
    .param p8, "dexoptFlags"    # I
    .param p9, "uid"    # I
    .param p10, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p11, "downgrade"    # Z
    .param p12, "profileName"    # Ljava/lang/String;
    .param p13, "dexMetadataPath"    # Ljava/lang/String;
    .param p14, "compilationReason"    # I
    .param p15, "dexoptAsync"    # Z

    .line 306
    move-object/from16 v8, p0

    move-object/from16 v15, p3

    move-object/from16 v14, p10

    move-object/from16 v13, p13

    move/from16 v12, p14

    move/from16 v11, p15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p6

    move/from16 v7, p11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v1

    .line 308
    .local v1, "dexoptNeeded":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_26

    .line 309
    return v2

    .line 312
    :cond_26
    nop

    .line 313
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    .line 312
    move-object/from16 v3, p1

    invoke-direct {v8, v3, v0}, Lcom/android/server/pm/PackageDexOptimizer;->getPackageOatDirIfSupported(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "oatDir":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running dexopt (dexoptNeeded="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") on: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pkg="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isa="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dexoptFlags="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    move/from16 v6, p8

    invoke-direct {v8, v6}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " targetFilter="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " oatDir="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " classLoaderContext="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " dexMetadataPath="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " async="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v9, "PackageDexOptimizer"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_a3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v26, v16

    .line 325
    .local v26, "startTime":J
    if-eqz v11, :cond_e5

    .line 326
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v20

    .line 327
    .local v20, "seInfo":Ljava/lang/String;
    iget-object v2, v8, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 328
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    .line 329
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v22

    if-eqz v13, :cond_c3

    const/4 v0, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v0, 0x0

    .line 331
    :goto_c4
    invoke-direct {v8, v12, v0}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v25
    :try_end_c8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a3 .. :try_end_c8} :catch_12c

    .line 327
    move-object v3, v9

    move-object v9, v2

    move-object/from16 v10, p3

    move/from16 v11, p9

    move v2, v12

    move-object/from16 v12, v17

    move-object/from16 v13, p4

    move-object v5, v14

    move v14, v1

    move-object v6, v15

    move-object v15, v4

    move/from16 v16, p8

    move-object/from16 v17, p5

    move-object/from16 v19, p7

    move-object/from16 v23, p12

    move-object/from16 v24, p13

    :try_start_e1
    invoke-virtual/range {v9 .. v25}, Lcom/android/server/pm/Installer;->dexoptAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v20    # "seInfo":Ljava/lang/String;
    goto :goto_11b

    .line 336
    :cond_e5
    move-object v3, v9

    move v2, v12

    move-object v5, v14

    move-object v6, v15

    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v20

    .line 337
    .restart local v20    # "seInfo":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 338
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    .line 339
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v22

    if-eqz p13, :cond_101

    const/4 v0, 0x1

    goto :goto_102

    :cond_101
    const/4 v0, 0x0

    .line 341
    :goto_102
    invoke-direct {v8, v2, v0}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v25

    .line 337
    move-object/from16 v10, p3

    move/from16 v11, p9

    move-object/from16 v13, p4

    move v14, v1

    move-object v15, v4

    move/from16 v16, p8

    move-object/from16 v17, p5

    move-object/from16 v19, p7

    move-object/from16 v23, p12

    move-object/from16 v24, p13

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v20    # "seInfo":Ljava/lang/String;
    :goto_11b
    if-eqz v5, :cond_128

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 345
    .local v9, "endTime":J
    sub-long v11, v9, v26

    long-to-int v0, v11

    int-to-long v11, v0

    invoke-virtual {v5, v6, v11, v12}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V
    :try_end_128
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_e1 .. :try_end_128} :catch_12a

    .line 347
    .end local v9    # "endTime":J
    :cond_128
    const/4 v0, 0x1

    return v0

    .line 348
    .end local v26    # "startTime":J
    :catch_12a
    move-exception v0

    goto :goto_131

    :catch_12c
    move-exception v0

    move-object v3, v9

    move v2, v12

    move-object v5, v14

    move-object v6, v15

    .line 349
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_131
    const-string v9, "Failed to dexopt"

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    const/4 v3, -0x1

    return v3
.end method

.method private dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 34
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 474
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySharedDex()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v0

    if-nez v0, :cond_14

    .line 477
    const/4 v0, 0x0

    return v0

    .line 480
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v3

    .line 480
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "compilerFilter":Ljava/lang/String;
    move-object/from16 v14, p4

    invoke-direct {v1, v2, v0, v14}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    .line 486
    .local v3, "dexoptFlags":I
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/16 v20, -0x1

    const-string v13, "PackageDexOptimizer"

    if-eqz v4, :cond_3c

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 487
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 488
    or-int/lit16 v3, v3, 0x100

    move v12, v3

    goto :goto_4b

    .line 489
    :cond_3c
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v4, :cond_142

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 490
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_140

    .line 491
    or-int/lit16 v3, v3, 0x80

    move v12, v3

    .line 496
    .end local v3    # "dexoptFlags":I
    .local v12, "dexoptFlags":I
    :goto_4b
    const/4 v3, 0x0

    .line 497
    .local v3, "classLoaderContext":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v4

    if-nez v4, :cond_60

    .line 498
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isVariableClassLoaderContext()Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_60

    .line 507
    :cond_59
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    move-object v11, v0

    move-object v10, v3

    goto :goto_73

    .line 501
    :cond_60
    :goto_60
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.gms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 502
    const-string v0, "assume-verified"

    move-object v11, v0

    move-object v10, v3

    goto :goto_73

    .line 504
    :cond_6f
    const-string v0, "extract"

    move-object v11, v0

    move-object v10, v3

    .line 510
    .end local v0    # "compilerFilter":Ljava/lang/String;
    .end local v3    # "classLoaderContext":Ljava/lang/String;
    .local v10, "classLoaderContext":Ljava/lang/String;
    .local v11, "compilerFilter":Ljava/lang/String;
    :goto_73
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v21

    .line 511
    .local v21, "reason":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running dexopt on: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isa="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dexoptFlags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-direct {v1, v12}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " target-filter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class-loader-context="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :try_start_c9
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 524
    .local v7, "isa":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 527
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v17

    move-object/from16 v18, v9

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v19, 0x0

    const/16 v22, 0x0

    .line 528
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v23
    :try_end_f9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c9 .. :try_end_f9} :catch_12f

    .line 524
    move-object/from16 v24, v4

    move-object/from16 v4, p2

    move-object/from16 v16, v18

    move/from16 v18, v9

    const/4 v9, 0x0

    move-object/from16 v25, v10

    .end local v10    # "classLoaderContext":Ljava/lang/String;
    .local v25, "classLoaderContext":Ljava/lang/String;
    move v10, v12

    move-object/from16 v26, v11

    .end local v11    # "compilerFilter":Ljava/lang/String;
    .local v26, "compilerFilter":Ljava/lang/String;
    move/from16 v27, v12

    .end local v12    # "dexoptFlags":I
    .local v27, "dexoptFlags":I
    move-object/from16 v12, v24

    move-object/from16 v28, v13

    move-object/from16 v13, v25

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    :try_start_11b
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_11b .. :try_end_11e} :catch_12b

    .line 529
    .end local v7    # "isa":Ljava/lang/String;
    move-object/from16 v15, p2

    move-object/from16 v14, p4

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    move-object/from16 v13, v28

    goto :goto_d1

    .line 532
    :catch_12b
    move-exception v0

    goto :goto_138

    .line 531
    .end local v25    # "classLoaderContext":Ljava/lang/String;
    .end local v26    # "compilerFilter":Ljava/lang/String;
    .end local v27    # "dexoptFlags":I
    .restart local v10    # "classLoaderContext":Ljava/lang/String;
    .restart local v11    # "compilerFilter":Ljava/lang/String;
    .restart local v12    # "dexoptFlags":I
    :cond_12d
    const/4 v0, 0x1

    return v0

    .line 532
    :catch_12f
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move/from16 v27, v12

    move-object/from16 v28, v13

    .line 533
    .end local v10    # "classLoaderContext":Ljava/lang/String;
    .end local v11    # "compilerFilter":Ljava/lang/String;
    .end local v12    # "dexoptFlags":I
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v25    # "classLoaderContext":Ljava/lang/String;
    .restart local v26    # "compilerFilter":Ljava/lang/String;
    .restart local v27    # "dexoptFlags":I
    :goto_138
    const-string v3, "Failed to dexopt"

    move-object/from16 v4, v28

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    return v20

    .line 490
    .end local v21    # "reason":I
    .end local v25    # "classLoaderContext":Ljava/lang/String;
    .end local v26    # "compilerFilter":Ljava/lang/String;
    .end local v27    # "dexoptFlags":I
    .local v0, "compilerFilter":Ljava/lang/String;
    .local v3, "dexoptFlags":I
    :cond_140
    move-object v4, v13

    goto :goto_143

    .line 489
    :cond_142
    move-object v4, v13

    .line 493
    :goto_143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not infer CE/DE storage for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return v20
.end method

.method private getAugmentedReasonName(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "compilationReason"    # I
    .param p2, "useDexMetadata"    # Z

    .line 404
    if-eqz p2, :cond_5

    .line 405
    const-string v0, "-dm"

    goto :goto_7

    :cond_5
    const-string v0, ""

    .line 406
    .local v0, "annotation":Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 12
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 690
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v2, v0

    .line 691
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 692
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v5

    .line 690
    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 696
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    .line 697
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v2

    .line 698
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v4

    .line 696
    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 17
    .param p1, "debuggable"    # Z
    .param p2, "hiddenApiEnforcementPolicy"    # I
    .param p4, "requestsIsolatedSplitLoading"    # Z
    .param p5, "compilerFilter"    # Ljava/lang/String;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/util/SparseArray<",
            "[I>;Z",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/DexoptOptions;",
            ")I"
        }
    .end annotation

    .line 713
    .local p3, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-static {p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    .line 714
    .local v0, "isProfileGuidedFilter":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_11

    :cond_f
    move v3, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v1

    .line 715
    .local v3, "isPublic":Z
    :goto_12
    if-eqz v0, :cond_17

    const/16 v4, 0x10

    goto :goto_18

    :cond_17
    move v4, v2

    .line 721
    .local v4, "profileFlag":I
    :goto_18
    if-nez p2, :cond_1c

    .line 722
    move v5, v2

    goto :goto_1e

    .line 723
    :cond_1c
    const/16 v5, 0x400

    :goto_1e
    nop

    .line 725
    .local v5, "hiddenApiFlag":I
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v6

    .line 726
    .local v6, "compilationReason":I
    const/4 v7, 0x1

    .line 727
    .local v7, "generateCompactDex":Z
    const/4 v8, 0x2

    if-eqz v6, :cond_2c

    if-eq v6, v1, :cond_2c

    if-eq v6, v8, :cond_2c

    goto :goto_2d

    .line 731
    :cond_2c
    const/4 v7, 0x0

    .line 739
    :goto_2d
    if-eqz v0, :cond_3a

    if-eqz p3, :cond_33

    if-nez p4, :cond_3a

    .line 740
    :cond_33
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result v9

    if-eqz v9, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    .line 742
    .local v1, "generateAppImage":Z
    :goto_3b
    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v8, v2

    .line 743
    :goto_3f
    if-eqz p1, :cond_43

    const/4 v9, 0x4

    goto :goto_44

    :cond_43
    move v9, v2

    :goto_44
    or-int/2addr v8, v9

    or-int/2addr v8, v4

    .line 745
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v9

    if-eqz v9, :cond_4f

    const/16 v9, 0x8

    goto :goto_50

    :cond_4f
    move v9, v2

    :goto_50
    or-int/2addr v8, v9

    .line 746
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v9

    if-eqz v9, :cond_5a

    const/16 v9, 0x200

    goto :goto_5b

    :cond_5a
    move v9, v2

    :goto_5b
    or-int/2addr v8, v9

    .line 747
    if-eqz v7, :cond_61

    const/16 v9, 0x800

    goto :goto_62

    :cond_61
    move v9, v2

    :goto_62
    or-int/2addr v8, v9

    .line 748
    if-eqz v1, :cond_68

    const/16 v9, 0x1000

    goto :goto_69

    :cond_68
    move v9, v2

    :goto_69
    or-int/2addr v8, v9

    .line 749
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallForRestore()Z

    move-result v9

    if-eqz v9, :cond_72

    const/16 v2, 0x2000

    :cond_72
    or-int/2addr v2, v8

    or-int/2addr v2, v5

    .line 751
    .local v2, "dexFlags":I
    move-object v8, p0

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v9

    return v9
.end method

.method private getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isa"    # Ljava/lang/String;
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "classLoaderContext"    # Ljava/lang/String;
    .param p5, "newProfile"    # Z
    .param p6, "downgrade"    # Z

    .line 762
    const-string v0, "PackageDexOptimizer"

    const/4 v1, -0x1

    :try_start_3
    invoke-static/range {p1 .. p6}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_d

    .line 770
    .local v0, "dexoptNeeded":I
    nop

    .line 771
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v1

    return v1

    .line 767
    .end local v0    # "dexoptNeeded":I
    :catch_d
    move-exception v2

    .line 768
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception when calling dexoptNeeded on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    return v1

    .line 764
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_23
    move-exception v2

    .line 765
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException reading apk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    return v1
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "codePath"    # Ljava/io/File;

    .line 822
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPackageOatDirIfSupported(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/lang/String;
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 811
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 812
    return-object v1

    .line 814
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_18

    .line 816
    return-object v1

    .line 818
    :cond_18
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z

    .line 614
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 615
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 616
    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3b

    .line 630
    :cond_15
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_24

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    .line 633
    .local v0, "vmSafeModeOrDebuggable":Z
    :goto_25
    if-eqz v0, :cond_2c

    .line 634
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 637
    :cond_2c
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    if-eqz p3, :cond_3a

    .line 639
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 643
    :cond_3a
    return-object p2

    .line 617
    .end local v0    # "vmSafeModeOrDebuggable":Z
    :cond_3b
    :goto_3b
    const-string/jumbo v0, "verify"

    return-object v0
.end method

.method private getRealCompilerFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z

    .line 654
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 655
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 656
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_3d

    .line 670
    :cond_17
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    .line 672
    .local v0, "vmSafeModeOrDebuggable":Z
    :goto_27
    if-eqz v0, :cond_2e

    .line 673
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 676
    :cond_2e
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    if-eqz p3, :cond_3c

    .line 678
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 682
    :cond_3c
    return-object p2

    .line 657
    .end local v0    # "vmSafeModeOrDebuggable":Z
    :cond_3d
    :goto_3d
    const-string/jumbo v0, "verify"

    return-object v0
.end method

.method private isAppImageEnabled()Z
    .registers 3

    .line 686
    const-string v0, "dalvik.vm.appimageformat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isProfileUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;

    .line 785
    invoke-static {p4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 786
    return v1

    .line 790
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2, p3}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 791
    :catch_13
    move-exception v0

    .line 792
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageDexOptimizer"

    const-string v3, "Failed to merge profiles"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    return v1
.end method

.method private performDexOptLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 46
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 191
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v12

    .line 193
    .local v12, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz p3, :cond_11

    .line 194
    move-object/from16 v0, p3

    goto :goto_1d

    .line 195
    :cond_11
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1d
    move-object/from16 v16, v0

    .line 197
    .local v16, "instructionSets":[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 198
    .local v11, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v10

    .line 200
    .local v10, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 201
    .local v0, "sharedGid":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_61

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Well this is awkward; package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 202
    const-string v3, "PackageDexOptimizer"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/16 v0, 0x270f

    move v8, v0

    goto :goto_62

    .line 201
    :cond_61
    move v8, v0

    .line 210
    .end local v0    # "sharedGid":I
    .local v8, "sharedGid":I
    :goto_62
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Z

    .line 211
    .local v7, "pathsWithCode":[Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v0

    const/16 v17, 0x0

    aput-boolean v0, v7, v17

    .line 212
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_71
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/16 v18, 0x1

    if-ge v0, v1, :cond_8d

    .line 213
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_86

    goto :goto_88

    :cond_86
    move/from16 v18, v17

    :goto_88
    aput-boolean v18, v7, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 215
    .end local v0    # "i":I
    :cond_8d
    invoke-static {v13, v12, v7}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[Z)[Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "classLoaderContexts":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v5

    if-eq v0, v1, :cond_d1

    .line 220
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "splitCodePaths":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information between PackageParser.Package and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.getBaseCodePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.getSplitCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    if-nez v0, :cond_c2

    const-string/jumbo v3, "null"

    goto :goto_c6

    :cond_c2
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_c6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    .end local v0    # "splitCodePaths":[Ljava/lang/String;
    :cond_d1
    const/4 v0, 0x0

    .line 230
    .local v0, "result":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_d4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_271

    .line 232
    aget-boolean v1, v7, v4

    if-nez v1, :cond_df

    .line 233
    goto :goto_104

    .line 235
    :cond_df
    aget-object v1, v5, v4

    if-eqz v1, :cond_245

    .line 242
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 243
    .local v3, "path":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_115

    .line 246
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_115

    .line 247
    nop

    .line 230
    .end local v3    # "path":Ljava/lang/String;
    :goto_104
    move/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v35, v7

    move/from16 v27, v8

    move v2, v9

    move-object/from16 v36, v10

    move-object/from16 v22, v11

    move-object/from16 v21, v12

    goto/16 :goto_22e

    .line 252
    .restart local v3    # "path":Ljava/lang/String;
    :cond_115
    const/4 v1, 0x0

    if-nez v4, :cond_11a

    move-object v2, v1

    goto :goto_122

    :cond_11a
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v4, -0x1

    aget-object v2, v2, v6

    .line 251
    :goto_122
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "profileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 255
    .local v6, "dexMetadataPath":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v15

    if-eqz v15, :cond_141

    .line 256
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    .line 257
    .local v15, "dexMetadataFile":Ljava/io/File;
    if-nez v15, :cond_139

    .line 258
    goto :goto_13d

    :cond_139
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_13d
    move-object v6, v1

    move-object/from16 v19, v6

    goto :goto_143

    .line 255
    .end local v15    # "dexMetadataFile":Ljava/io/File;
    :cond_141
    move-object/from16 v19, v6

    .line 261
    .end local v6    # "dexMetadataPath":Ljava/lang/String;
    .local v19, "dexMetadataPath":Ljava/lang/String;
    :goto_143
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v1

    if-nez v1, :cond_155

    .line 262
    move-object/from16 v1, p5

    invoke-virtual {v1, v3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_152

    goto :goto_157

    :cond_152
    move/from16 v6, v17

    goto :goto_159

    .line 261
    :cond_155
    move-object/from16 v1, p5

    .line 262
    :goto_157
    move/from16 v6, v18

    :goto_159
    move v15, v6

    .line 263
    .local v15, "isUsedByOtherApps":Z
    nop

    .line 264
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-direct {v14, v13, v6, v15}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "compilerFilter":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v20

    if-eqz v20, :cond_172

    .line 266
    invoke-direct {v14, v13, v8, v2, v6}, Lcom/android/server/pm/PackageDexOptimizer;->isProfileUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_172

    move/from16 v20, v18

    goto :goto_174

    :cond_172
    move/from16 v20, v17

    :goto_174
    move-object/from16 v21, v12

    move-object v12, v6

    .end local v6    # "compilerFilter":Ljava/lang/String;
    .local v12, "compilerFilter":Ljava/lang/String;
    .local v21, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    move/from16 v6, v20

    .line 271
    .local v6, "profileUpdated":Z
    move-object/from16 v22, v10

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    .end local v6    # "profileUpdated":Z
    .end local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "profileUpdated":Z
    .local v22, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14, v13, v6, v12, v10}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v23

    .line 272
    .local v23, "dexoptFlags":I
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getFlags()I

    move-result v24

    const v25, 0x8000

    and-int v24, v24, v25

    if-eqz v24, :cond_191

    move/from16 v24, v18

    goto :goto_193

    :cond_191
    move/from16 v24, v17

    :goto_193
    move/from16 v25, v15

    .end local v15    # "isUsedByOtherApps":Z
    .local v25, "isUsedByOtherApps":Z
    move/from16 v15, v24

    .line 274
    .local v15, "dexoptAsync":Z
    array-length v6, v11

    move/from16 v15, v17

    .end local v15    # "dexoptAsync":Z
    .local v24, "dexoptAsync":Z
    :goto_19a
    if-ge v15, v6, :cond_216

    aget-object v26, v11, v15

    .line 275
    .local v26, "dexCodeIsa":Ljava/lang/String;
    aget-object v27, v5, v4

    .line 277
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v28

    .line 278
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v29

    .line 275
    move/from16 v30, v0

    .end local v0    # "result":I
    .local v30, "result":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v31, v2

    .end local v2    # "profileName":Ljava/lang/String;
    .local v31, "profileName":Ljava/lang/String;
    move-object/from16 v2, p2

    move-object/from16 v32, v3

    .end local v3    # "path":Ljava/lang/String;
    .local v32, "path":Ljava/lang/String;
    move/from16 v33, v4

    .end local v4    # "i":I
    .local v33, "i":I
    move-object/from16 v4, v26

    move-object/from16 v34, v5

    .end local v5    # "classLoaderContexts":[Ljava/lang/String;
    .local v34, "classLoaderContexts":[Ljava/lang/String;
    move-object v5, v12

    move-object/from16 v35, v7

    .end local v7    # "pathsWithCode":[Z
    .local v35, "pathsWithCode":[Z
    move-object/from16 v7, v27

    move/from16 v27, v8

    .end local v8    # "sharedGid":I
    .local v27, "sharedGid":I
    move/from16 v8, v23

    move/from16 v9, v27

    move-object/from16 v36, v22

    .end local v22    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v36, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p4

    move-object/from16 v22, v11

    .end local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v22, "dexCodeInstructionSets":[Ljava/lang/String;
    move/from16 v11, v28

    move-object/from16 v28, v12

    .end local v12    # "compilerFilter":Ljava/lang/String;
    .local v28, "compilerFilter":Ljava/lang/String;
    move-object/from16 v12, v31

    move-object/from16 v13, v19

    move/from16 v14, v29

    move/from16 v37, v20

    move/from16 v20, v6

    move/from16 v6, v37

    move/from16 v38, v24

    move/from16 v24, v15

    move/from16 v15, v38

    .end local v20    # "profileUpdated":Z
    .end local v24    # "dexoptAsync":Z
    .restart local v6    # "profileUpdated":Z
    .restart local v15    # "dexoptAsync":Z
    invoke-direct/range {v0 .. v15}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    .line 284
    .local v0, "newResult":I
    move/from16 v1, v30

    const/4 v2, -0x1

    .end local v30    # "result":I
    .local v1, "result":I
    if-eq v1, v2, :cond_1ee

    if-eqz v0, :cond_1ee

    .line 285
    move v1, v0

    goto :goto_1ef

    .line 274
    .end local v0    # "newResult":I
    .end local v26    # "dexCodeIsa":Ljava/lang/String;
    :cond_1ee
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_1ef
    add-int/lit8 v1, v24, 0x1

    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v10, p6

    move v9, v2

    move/from16 v24, v15

    move-object/from16 v11, v22

    move/from16 v8, v27

    move-object/from16 v12, v28

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v33

    move-object/from16 v5, v34

    move-object/from16 v7, v35

    move-object/from16 v22, v36

    move v15, v1

    move-object/from16 v1, p5

    move/from16 v37, v20

    move/from16 v20, v6

    move/from16 v6, v37

    goto :goto_19a

    .end local v6    # "profileUpdated":Z
    .end local v15    # "dexoptAsync":Z
    .end local v27    # "sharedGid":I
    .end local v28    # "compilerFilter":Ljava/lang/String;
    .end local v31    # "profileName":Ljava/lang/String;
    .end local v32    # "path":Ljava/lang/String;
    .end local v33    # "i":I
    .end local v34    # "classLoaderContexts":[Ljava/lang/String;
    .end local v35    # "pathsWithCode":[Z
    .end local v36    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "profileName":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v7    # "pathsWithCode":[Z
    .restart local v8    # "sharedGid":I
    .restart local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v12    # "compilerFilter":Ljava/lang/String;
    .restart local v20    # "profileUpdated":Z
    .local v22, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "dexoptAsync":Z
    :cond_216
    move v1, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v35, v7

    move/from16 v27, v8

    move v2, v9

    move-object/from16 v28, v12

    move/from16 v6, v20

    move-object/from16 v36, v22

    move/from16 v15, v24

    move-object/from16 v22, v11

    .line 230
    .end local v2    # "profileName":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "classLoaderContexts":[Ljava/lang/String;
    .end local v7    # "pathsWithCode":[Z
    .end local v8    # "sharedGid":I
    .end local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v12    # "compilerFilter":Ljava/lang/String;
    .end local v19    # "dexMetadataPath":Ljava/lang/String;
    .end local v20    # "profileUpdated":Z
    .end local v23    # "dexoptFlags":I
    .end local v24    # "dexoptAsync":Z
    .end local v25    # "isUsedByOtherApps":Z
    .local v22, "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v27    # "sharedGid":I
    .restart local v33    # "i":I
    .restart local v34    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v35    # "pathsWithCode":[Z
    .restart local v36    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_22e
    move/from16 v1, v33

    .end local v33    # "i":I
    .local v1, "i":I
    add-int/lit8 v4, v1, 0x1

    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move v9, v2

    move-object/from16 v12, v21

    move-object/from16 v11, v22

    move/from16 v8, v27

    move-object/from16 v5, v34

    move-object/from16 v7, v35

    move-object/from16 v10, v36

    .end local v1    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_d4

    .line 236
    .end local v21    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v22    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v27    # "sharedGid":I
    .end local v34    # "classLoaderContexts":[Ljava/lang/String;
    .end local v35    # "pathsWithCode":[Z
    .end local v36    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v7    # "pathsWithCode":[Z
    .restart local v8    # "sharedGid":I
    .restart local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v12, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_245
    move v1, v4

    move-object/from16 v34, v5

    move-object/from16 v36, v10

    .end local v4    # "i":I
    .end local v5    # "classLoaderContexts":[Ljava/lang/String;
    .end local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v34    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v36    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    move-object/from16 v4, v36

    .end local v36    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    .end local v1    # "i":I
    .end local v4    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v5    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_271
    return v0
.end method

.method private printDexoptFlags(I)Ljava/lang/String;
    .registers 5
    .param p1, "flags"    # I

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v0, "flagsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    .line 833
    const-string v1, "boot_complete"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_10
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 836
    const-string v1, "debuggable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_1a
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_26

    .line 839
    const-string/jumbo v1, "profile_guided"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_26
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 842
    const-string/jumbo v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_31
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3d

    .line 845
    const-string/jumbo v1, "secondary"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_3d
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_48

    .line 848
    const-string v1, "force"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_48
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_54

    .line 851
    const-string/jumbo v1, "storage_ce"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_54
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_60

    .line 854
    const-string/jumbo v1, "storage_de"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_60
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_6c

    .line 857
    const-string/jumbo v1, "idle_background_job"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_6c
    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_77

    .line 860
    const-string v1, "enable_hidden_api_checks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    :cond_77
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private releaseWakeLockLI(J)V
    .registers 8
    .param p1, "acquireTime"    # J

    .line 453
    const-string v0, "PackageDexOptimizer"

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_9

    .line 454
    return-void

    .line 457
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 458
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 460
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 461
    .local v1, "duration":J
    const-wide/32 v3, 0xa1220

    cmp-long v3, v1, v3

    if-ltz v3, :cond_54

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time out. Operation took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms. Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_54} :catch_55

    .line 468
    .end local v1    # "duration":J
    :cond_54
    goto :goto_75

    .line 466
    :catch_55
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while releasing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_75
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .registers 2
    .param p1, "dexoptFlags"    # I

    .line 550
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .registers 2
    .param p1, "dexoptNeeded"    # I

    .line 543
    return p1
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 9
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 425
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_8
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1d

    .line 431
    .local v1, "acquireTime":J
    :try_start_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    .line 433
    :try_start_12
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 431
    return v3

    .line 433
    :catchall_17
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 434
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local p4    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 435
    .end local v1    # "acquireTime":J
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "path":Ljava/lang/String;
    .restart local p3    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local p4    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v1

    .line 426
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dexoptSystemServerPath(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 27
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 359
    nop

    .line 360
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    or-int/lit8 v0, v0, 0x2

    .line 361
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v1, 0x200

    :cond_16
    or-int/2addr v1, v0

    .line 363
    .local v1, "dexoptFlags":I
    const/4 v0, 0x0

    .line 364
    .local v0, "result":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v20, v0

    .end local v0    # "result":I
    .local v20, "result":I
    :goto_22
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 365
    .local v21, "isa":Ljava/lang/String;
    nop

    .line 368
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 365
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v21

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v22

    .line 373
    .local v22, "dexoptNeeded":I
    if-nez v22, :cond_48

    .line 374
    goto :goto_22

    .line 377
    :cond_48
    move-object/from16 v15, p0

    :try_start_4a
    iget-object v2, v15, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v4, 0x3e8

    const-string v5, "android"

    const/4 v8, 0x0

    .line 385
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 393
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v18

    .line 377
    move-object/from16 v3, p1

    move-object/from16 v6, v21

    move/from16 v7, v22

    move v9, v1

    move v15, v0

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4a .. :try_end_75} :catch_79

    .line 397
    nop

    .line 398
    const/16 v20, 0x1

    .line 399
    .end local v21    # "isa":Ljava/lang/String;
    .end local v22    # "dexoptNeeded":I
    goto :goto_22

    .line 394
    .restart local v21    # "isa":Ljava/lang/String;
    .restart local v22    # "dexoptNeeded":I
    :catch_79
    move-exception v0

    .line 395
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageDexOptimizer"

    const-string v3, "Failed to dexopt"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    const/4 v2, -0x1

    return v2

    .line 400
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v21    # "isa":Ljava/lang/String;
    .end local v22    # "dexoptNeeded":I
    :cond_83
    return v20
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .registers 20
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "useInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 558
    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 559
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-static {v0, v3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, "instructionSets":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v5

    .line 565
    .local v5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_130

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 566
    .local v7, "path":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "path: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 569
    array-length v8, v4

    const/4 v0, 0x0

    move v9, v0

    :goto_44
    if-ge v9, v8, :cond_98

    aget-object v10, v4, v9

    .line 571
    .local v10, "isa":Ljava/lang/String;
    :try_start_48
    invoke-static {v7, v10}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v0

    .line 572
    .local v0, "info":Ldalvik/system/DexFile$OptimizationInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": [status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] [reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 572
    invoke-virtual {v1, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_78} :catch_79

    .line 576
    .end local v0    # "info":Ldalvik/system/DexFile$OptimizationInfo;
    goto :goto_95

    .line 574
    :catch_79
    move-exception v0

    .line 575
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": [Exception]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 569
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v10    # "isa":Ljava/lang/String;
    :goto_95
    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    .line 579
    :cond_98
    invoke-virtual {v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v8, "used by other apps: "

    if-eqz v0, :cond_b7

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 583
    :cond_b7
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 585
    .local v0, "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_12b

    .line 586
    const-string/jumbo v9, "known secondary dex files:"

    invoke-virtual {v1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 588
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_128

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 589
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 590
    .local v11, "dex":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 591
    .local v12, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-virtual {v1, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 594
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "class loader context: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v13

    if-eqz v13, :cond_124

    .line 596
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 598
    :cond_124
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 599
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v11    # "dex":Ljava/lang/String;
    .end local v12    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    goto :goto_d2

    .line 600
    :cond_128
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 602
    :cond_12b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 603
    .end local v0    # "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v7    # "path":Ljava/lang/String;
    goto/16 :goto_1c

    .line 604
    :cond_130
    return-void
.end method

.method performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 143
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 147
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    .line 151
    invoke-static {p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_1e
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_35

    .line 157
    .local v1, "acquireTime":J
    :try_start_26
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2f

    .line 160
    :try_start_2a
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 157
    return v3

    .line 160
    :catchall_2f
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 161
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p3    # "instructionSets":[Ljava/lang/String;
    .end local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 162
    .end local v1    # "acquireTime":J
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p3    # "instructionSets":[Ljava/lang/String;
    .restart local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v1

    .line 148
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "System server dexopting should be done via  DexManager and PackageDexOptimizer#dexoptSystemServerPath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDexOptForFIVE(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;I)I
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .param p7, "fiveTestUID"    # I

    .line 169
    invoke-static {p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_b
    invoke-direct {p0, p7}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_1e

    .line 175
    .local v1, "acquireTime":J
    :try_start_f
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_18

    .line 178
    :try_start_13
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 175
    return v3

    .line 178
    :catchall_18
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 179
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p3    # "instructionSets":[Ljava/lang/String;
    .end local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    .end local p7    # "fiveTestUID":I
    throw v3

    .line 180
    .end local v1    # "acquireTime":J
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p3    # "instructionSets":[Ljava/lang/String;
    .restart local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    .restart local p7    # "fiveTestUID":I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method systemReady()V
    .registers 2

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 827
    return-void
.end method
