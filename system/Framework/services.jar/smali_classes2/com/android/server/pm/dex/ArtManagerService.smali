.class public Lcom/android/server/pm/dex/ArtManagerService;
.super Landroid/content/pm/dex/IArtManager$Stub;
.source "ArtManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final BOOT_IMAGE_PROFILE_NAME:Ljava/lang/String; = "android.prof"

.field private static final DEBUG:Z

.field public static final DEXOPT_REASON_WITH_DEX_METADATA_ANNOTATION:Ljava/lang/String; = "-dm"

.field private static final TAG:Ljava/lang/String; = "ArtManagerService"

.field private static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field private static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED:I = 0x2

.field private static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED_IORAP:I = 0xf

.field private static final TRON_COMPILATION_FILTER_ERROR:I = 0x0

.field private static final TRON_COMPILATION_FILTER_EVERYTHING:I = 0xb

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_IORAP:I = 0x18

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE:I = 0xa

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE_IORAP:I = 0x17

.field private static final TRON_COMPILATION_FILTER_EXTRACT:I = 0x3

.field private static final TRON_COMPILATION_FILTER_EXTRACT_IORAP:I = 0x10

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK:I = 0xc

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xd

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK_IORAP:I = 0x1a

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_IORAP:I = 0x19

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xe

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK_IORAP:I = 0x1b

.field private static final TRON_COMPILATION_FILTER_QUICKEN:I = 0x5

.field private static final TRON_COMPILATION_FILTER_QUICKEN_IORAP:I = 0x12

.field private static final TRON_COMPILATION_FILTER_SPACE:I = 0x7

.field private static final TRON_COMPILATION_FILTER_SPACE_IORAP:I = 0x14

.field private static final TRON_COMPILATION_FILTER_SPACE_PROFILE:I = 0x6

.field private static final TRON_COMPILATION_FILTER_SPACE_PROFILE_IORAP:I = 0x13

.field private static final TRON_COMPILATION_FILTER_SPEED:I = 0x9

.field private static final TRON_COMPILATION_FILTER_SPEED_IORAP:I = 0x16

.field private static final TRON_COMPILATION_FILTER_SPEED_PROFILE:I = 0x8

.field private static final TRON_COMPILATION_FILTER_SPEED_PROFILE_IORAP:I = 0x15

.field private static final TRON_COMPILATION_FILTER_UNKNOWN:I = 0x1

.field private static final TRON_COMPILATION_FILTER_VERIFY:I = 0x4

.field private static final TRON_COMPILATION_FILTER_VERIFY_IORAP:I = 0x11

.field private static final TRON_COMPILATION_REASON_AB_OTA:I = 0x6

.field private static final TRON_COMPILATION_REASON_BG_DEXOPT:I = 0x5

.field private static final TRON_COMPILATION_REASON_BOOT:I = 0x3

.field private static final TRON_COMPILATION_REASON_ERROR:I = 0x0

.field private static final TRON_COMPILATION_REASON_FIRST_BOOT:I = 0x2

.field private static final TRON_COMPILATION_REASON_INACTIVE:I = 0x7

.field private static final TRON_COMPILATION_REASON_INSTALL:I = 0x4

.field private static final TRON_COMPILATION_REASON_INSTALL_WITH_DEX_METADATA:I = 0x9

.field private static final TRON_COMPILATION_REASON_SHARED:I = 0x8

.field private static final TRON_COMPILATION_REASON_UNKNOWN:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 86
    const-string v0, "ArtManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 103
    invoke-static {}, Lcom/android/server/pm/dex/ArtManagerService;->verifyTronLoggingConstants()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .param p4, "installLock"    # Ljava/lang/Object;

    .line 107
    invoke-direct {p0}, Landroid/content/pm/dex/IArtManager$Stub;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 110
    iput-object p3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 111
    iput-object p4, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 114
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    new-instance v1, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationFilterTronValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkAndroidPermissions(ILjava/lang/String;)Z
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_RUNTIME_PROFILES"

    const-string v2, "ArtManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 124
    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    const/4 v3, 0x3

    if-eq v0, v3, :cond_21

    .line 132
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return v1

    .line 126
    :cond_29
    return v1
.end method

