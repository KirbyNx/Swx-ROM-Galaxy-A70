.class public Lcom/android/server/HeimdAllFsService;
.super Ljava/lang/Object;
.source "HeimdAllFsService.java"


# static fields
.field private static final HEIMDALLFS_APP_USAGE_STAT_AOSP:Ljava/lang/String; = "aosp"

.field private static final HEIMDALLFS_APP_USAGE_STAT_MARS:Ljava/lang/String; = "mars"

.field private static final HEIMDALLFS_INPROG:Ljava/lang/String; = "inprog"

.field private static final HEIMDALLFS_INPROG_PROPERTY:Ljava/lang/String; = "persist.sys.heimdallfs.inprog"

.field private static final HEIMDALLFS_SCAN_COMMIT:I = 0x4

.field private static final HEIMDALLFS_SCAN_INIT:I = 0x1

.field private static final HEIMDALLFS_SCAN_STAT:I = 0x2

.field private static final HEIMDALLFS_SERVICE_APP_STAT_MODE:Ljava/lang/String; = "persist.sys.heimdallfs.appstat.mode"

.field private static final HEIMDALLFS_SERVICE_DEBUG:Ljava/lang/String; = "persist.sys.heimdallfs.debug"

.field private static final HEIMDALLFS_SERVICE_DRYRUN:Ljava/lang/String; = "persist.sys.heimdallfs.dryrun"

.field private static final HEIMDALLFS_SERVICE_FORCE:Ljava/lang/String; = "persist.sys.heimdallfs.force"

.field private static final HEIMDALLFS_SERVICE_FORCE_MODE:Ljava/lang/String; = "persist.sys.heimdallfs.force.mode"

.field private static final TAG:Ljava/lang/String; = "HeimdAllFS"

.field private static final THRESHOLD_COMPRESS_TRIGGER:D = 0.1

.field private static final THRESHOLD_DECOMPRESS_TRIGGER:D = 0.15

.field private static final THRESHOLD_UNUSED_MS:J = 0x9a7ec800L

.field private static heimdAllFSSupported:Ljava/lang/Boolean; = null

.field private static mDebugMode:Z = false

.field private static mDryrun:Z = false

.field private static mUsageStateMode:Ljava/lang/String; = null

.field private static final sDataPath:Ljava/lang/String; = "/data/"

.field private static final sTempFilePostfix:Ljava/lang/String; = ".compress.tmp"

.field private static final sUserdataSysfsPath:Ljava/lang/String; = "/sys/fs/f2fs/userdata/features"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

.field private mHeimdallFsThread:Ljava/lang/Thread;

.field private volatile mInstalld:Landroid/os/IInstalld;

.field private mPackagesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    .line 94
    const-string/jumbo v0, "mars"

    sput-object v0, Lcom/android/server/HeimdAllFsService;->mUsageStateMode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mUsageStats:Ljava/util/SortedMap;

    .line 84
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    .line 86
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    .line 88
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 101
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/android/server/HeimdAllFsService;->connectInstalld()V

    .line 106
    const-string/jumbo v0, "persist.sys.heimdallfs.dryrun"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    .line 108
    const-string/jumbo v0, "persist.sys.heimdallfs.appstat.mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aosp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 109
    sput-object v1, Lcom/android/server/HeimdAllFsService;->mUsageStateMode:Ljava/lang/String;

    .line 111
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    const-string v2, "TRUE"

    const-string v3, "FALSE"

    if-eqz v1, :cond_46

    move-object v1, v2

    goto :goto_47

    :cond_46
    move-object v1, v3

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Dry-run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    if-eqz v1, :cond_54

    goto :goto_55

    :cond_54
    move-object v2, v3

    :goto_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " UsageStateMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/HeimdAllFsService;->mUsageStateMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeimdAllFS"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HeimdAllFsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/HeimdAllFsService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/HeimdAllFsService;->connectInstalld()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/HeimdAllFsService;

    .line 57
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/HeimdAllFsService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/HeimdAllFsService;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .line 57
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/HeimdAllFsService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/HeimdAllFsService;

    .line 57
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/HeimdAllFsService;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/HeimdAllFsService;
    .param p1, "x1"    # Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 57
    sget-boolean v0, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    return v0
.end method

