.class public Lcom/samsung/android/server/audio/VolumeMonitorService;
.super Ljava/lang/Object;
.source "VolumeMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;
    }
.end annotation


# static fields
.field private static final ENERGY_VALUE_SIZE_IN_BYTE:I = 0xf4

.field private static final MONITORING_PERIOD:I = 0xea60

.field private static final MSG_RUNNING:I = 0x1

.field private static final MSG_START:I = 0x0

.field private static final RESET_DATA:Ljava/lang/String; = "resetData()"

.field private static final SCORE_VALUE_SIZE_IN_BYTE:I = 0x3c

.field private static final SET_VOLUME:Ljava/lang/String; = "setVolumeData()"

.field private static final STATE_PAUSED:I = 0x0

.field private static final STATE_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AS.VolumeMonitor"

.field private static final authority:Landroid/net/Uri;

.field private static sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;


# instance fields
.field private mAvrcpAbsVolSupported:Z

.field private mBluetoothVolumeIndex:I

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field private mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;

.field private mVolumeHandler:Landroid/os/Handler;

.field private mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 54
    nop

    .line 55
    const-string v0, "content://com.sec.android.app.volumemonitorprovider.VolumeMonitorProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    .line 46
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    .line 63
    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/server/audio/VolumeMonitorService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/VolumeMonitorService;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/server/audio/VolumeMonitorService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/server/audio/VolumeMonitorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 22
    iget v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/server/audio/VolumeMonitorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/VolumeMonitorService;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 22
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/server/audio/VolumeMonitorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->sendVolumeData()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/server/audio/VolumeMonitorService;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    if-nez v1, :cond_e

    .line 69
    new-instance v1, Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 71
    :cond_e
    sget-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 67
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getUserContext()Landroid/content/Context;
    .registers 6

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    .line 260
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 259
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    .line 261
    :catch_17
    move-exception v0

    .line 262
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private initLocked(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-nez v0, :cond_29

    .line 93
    const/4 v0, 0x0

    :try_start_5
    new-instance v1, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    const/4 v2, -0x3

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_d} :catch_e

    .line 98
    goto :goto_29

    .line 94
    :catch_e
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.VolumeMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 97
    return v0

    .line 101
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_29
    :goto_29
    if-eqz p1, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    if-nez v0, :cond_3c

    .line 102
    new-instance v0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->start()V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->waitForVolumeHandlerCreation()V

    .line 106
    :cond_3c
    const/4 v0, 0x1

    return v0
.end method

.method private isMusicPlaying()Z
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private resetData()V
    .registers 6

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    const-string v2, "resetData()"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 254
    goto :goto_2e

    .line 252
    :catch_13
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetData() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.VolumeMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method private sendVolumeData()V
    .registers 8

    .line 234
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    const-string v1, "AS.VolumeMonitor"

    if-nez v0, :cond_c

    .line 235
    const-string v0, "SemVolumeMonitor is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 240
    :cond_c
    const/16 v2, 0xf4

    const/16 v3, 0x3c

    :try_start_10
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->getOneMinScoreStatus(II)[B

    move-result-object v0

    .line 242
    .local v0, "data":[B
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 243
    .local v2, "volumeData":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getUserContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    const-string v5, "setVolumeData()"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2b} :catch_2d

    .line 246
    nop

    .end local v0    # "data":[B
    .end local v2    # "volumeData":Ljava/lang/String;
    goto :goto_46

    .line 244
    :catch_2d
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVolumeData() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method private waitForVolumeHandlerCreation()V
    .registers 4

    .line 161
    monitor-enter p0

    .line 162
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_13

    .line 165
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    .line 168
    goto :goto_1

    .line 166
    :catch_9
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AS.VolumeMonitor"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 170
    :cond_13
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method public synthetic lambda$resetByDataClear$0$VolumeMonitorService()V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetData()V

    return-void
.end method

.method public resetByDataClear()V
    .registers 2

    .line 132
    monitor-enter p0

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-nez v0, :cond_7

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->resetData()V

    .line 137
    new-instance v0, Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$pI9iJ6ObtRYDrs3nwGo6PhKXMMY;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$pI9iJ6ObtRYDrs3nwGo6PhKXMMY;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setDeviceVolumeForBluetooth(IZ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "isAvrcpAbsVolSupported"    # Z

    .line 142
    iput p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "absVolStateChanged":Z
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    if-eq v1, p2, :cond_a

    .line 146
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    .line 147
    const/4 v0, 0x1

    .line 150
    :cond_a
    monitor-enter p0

    .line 151
    :try_start_b
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-nez v1, :cond_11

    monitor-exit p0

    return-void

    .line 152
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1f

    .line 154
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    .line 155
    if-eqz v0, :cond_1e

    .line 156
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v1, p2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    .line 158
    :cond_1e
    return-void

    .line 152
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setPlaybackActivityMonitor(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .registers 2
    .param p1, "pam"    # Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 76
    return-void
.end method

.method public setVolumeMonitorOnOff(Z)V
    .registers 4
    .param p1, "isOnOff"    # Z

    .line 110
    monitor-enter p0

    .line 111
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-ne v0, p1, :cond_7

    monitor-exit p0

    return-void

    .line 113
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->initLocked(Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 114
    monitor-exit p0

    return-void

    .line 116
    :cond_f
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 117
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_31

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->onOff(Z)V

    .line 121
    if-eqz p1, :cond_30

    .line 122
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    iget v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->triggerMonitoring()V

    .line 129
    :cond_30
    return-void

    .line 117
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public triggerMonitoring()V
    .registers 3

    .line 79
    monitor-enter p0

    .line 80
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 81
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1c

    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 84
    return-void

    .line 87
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void

    .line 81
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