.method private checkShellPermissions(ILjava/lang/String;I)Z
    .registers 9
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 148
    const/4 v0, 0x0

    const/16 v1, 0x7d0

    if-eq p3, v1, :cond_6

    .line 149
    return v0

    .line 151
    :cond_6
    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 152
    return v2

    .line 154
    :cond_c
    if-ne p1, v2, :cond_f

    .line 156
    return v0

    .line 158
    :cond_f
    const/4 v1, 0x0

    .line 160
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_10
    iget-object v3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p2, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_18

    move-object v1, v3

    .line 163
    goto :goto_19

    .line 161
    :catch_18
    move-exception v3

    .line 164
    :goto_19
    if-nez v1, :cond_1c

    .line 165
    return v0

    .line 169
    :cond_1c
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_25

    move v0, v2

    :cond_25
    return v0
.end method

.method private createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "classpath"    # Ljava/lang/String;
    .param p4, "appId"    # I
    .param p5, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 267
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    const/4 v1, 0x2

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p4, p1, p2, p3}, Lcom/android/server/pm/Installer;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 270
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_f} :catch_59
    .catchall {:try_start_4 .. :try_end_f} :catchall_57

    .line 271
    :try_start_f
    monitor-exit v0

    return-void

    .line 276
    :cond_11
    nop

    .line 277
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_57

    .line 280
    invoke-static {p1, p2}, Landroid/content/pm/dex/ArtManager;->getProfileSnapshotFileForName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 282
    .local v0, "snapshotProfile":Ljava/io/File;
    const/4 v2, 0x0

    .line 284
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    const/high16 v3, 0x10000000

    :try_start_1a
    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 285
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_30

    .line 288
    :cond_2c
    invoke-direct {p0, p1, v2, p5}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_33

    .line 286
    :cond_30
    :goto_30
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_33} :catch_34

    .line 294
    :goto_33
    goto :goto_56

    .line 290
    :catch_34
    move-exception v3

    .line 291
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open snapshot profile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ArtManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 295
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_56
    return-void

    .line 277
    .end local v0    # "snapshotProfile":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_57
    move-exception v1

    goto :goto_5f

    .line 273
    :catch_59
    move-exception v2

    .line 274
    .local v2, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_5a
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 275
    monitor-exit v0

    return-void

    .line 277
    .end local v2    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_57

    throw v1
.end method

.method private destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 298
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying profile snapshot for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Installer;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_25 .. :try_end_2a} :catch_2d
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b

    .line 308
    goto :goto_4c

    .line 309
    :catchall_2b
    move-exception v1

    goto :goto_4e

    .line 305
    :catch_2d
    move-exception v1

    .line 306
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_2e
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to destroy profile snapshot for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_4c
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_2b

    throw v1
.end method