.method private connectInstalld()V
    .registers 6

    .line 269
    const-string v0, "HeimdAllFS"

    const-string v1, "Connect Installd"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string/jumbo v1, "installd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 271
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_1d

    .line 273
    :try_start_10
    new-instance v2, Lcom/android/server/HeimdAllFsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/HeimdAllFsService$1;-><init>(Lcom/android/server/HeimdAllFsService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_1c

    .line 280
    :catch_1a
    move-exception v2

    .line 281
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 282
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1c
    goto :goto_22

    .line 285
    :cond_1d
    const-string v2, "binder Null!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_22
    if-eqz v1, :cond_2b

    .line 289
    invoke-static {v1}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    goto :goto_3f

    .line 291
    :cond_2b
    const-string/jumbo v2, "installd not found; trying again"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/-$$Lambda$HeimdAllFsService$-iZ2AYnKHGei2o3uOBxDhegwXl0;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$HeimdAllFsService$-iZ2AYnKHGei2o3uOBxDhegwXl0;-><init>(Lcom/android/server/HeimdAllFsService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    :goto_3f
    return-void
.end method

.method public static isServiceActivate()Z
    .registers 8

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 118
    .local v1, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 120
    .local v2, "br":Ljava/io/BufferedReader;
    const-string/jumbo v3, "persist.sys.heimdallfs.force"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_15

    .line 121
    return v4

    .line 123
    :cond_15
    sget-object v3, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    if-eqz v3, :cond_1e

    .line 124
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 126
    :cond_1e
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/fs/f2fs/userdata/features"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v3, "sysfsFeature":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "HeimdAllFS"

    if-nez v5, :cond_3b

    .line 129
    const-string/jumbo v4, "getServiceLevel: [/sys/fs/f2fs/userdata/features] does not exist"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    .line 131
    return v4

    .line 135
    :cond_3b
    :try_start_3b
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 136
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 138
    :cond_47
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .local v7, "line":Ljava/lang/String;
    if-eqz v5, :cond_61

    .line 139
    const-string v5, "compression"

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 140
    const/4 v0, 0x1

    .line 141
    sget-object v5, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    if-nez v5, :cond_61

    .line 142
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    .line 146
    :cond_61
    if-nez v0, :cond_68

    .line 147
    const-string v4, "[/sys/fs/f2fs/userdata/features] does not have [compression] feature"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_68} :catch_75
    .catchall {:try_start_3b .. :try_end_68} :catchall_73

    .line 152
    .end local v7    # "line":Ljava/lang/String;
    :cond_68
    :try_start_68
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_6d

    :catch_6c
    move-exception v4

    .line 153
    :goto_6d
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_88

    :catch_71
    move-exception v4

    goto :goto_88

    .line 152
    :catchall_73
    move-exception v4

    goto :goto_89

    .line 148
    :catch_75
    move-exception v4

    .line 149
    .local v4, "ex":Ljava/io/IOException;
    :try_start_76
    const-string v5, "Error while reading [/sys/fs/f2fs/userdata/features]"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_73

    .line 150
    const/4 v0, 0x0

    .line 152
    .end local v4    # "ex":Ljava/io/IOException;
    if-eqz v2, :cond_83

    :try_start_7e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v4

    .line 153
    :cond_83
    :goto_83
    if-eqz v1, :cond_88

    :try_start_85
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_71

    .line 156
    :cond_88
    :goto_88
    return v0

    .line 152
    :goto_89
    if-eqz v2, :cond_90

    :try_start_8b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_90

    :catch_8f
    move-exception v5

    .line 153
    :cond_90
    :goto_90
    if-eqz v1, :cond_97

    :try_start_92
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_97

    :catch_96
    move-exception v5

    .line 154
    :cond_97
    :goto_97
    throw v4
.end method


# virtual methods
.method public abort()V
    .registers 3

    .line 474
    const-string v0, "HeimdAllFS"

    const-string v1, "Abort()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    .line 476
    return-void
.end method

.method public doCompressService(Z)V
    .registers 11
    .param p1, "compress"    # Z

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 300
    .local v0, "thisThread":Ljava/lang/Thread;
    const/4 v1, 0x0

    .line 302
    .local v1, "isUsedList":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCompressService Start!! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string v3, "Compress"

    goto :goto_16

    :cond_14
    const-string v3, "Decompress"

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HeimdAllFS"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-boolean v2, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v2, :cond_3c

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Package Info!! "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/HeimdAllFsService;->mUsageStateMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_3c
    sget-object v2, Lcom/android/server/HeimdAllFsService;->mUsageStateMode:Ljava/lang/String;

    const-string v4, "aosp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 307
    invoke-virtual {p0}, Lcom/android/server/HeimdAllFsService;->getAppUsageStats()Ljava/util/SortedMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HeimdAllFsService;->mUsageStats:Ljava/util/SortedMap;

    .line 308
    const/4 v1, 0x1

    goto :goto_55

    .line 312
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/HeimdAllFsService;->getUnusedAppList()Ljava/util/SortedMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HeimdAllFsService;->mUsageStats:Ljava/util/SortedMap;

    .line 313
    const/4 v1, 0x0

    .line 315
    :goto_55
    invoke-virtual {p0}, Lcom/android/server/HeimdAllFsService;->getPackagesOnUserdata()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    .line 316
    iget-object v4, p0, Lcom/android/server/HeimdAllFsService;->mUsageStats:Ljava/util/SortedMap;

    invoke-virtual {p0, v2, v4, v1, p1}, Lcom/android/server/HeimdAllFsService;->getCandidatePackages(Ljava/util/List;Ljava/util/SortedMap;ZZ)Ljava/util/List;

    move-result-object v2

    .line 318
    .local v2, "candidatePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 319
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    if-eq v6, v0, :cond_76

    .line 320
    goto :goto_cd

    .line 322
    :cond_76
    sget-boolean v6, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    if-eqz v6, :cond_9d

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_84

    const-string v7, "Comp"

    goto :goto_86

    :cond_84
    const-string v7, "Decomp"

    :goto_86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    goto :goto_65

    .line 327
    :cond_9d
    if-eqz p1, :cond_a9

    .line 328
    :try_start_9f
    iget-object v6, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/IInstalld;->compressApks(Ljava/lang/String;)V

    goto :goto_b2

    .line 330
    :cond_a9
    iget-object v6, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/IInstalld;->decompressApks(Ljava/lang/String;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_b2} :catch_b3

    .line 333
    :goto_b2
    goto :goto_cc

    .line 331
    :catch_b3
    move-exception v6

    .line 332
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Compress/Decompress RemoteException, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_cc
    goto :goto_65

    .line 335
    :cond_cd
    :goto_cd
    return-void
.end method

.method public dumpPackageState(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)[J
    .registers 9
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkgPath"    # Ljava/lang/String;

    .line 479
    const-string v0, "HeimdAllFS"

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_d2

    .line 480
    .local v1, "sizeInfo":[J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 482
    :try_start_1d
    invoke-static {p2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incremental Delivery APK: SKIP! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 484
    return-object v1

    .line 487
    :cond_38
    const-string v2, "Compressed? "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v2, p2, v1}, Landroid/os/IInstalld;->getCompressedStats(Ljava/lang/String;[J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6d

    .line 489
    const-string v2, "True"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size info: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d0

    .line 493
    :cond_6d
    aget-wide v2, v1, v3

    const-wide/16 v4, 0x10cf

    cmp-long v2, v2, v4

    if-nez v2, :cond_7b

    .line 494
    const-string v2, "Unknown - failed to acquire installd mLock"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d0

    .line 496
    :cond_7b
    const-string v2, "False"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_80} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_80} :catch_81

    goto :goto_d0

    .line 501
    :catch_81
    move-exception v2

    .line 502
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Exception, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 498
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_a9
    move-exception v2

    .line 499
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: getCompressedStats RemoteException, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_d0
    nop

    .line 506
    :goto_d1
    return-object v1

    :array_d2
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public getAppUsageStats()Ljava/util/SortedMap;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 191
    .local v0, "um":Landroid/app/usage/UsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 192
    .local v7, "current":J
    const-wide v1, 0x9a7ec800L

    sub-long v9, v7, v1

    .line 193
    .local v9, "before":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 194
    .local v11, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v11, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 196
    .local v12, "beforeTime":Ljava/util/Calendar;
    invoke-virtual {v12, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 198
    nop

    .line 199
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 200
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 198
    const/4 v2, 0x2

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    .line 202
    .local v1, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 203
    .local v2, "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v1, :cond_84

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 205
    .local v4, "usageStats":Landroid/app/usage/UsageStats;
    sget-boolean v5, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v5, :cond_74

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Used package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HeimdAllFS"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_74
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v4    # "usageStats":Landroid/app/usage/UsageStats;
    goto :goto_3e

    .line 211
    :cond_84
    return-object v2
.end method

.method public getCandidatePackages(Ljava/util/List;Ljava/util/SortedMap;ZZ)Ljava/util/List;
    .registers 11
    .param p3, "isUsedList"    # Z
    .param p4, "compressCandidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 244
    .local p1, "packagesInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local p2, "usageStats":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "candidatePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 249
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v3, "HeimdAllFS"

    if-eqz p4, :cond_4b

    if-eqz p3, :cond_23

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 250
    invoke-interface {p2, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2d

    :cond_23
    if-nez p3, :cond_4b

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 251
    invoke-interface {p2, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 252
    :cond_2d
    sget-boolean v4, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v4, :cond_47

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compressCandidate App : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 256
    :cond_4b
    if-nez p4, :cond_7e

    if-eqz p3, :cond_57

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 257
    invoke-interface {p2, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_61

    :cond_57
    if-nez p3, :cond_7e

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 258
    invoke-interface {p2, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7e

    .line 259
    :cond_61
    sget-boolean v4, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v4, :cond_7b

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "de-compressCandidate App : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_7b
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_7e
    :goto_7e
    goto :goto_9

    .line 265
    :cond_7f
    return-object v0
.end method

.method public getPackagesOnUserdata()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 164
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v2, "userdataPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 168
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v6, "/data/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 169
    sget-boolean v5, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    const-string v6, "HeimdAllFS"

    if-eqz v5, :cond_94

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Info = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package source Dir = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package public source Dir = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incremental Delivery? = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_94
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incremental Delivery APK: SKIP! : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    goto/16 :goto_14

    .line 179
    :cond_b6
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_b9
    goto/16 :goto_14

    .line 183
    :cond_bb
    return-object v2
.end method

.method public getUnusedAppList()Ljava/util/SortedMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 218
    const-string v0, "HeimdAllFS"

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 220
    .local v1, "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 221
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_4f

    .line 222
    invoke-interface {v2}, Landroid/app/IActivityManager;->getUnusedAppList()Ljava/util/List;

    move-result-object v3

    .line 223
    .local v3, "MarsUnusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4f

    .line 224
    sget-boolean v5, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v5, :cond_3a

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MARS Unused Package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_3a
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4c} :catch_50

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 232
    .end local v2    # "am":Landroid/app/IActivityManager;
    .end local v3    # "MarsUnusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :cond_4f
    goto :goto_59

    .line 229
    :catch_50
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HeimdAllFS: Exception!!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_59
    return-object v1
.end method

.method public synthetic lambda$connectInstalld$0$HeimdAllFsService()V
    .registers 1

    .line 293
    invoke-direct {p0}, Lcom/android/server/HeimdAllFsService;->connectInstalld()V

    .line 294
    return-void
.end method

.method public scanApkPackagesForBigdata()V
    .registers 15

    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 340
    .local v0, "thisThread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 341
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 342
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v3, ""

    .line 343
    .local v3, "packagePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 345
    .local v4, "isCommitted":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "Error: scanApkStats RemoteException, "

    const-string v8, "): "

    const-string v9, "Scan Package Info!! ("

    const-string v10, ""

    const-string v11, "HeimdAllFS"

    if-ge v5, v6, :cond_9b

    .line 346
    const/4 v6, 0x2

    .line 348
    .local v6, "flags":I
    iget-object v12, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    if-eq v12, v0, :cond_32

    .line 349
    sget-boolean v12, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v12, :cond_9b

    .line 350
    const-string v12, "Break!!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 354
    :cond_32
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v13, "/data/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_45

    .line 355
    goto :goto_97

    .line 358
    :cond_45
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 359
    or-int/lit8 v6, v6, 0x1

    .line 360
    :cond_4d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v5, v10, :cond_58

    .line 361
    const/4 v4, 0x1

    .line 362
    or-int/lit8 v6, v6, 0x4

    .line 365
    :cond_58
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 367
    sget-boolean v10, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v10, :cond_7e

    .line 368
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_7e
    :try_start_7e
    iget-object v8, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v8, v3, v6}, Landroid/os/IInstalld;->scanApkStats(Ljava/lang/String;I)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_83} :catch_84

    .line 374
    goto :goto_97

    .line 372
    :catch_84
    move-exception v8

    .line 373
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v6    # "flags":I
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_97
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13

    .line 377
    .end local v5    # "i":I
    :cond_9b
    :goto_9b
    if-nez v4, :cond_d9

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d9

    .line 378
    const/4 v5, 0x4

    .line 380
    .local v5, "flags":I
    sget-boolean v6, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v6, :cond_c0

    .line 381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_c0
    :try_start_c0
    iget-object v6, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v6, v3, v5}, Landroid/os/IInstalld;->scanApkStats(Ljava/lang/String;I)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c5} :catch_c6

    .line 387
    goto :goto_d9

    .line 385
    :catch_c6
    move-exception v6

    .line 386
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v5    # "flags":I
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_d9
    :goto_d9
    return-void
.end method

.method public start()V
    .registers 3

    .line 394
    new-instance v0, Lcom/android/server/HeimdAllFsService$2;

    const-string v1, "HeimdAllFS"

    invoke-direct {v0, p0, v1}, Lcom/android/server/HeimdAllFsService$2;-><init>(Lcom/android/server/HeimdAllFsService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    .line 457
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 458
    return-void
.end method

.method public waitForFinished()V
    .registers 4

    .line 462
    const-string v0, "HeimdAllFS"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_14

    .line 463
    const-string/jumbo v1, "waitForFinished, HeimdAllLatch await"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 465
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 467
    :cond_14
    const-string/jumbo v1, "waitForFinished, HeimdAllLatch await End"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 470
    goto :goto_21

    .line 468
    :catch_1b
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "Interrupt while waiting for heimdallFsLatch:CountDownLatch(1)"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_21
    return-void
.end method