.method private static getCompilationFilterTronValue(Ljava/lang/String;)I
    .registers 25
    .param p0, "compilationFilter"    # Ljava/lang/String;

    .line 691
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/16 v7, 0x11

    const/16 v8, 0x10

    const/16 v9, 0xf

    const/16 v10, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x0

    sparse-switch v1, :sswitch_data_1b0

    :cond_35
    goto/16 :goto_182

    :sswitch_37
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v11

    goto/16 :goto_183

    :sswitch_43
    const-string/jumbo v1, "quicken-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v6

    goto/16 :goto_183

    :sswitch_4f
    const-string/jumbo v1, "space-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v4

    goto/16 :goto_183

    :sswitch_5b
    const-string/jumbo v1, "speed-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v2

    goto/16 :goto_183

    :sswitch_67
    const-string/jumbo v1, "run-from-apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v12

    goto/16 :goto_183

    :sswitch_73
    const-string v1, "everything-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x17

    goto/16 :goto_183

    :sswitch_7f
    const-string/jumbo v1, "quicken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v19

    goto/16 :goto_183

    :sswitch_8c
    const-string v1, "everything-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x18

    goto/16 :goto_183

    :sswitch_98
    const-string v1, "everything"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v13

    goto/16 :goto_183

    :sswitch_a3
    const-string/jumbo v1, "space-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v18

    goto/16 :goto_183

    :sswitch_b0
    const-string/jumbo v1, "run-from-apk-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x19

    goto/16 :goto_183

    :sswitch_bd
    const-string/jumbo v1, "speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v15

    goto/16 :goto_183

    :sswitch_c9
    const-string/jumbo v1, "space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v17

    goto/16 :goto_183

    :sswitch_d6
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v23

    goto/16 :goto_183

    :sswitch_e2
    const-string v1, "assume-verified-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v9

    goto/16 :goto_183

    :sswitch_ed
    const-string/jumbo v1, "run-from-vdex-fallback-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1b

    goto/16 :goto_183

    :sswitch_fa
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x1

    goto/16 :goto_183

    :sswitch_106
    const-string/jumbo v1, "space-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v5

    goto/16 :goto_183

    :sswitch_112
    const-string/jumbo v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v20

    goto/16 :goto_183

    :sswitch_11f
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v10

    goto :goto_183

    :sswitch_12a
    const-string/jumbo v1, "run-from-apk-fallback-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1a

    goto :goto_183

    :sswitch_136
    const-string/jumbo v1, "speed-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v16

    goto :goto_183

    :sswitch_142
    const-string v1, "extract"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v21

    goto :goto_183

    :sswitch_14d
    const-string v1, "extract-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v8

    goto :goto_183

    :sswitch_157
    const-string/jumbo v1, "verify-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v7

    goto :goto_183

    :sswitch_162
    const-string v1, "everything-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v14

    goto :goto_183

    :sswitch_16c
    const-string v1, "assume-verified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v22

    goto :goto_183

    :sswitch_177
    const-string/jumbo v1, "speed-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v3

    goto :goto_183

    :goto_182
    const/4 v1, -0x1

    :goto_183
    if-eqz v1, :cond_1ae

    packed-switch v1, :pswitch_data_222

    .line 725
    const/4 v1, 0x1

    return v1

    .line 724
    :pswitch_18a
    const/16 v1, 0x1b

    return v1

    .line 722
    :pswitch_18d
    const/16 v1, 0x1a

    return v1

    .line 720
    :pswitch_190
    const/16 v1, 0x19

    return v1

    .line 719
    :pswitch_193
    const/16 v1, 0x18

    return v1

    .line 718
    :pswitch_196
    const/16 v1, 0x17

    return v1

    .line 716
    :pswitch_199
    return v2

    .line 715
    :pswitch_19a
    return v3

    .line 714
    :pswitch_19b
    return v4

    .line 713
    :pswitch_19c
    return v5

    .line 712
    :pswitch_19d
    return v6

    .line 711
    :pswitch_19e
    return v7

    .line 710
    :pswitch_19f
    return v8

    .line 709
    :pswitch_1a0
    return v9

    .line 708
    :pswitch_1a1
    return v10

    .line 706
    :pswitch_1a2
    return v11

    .line 704
    :pswitch_1a3
    return v12

    .line 703
    :pswitch_1a4
    return v13

    .line 702
    :pswitch_1a5
    return v14

    .line 701
    :pswitch_1a6
    return v15

    .line 700
    :pswitch_1a7
    return v16

    .line 699
    :pswitch_1a8
    return v17

    .line 698
    :pswitch_1a9
    return v18

    .line 697
    :pswitch_1aa
    return v19

    .line 696
    :pswitch_1ab
    return v20

    .line 695
    :pswitch_1ac
    return v21

    .line 694
    :pswitch_1ad
    return v22

    .line 692
    :cond_1ae
    return v23

    nop

    :sswitch_data_1b0
    .sparse-switch
        -0x7dd94aef -> :sswitch_177
        -0x74ad4b37 -> :sswitch_16c
        -0x6b7d2b71 -> :sswitch_162
        -0x65cd9119 -> :sswitch_157
        -0x65986311 -> :sswitch_14d
        -0x4dcd237f -> :sswitch_142
        -0x4358c9dd -> :sswitch_136
        -0x405bb3de -> :sswitch_12a
        -0x35c83f13 -> :sswitch_11f
        -0x30df7787 -> :sswitch_112
        -0x29c91470 -> :sswitch_106
        -0x10fa53b6 -> :sswitch_fa
        -0x2ad7fa5 -> :sswitch_ed
        0x3061f37 -> :sswitch_e2
        0x5c4d208 -> :sswitch_d6
        0x688f106 -> :sswitch_c9
        0x6890047 -> :sswitch_bd
        0xf517369 -> :sswitch_b0
        0x14c5f7e2 -> :sswitch_a3
        0x17efcab3 -> :sswitch_98
        0x23319da1 -> :sswitch_8c
        0x273d6b56 -> :sswitch_7f
        0x3374d27d -> :sswitch_73
        0x36f5967b -> :sswitch_67
        0x3a695435 -> :sswitch_5b
        0x4e7b79b4 -> :sswitch_4f
        0x585ef804 -> :sswitch_43
        0x71a3adf4 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_222
    .packed-switch 0x2
        :pswitch_1ad
        :pswitch_1ac
        :pswitch_1ab
        :pswitch_1aa
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_196
        :pswitch_193
        :pswitch_190
        :pswitch_18d
        :pswitch_18a
    .end packed-switch
.end method

.method private static getCompilationReasonTronValue(Ljava/lang/String;)I
    .registers 12
    .param p0, "compilationReason"    # Ljava/lang/String;

    .line 669
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    sparse-switch v0, :sswitch_data_8e

    :cond_13
    goto/16 :goto_7f

    :sswitch_15
    const-string/jumbo v0, "install"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v7

    goto/16 :goto_80

    :sswitch_21
    const-string/jumbo v0, "install-dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_80

    :sswitch_2c
    const-string v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_80

    :sswitch_36
    const-string/jumbo v0, "inactive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v4

    goto :goto_80

    :sswitch_41
    const-string v0, "boot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v8

    goto :goto_80

    :sswitch_4b
    const-string v0, "first-boot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v9

    goto :goto_80

    :sswitch_55
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v10

    goto :goto_80

    :sswitch_60
    const-string/jumbo v0, "shared"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v3

    goto :goto_80

    :sswitch_6b
    const-string v0, "ab-ota"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v5

    goto :goto_80

    :sswitch_75
    const-string v0, "bg-dexopt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v6

    goto :goto_80

    :goto_7f
    const/4 v0, -0x1

    :goto_80
    packed-switch v0, :pswitch_data_b8

    .line 683
    return v1

    .line 682
    :pswitch_84
    return v2

    .line 678
    :pswitch_85
    return v3

    .line 677
    :pswitch_86
    return v4

    .line 676
    :pswitch_87
    return v5

    .line 675
    :pswitch_88
    return v6

    .line 674
    :pswitch_89
    return v7

    .line 673
    :pswitch_8a
    return v8

    .line 672
    :pswitch_8b
    return v9

    .line 671
    :pswitch_8c
    return v10

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x754fea3c -> :sswitch_75
        -0x54fec890 -> :sswitch_6b
        -0x35db539b -> :sswitch_60
        -0x10fa53b6 -> :sswitch_55
        -0xc5e4811 -> :sswitch_4b
        0x2e3af2 -> :sswitch_41
        0x1785c6b -> :sswitch_36
        0x5c4d208 -> :sswitch_2c
        0x35aae5fb -> :sswitch_21
        0x74ae259b -> :sswitch_15
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
    .end packed-switch
.end method

.method private getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 590
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 591
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 592
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_17
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "splitCodePaths":[Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v2

    .line 597
    .local v2, "splitFlags":[I
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "splitNames":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 599
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    array-length v5, v1

    if-ge v4, v5, :cond_41

    .line 600
    aget v5, v2, v4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3e

    .line 601
    aget-object v5, v1, v4

    aget-object v6, v3, v4

    invoke-static {v6}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 605
    .end local v4    # "i":I
    :cond_41
    return-object v0
.end method

.method static synthetic lambda$postError$0(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .registers 6
    .param p0, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p1, "errCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 360
    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 363
    goto :goto_1b

    .line 361
    :catch_4
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to callback after profile snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArtManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method static synthetic lambda$postSuccess$1(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 7
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 377
    const-string v0, "ArtManagerService"

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 378
    invoke-interface {p1, p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_28

    .line 380
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The snapshot FD became invalid before posting the result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2f
    .catchall {:try_start_2 .. :try_end_28} :catchall_2d

    .line 388
    :goto_28
    nop

    :goto_29
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 389
    goto :goto_46

    .line 388
    :catchall_2d
    move-exception v0

    goto :goto_47

    .line 384
    :catch_2f
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onSuccess after profile snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_2d

    .line 388
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_29

    .line 390
    :goto_46
    return-void

    .line 388
    :goto_47
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 389
    throw v0
.end method

.method private postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    .registers 6
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "errCode"    # I

    .line 354
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;

    invoke-direct {v1, p1, p3, p2}, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method private postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 369
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method private snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 215
    const/4 v0, 0x0

    .line 224
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_a

    move-object v0, v2

    .line 227
    goto :goto_b

    .line 225
    :catch_a
    move-exception v2

    .line 228
    :goto_b
    if-nez v0, :cond_11

    .line 229
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 230
    return-void

    .line 233
    :cond_11
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 234
    .local v1, "pathFound":Z
    const/4 v2, 0x0

    .line 235
    .local v2, "splitName":Ljava/lang/String;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "splitCodePaths":[Ljava/lang/String;
    const/4 v4, 0x1

    if-nez v1, :cond_3e

    if-eqz v3, :cond_3e

    .line 237
    array-length v5, v3

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_29
    if-ltz v5, :cond_3e

    .line 238
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 239
    const/4 v1, 0x1

    .line 240
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v2, v6, v5

    .line 241
    goto :goto_3e

    .line 237
    :cond_3b
    add-int/lit8 v5, v5, -0x1

    goto :goto_29

    .line 245
    .end local v5    # "i":I
    :cond_3e
    :goto_3e
    if-nez v1, :cond_44

    .line 246
    invoke-direct {p0, p3, p1, v4}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 247
    return-void

    .line 251
    :cond_44
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 252
    .local v4, "appId":I
    if-gez v4, :cond_69

    .line 253
    const/4 v5, 0x2

    invoke-direct {p0, p3, p1, v5}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppId is -1 for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ArtManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_69
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, v4

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 261
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 10
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 338
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "BOOTCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 339
    const-string v1, "SYSTEMSERVERCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 338
    const-string v1, ":"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "classpath":Ljava/lang/String;
    const-string v3, "android"

    const-string v4, "android.prof"

    const/4 v6, -0x1

    move-object v2, p0

    move-object v5, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 345
    const-string v1, "android"

    const-string v2, "android.prof"

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method private static verifyTronLoggingConstants()V
    .registers 6

    .line 730
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_40

    .line 731
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 733
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "labs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_26

    .line 736
    :cond_14
    const-string v2, "adcp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_26

    .line 738
    :cond_1d
    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v2

    .line 739
    .local v2, "value":I
    if-eqz v2, :cond_29

    const/4 v3, 0x1

    if-eq v2, v3, :cond_29

    .line 730
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "value":I
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 741
    .restart local v1    # "reason":Ljava/lang/String;
    .restart local v2    # "value":I
    :cond_29
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compilation reason not configured for TRON logging: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 745
    .end local v0    # "i":I
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_40
    return-void
.end method


# virtual methods
.method public clearAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 454
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 455
    .local v0, "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1e

    .line 456
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 457
    .local v2, "profileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/Installer;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_1b} :catch_1f

    .line 455
    .end local v2    # "profileName":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 461
    .end local v0    # "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_1e
    goto :goto_29

    .line 459
    :catch_1f
    move-exception v0

    .line 460
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArtManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_29
    return-void
.end method

.method public compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 553
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "apkPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v3

    .line 557
    .local v3, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/code_cache/compiled_view.dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, "outDexFile":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v5

    if-nez v5, :cond_7e

    .line 559
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_7e

    .line 567
    :cond_39
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Compiling layouts in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_7f

    .line 571
    .local v5, "callingId":J
    :try_start_63
    iget-object v7, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_78

    .line 572
    :try_start_66
    iget-object v8, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 573
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v9

    .line 572
    invoke-virtual {v8, v2, v1, v4, v9}, Lcom/android/server/pm/Installer;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    monitor-exit v7
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_75

    .line 576
    :try_start_71
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_7f

    .line 572
    return v8

    .line 574
    :catchall_75
    move-exception v8

    :try_start_76
    monitor-exit v7
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v3    # "dataDir":Ljava/io/File;
    .end local v4    # "outDexFile":Ljava/lang/String;
    .end local v5    # "callingId":J
    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_start_77
    throw v8
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 576
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local v3    # "dataDir":Ljava/io/File;
    .restart local v4    # "outDexFile":Ljava/lang/String;
    .restart local v5    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_78
    move-exception v7

    :try_start_79
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    nop

    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    throw v7
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_7f

    .line 565
    .end local v5    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_7e
    :goto_7e
    return v0

    .line 579
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v3    # "dataDir":Ljava/io/File;
    .end local v4    # "outDexFile":Ljava/lang/String;
    :catchall_7f
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "PackageManager"

    const-string v3, "Failed to compile layouts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    return v0
.end method

.method public createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isCreate"    # Z
    .param p3, "userId"    # I

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v0
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_3} :catch_29

    .line 476
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/Installer;->createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 477
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_26

    .line 478
    :try_start_f
    const-string v0, "SPEG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_f .. :try_end_25} :catch_29

    .line 481
    goto :goto_40

    .line 477
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "isCreate":Z
    .end local p3    # "userId":I
    :try_start_28
    throw v1
    :try_end_29
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_28 .. :try_end_29} :catch_29

    .line 479
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "isCreate":Z
    .restart local p3    # "userId":I
    :catch_29
    move-exception v0

    .line 480
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPEG"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_40
    const/4 v0, 0x0

    return v0
.end method

.method public deletePrimaryMarkerFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v0
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_3} :catch_d

    .line 493
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Installer;->deletePrimaryMarkerFile(Ljava/lang/String;)V

    .line 494
    monitor-exit v0

    .line 497
    goto :goto_24

    .line 494
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "path":Ljava/lang/String;
    :try_start_c
    throw v1
    :try_end_d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c .. :try_end_d} :catch_d

    .line 495
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 496
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPEG"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_24
    return-void
.end method

.method public dumpProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 533
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 535
    .local v0, "sharedGid":I
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 536
    .local v1, "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_12
    if-ltz v2, :cond_33

    .line 537
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 538
    .local v3, "codePath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 539
    .local v4, "profileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_23} :catch_34

    .line 540
    :try_start_23
    iget-object v6, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7, v4, v3}, Lcom/android/server/pm/Installer;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 541
    monitor-exit v5

    .line 536
    .end local v3    # "codePath":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 541
    .restart local v3    # "codePath":Ljava/lang/String;
    .restart local v4    # "profileName":Ljava/lang/String;
    :catchall_30
    move-exception v6

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    .end local v0    # "sharedGid":I
    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_start_32
    throw v6
    :try_end_33
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_32 .. :try_end_33} :catch_34

    .line 545
    .end local v1    # "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "codePath":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    .restart local v0    # "sharedGid":I
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_33
    goto :goto_3c

    .line 543
    :catch_34
    move-exception v1

    .line 544
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "ArtManagerService"

    const-string v3, "Failed to dump profiles"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_3c
    return-void
.end method

.method public isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .registers 9
    .param p1, "profileType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 315
    .local v0, "callingUid":I
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_10

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 316
    return v1

    .line 319
    :cond_10
    const-string v2, "dalvik.vm.usejitprofiles"

    if-eqz p1, :cond_50

    const/4 v3, 0x1

    if-ne p1, v3, :cond_39

    .line 324
    nop

    .line 326
    const-string v4, "dalvik.vm.profilebootclasspath"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 324
    const-string/jumbo v5, "persist.device_config.runtime_native_boot.profilebootclasspath"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 327
    .local v4, "profileBootClassPath":Z
    sget-boolean v5, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v5, :cond_2d

    sget-boolean v5, Landroid/os/Build;->IS_ENG:Z

    if-eqz v5, :cond_37

    .line 328
    :cond_2d
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz v4, :cond_37

    move v1, v3

    goto :goto_38

    :cond_37
    nop

    .line 327
    :goto_38
    return v1

    .line 331
    .end local v4    # "profileBootClassPath":Z
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid profile type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_50
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public packPrimaryProfToBaseDm(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "baseDmPath"    # Ljava/lang/String;
    .param p2, "profPath"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appId"    # I

    .line 508
    if-gez p3, :cond_19

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPEG"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 512
    :cond_19
    if-gez p4, :cond_32

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid app id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPEG"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 518
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v0
    :try_end_35
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_32 .. :try_end_35} :catch_58

    .line 519
    :try_start_35
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->packPrimaryProfToBaseDm(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_53

    .line 520
    const-string v1, "SPEG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare DexMetadata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_53
    monitor-exit v0

    .line 525
    goto :goto_6f

    .line 522
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_55

    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "baseDmPath":Ljava/lang/String;
    .end local p2    # "profPath":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "appId":I
    :try_start_57
    throw v1
    :try_end_58
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_57 .. :try_end_58} :catch_58

    .line 523
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "baseDmPath":Ljava/lang/String;
    .restart local p2    # "profPath":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "appId":I
    :catch_58
    move-exception v0

    .line 524
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare DexMetadata "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPEG"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_6f
    return-void
.end method

.method public prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V
    .registers 20
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "user"    # I
    .param p3, "updateReferenceProfileContent"    # Z

    .line 402
    move-object/from16 v1, p0

    move/from16 v9, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 403
    .local v10, "appId":I
    if-gez v9, :cond_25

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ArtManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 407
    :cond_25
    if-gez v10, :cond_3e

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid app id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ArtManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 412
    :cond_3e
    :try_start_3e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v0

    move-object v11, v0

    .line 413
    .local v11, "codePathsProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v12, v0

    .local v12, "i":I
    :goto_4a
    if-ltz v12, :cond_af

    .line 414
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 415
    .local v13, "codePath":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 416
    .local v6, "profileName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 420
    .local v0, "dexMetadataPath":Ljava/lang/String;
    if-eqz p3, :cond_71

    .line 421
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 422
    .local v2, "dexMetadata":Ljava/io/File;
    if-nez v2, :cond_6a

    const/4 v3, 0x0

    goto :goto_6e

    :cond_6a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_6e
    move-object v0, v3

    move-object v14, v0

    goto :goto_72

    .line 420
    .end local v2    # "dexMetadata":Ljava/io/File;
    :cond_71
    move-object v14, v0

    .line 424
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .local v14, "dexMetadataPath":Ljava/lang/String;
    :goto_72
    iget-object v15, v1, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v15
    :try_end_75
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3e .. :try_end_75} :catch_b0

    .line 425
    :try_start_75
    iget-object v2, v1, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p2

    move v5, v10

    move-object v7, v13

    move-object v8, v14

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 427
    .local v0, "result":Z
    if-nez v0, :cond_a8

    .line 428
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to prepare profile for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "result":Z
    :cond_a8
    monitor-exit v15

    .line 413
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v13    # "codePath":Ljava/lang/String;
    .end local v14    # "dexMetadataPath":Ljava/lang/String;
    add-int/lit8 v12, v12, -0x1

    goto :goto_4a

    .line 431
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v13    # "codePath":Ljava/lang/String;
    .restart local v14    # "dexMetadataPath":Ljava/lang/String;
    :catchall_ac
    move-exception v0

    monitor-exit v15
    :try_end_ae
    .catchall {:try_start_75 .. :try_end_ae} :catchall_ac

    .end local v10    # "appId":I
    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "user":I
    .end local p3    # "updateReferenceProfileContent":Z
    :try_start_ae
    throw v0
    :try_end_af
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ae .. :try_end_af} :catch_b0

    .line 435
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v11    # "codePathsProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v13    # "codePath":Ljava/lang/String;
    .end local v14    # "dexMetadataPath":Ljava/lang/String;
    .restart local v10    # "appId":I
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "user":I
    .restart local p3    # "updateReferenceProfileContent":Z
    :cond_af
    goto :goto_cb

    .line 433
    :catch_b0
    move-exception v0

    .line 434
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare profile for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ArtManagerService"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_cb
    return-void
.end method

.method public prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IZ)V
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "user"    # [I
    .param p3, "updateReferenceProfileContent"    # Z

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_c

    .line 445
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 11
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 179
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/dex/ArtManagerService;->checkShellPermissions(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 180
    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 182
    const/4 v1, 0x2

    :try_start_11
    invoke-interface {p4, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 184
    goto :goto_16

    .line 183
    :catch_15
    move-exception v1

    .line 185
    :goto_16
    return-void

    .line 189
    :cond_17
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 192
    .local v1, "bootImageProfile":Z
    :goto_1f
    if-nez v1, :cond_27

    .line 193
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 194
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 198
    :cond_27
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 202
    sget-boolean v2, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v2, :cond_4f

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ArtManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_4f
    if-eqz v1, :cond_55

    .line 207
    invoke-direct {p0, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_58

    .line 209
    :cond_55
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 211
    :goto_58
    return-void

    .line 199
    :cond_59
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Runtime profiling is not enabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
