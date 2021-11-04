.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;
.implements Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;,
        Lcom/android/server/am/BatteryStatsService$LocalService;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x1000

.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field private static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field mSystemServicesReady:Z

.field private final mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

.field private mUtf16BufferStat:Ljava/nio/CharBuffer;

.field private mUtf8BufferStat:Ljava/nio/ByteBuffer;

.field private final mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 203
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 119
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 120
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 121
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 122
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 123
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 124
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    .line 125
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    .line 205
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 206
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    .line 216
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "batterystats-handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 217
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 219
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 221
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {v1, p1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 222
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 225
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setGpuNumSpeedSteps(I)V

    .line 229
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/BatteryStatsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;

    .line 98
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    return-void
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;)I
    .registers 2
    .param p0, "x0"    # Ljava/nio/ByteBuffer;

    .line 98
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private awaitCompletion()V
    .registers 4

    .line 286
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 287
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZJXFaxQ8fHWxmwMhvJHpIDwbCuI;

    invoke-direct {v2, v0}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZJXFaxQ8fHWxmwMhvJHpIDwbCuI;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :try_start_10
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    .line 293
    goto :goto_15

    .line 292
    :catch_14
    move-exception v1

    .line 294
    :goto_15
    return-void
.end method

.method private static awaitUninterruptibly(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 271
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 272
    return-void

    .line 275
    :catch_4
    move-exception v0

    .line 277
    goto :goto_0

    .line 273
    :catch_6
    move-exception v0

    .line 274
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    return-void
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .line 2173
    add-int/lit8 p2, p2, 0x1

    .line 2174
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_25

    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing option argument for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_15

    const-string v2, "--enable"

    goto :goto_17

    :cond_15
    const-string v2, "--disable"

    :goto_17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2177
    return v1

    .line 2179
    :cond_25
    aget-object v0, p3, p2

    const-string/jumbo v2, "full-wake-history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    aget-object v0, p3, p2

    const-string/jumbo v2, "full-history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_8c

    .line 2185
    :cond_3c
    aget-object v0, p3, p2

    const-string/jumbo v2, "no-auto-reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2187
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2188
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2189
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 2190
    monitor-exit v0

    goto :goto_98

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_54

    throw v1

    .line 2191
    :cond_57
    aget-object v0, p3, p2

    const-string/jumbo v2, "pretend-screen-off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 2193
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2194
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2195
    :try_start_68
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 2196
    monitor-exit v0

    goto :goto_98

    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    throw v1

    .line 2198
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enable/disable option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2199
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2200
    return v1

    .line 2181
    :cond_8c
    :goto_8c
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2182
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2183
    :try_start_92
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 2184
    monitor-exit v0

    .line 2202
    :goto_98
    return p2

    .line 2184
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_99

    throw v1
.end method

.method private dumpCpuStats(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2166
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2167
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2168
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 2169
    monitor-exit v0

    .line 2170
    return-void

    .line 2169
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2126
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2127
    const-string v0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2128
    const-string v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2129
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2131
    const-string v0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2132
    const-string v0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2134
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2135
    const-string v0, "  --history-create-events <num>: create <num> of battery history events."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2136
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2137
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2140
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2141
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2142
    const-string v0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2143
    const-string v0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2146
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2147
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2150
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2152
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    return-void
.end method

.method private dumpSettings(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2158
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2159
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2160
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 2161
    monitor-exit v0

    .line 2162
    return-void

    .line 2161
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private native getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
.end method

.method private native getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .line 328
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_5

    .line 329
    return-object v0

    .line 331
    :cond_5
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 332
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 333
    return-object v1
.end method

.method private native getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method static synthetic lambda$awaitCompletion$0(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 288
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 289
    return-void
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private static onlyCaller([I)Z
    .registers 5
    .param p0, "requestUids"    # [I

    .line 2557
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2558
    .local v0, "caller":I
    array-length v1, p0

    .line 2559
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_11

    .line 2560
    aget v3, p0, v2

    if-eq v3, v0, :cond_e

    .line 2561
    const/4 v3, 0x0

    return v3

    .line 2559
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2564
    .end local v2    # "i":I
    :cond_11
    const/4 v2, 0x1

    return v2
.end method

.method private sendWirelessPowerSharingExternelEvent(IZ)V
    .registers 5
    .param p1, "packageNumber"    # I
    .param p2, "on"    # Z

    .line 2112
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_e

    .line 2113
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 2115
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-eqz v0, :cond_24

    .line 2116
    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "set setWirelessPowerSharingExternelEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 2118
    if-eqz p2, :cond_20

    move v1, p1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 2117
    :goto_21
    invoke-virtual {v0, p1, v1}, Landroid/os/BatteryManagerInternal;->setWirelessPowerSharingExternelEvent(II)V

    .line 2120
    :cond_24
    return-void
.end method

.method private shouldCollectExternalStats()Z
    .registers 5

    .line 2549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2550
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 2549
    :goto_18
    return v0
.end method

.method private syncStats(Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 282
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->awaitUninterruptibly(Ljava/util/concurrent/Future;)V

    .line 283
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .registers 14
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 415
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 417
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 418
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public computeBatteryTimeRemaining()J
    .registers 6

    .line 554
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 555
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    .line 556
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_18

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_19

    :cond_18
    move-wide v3, v1

    :goto_19
    monitor-exit v0

    return-wide v3

    .line 557
    .end local v1    # "time":J
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public computeChargeTimeRemaining()J
    .registers 6

    .line 561
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 562
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    .line 563
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_18

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_19

    :cond_18
    move-wide v3, v1

    :goto_19
    monitor-exit v0

    return-wide v3

    .line 564
    .end local v1    # "time":J
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 41
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2208
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v2, "BatteryStatsService"

    invoke-static {v0, v2, v9}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 2209
    :cond_11
    iget-boolean v0, v1, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    if-nez v0, :cond_16

    return-void

    .line 2211
    :cond_16
    const/4 v0, 0x0

    .line 2212
    .local v0, "flags":I
    const/4 v2, 0x0

    .line 2213
    .local v2, "useCheckinFormat":Z
    const/4 v3, 0x0

    .line 2214
    .local v3, "toProto":Z
    const/4 v4, 0x0

    .line 2215
    .local v4, "isRealCheckin":Z
    const/4 v5, 0x0

    .line 2216
    .local v5, "noOutput":Z
    const/4 v6, 0x0

    .line 2217
    .local v6, "writeData":Z
    const-wide/16 v7, -0x1

    .line 2218
    .local v7, "historyStart":J
    const/4 v11, -0x1

    .line 2219
    .local v11, "reqUid":I
    if-eqz v10, :cond_290

    .line 2220
    const/4 v14, 0x0

    move/from16 v30, v2

    move v2, v0

    move/from16 v31, v3

    move/from16 v3, v30

    move/from16 v32, v4

    move/from16 v4, v31

    move/from16 v33, v5

    move/from16 v5, v32

    move/from16 v34, v6

    move/from16 v6, v33

    move-wide/from16 v35, v7

    move/from16 v7, v34

    move v8, v14

    move-wide/from16 v14, v35

    .end local v0    # "flags":I
    .local v2, "flags":I
    .local v3, "useCheckinFormat":Z
    .local v4, "toProto":Z
    .local v5, "isRealCheckin":Z
    .local v6, "noOutput":Z
    .local v7, "writeData":Z
    .local v8, "i":I
    .local v14, "historyStart":J
    :goto_3c
    array-length v0, v10

    if-ge v8, v0, :cond_286

    .line 2221
    aget-object v13, v10, v8

    .line 2222
    .local v13, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2223
    const/4 v3, 0x1

    .line 2224
    const/4 v5, 0x1

    goto/16 :goto_22b

    .line 2225
    :cond_4d
    const-string v0, "--history"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2226
    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_22b

    .line 2227
    :cond_59
    const-string v0, "--history-start"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v18, v13

    .end local v13    # "arg":Ljava/lang/String;
    .local v18, "arg":Ljava/lang/String;
    const-wide/16 v12, 0x0

    if-eqz v0, :cond_7e

    .line 2228
    or-int/lit8 v2, v2, 0x8

    .line 2229
    add-int/lit8 v8, v8, 0x1

    .line 2230
    array-length v0, v10

    if-lt v8, v0, :cond_75

    .line 2231
    const-string v0, "Missing time argument for --history-since"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2233
    return-void

    .line 2235
    :cond_75
    aget-object v0, v10, v8

    invoke-static {v0, v12, v13}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2236
    const/4 v7, 0x1

    goto/16 :goto_22b

    .line 2237
    :cond_7e
    const-string v0, "--history-create-events"

    move-object/from16 v12, v18

    .end local v18    # "arg":Ljava/lang/String;
    .local v12, "arg":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2238
    add-int/lit8 v13, v8, 0x1

    .line 2239
    .end local v8    # "i":I
    .local v13, "i":I
    array-length v0, v10

    if-lt v13, v0, :cond_96

    .line 2240
    const-string v0, "Missing events argument for --history-create-events"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2241
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2242
    return-void

    .line 2244
    :cond_96
    aget-object v0, v10, v13

    move/from16 v22, v3

    move/from16 v18, v4

    const-wide/16 v3, 0x0

    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .local v18, "toProto":Z
    .local v22, "useCheckinFormat":Z
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2245
    .local v3, "events":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2246
    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 2247
    :try_start_a8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    .line 2248
    const-string v0, "Battery history create events started."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2249
    const/4 v6, 0x1

    .line 2250
    monitor-exit v8

    .line 2251
    .end local v3    # "events":J
    move v8, v13

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_22b

    .line 2250
    .restart local v3    # "events":J
    :catchall_bb
    move-exception v0

    monitor-exit v8
    :try_end_bd
    .catchall {:try_start_a8 .. :try_end_bd} :catchall_bb

    throw v0

    .line 2251
    .end local v13    # "i":I
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .local v3, "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v8    # "i":I
    :cond_be
    move/from16 v22, v3

    move/from16 v18, v4

    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .restart local v18    # "toProto":Z
    .restart local v22    # "useCheckinFormat":Z
    const-string v0, "-c"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 2252
    const/4 v3, 0x1

    .line 2253
    .end local v22    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    or-int/lit8 v2, v2, 0x10

    move/from16 v4, v18

    goto/16 :goto_22b

    .line 2254
    .end local v3    # "useCheckinFormat":Z
    .restart local v22    # "useCheckinFormat":Z
    :cond_d1
    const-string v0, "--proto"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 2255
    const/4 v4, 0x1

    move/from16 v3, v22

    .end local v18    # "toProto":Z
    .restart local v4    # "toProto":Z
    goto/16 :goto_22b

    .line 2256
    .end local v4    # "toProto":Z
    .restart local v18    # "toProto":Z
    :cond_de
    const-string v0, "--charged"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 2257
    or-int/lit8 v2, v2, 0x2

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_22b

    .line 2258
    :cond_ee
    const-string v0, "--daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 2259
    or-int/lit8 v2, v2, 0x4

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_22b

    .line 2260
    :cond_fe
    const-string v0, "--reset"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 2261
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2262
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2263
    :try_start_10c
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 2264
    const-string v0, "Battery stats reset."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2265
    const/4 v6, 0x1

    .line 2266
    monitor-exit v3
    :try_end_118
    .catchall {:try_start_10c .. :try_end_118} :catchall_127

    .line 2267
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string v3, "dump"

    const/16 v4, 0x3f

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_22b

    .line 2266
    :catchall_127
    move-exception v0

    :try_start_128
    monitor-exit v3
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_127

    throw v0

    .line 2268
    :cond_12a
    const-string v0, "--write"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 2269
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2270
    const-string v0, "dump"

    const/16 v3, 0x3f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2271
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2272
    :try_start_13f
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 2273
    const-string v0, "Battery stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2274
    const/4 v6, 0x1

    .line 2275
    monitor-exit v3

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_22b

    :catchall_151
    move-exception v0

    monitor-exit v3
    :try_end_153
    .catchall {:try_start_13f .. :try_end_153} :catchall_151

    throw v0

    .line 2276
    :cond_154
    const-string v0, "--new-daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 2277
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2278
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2279
    :try_start_162
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 2280
    const-string v0, "New daily stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    const/4 v6, 0x1

    .line 2282
    monitor-exit v3

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_22b

    :catchall_174
    move-exception v0

    monitor-exit v3
    :try_end_176
    .catchall {:try_start_162 .. :try_end_176} :catchall_174

    throw v0

    .line 2283
    :cond_177
    const-string v0, "--read-daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 2284
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2285
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2286
    :try_start_185
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 2287
    const-string v0, "Last daily stats read."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    const/4 v6, 0x1

    .line 2289
    monitor-exit v3

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_22b

    :catchall_197
    move-exception v0

    monitor-exit v3
    :try_end_199
    .catchall {:try_start_185 .. :try_end_199} :catchall_197

    throw v0

    .line 2290
    :cond_19a
    const-string v0, "--enable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_267

    const-string v0, "enable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    goto/16 :goto_267

    .line 2297
    :cond_1ac
    const-string v0, "--disable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_248

    const-string v0, "disable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    goto/16 :goto_248

    .line 2304
    :cond_1be
    const-string v0, "-h"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 2305
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2306
    return-void

    .line 2307
    :cond_1ca
    const-string v0, "--settings"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 2308
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    .line 2309
    return-void

    .line 2310
    :cond_1d6
    const-string v0, "--cpu"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 2311
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    .line 2312
    return-void

    .line 2313
    :cond_1e2
    const-string v0, "-a"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 2314
    or-int/lit8 v2, v2, 0x20

    move/from16 v4, v18

    move/from16 v3, v22

    goto :goto_22b

    .line 2315
    :cond_1f1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_218

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x2d

    if-ne v3, v0, :cond_218

    .line 2316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2318
    return-void

    .line 2322
    :cond_218
    :try_start_218
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2323
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2322
    invoke-virtual {v0, v12, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_226
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_218 .. :try_end_226} :catch_22f

    move v11, v0

    .line 2328
    move/from16 v4, v18

    move/from16 v3, v22

    .line 2220
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    :goto_22b
    const/4 v0, 0x1

    add-int/2addr v8, v0

    goto/16 :goto_3c

    .line 2324
    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .restart local v12    # "arg":Ljava/lang/String;
    .restart local v18    # "toProto":Z
    .restart local v22    # "useCheckinFormat":Z
    :catch_22f
    move-exception v0

    .line 2325
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2326
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2327
    return-void

    .line 2298
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_248
    :goto_248
    const/4 v0, 0x0

    invoke-direct {v1, v9, v8, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 2299
    .end local v8    # "i":I
    .local v0, "i":I
    if-gez v0, :cond_250

    .line 2300
    return-void

    .line 2302
    :cond_250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    return-void

    .line 2291
    .end local v0    # "i":I
    .restart local v8    # "i":I
    :cond_267
    :goto_267
    const/4 v0, 0x1

    invoke-direct {v1, v9, v8, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 2292
    .end local v8    # "i":I
    .restart local v0    # "i":I
    if-gez v0, :cond_26f

    .line 2293
    return-void

    .line 2295
    :cond_26f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2296
    return-void

    .line 2220
    .end local v0    # "i":I
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v8    # "i":I
    :cond_286
    move/from16 v22, v3

    move/from16 v18, v4

    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .restart local v18    # "toProto":Z
    .restart local v22    # "useCheckinFormat":Z
    move v12, v6

    move v13, v7

    move/from16 v19, v11

    move v11, v5

    goto :goto_29b

    .line 2219
    .end local v8    # "i":I
    .end local v14    # "historyStart":J
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .local v0, "flags":I
    .local v2, "useCheckinFormat":Z
    .local v3, "toProto":Z
    .local v4, "isRealCheckin":Z
    .local v5, "noOutput":Z
    .local v6, "writeData":Z
    .local v7, "historyStart":J
    :cond_290
    move/from16 v22, v2

    move/from16 v18, v3

    move v12, v5

    move v13, v6

    move-wide v14, v7

    move/from16 v19, v11

    move v2, v0

    move v11, v4

    .line 2332
    .end local v0    # "flags":I
    .end local v3    # "toProto":Z
    .end local v4    # "isRealCheckin":Z
    .end local v5    # "noOutput":Z
    .end local v6    # "writeData":Z
    .end local v7    # "historyStart":J
    .local v2, "flags":I
    .local v11, "isRealCheckin":Z
    .local v12, "noOutput":Z
    .local v13, "writeData":Z
    .restart local v14    # "historyStart":J
    .restart local v18    # "toProto":Z
    .local v19, "reqUid":I
    .restart local v22    # "useCheckinFormat":Z
    :goto_29b
    if-eqz v12, :cond_29e

    .line 2333
    return-void

    .line 2336
    :cond_29e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2338
    .local v20, "ident":J
    :try_start_2a2
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    .line 2339
    or-int/lit8 v2, v2, 0x40

    .line 2341
    :cond_2ac
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2343
    const-string v0, "dump"

    const/16 v3, 0x3f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_2b6
    .catchall {:try_start_2a2 .. :try_end_2b6} :catchall_46c

    .line 2345
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2346
    nop

    .line 2348
    if-ltz v19, :cond_2c7

    .line 2351
    and-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_2c7

    .line 2352
    or-int/lit8 v0, v2, 0x2

    .line 2354
    .end local v2    # "flags":I
    .restart local v0    # "flags":I
    and-int/lit8 v2, v0, -0x11

    move/from16 v17, v2

    .end local v0    # "flags":I
    .restart local v2    # "flags":I
    goto :goto_2c9

    .line 2358
    :cond_2c7
    move/from16 v17, v2

    .end local v2    # "flags":I
    .local v17, "flags":I
    :goto_2c9
    const/high16 v0, 0x420000

    if-eqz v18, :cond_380

    .line 2359
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 2361
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v11, :cond_35a

    .line 2364
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 2365
    :try_start_2de
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_2e6
    .catchall {:try_start_2de .. :try_end_2e6} :catchall_357

    if-eqz v0, :cond_355

    .line 2367
    :try_start_2e8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2368
    .local v0, "raw":[B
    if-eqz v0, :cond_335

    .line 2369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2370
    .local v4, "in":Landroid/os/Parcel;
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2371
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2372
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v24, 0x0

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v28, v7

    invoke-direct/range {v23 .. v28}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .line 2375
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v5, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 2376
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2377
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, p1

    move-object/from16 v26, v2

    move/from16 v27, v17

    move-wide/from16 v28, v14

    invoke-virtual/range {v23 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 2379
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->delete()V
    :try_end_333
    .catch Ljava/io/IOException; {:try_start_2e8 .. :try_end_333} :catch_336
    .catch Landroid/os/ParcelFormatException; {:try_start_2e8 .. :try_end_333} :catch_336
    .catchall {:try_start_2e8 .. :try_end_333} :catchall_357

    .line 2380
    :try_start_333
    monitor-exit v3

    return-void

    .line 2385
    .end local v0    # "raw":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v5    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_335
    goto :goto_355

    .line 2382
    :catch_336
    move-exception v0

    .line 2383
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reading checkin file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 2384
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2383
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2387
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_355
    :goto_355
    monitor-exit v3

    goto :goto_35a

    :catchall_357
    move-exception v0

    monitor-exit v3
    :try_end_359
    .catchall {:try_start_333 .. :try_end_359} :catchall_357

    throw v0

    .line 2390
    :cond_35a
    :goto_35a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2391
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2392
    :try_start_360
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v25, p1

    move-object/from16 v26, v2

    move/from16 v27, v17

    move-wide/from16 v28, v14

    invoke-virtual/range {v23 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 2393
    if-eqz v13, :cond_37a

    .line 2394
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 2396
    :cond_37a
    monitor-exit v3

    .line 2398
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto/16 :goto_464

    .line 2396
    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_37d
    move-exception v0

    monitor-exit v3
    :try_end_37f
    .catchall {:try_start_360 .. :try_end_37f} :catchall_37d

    throw v0

    .line 2398
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_380
    if-eqz v22, :cond_446

    .line 2399
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v23

    .line 2401
    .local v23, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v11, :cond_420

    .line 2404
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v7

    .line 2405
    :try_start_393
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_39b
    .catchall {:try_start_393 .. :try_end_39b} :catchall_419

    if-eqz v0, :cond_415

    .line 2407
    :try_start_39d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2408
    .local v0, "raw":[B
    if-eqz v0, :cond_3f0

    .line 2409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v8, v2

    .line 2410
    .local v8, "in":Landroid/os/Parcel;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2411
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2412
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v25, 0x0

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v27, 0x0

    const/16 v28, 0x0

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v29, v4

    invoke-direct/range {v24 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    move-object v6, v2

    .line 2415
    .local v6, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 2416
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 2417
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_3d4
    .catch Ljava/io/IOException; {:try_start_39d .. :try_end_3d4} :catch_3f3
    .catch Landroid/os/ParcelFormatException; {:try_start_39d .. :try_end_3d4} :catch_3f3
    .catchall {:try_start_39d .. :try_end_3d4} :catchall_419

    move-object v2, v6

    move-object/from16 v4, p2

    move-object/from16 v5, v23

    move-object/from16 v16, v6

    .end local v6    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .local v16, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move/from16 v6, v17

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v8    # "in":Landroid/os/Parcel;
    .local v25, "in":Landroid/os/Parcel;
    move-wide v7, v14

    :try_start_3e2
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 2419
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_3ec
    .catch Ljava/io/IOException; {:try_start_3e2 .. :try_end_3ec} :catch_3ee
    .catch Landroid/os/ParcelFormatException; {:try_start_3e2 .. :try_end_3ec} :catch_3ee
    .catchall {:try_start_3e2 .. :try_end_3ec} :catchall_41e

    .line 2420
    :try_start_3ec
    monitor-exit v24

    return-void

    .line 2422
    .end local v0    # "raw":[B
    .end local v16    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v25    # "in":Landroid/os/Parcel;
    :catch_3ee
    move-exception v0

    goto :goto_3f6

    .line 2408
    .restart local v0    # "raw":[B
    :cond_3f0
    move-object/from16 v24, v7

    .line 2425
    .end local v0    # "raw":[B
    goto :goto_417

    .line 2422
    :catch_3f3
    move-exception v0

    move-object/from16 v24, v7

    .line 2423
    .local v0, "e":Ljava/lang/Exception;
    :goto_3f6
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 2424
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2423
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_417

    .line 2405
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_415
    move-object/from16 v24, v7

    .line 2427
    :goto_417
    monitor-exit v24

    goto :goto_420

    :catchall_419
    move-exception v0

    move-object/from16 v24, v7

    :goto_41c
    monitor-exit v24
    :try_end_41d
    .catchall {:try_start_3ec .. :try_end_41d} :catchall_41e

    throw v0

    :catchall_41e
    move-exception v0

    goto :goto_41c

    .line 2430
    :cond_420
    :goto_420
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2431
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 2432
    :try_start_426
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_42a
    .catchall {:try_start_426 .. :try_end_42a} :catchall_43f

    move-object/from16 v4, p2

    move-object/from16 v5, v23

    move/from16 v6, v17

    move-object/from16 v16, v7

    move-wide v7, v14

    :try_start_433
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 2433
    if-eqz v13, :cond_43d

    .line 2434
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 2436
    :cond_43d
    monitor-exit v16

    .line 2438
    .end local v23    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_464

    .line 2436
    .restart local v23    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_43f
    move-exception v0

    move-object/from16 v16, v7

    :goto_442
    monitor-exit v16
    :try_end_443
    .catchall {:try_start_433 .. :try_end_443} :catchall_444

    throw v0

    :catchall_444
    move-exception v0

    goto :goto_442

    .line 2440
    .end local v23    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_446
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2441
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 2442
    :try_start_44c
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_450
    .catchall {:try_start_44c .. :try_end_450} :catchall_465

    move-object/from16 v4, p2

    move/from16 v5, v17

    move/from16 v6, v19

    move-object/from16 v16, v7

    move-wide v7, v14

    :try_start_459
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 2443
    if-eqz v13, :cond_463

    .line 2444
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 2446
    :cond_463
    monitor-exit v16

    .line 2449
    :goto_464
    return-void

    .line 2446
    :catchall_465
    move-exception v0

    move-object/from16 v16, v7

    :goto_468
    monitor-exit v16
    :try_end_469
    .catchall {:try_start_459 .. :try_end_469} :catchall_46a

    throw v0

    :catchall_46a
    move-exception v0

    goto :goto_468

    .line 2345
    .end local v17    # "flags":I
    .local v2, "flags":I
    :catchall_46c
    move-exception v0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2346
    throw v0
.end method

.method public enforceCallingPermission()V
    .registers 6

    .line 2040
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2041
    return-void

    .line 2043
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 2044
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 2043
    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2045
    return-void
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .registers 3
    .param p1, "rpmStats"    # Lcom/android/internal/os/RpmStats;

    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 146
    nop

    .line 147
    return-void

    .line 145
    :catchall_5
    move-exception v0

    .line 146
    throw v0
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .registers 3
    .param p1, "railStats"    # Lcom/android/internal/os/RailStats;

    .line 153
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 156
    nop

    .line 157
    return-void

    .line 155
    :catchall_5
    move-exception v0

    .line 156
    throw v0
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .line 2028
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 4

    .line 2034
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .registers 3

    .line 2457
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2458
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2459
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2460
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .registers 3

    .line 2481
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2482
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2483
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2484
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1
.end method

.method getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .registers 6
    .param p1, "requestUid"    # I

    .line 2572
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 2573
    .local v0, "writer":Lcom/android/server/am/HealthStatsBatteryStatsWriter;
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 2574
    .local v1, "uidWriter":Landroid/os/health/HealthStatsWriter;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    .line 2575
    .local v2, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v2, :cond_1f

    .line 2576
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 2578
    :cond_1f
    new-instance v3, Landroid/os/health/HealthStatsParceler;

    invoke-direct {v3, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object v3
.end method

.method public getPlatformLowPowerStats()Ljava/lang/String;
    .registers 6

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 164
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 165
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 166
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 167
    .local v0, "bytesWritten":I
    if-gez v0, :cond_19

    .line 168
    const/4 v1, 0x0

    return-object v1

    .line 169
    :cond_19
    if-nez v0, :cond_1e

    .line 170
    const-string v1, "Empty"

    return-object v1

    .line 172
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 173
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 174
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 175
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object v1

    .line 177
    .end local v0    # "bytesWritten":I
    :catchall_39
    move-exception v0

    .line 178
    throw v0
.end method

.method public getServiceType()I
    .registers 2

    .line 338
    const/16 v0, 0x9

    return v0
.end method

.method public getStatistics()[B
    .registers 5

    .line 506
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 513
    .local v0, "out":Landroid/os/Parcel;
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 514
    const-string/jumbo v1, "get-stats"

    const/16 v2, 0x3f

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 515
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 516
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 517
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_29

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 519
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    return-object v1

    .line 517
    .end local v1    # "data":[B
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .registers 7

    .line 524
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 531
    .local v0, "out":Landroid/os/Parcel;
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 532
    const-string/jumbo v1, "get-stats"

    const/16 v3, 0x3f

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 533
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 534
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 535
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_38

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 538
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    :try_start_28
    const-string v3, "battery-stats"

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_2f

    return-object v2

    .line 541
    :catch_2f
    move-exception v3

    .line 542
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    return-object v2

    .line 535
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public getSubsystemLowPowerStats()Ljava/lang/String;
    .registers 6

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 186
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 187
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 188
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 189
    .local v0, "bytesWritten":I
    if-gez v0, :cond_19

    .line 190
    const/4 v1, 0x0

    return-object v1

    .line 191
    :cond_19
    if-nez v0, :cond_1e

    .line 192
    const-string v1, "Empty"

    return-object v1

    .line 194
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 195
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 196
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 197
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object v1

    .line 199
    .end local v0    # "bytesWritten":I
    :catchall_39
    move-exception v0

    .line 200
    throw v0
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .registers 3

    .line 2469
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2470
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2471
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2472
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public initPowerManagement()V
    .registers 9

    .line 301
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 302
    .local v0, "powerMgr":Landroid/os/PowerManagerInternal;
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 303
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 304
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 305
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 304
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(ZJJ)V

    .line 307
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_2d

    .line 308
    new-instance v1, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 309
    return-void

    .line 307
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public isCharging()Z
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 549
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 550
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isOnBattery()Z
    .registers 2

    .line 1943
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$addIsolatedUid$6$BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 419
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 420
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(IIJJ)V

    .line 421
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteAlarmFinish$21$BatteryStatsService(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "localWs"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 689
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 690
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 691
    monitor-exit v2

    .line 692
    return-void

    .line 691
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteAlarmStart$20$BatteryStatsService(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "localWs"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 675
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 676
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 677
    monitor-exit v2

    .line 678
    return-void

    .line 677
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteBleDutyScanStarted$95$BatteryStatsService(Landroid/os/WorkSource;ZIJJ)V
    .registers 19
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "dutyCycle"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1801
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1802
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothDutyScanStartedFromSourceLocked(Landroid/os/WorkSource;ZIJJ)V

    .line 1804
    monitor-exit v2

    .line 1805
    return-void

    .line 1804
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteBleDutyScanStopped$96$BatteryStatsService(Landroid/os/WorkSource;ZIJJ)V
    .registers 19
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "isUnOptimized"    # Z
    .param p3, "dutyCycle"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1816
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1817
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothDutyScanStoppedFromSourceLocked(Landroid/os/WorkSource;ZIJJ)V

    .line 1819
    monitor-exit v2

    .line 1820
    return-void

    .line 1819
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteBleScanResults$100$BatteryStatsService(Landroid/os/WorkSource;IJJ)V
    .registers 15
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1879
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1880
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 1882
    monitor-exit v0

    .line 1883
    return-void

    .line 1882
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteBleScanStarted$97$BatteryStatsService(Landroid/os/WorkSource;ZJJ)V
    .registers 15
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1833
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1834
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 1836
    monitor-exit v0

    .line 1837
    return-void

    .line 1836
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteBleScanStopped$98$BatteryStatsService(Landroid/os/WorkSource;ZJJ)V
    .registers 15
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "uptime"    # J
    .param p5, "elapsedRealtime"    # J

    .line 1849
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1850
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 1852
    monitor-exit v0

    .line 1853
    return-void

    .line 1852
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteBluetoothControllerActivity$102$BatteryStatsService(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .registers 13
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1917
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1918
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    .line 1919
    monitor-exit v0

    .line 1920
    return-void

    .line 1919
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteChangeWakelockFromSource$25$BatteryStatsService(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 35
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "localNewWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z
    .param p12, "elapsedRealtime"    # J
    .param p14, "uptime"    # J

    .line 753
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 754
    :try_start_5
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    invoke-virtual/range {v3 .. v18}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 757
    monitor-exit v2

    .line 758
    return-void

    .line 757
    :catchall_26
    move-exception v0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public synthetic lambda$noteConnectivityChanged$44$BatteryStatsService(ILjava/lang/String;JJ)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1028
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1029
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;JJ)V

    .line 1030
    monitor-exit v0

    .line 1031
    return-void

    .line 1030
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteCurrentTimeChanged$112$BatteryStatsService(JJJ)V
    .registers 15
    .param p1, "currentTime"    # J
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 2705
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2706
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteCurrentTimeChangedLocked(JJJ)V

    .line 2707
    monitor-exit v0

    .line 2708
    return-void

    .line 2707
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteDeviceIdleMode$92$BatteryStatsService(ILjava/lang/String;IJJ)V
    .registers 19
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1758
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1759
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;IJJ)V

    .line 1761
    monitor-exit v2

    .line 1762
    return-void

    .line 1761
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteDualScreenState$38$BatteryStatsService(IJ)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "elapsedRealtime"    # J

    .line 950
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 951
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDualScreenStateLocked(IJ)V

    .line 952
    monitor-exit v0

    .line 953
    return-void

    .line 952
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$noteEvent$13$BatteryStatsService(ILjava/lang/String;IJJ)V
    .registers 19
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 573
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 574
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;IJJ)V

    .line 575
    monitor-exit v2

    .line 576
    return-void

    .line 575
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteFlashlightOff$62$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1293
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1294
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(IJJ)V

    .line 1295
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 1296
    const/16 v0, 0x1a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1298
    return-void

    .line 1295
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteFlashlightOn$61$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1278
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1279
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(IJJ)V

    .line 1280
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 1281
    const/16 v0, 0x1a

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1283
    return-void

    .line 1280
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteFullWifiLockAcquired$78$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1565
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1566
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

    .line 1567
    monitor-exit v0

    .line 1568
    return-void

    .line 1567
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteFullWifiLockAcquiredFromSource$84$BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1644
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1645
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1647
    monitor-exit v0

    .line 1648
    return-void

    .line 1647
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteFullWifiLockReleased$79$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1578
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1579
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    .line 1580
    monitor-exit v0

    .line 1581
    return-void

    .line 1580
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteFullWifiLockReleasedFromSource$85$BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1659
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1660
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1662
    monitor-exit v0

    .line 1663
    return-void

    .line 1662
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteGpsChanged$35$BatteryStatsService(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 15
    .param p1, "localOldWs"    # Landroid/os/WorkSource;
    .param p2, "localNewWs"    # Landroid/os/WorkSource;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 909
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 910
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 911
    monitor-exit v0

    .line 912
    return-void

    .line 911
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteGpsSignalQuality$36$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "signalLevel"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 921
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 922
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsSignalQualityLocked(IJJ)V

    .line 923
    monitor-exit v0

    .line 924
    return-void

    .line 923
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteInteractive$43$BatteryStatsService(ZJ)V
    .registers 6
    .param p1, "interactive"    # Z
    .param p2, "elapsedRealtime"    # J

    .line 1015
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1016
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(ZJ)V

    .line 1017
    monitor-exit v0

    .line 1018
    return-void

    .line 1017
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$noteJobFinish$17$BatteryStatsService(Ljava/lang/String;IIJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 631
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 632
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;IIJJ)V

    .line 633
    monitor-exit v2

    .line 634
    return-void

    .line 633
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteJobStart$16$BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 617
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;IJJ)V

    .line 619
    monitor-exit v0

    .line 620
    return-void

    .line 619
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteJobsDeferred$18$BatteryStatsService(IIJJJ)V
    .registers 21
    .param p1, "uid"    # I
    .param p2, "numDeferred"    # I
    .param p3, "sinceLast"    # J
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 644
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 645
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobsDeferredLocked(IIJJJ)V

    .line 647
    monitor-exit v2

    .line 648
    return-void

    .line 647
    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public synthetic lambda$noteLongPartialWakelockFinish$29$BatteryStatsService(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 819
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 820
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 822
    monitor-exit v2

    .line 823
    return-void

    .line 822
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteLongPartialWakelockFinishFromSource$30$BatteryStatsService(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "localWs"    # Landroid/os/WorkSource;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 836
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 837
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 839
    monitor-exit v2

    .line 840
    return-void

    .line 839
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteLongPartialWakelockStart$27$BatteryStatsService(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 786
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 787
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 789
    monitor-exit v2

    .line 790
    return-void

    .line 789
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteLongPartialWakelockStartFromSource$28$BatteryStatsService(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "localWs"    # Landroid/os/WorkSource;
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 803
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 804
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 806
    monitor-exit v2

    .line 807
    return-void

    .line 806
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$noteMobileRadioPowerState$45$BatteryStatsService(IJIJJ)V
    .registers 21
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 1043
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1044
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJIJJ)Z

    move-result v0

    .line 1046
    .local v0, "update":Z
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1f

    .line 1048
    if-eqz v0, :cond_1e

    .line 1049
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v3, 0x4

    const-string/jumbo v4, "modem-data"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1051
    :cond_1e
    return-void

    .line 1046
    .end local v0    # "update":Z
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public synthetic lambda$noteMobileRadioStateFor5G$39$BatteryStatsService(ZJJ)V
    .registers 13
    .param p1, "state"    # Z
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 963
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 964
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioStateFor5GLocked(ZJJ)V

    .line 965
    monitor-exit v0

    .line 966
    return-void

    .line 965
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteModemControllerActivity$103$BatteryStatsService(Landroid/telephony/ModemActivityInfo;JJ)V
    .registers 12
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1937
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;JJ)V

    .line 1938
    return-void
.end method

.method public synthetic lambda$noteNetworkInterfaceType$90$BatteryStatsService(Ljava/lang/String;I)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .line 1730
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 1731
    return-void
.end method

.method public synthetic lambda$noteNetworkStatsEnabled$91$BatteryStatsService()V
    .registers 4

    .line 1744
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v1, "network-stats-enabled"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1747
    return-void
.end method

.method public synthetic lambda$notePackageInstalled$93$BatteryStatsService(Ljava/lang/String;JJJ)V
    .registers 19
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1772
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1773
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;JJJ)V

    .line 1775
    monitor-exit v2

    .line 1776
    return-void

    .line 1775
    :catchall_10
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public synthetic lambda$notePackageUninstalled$94$BatteryStatsService(Ljava/lang/String;JJ)V
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1786
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1787
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;JJ)V

    .line 1788
    monitor-exit v0

    .line 1789
    return-void

    .line 1788
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$notePhoneDataConnectionState$49$BatteryStatsService(IZIJJ)V
    .registers 19
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "serviceType"    # I
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 1101
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1102
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZIJJ)V

    .line 1104
    monitor-exit v2

    .line 1105
    return-void

    .line 1104
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public synthetic lambda$notePhoneOff$47$BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1074
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1075
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked(JJ)V

    .line 1076
    monitor-exit v0

    .line 1077
    return-void

    .line 1076
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$notePhoneOn$46$BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1061
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1062
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked(JJ)V

    .line 1063
    monitor-exit v0

    .line 1064
    return-void

    .line 1063
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$notePhoneSignalStrength$48$BatteryStatsService(Landroid/telephony/SignalStrength;JJ)V
    .registers 13
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1087
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1088
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;JJ)V

    .line 1089
    monitor-exit v0

    .line 1090
    return-void

    .line 1089
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$notePhoneState$50$BatteryStatsService(IJJ)V
    .registers 15
    .param p1, "state"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1115
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1116
    .local v0, "simState":I
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 1117
    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, v0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(IIJJ)V

    .line 1118
    monitor-exit v8

    .line 1119
    return-void

    .line 1118
    :catchall_1c
    move-exception v1

    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public synthetic lambda$noteProcessAnr$10$BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 469
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 470
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;IJJ)V

    .line 471
    monitor-exit v0

    .line 472
    return-void

    .line 471
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteProcessCrash$9$BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 455
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 456
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;IJJ)V

    .line 457
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteProcessDied$114$BatteryStatsService(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 2737
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2738
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessDiedLocked(II)V

    .line 2739
    monitor-exit v0

    .line 2740
    return-void

    .line 2739
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$noteProcessFinish$11$BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 481
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 482
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;IJJ)V

    .line 483
    monitor-exit v0

    .line 484
    return-void

    .line 483
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteProcessStart$8$BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 441
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 442
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;IJJ)V

    .line 443
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteResetAudio$59$BatteryStatsService(JJ)V
    .registers 9
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1248
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked(JJ)V

    .line 1250
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 1251
    const/16 v0, 0x17

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1253
    return-void

    .line 1250
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public synthetic lambda$noteResetBleScan$99$BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1864
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1865
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetBluetoothScanLocked(JJ)V

    .line 1866
    monitor-exit v0

    .line 1867
    return-void

    .line 1866
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$noteResetCamera$65$BatteryStatsService(JJ)V
    .registers 9
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1359
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1360
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked(JJ)V

    .line 1361
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 1362
    const/16 v0, 0x19

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1364
    return-void

    .line 1361
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public synthetic lambda$noteResetFlashlight$66$BatteryStatsService(JJ)V
    .registers 9
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1374
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1375
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked(JJ)V

    .line 1376
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 1377
    const/16 v0, 0x1a

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1379
    return-void

    .line 1376
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public synthetic lambda$noteResetGps$69$BatteryStatsService(J)V
    .registers 6
    .param p1, "elapsedRealtime"    # J

    .line 1417
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetGpsLocked(J)V

    .line 1419
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 1420
    const v0, 0x186a1

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1422
    return-void

    .line 1419
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public synthetic lambda$noteResetVideo$60$BatteryStatsService(JJ)V
    .registers 9
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1263
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked(JJ)V

    .line 1265
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 1266
    const/16 v0, 0x18

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1268
    return-void

    .line 1265
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public synthetic lambda$noteScreenBrightness$40$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "brightness"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 976
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 977
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(IJJ)V

    .line 978
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 979
    const/16 v0, 0x9

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 980
    return-void

    .line 978
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public synthetic lambda$noteScreenState$37$BatteryStatsService(IJJJ)V
    .registers 19
    .param p1, "state"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "currentTime"    # J

    .line 936
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 937
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(IJJJ)V

    .line 938
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_16

    .line 939
    const/16 v0, 0x1d

    move v3, p1

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 941
    return-void

    .line 938
    :catchall_16
    move-exception v0

    move v3, p1

    :goto_18
    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1a

    throw v0

    :catchall_1a
    move-exception v0

    goto :goto_18
.end method

.method public synthetic lambda$noteServiceStartLaunch$118$BatteryStatsService(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;J)V
    .registers 6
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p2, "uptime"    # J

    .line 2781
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2782
    :try_start_3
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked(J)V

    .line 2783
    monitor-exit v0

    .line 2784
    return-void

    .line 2783
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$noteServiceStartRunning$116$BatteryStatsService(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;J)V
    .registers 6
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p2, "uptime"    # J

    .line 2759
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2760
    :try_start_3
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked(J)V

    .line 2761
    monitor-exit v0

    .line 2762
    return-void

    .line 2761
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$noteServiceStopLaunch$119$BatteryStatsService(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;J)V
    .registers 6
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p2, "uptime"    # J

    .line 2792
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2793
    :try_start_3
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked(J)V

    .line 2794
    monitor-exit v0

    .line 2795
    return-void

    .line 2794
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$noteServiceStopRunning$117$BatteryStatsService(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;J)V
    .registers 6
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p2, "uptime"    # J

    .line 2770
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2771
    :try_start_3
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked(J)V

    .line 2772
    monitor-exit v0

    .line 2773
    return-void

    .line 2772
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$noteStartAudio$55$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1188
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1189
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(IJJ)V

    .line 1190
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 1191
    const/16 v0, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1193
    return-void

    .line 1190
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteStartCamera$63$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1309
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1310
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(IJJ)V

    .line 1311
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 1312
    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1314
    return-void

    .line 1311
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteStartGps$67$BatteryStatsService(IJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J

    .line 1389
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1390
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsOnLocked(IJ)V

    .line 1391
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 1392
    const v0, 0x186a1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1394
    return-void

    .line 1391
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public synthetic lambda$noteStartSensor$31$BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 850
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 851
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(IIJJ)V

    .line 852
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 853
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 855
    return-void

    .line 852
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteStartTxPowerSharing$53$BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1160
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1161
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartTxPowerSharingLocked(JJ)V

    .line 1162
    monitor-exit v0

    .line 1163
    return-void

    .line 1162
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$noteStartVideo$57$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1219
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(IJJ)V

    .line 1220
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 1221
    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1223
    return-void

    .line 1220
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteStartWakelock$22$BatteryStatsService(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 26
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .line 703
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 704
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 706
    monitor-exit v2

    .line 707
    return-void

    .line 706
    :catchall_1c
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public synthetic lambda$noteStartWakelockFromSource$24$BatteryStatsService(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 25
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .line 734
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 735
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 737
    monitor-exit v2

    .line 738
    return-void

    .line 737
    :catchall_1a
    move-exception v0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public synthetic lambda$noteStopAudio$56$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1203
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(IJJ)V

    .line 1205
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 1206
    const/16 v0, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1208
    return-void

    .line 1205
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteStopCamera$64$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1335
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1336
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(IJJ)V

    .line 1337
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 1338
    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1340
    return-void

    .line 1337
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteStopGps$68$BatteryStatsService(IJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J

    .line 1403
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1404
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsOffLocked(IJ)V

    .line 1405
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 1406
    const v0, 0x186a1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1408
    return-void

    .line 1405
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public synthetic lambda$noteStopSensor$32$BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "sensor"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 865
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 866
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(IIJJ)V

    .line 867
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 868
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 870
    return-void

    .line 867
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteStopTxPowerSharing$54$BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1174
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopTxPowerSharingLocked(JJ)V

    .line 1176
    monitor-exit v0

    .line 1177
    return-void

    .line 1176
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$noteStopVideo$58$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1233
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1234
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(IJJ)V

    .line 1235
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 1236
    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 1238
    return-void

    .line 1235
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteStopWakelock$23$BatteryStatsService(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 24
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .line 718
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 719
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 721
    monitor-exit v2

    .line 722
    return-void

    .line 721
    :catchall_19
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public synthetic lambda$noteStopWakelockFromSource$26$BatteryStatsService(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 23
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .line 770
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 771
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 773
    monitor-exit v2

    .line 774
    return-void

    .line 773
    :catchall_17
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public synthetic lambda$noteSyncFinish$15$BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 601
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 602
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;IJJ)V

    .line 603
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 604
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 606
    return-void

    .line 603
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteSyncStart$14$BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 586
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 587
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;IJJ)V

    .line 588
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 589
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, p1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 591
    return-void

    .line 588
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public synthetic lambda$noteUidProcessState$12$BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "state"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 496
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 497
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteUidProcessStateLocked(IIJJ)V

    .line 498
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteUserActivity$41$BatteryStatsService(IIJJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "event"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 990
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 991
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(IIJJ)V

    .line 992
    monitor-exit v0

    .line 993
    return-void

    .line 992
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteVibratorOff$34$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 893
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 894
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(IJJ)V

    .line 895
    monitor-exit v0

    .line 896
    return-void

    .line 895
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteVibratorOn$33$BatteryStatsService(IJJJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J
    .param p4, "elapsedRealtime"    # J
    .param p6, "uptime"    # J

    .line 880
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 881
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJJJ)V

    .line 882
    monitor-exit v2

    .line 883
    return-void

    .line 882
    :catchall_10
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public synthetic lambda$noteWakeUp$42$BatteryStatsService(Ljava/lang/String;IJJ)V
    .registers 15
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1004
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;IJJ)V

    .line 1005
    monitor-exit v0

    .line 1006
    return-void

    .line 1005
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteWakupAlarm$19$BatteryStatsService(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .registers 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "localWs"    # Landroid/os/WorkSource;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 660
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 661
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    .line 663
    monitor-exit v2

    .line 664
    return-void

    .line 663
    :catchall_14
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public synthetic lambda$noteWifiApMode$71$BatteryStatsService(ZJJ)V
    .registers 13
    .param p1, "enabled"    # Z
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1459
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1460
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiApModeLocked(ZJJ)V

    .line 1461
    monitor-exit v0

    .line 1462
    return-void

    .line 1461
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteWifiBatchedScanStartedFromSource$88$BatteryStatsService(Landroid/os/WorkSource;IJJ)V
    .registers 15
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1702
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1703
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 1705
    monitor-exit v0

    .line 1706
    return-void

    .line 1705
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$noteWifiBatchedScanStoppedFromSource$89$BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1717
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1720
    monitor-exit v0

    .line 1721
    return-void

    .line 1720
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteWifiControllerActivity$101$BatteryStatsService(Landroid/os/connectivity/WifiActivityEnergyInfo;JJ)V
    .registers 12
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1900
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJ)V

    .line 1901
    return-void
.end method

.method public synthetic lambda$noteWifiMulticastDisabled$83$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1630
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1631
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(IJJ)V

    .line 1632
    monitor-exit v0

    .line 1633
    return-void

    .line 1632
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteWifiMulticastEnabled$82$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1617
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(IJJ)V

    .line 1619
    monitor-exit v0

    .line 1620
    return-void

    .line 1619
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteWifiOff$52$BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1144
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked(JJ)V

    .line 1146
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 1147
    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1149
    return-void

    .line 1146
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public synthetic lambda$noteWifiOn$51$BatteryStatsService(JJ)V
    .registers 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J

    .line 1129
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1130
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked(JJ)V

    .line 1131
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 1132
    const/16 v0, 0x71

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1134
    return-void

    .line 1131
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public synthetic lambda$noteWifiRadioPowerState$70$BatteryStatsService(IJIJJ)V
    .registers 22
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J
    .param p4, "uid"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 1436
    move-object v1, p0

    move v11, p1

    iget-object v12, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 1437
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1439
    const/4 v0, 0x3

    const/4 v2, 0x2

    if-eq v11, v0, :cond_18

    if-ne v11, v2, :cond_14

    goto :goto_18

    .line 1441
    :cond_14
    const-string/jumbo v0, "inactive"

    goto :goto_1a

    :cond_18
    :goto_18
    const-string v0, "active"

    .line 1442
    .local v0, "type":Ljava/lang/String;
    :goto_1a
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi-data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1445
    .end local v0    # "type":Ljava/lang/String;
    :cond_31
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJIJJ)V

    .line 1447
    monitor-exit v12

    .line 1448
    return-void

    .line 1447
    :catchall_40
    move-exception v0

    monitor-exit v12
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public synthetic lambda$noteWifiRssiChanged$77$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "newRssi"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1552
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1553
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(IJJ)V

    .line 1554
    monitor-exit v0

    .line 1555
    return-void

    .line 1554
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteWifiRunning$72$BatteryStatsService(Landroid/os/WorkSource;JJLandroid/os/WorkSource;)V
    .registers 14
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "ws"    # Landroid/os/WorkSource;

    .line 1474
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1475
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;JJ)V

    .line 1476
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 1478
    const/16 v0, 0x72

    const/4 v1, 0x1

    invoke-static {v0, p6, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1480
    return-void

    .line 1476
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public synthetic lambda$noteWifiRunningChanged$73$BatteryStatsService(Landroid/os/WorkSource;Landroid/os/WorkSource;JJLandroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 19
    .param p1, "localOldWs"    # Landroid/os/WorkSource;
    .param p2, "localNewWs"    # Landroid/os/WorkSource;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J
    .param p7, "newWs"    # Landroid/os/WorkSource;
    .param p8, "oldWs"    # Landroid/os/WorkSource;

    .line 1492
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1493
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 1495
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1d

    .line 1496
    const/4 v0, 0x1

    const/16 v2, 0x72

    move-object/from16 v3, p7

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1498
    const/4 v0, 0x0

    move-object/from16 v4, p8

    invoke-static {v2, v4, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1500
    return-void

    .line 1495
    :catchall_1d
    move-exception v0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    :goto_22
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_24

    throw v0

    :catchall_24
    move-exception v0

    goto :goto_22
.end method

.method public synthetic lambda$noteWifiScanStarted$80$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1591
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1592
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

    .line 1593
    monitor-exit v0

    .line 1594
    return-void

    .line 1593
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteWifiScanStartedFromSource$86$BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1674
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1675
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1676
    monitor-exit v0

    .line 1677
    return-void

    .line 1676
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteWifiScanStopped$81$BatteryStatsService(IJJ)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1604
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1605
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    .line 1606
    monitor-exit v0

    .line 1607
    return-void

    .line 1606
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteWifiScanStoppedFromSource$87$BatteryStatsService(Landroid/os/WorkSource;JJ)V
    .registers 13
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 1688
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1689
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1690
    monitor-exit v0

    .line 1691
    return-void

    .line 1690
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$noteWifiState$75$BatteryStatsService(ILjava/lang/String;J)V
    .registers 7
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J

    .line 1525
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1526
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;J)V

    .line 1527
    monitor-exit v0

    .line 1528
    return-void

    .line 1527
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$noteWifiStopped$74$BatteryStatsService(Landroid/os/WorkSource;JJLandroid/os/WorkSource;)V
    .registers 14
    .param p1, "localWs"    # Landroid/os/WorkSource;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "ws"    # Landroid/os/WorkSource;

    .line 1511
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1512
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;JJ)V

    .line 1513
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 1514
    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-static {v0, p6, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1516
    return-void

    .line 1513
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public synthetic lambda$noteWifiSupplicantStateChanged$76$BatteryStatsService(IZJJ)V
    .registers 15
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1538
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1539
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZJJ)V

    .line 1541
    monitor-exit v0

    .line 1542
    return-void

    .line 1541
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$onCleanupUser$4$BatteryStatsService(IJ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "elapsedRealtime"    # J

    .line 397
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 398
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->onCleanupUserLocked(IJ)V

    .line 399
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$onLowPowerModeChanged$1$BatteryStatsService(Landroid/os/PowerSaveState;JJ)V
    .registers 13
    .param p1, "result"    # Landroid/os/PowerSaveState;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 347
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(ZJJ)V

    .line 350
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$onUserRemoved$5$BatteryStatsService(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 407
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 408
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 409
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$removeIsolatedUid$7$BatteryStatsService(II)V
    .registers 5
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 429
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 431
    monitor-exit v0

    .line 432
    return-void

    .line 431
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$removeUid$3$BatteryStatsService(IJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "elapsedRealtime"    # J

    .line 386
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 387
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(IJ)V

    .line 388
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$reportExcessiveCpu$115$BatteryStatsService(ILjava/lang/String;JJ)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uptimeSince"    # J
    .param p5, "cputimeUsed"    # J

    .line 2748
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2749
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V

    .line 2750
    monitor-exit v0

    .line 2751
    return-void

    .line 2750
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public synthetic lambda$scheduleWriteToDisk$2$BatteryStatsService()V
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleWrite()Ljava/util/concurrent/Future;

    .line 373
    return-void
.end method

.method public synthetic lambda$setBatteryState$104$BatteryStatsService(IIIIIIIIJIIIIZJJJ)V
    .registers 47
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "secEvent"    # I
    .param p12, "secOnline"    # I
    .param p13, "secCurrentEvent"    # I
    .param p14, "secTxShareEvent"    # I
    .param p15, "otgOnline"    # Z
    .param p16, "elapsedRealtime"    # J
    .param p18, "uptime"    # J
    .param p20, "currentTime"    # J

    .line 1985
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1986
    :try_start_5
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1989
    if-eqz p15, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move/from16 v18, v0

    .line 1986
    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    invoke-virtual/range {v3 .. v24}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJIIIIIJJJ)V

    .line 1991
    monitor-exit v2

    .line 1992
    return-void

    .line 1991
    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public synthetic lambda$setBatteryState$105$BatteryStatsService(IIIIIIIIJIIIIZJJJ)V
    .registers 60
    .param p1, "plugType"    # I
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "secEvent"    # I
    .param p12, "secOnline"    # I
    .param p13, "secCurrentEvent"    # I
    .param p14, "secTxShareEvent"    # I
    .param p15, "otgOnline"    # Z
    .param p16, "elapsedRealtime"    # J
    .param p18, "uptime"    # J
    .param p20, "currentTime"    # J

    .line 1965
    move-object/from16 v15, p0

    iget-object v1, v15, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1966
    :try_start_5
    invoke-static/range {p1 .. p2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v0

    .line 1967
    .local v0, "onBattery":Z
    iget-object v2, v15, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-ne v2, v0, :cond_41

    .line 1970
    iget-object v2, v15, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1973
    if-eqz p15, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    move/from16 v31, v3

    .line 1970
    move-object/from16 v16, v2

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p1

    move/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, p6

    move/from16 v23, p7

    move/from16 v24, p8

    move-wide/from16 v25, p9

    move/from16 v27, p11

    move/from16 v28, p12

    move/from16 v29, p13

    move/from16 v30, p14

    move-wide/from16 v32, p16

    move-wide/from16 v34, p18

    move-wide/from16 v36, p20

    invoke-virtual/range {v16 .. v37}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJIIIIIJJJ)V

    .line 1975
    monitor-exit v1

    return-void

    .line 1977
    .end local v0    # "onBattery":Z
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_80

    .line 1983
    iget-object v0, v15, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/16 v1, 0x3f

    const-string v2, "battery-state"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1984
    iget-object v0, v15, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v14, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move-object/from16 v24, v0

    move-object v0, v14

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-wide/from16 v18, p16

    move-wide/from16 v20, p18

    move-wide/from16 v22, p20

    invoke-direct/range {v1 .. v23}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZJJJ)V

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1993
    return-void

    .line 1977
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0
.end method

.method public synthetic lambda$setBatteryState$106$BatteryStatsService(IIIIIIIIJIIIIZJJJ)V
    .registers 49
    .param p1, "plugType"    # I
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "secEvent"    # I
    .param p12, "secOnline"    # I
    .param p13, "secCurrentEvent"    # I
    .param p14, "secTxShareEvent"    # I
    .param p15, "otgOnline"    # Z
    .param p16, "elapsedRealtime"    # J
    .param p18, "uptime"    # J
    .param p20, "currentTime"    # J

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    move-wide/from16 v21, p20

    .line 1964
    move-object/from16 v0, p0

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    move-object/from16 v24, v1

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZeNE2GYmFKfU5C3rijgSfTU_xCo;

    move-object v0, v1

    move-object/from16 v26, v1

    move-object/from16 v1, v23

    move-object/from16 v25, v24

    invoke-direct/range {v0 .. v22}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZeNE2GYmFKfU5C3rijgSfTU_xCo;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZJJJ)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1994
    return-void
.end method

.method public synthetic lambda$setTemperatureNCurrent$107$BatteryStatsService(IIIIIJJ)V
    .registers 23
    .param p1, "ap_temp"    # I
    .param p2, "pa_temp"    # I
    .param p3, "skin_temp"    # I
    .param p4, "sub_batt_temp"    # I
    .param p5, "current"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .line 2006
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2007
    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->setTemperatureNCurrentLocked(IIIIIJJ)V

    .line 2009
    monitor-exit v2

    .line 2010
    return-void

    .line 2009
    :catchall_17
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public synthetic lambda$updateAudioOutEnergyInfo$109$BatteryStatsService(Landroid/os/AudioOutEnergyInfo;JJ)V
    .registers 13
    .param p1, "info"    # Landroid/os/AudioOutEnergyInfo;
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J

    .line 2616
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2617
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->updateAudioOutEnergyInfoLocked(Landroid/os/AudioOutEnergyInfo;JJ)V

    .line 2618
    monitor-exit v0

    .line 2619
    return-void

    .line 2618
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public synthetic lambda$updateBatteryStatsOnActivityUsage$113$BatteryStatsService(ILjava/lang/String;Ljava/lang/String;ZJJ)V
    .registers 21
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "resumed"    # Z
    .param p5, "elapsedRealtime"    # J
    .param p7, "uptime"    # J

    .line 2718
    move-object v1, p0

    .line 2720
    if-eqz p4, :cond_5

    .line 2721
    const/4 v0, 0x1

    goto :goto_6

    .line 2722
    :cond_5
    const/4 v0, 0x0

    .line 2718
    :goto_6
    const/16 v2, 0x2a

    move v9, p1

    move-object v10, p2

    move-object v11, p3

    invoke-static {v2, p1, p2, p3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 2723
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2724
    if-eqz p4, :cond_1e

    .line 2725
    :try_start_13
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->noteActivityResumedLocked(IJJ)V

    goto :goto_28

    .line 2727
    :cond_1e
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->noteActivityPausedLocked(IJJ)V

    .line 2729
    :goto_28
    monitor-exit v2

    .line 2730
    return-void

    .line 2729
    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public synthetic lambda$updateForegroundAppEnergyInfo$108$BatteryStatsService(Ljava/util/List;J)V
    .registers 6
    .param p1, "info"    # Ljava/util/List;
    .param p2, "elapsedRealtime"    # J

    .line 2595
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2596
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->updateForegroundAppEnergyInfoLocked(Ljava/util/List;J)V

    .line 2597
    monitor-exit v0

    .line 2598
    return-void

    .line 2597
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$updateForegroundTimeIfOnBattery$111$BatteryStatsService(ILjava/lang/String;JJJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J
    .param p7, "cpuTimeDiff"    # J

    .line 2685
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2686
    return-void

    .line 2688
    :cond_8
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2689
    :try_start_b
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2690
    move v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_21

    .line 2691
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_1d

    .line 2692
    move-wide/from16 v3, p7

    :try_start_19
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    goto :goto_1f

    .line 2691
    :cond_1d
    move-wide/from16 v3, p7

    .line 2694
    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :goto_1f
    monitor-exit v2

    .line 2695
    return-void

    .line 2694
    :catchall_21
    move-exception v0

    move-wide/from16 v3, p7

    :goto_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_26

    throw v0

    :catchall_26
    move-exception v0

    goto :goto_24
.end method

.method public synthetic lambda$updateSemModemActivityInfo$110$BatteryStatsService(Landroid/os/SemModemActivityInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/os/SemModemActivityInfo;

    .line 2635
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2636
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateSemModemActivityInfoLocked(Landroid/os/SemModemActivityInfo;)V

    .line 2637
    monitor-exit v0

    .line 2638
    return-void

    .line 2637
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public monitor()V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_c

    .line 264
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 265
    :try_start_7
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_9

    throw v0

    .line 263
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 683
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 684
    if-eqz p2, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v4, v0

    .line 685
    .local v4, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 687
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 688
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$QQjudNAyz6qLXXgLCBQLpOT87kU;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$QQjudNAyz6qLXXgLCBQLpOT87kU;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 693
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 694
    return-void

    .line 693
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 669
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 670
    if-eqz p2, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v4, v0

    .line 671
    .local v4, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 673
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 674
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$xQ-uCJuDIy5mKyOKQijo4iWrVYM;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$xQ-uCJuDIy5mKyOKQijo4iWrVYM;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 679
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 680
    return-void

    .line 679
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteBleDutyScanStarted(Landroid/os/WorkSource;ZI)V
    .registers 16
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "dutyCycle"    # I

    .line 1795
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1796
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1797
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1798
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1799
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1800
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$JbFU1Hci7GCoHWGZxqUha9ApWY8;

    move-object v1, v11

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$JbFU1Hci7GCoHWGZxqUha9ApWY8;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1806
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1807
    return-void

    .line 1806
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteBleDutyScanStopped(Landroid/os/WorkSource;ZI)V
    .registers 16
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnOptimized"    # Z
    .param p3, "dutyCycle"    # I

    .line 1810
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1811
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1812
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1813
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1814
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1815
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$-w2YV3TI3I1P_0024imd7ZDc0WI;

    move-object v1, v11

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$-w2YV3TI3I1P_0024imd7ZDc0WI;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1821
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1822
    return-void

    .line 1821
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .registers 14
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I

    .line 1873
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1874
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1875
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1876
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1877
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1878
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Pg58EKP_pWg34M0QRbowV5Oh-ww;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Pg58EKP_pWg34M0QRbowV5Oh-ww;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1884
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1885
    return-void

    .line 1884
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .registers 14
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1828
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1829
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1830
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1831
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1832
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$5BdkK6y7QOj9j1pD-KWEOU0Xj8E;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$5BdkK6y7QOj9j1pD-KWEOU0Xj8E;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1838
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1839
    return-void

    .line 1838
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .registers 14
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1844
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1845
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1846
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1847
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1848
    .local v5, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$QewYduFotvJ5tzhFnYF68Fc0ZVs;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$QewYduFotvJ5tzhFnYF68Fc0ZVs;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1854
    nop

    .end local v5    # "uptime":J
    .end local v7    # "elapsedRealtime":J
    monitor-exit v0

    .line 1855
    return-void

    .line 1854
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 12
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1907
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1908
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2a

    .line 1913
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1914
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1915
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1916
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$BZbCn3DCzVBeefSRv7eC0vxD1xQ;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$BZbCn3DCzVBeefSRv7eC0vxD1xQ;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1921
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1922
    return-void

    .line 1921
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw v1

    .line 1909
    :cond_2a
    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid bluetooth data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 32
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .line 746
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 747
    const/4 v0, 0x0

    if-eqz v12, :cond_13

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, v12}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v1

    goto :goto_14

    :cond_13
    move-object v3, v0

    .line 748
    .local v3, "localWs":Landroid/os/WorkSource;
    :goto_14
    if-eqz v11, :cond_1b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v11}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1b
    move-object v8, v0

    .line 749
    .local v8, "localNewWs":Landroid/os/WorkSource;
    iget-object v10, v13, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 750
    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 751
    .local v14, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 752
    .local v16, "uptime":J
    iget-object v0, v13, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$5pUqoLEQ-a6CeDOx8TihXVHbBzs;
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_50

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v18, v0

    move-object v0, v9

    move/from16 v9, p7

    move-object/from16 v19, v10

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    :try_start_45
    invoke-direct/range {v1 .. v17}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$5pUqoLEQ-a6CeDOx8TihXVHbBzs;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 759
    nop

    .end local v14    # "elapsedRealtime":J
    .end local v16    # "uptime":J
    monitor-exit v19

    .line 760
    return-void

    .line 759
    :catchall_50
    move-exception v0

    move-object/from16 v19, v10

    :goto_53
    monitor-exit v19
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_55

    throw v0

    :catchall_55
    move-exception v0

    goto :goto_53
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1024
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1026
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1027
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$7U-yNUEKvEFLRLtwWWxL3oUNVHU;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$7U-yNUEKvEFLRLtwWWxL3oUNVHU;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1032
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1033
    return-void

    .line 1032
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method noteCurrentTimeChanged()V
    .registers 12

    .line 2700
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2701
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2702
    .local v3, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2703
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2704
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$6Zk09v5fdzPPegnatcGefZbN6b8;

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$6Zk09v5fdzPPegnatcGefZbN6b8;-><init>(Lcom/android/server/am/BatteryStatsService;JJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2709
    nop

    .end local v3    # "currentTime":J
    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 2710
    return-void

    .line 2709
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .registers 16
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .line 1753
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1754
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1755
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1756
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1757
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$iaDkRhxcqOB0xsIJjGmtsgAQM-k;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$iaDkRhxcqOB0xsIJjGmtsgAQM-k;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1763
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1764
    return-void

    .line 1763
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public noteDualScreenState(I)V
    .registers 7
    .param p1, "state"    # I

    .line 946
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 947
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 949
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PQCKNGxND_a6xi95_v3u_9JDSKo;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PQCKNGxND_a6xi95_v3u_9JDSKo;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 954
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 955
    return-void

    .line 954
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .registers 16
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 568
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 569
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 571
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 572
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PxCHq_q5t7T25hNLxF4hjokEp50;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PxCHq_q5t7T25hNLxF4hjokEp50;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 578
    return-void

    .line 577
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public noteFlashlightOff(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1289
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1290
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1291
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1292
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ntG-2i5ODntIMK6HSzoQw_KiCEw;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ntG-2i5ODntIMK6HSzoQw_KiCEw;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1299
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1300
    return-void

    .line 1299
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteFlashlightOn(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1274
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1275
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1276
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1277
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$aq6l-ScHuUscdxbTyIe9QVedUn4;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$aq6l-ScHuUscdxbTyIe9QVedUn4;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1284
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1285
    return-void

    .line 1284
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteFullWifiLockAcquired(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1560
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1562
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1563
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1564
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$pcqw5-SVjT1mcph-jd2CwWYrQzk;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$pcqw5-SVjT1mcph-jd2CwWYrQzk;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1569
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1570
    return-void

    .line 1569
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1638
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1639
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1640
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1641
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1642
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1643
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$aNA7z8Gazv8RWZsDHwqWD3NODp4;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$aNA7z8Gazv8RWZsDHwqWD3NODp4;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1649
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1650
    return-void

    .line 1649
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteFullWifiLockReleased(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1573
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1574
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1575
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1576
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1577
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$zGa9olunQWWdYsKysII0_abgQ6M;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$zGa9olunQWWdYsKysII0_abgQ6M;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1582
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1583
    return-void

    .line 1582
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1653
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1654
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1655
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1656
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1657
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1658
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ALIXy5ZdOwuTcHqh6BObQE4hQ6M;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ALIXy5ZdOwuTcHqh6BObQE4hQ6M;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1664
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1665
    return-void

    .line 1664
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 14
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 902
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 903
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_e

    :cond_d
    move-object v4, v0

    .line 904
    .local v4, "localOldWs":Landroid/os/WorkSource;
    :goto_e
    if-eqz p2, :cond_15

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_15
    move-object v5, v0

    .line 905
    .local v5, "localNewWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 907
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 908
    .local v8, "uptime":J
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$cCgLNzyeRihc0sMgvoDNvsxYlv0;

    move-object v2, v10

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$cCgLNzyeRihc0sMgvoDNvsxYlv0;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 913
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 914
    return-void

    .line 913
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public noteGpsSignalQuality(I)V
    .registers 12
    .param p1, "signalLevel"    # I

    .line 917
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 919
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 920
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$SKvVKqA3GLjlshPBxYkp1F9Ei5M;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$SKvVKqA3GLjlshPBxYkp1F9Ei5M;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 925
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 926
    return-void

    .line 925
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public noteInteractive(Z)V
    .registers 7
    .param p1, "interactive"    # Z

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1012
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1013
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1014
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1IifnfFqdQFE1FlRfggyOC0W7Rg;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1IifnfFqdQFE1FlRfggyOC0W7Rg;-><init>(Lcom/android/server/am/BatteryStatsService;ZJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1019
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 1020
    return-void

    .line 1019
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public noteJobFinish(Ljava/lang/String;II)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I

    .line 626
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 627
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 629
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 630
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Fp0YPPaxqrvAmP8s1pWPhvFLwhA;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Fp0YPPaxqrvAmP8s1pWPhvFLwhA;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 635
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 636
    return-void

    .line 635
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 612
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 613
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 615
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 616
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ibgqle0RLIXYuRLwSEg7d6lPXQY;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ibgqle0RLIXYuRLwSEg7d6lPXQY;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 622
    return-void

    .line 621
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method noteJobsDeferred(IIJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "numDeferred"    # I
    .param p3, "sinceLast"    # J

    .line 640
    move-object v11, p0

    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 641
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 642
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 643
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 649
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v12

    .line 650
    return-void

    .line 649
    :catchall_20
    move-exception v0

    monitor-exit v12
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 814
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 815
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 817
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 818
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$3qnFDmUlwUggj8oVyvFGtb8G6rA;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$3qnFDmUlwUggj8oVyvFGtb8G6rA;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 830
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 831
    if-eqz p3, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v5, v0

    .line 832
    .local v5, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 833
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 834
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 835
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$NL0YTnVWUMiv3K21nltZ-GyMsPU;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$NL0YTnVWUMiv3K21nltZ-GyMsPU;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 841
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 781
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 782
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 784
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 785
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$JNcoCxcZCkZN91kBlGfgebQoalo;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$JNcoCxcZCkZN91kBlGfgebQoalo;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 791
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 797
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 798
    if-eqz p3, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v5, v0

    .line 799
    .local v5, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 801
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 802
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$TUQiWeIs_lDzr_N2byGT_4sBHCI;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$TUQiWeIs_lDzr_N2byGT_4sBHCI;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 809
    return-void

    .line 808
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public noteMobileRadioPowerState(IJI)V
    .registers 19
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I

    .line 1037
    move-object v11, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1038
    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1039
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1040
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1041
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CCmbcdBhCrJeeqSQkfW04o2u2Ho;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CCmbcdBhCrJeeqSQkfW04o2u2Ho;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1052
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v12

    .line 1053
    return-void

    .line 1052
    :catchall_23
    move-exception v0

    monitor-exit v12
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public noteMobileRadioStateFor5G(Z)V
    .registers 12
    .param p1, "state"    # Z

    .line 958
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 959
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 961
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 962
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$fzXB_kjBcJIIaKc9bo72pt0QTk8;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$fzXB_kjBcJIIaKc9bo72pt0QTk8;-><init>(Lcom/android/server/am/BatteryStatsService;ZJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 967
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 968
    return-void

    .line 967
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .registers 12
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1928
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2a

    .line 1933
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1934
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1935
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1936
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$MfXSkJYeLG3SqKzgWrcCrIXWPTQ;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$MfXSkJYeLG3SqKzgWrcCrIXWPTQ;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1939
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1940
    return-void

    .line 1939
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw v1

    .line 1929
    :cond_2a
    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid modem data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    return-void
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .line 1727
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1728
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1729
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1hOlD5wzkgpTrjI-RHRT3JHr_So;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1hOlD5wzkgpTrjI-RHRT3JHr_So;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1732
    monitor-exit v0

    .line 1733
    return-void

    .line 1732
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public noteNetworkStatsEnabled()V
    .registers 4

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1741
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1743
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BatteryStatsService$OhOGq7XAeA0_XejY2Ul76m_wnao;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$OhOGq7XAeA0_XejY2Ul76m_wnao;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1748
    monitor-exit v0

    .line 1749
    return-void

    .line 1748
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .registers 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 1767
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1768
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1769
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1770
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1771
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UtvvGdYLHJ3ifrda9plxEqYkIaQ;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UtvvGdYLHJ3ifrda9plxEqYkIaQ;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1777
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1778
    return-void

    .line 1777
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1782
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1783
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1784
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1785
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0aWR56xPVnQjroKcQCTh_HUgKTw;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0aWR56xPVnQjroKcQCTh_HUgKTw;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1790
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1791
    return-void

    .line 1790
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public notePhoneDataConnectionState(IZI)V
    .registers 16
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "serviceType"    # I

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1097
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1099
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1100
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$-KoWTQsjuLDUlWWVeXcisxDPrEk;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$-KoWTQsjuLDUlWWVeXcisxDPrEk;-><init>(Lcom/android/server/am/BatteryStatsService;IZIJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1106
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public notePhoneOff()V
    .registers 10

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1070
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1072
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1073
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Qx9SW2VHaVYs3shboYwggDeN5Pk;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Qx9SW2VHaVYs3shboYwggDeN5Pk;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1078
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1079
    return-void

    .line 1078
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public notePhoneOn()V
    .registers 10

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1057
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1059
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1060
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$NDut47-P98V6SzYY6ywzbolMORo;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$NDut47-P98V6SzYY6ywzbolMORo;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1065
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1066
    return-void

    .line 1065
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 12
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1083
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1084
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1085
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1086
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZwWYl99E2NZpE1_wiUd0FZh9e7o;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZwWYl99E2NZpE1_wiUd0FZh9e7o;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1091
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1092
    return-void

    .line 1091
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public notePhoneState(I)V
    .registers 12
    .param p1, "state"    # I

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1111
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1112
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1113
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1114
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$jw9I6ZcKZWkOrydZnVfEJ4jLj3I;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$jw9I6ZcKZWkOrydZnVfEJ4jLj3I;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1120
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1121
    return-void

    .line 1120
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 465
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 467
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 468
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 474
    return-void

    .line 473
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 451
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 453
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 454
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$hp2uBYFX-NKBk-W7ozsIXsTiGvo;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$hp2uBYFX-NKBk-W7ozsIXsTiGvo;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 460
    const/16 v0, 0x1c

    const/4 v1, 0x2

    invoke-static {v0, p2, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 462
    return-void

    .line 459
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method noteProcessDied(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 2735
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2736
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BatteryStatsService$7WzmuTdG_Erz0ebC4sH-3MjGcJQ;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$7WzmuTdG_Erz0ebC4sH-3MjGcJQ;-><init>(Lcom/android/server/am/BatteryStatsService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2741
    monitor-exit v0

    .line 2742
    return-void

    .line 2741
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 477
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 479
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 480
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rlbOf_9yYVKMKutU5qinXA9y9GY;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rlbOf_9yYVKMKutU5qinXA9y9GY;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 486
    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 488
    return-void

    .line 485
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 437
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 439
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 440
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$7BH8EZqJGlULsGcZv_3JEWzNF6g;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$7BH8EZqJGlULsGcZv_3JEWzNF6g;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 446
    const/16 v0, 0x1c

    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 448
    return-void

    .line 445
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public noteResetAudio()V
    .registers 10

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1244
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1246
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1247
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$F39r0T6J3H8waM_fEefTxgtX25M;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$F39r0T6J3H8waM_fEefTxgtX25M;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1254
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1255
    return-void

    .line 1254
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteResetBleScan()V
    .registers 10

    .line 1859
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1860
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1861
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1862
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1863
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$q-CgGu1GTmbdy61dBxbuLmd51MU;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$q-CgGu1GTmbdy61dBxbuLmd51MU;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1868
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1869
    return-void

    .line 1868
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteResetCamera()V
    .registers 10

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1355
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1356
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1357
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1358
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$xN3u6b2TXwL-1hj7m_w4dOAM4OE;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$xN3u6b2TXwL-1hj7m_w4dOAM4OE;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1365
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1366
    return-void

    .line 1365
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteResetFlashlight()V
    .registers 10

    .line 1369
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1370
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1371
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1372
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1373
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Y0ifCEKRgnQ8xPeEY28zfsa6qgk;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Y0ifCEKRgnQ8xPeEY28zfsa6qgk;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1380
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1381
    return-void

    .line 1380
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteResetGps()V
    .registers 6

    .line 1413
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1414
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1415
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1416
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qGmRST659yxHIafaGm7eCGT0aEY;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qGmRST659yxHIafaGm7eCGT0aEY;-><init>(Lcom/android/server/am/BatteryStatsService;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1423
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 1424
    return-void

    .line 1423
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public noteResetVideo()V
    .registers 10

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1259
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1261
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1262
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$oyV8JBIWJnPMxhu2KG4k-KUpzeI;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$oyV8JBIWJnPMxhu2KG4k-KUpzeI;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1269
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1270
    return-void

    .line 1269
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteReturnZero(I)V
    .registers 5
    .param p1, "situation"    # I

    .line 2018
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2020
    const/4 v0, 0x0

    .line 2021
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 2022
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteReturnZeroLocked(I)V

    .line 2023
    monitor-exit v1

    .line 2024
    return-void

    .line 2023
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v2
.end method

.method public noteScreenBrightness(I)V
    .registers 12
    .param p1, "brightness"    # I

    .line 971
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 972
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 974
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 975
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$GKpuTPowV6zZm7_9dm7xfEcwS3w;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$GKpuTPowV6zZm7_9dm7xfEcwS3w;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 981
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 982
    return-void

    .line 981
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteScreenState(I)V
    .registers 14
    .param p1, "state"    # I

    .line 929
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 930
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 932
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 933
    .local v6, "uptime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 934
    .local v8, "currentTime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rGJlZ6zcOLKDQBnlI9S9_ZpM2HE;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rGJlZ6zcOLKDQBnlI9S9_ZpM2HE;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 942
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v8    # "currentTime":J
    monitor-exit v0

    .line 943
    return-void

    .line 942
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v1
.end method

.method noteServiceStartLaunch(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;)V
    .registers 7
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 2778
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2779
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2780
    .local v1, "uptime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$OZ9LeD3nnQO42O3U3CN2YrM50RM;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$OZ9LeD3nnQO42O3U3CN2YrM50RM;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2785
    nop

    .end local v1    # "uptime":J
    monitor-exit v0

    .line 2786
    return-void

    .line 2785
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method noteServiceStartRunning(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;)V
    .registers 7
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 2756
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2757
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2758
    .local v1, "uptime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$FkaqqFF2YAvY3arjBymcTyG_gSU;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$FkaqqFF2YAvY3arjBymcTyG_gSU;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2763
    nop

    .end local v1    # "uptime":J
    monitor-exit v0

    .line 2764
    return-void

    .line 2763
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method noteServiceStopLaunch(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;)V
    .registers 7
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 2789
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2790
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2791
    .local v1, "uptime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Vy-Oa0fbJdcWa98NyhW6AT9b16U;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Vy-Oa0fbJdcWa98NyhW6AT9b16U;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2796
    nop

    .end local v1    # "uptime":J
    monitor-exit v0

    .line 2797
    return-void

    .line 2796
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method noteServiceStopRunning(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;)V
    .registers 7
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 2767
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2768
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2769
    .local v1, "uptime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UmI51WsCk9ZKlM6BVvTlTYuJKGM;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UmI51WsCk9ZKlM6BVvTlTYuJKGM;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2774
    nop

    .end local v1    # "uptime":J
    monitor-exit v0

    .line 2775
    return-void

    .line 2774
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public noteStartAudio(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1183
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1184
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1185
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1186
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1187
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$wEQkNw6ViGHc-wwv12dfuwH3zD8;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$wEQkNw6ViGHc-wwv12dfuwH3zD8;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1194
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1195
    return-void

    .line 1194
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteStartCamera(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1303
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1305
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1306
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1307
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1308
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$VqFnJOjoEKzLxrHpYCbzdUoPU8E;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$VqFnJOjoEKzLxrHpYCbzdUoPU8E;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1315
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_32

    .line 1318
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_31

    .line 1319
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_31

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_31

    const/16 v0, 0x139d

    if-eq p1, v0, :cond_31

    .line 1321
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/am/BatteryStatsService;->sendWirelessPowerSharingExternelEvent(IZ)V

    .line 1327
    :cond_31
    return-void

    .line 1315
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public noteStartGps(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 1385
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1386
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1387
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1388
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$u6DnQ8LfTfjge52e1f_huKoJl7A;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$u6DnQ8LfTfjge52e1f_huKoJl7A;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1395
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 1396
    return-void

    .line 1395
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public noteStartSensor(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 845
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 846
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 848
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 849
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$mBat6RyvIChVr-CO32SC7jXMEe0;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$mBat6RyvIChVr-CO32SC7jXMEe0;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 856
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 857
    return-void

    .line 856
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public noteStartTxPowerSharing()V
    .registers 10

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1156
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1157
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1158
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1159
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$RtMrKHj1f3zO-jiZN4wtIl0ag80;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$RtMrKHj1f3zO-jiZN4wtIl0ag80;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1165
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1166
    return-void

    .line 1165
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteStartVideo(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1214
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1215
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1216
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1217
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1224
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1225
    return-void

    .line 1224
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 23
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .line 698
    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 699
    iget-object v14, v13, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 700
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 701
    .local v9, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 702
    .local v11, "uptime":J
    iget-object v0, v13, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/am/-$$Lambda$BatteryStatsService$LDvzsrJ1v1CtDPEL4XCsWbJEg94;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$LDvzsrJ1v1CtDPEL4XCsWbJEg94;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 708
    nop

    .end local v9    # "elapsedRealtime":J
    .end local v11    # "uptime":J
    monitor-exit v14

    .line 709
    return-void

    .line 708
    :catchall_2c
    move-exception v0

    monitor-exit v14
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 23
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .line 728
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 729
    if-eqz v14, :cond_f

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v14}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move-object v3, v0

    .line 730
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v15, v13, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 731
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 732
    .local v9, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 733
    .local v11, "uptime":J
    iget-object v0, v13, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$v8jDu3ZCfAZHUH-jiP8_QP_nrtM;

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object v13, v8

    move/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$v8jDu3ZCfAZHUH-jiP8_QP_nrtM;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 739
    nop

    .end local v9    # "elapsedRealtime":J
    .end local v11    # "uptime":J
    monitor-exit v15

    .line 740
    return-void

    .line 739
    :catchall_37
    move-exception v0

    monitor-exit v15
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public noteStopAudio(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1198
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1199
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1200
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1201
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1202
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qgPu7wWK7QU6E3eklbFBgS5TYTc;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qgPu7wWK7QU6E3eklbFBgS5TYTc;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1209
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1210
    return-void

    .line 1209
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteStopCamera(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1331
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1332
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1333
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1334
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qzNNDurYIEYKSvEtSjuy74NCr4Y;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qzNNDurYIEYKSvEtSjuy74NCr4Y;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1341
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_33

    .line 1344
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_32

    .line 1345
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_32

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_32

    const/16 v0, 0x139d

    if-eq p1, v0, :cond_32

    .line 1347
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->sendWirelessPowerSharingExternelEvent(IZ)V

    .line 1351
    :cond_32
    return-void

    .line 1341
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public noteStopGps(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 1399
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1400
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1402
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$M999yxDX4WCY91HoS84xAwkiIbY;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$M999yxDX4WCY91HoS84xAwkiIbY;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1409
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 1410
    return-void

    .line 1409
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public noteStopSensor(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 860
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 861
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 863
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 864
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$EV0lGe-sw1Ci2RylEEhrpufbX2Y;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$EV0lGe-sw1Ci2RylEEhrpufbX2Y;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 871
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 872
    return-void

    .line 871
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public noteStopTxPowerSharing()V
    .registers 10

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1170
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1171
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1172
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1173
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eNvMfJ-OamM1OqhL6QyRstA7i_A;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eNvMfJ-OamM1OqhL6QyRstA7i_A;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1178
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1179
    return-void

    .line 1178
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteStopVideo(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1228
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1229
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1230
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1231
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1232
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$7oG1APcXxQnMqWaT53Z5FAqub2I;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$7oG1APcXxQnMqWaT53Z5FAqub2I;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1239
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1240
    return-void

    .line 1239
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 21
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 713
    move-object v12, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 714
    iget-object v13, v12, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 715
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 716
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 717
    .local v10, "uptime":J
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/am/-$$Lambda$BatteryStatsService$OwqZiDXAdDUHCYXo3OE8MbGP_N0;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$OwqZiDXAdDUHCYXo3OE8MbGP_N0;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v13

    .line 724
    return-void

    .line 723
    :catchall_28
    move-exception v0

    monitor-exit v13
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 22
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 764
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 765
    if-eqz v13, :cond_f

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v13}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move-object v3, v0

    .line 766
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v14, v12, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 767
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 768
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 769
    .local v10, "uptime":J
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 775
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v14

    .line 776
    return-void

    .line 775
    :catchall_34
    move-exception v0

    monitor-exit v14
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 596
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 597
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 599
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 600
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ozlsbTi7ugJiu1wjBS5MRE1BNe4;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ozlsbTi7ugJiu1wjBS5MRE1BNe4;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 608
    return-void

    .line 607
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 581
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 582
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 584
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 585
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$wCTBL8LrjbR0SxbqlhtvNbN0x4A;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$wCTBL8LrjbR0SxbqlhtvNbN0x4A;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method noteUidProcessState(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 492
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 494
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 495
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DAuB672gdMOFXsOjdJyVrvOGxWg;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DAuB672gdMOFXsOjdJyVrvOGxWg;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public noteUserActivity(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .line 985
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 986
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 988
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 989
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$3jvW_YS107-taDrgieZX7K5zmPE;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$3jvW_YS107-taDrgieZX7K5zmPE;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 994
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 995
    return-void

    .line 994
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public noteVibratorOff(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 888
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 889
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 890
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 891
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 892
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Si3I0drNJQ26rbndd-YHiOJ9bA0;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Si3I0drNJQ26rbndd-YHiOJ9bA0;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 897
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 898
    return-void

    .line 897
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteVibratorOn(IJ)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .line 875
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 876
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 877
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 878
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 879
    .local v8, "uptime":J
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$z5Ft37cee2AArcH70BEVQPzHTwc;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$z5Ft37cee2AArcH70BEVQPzHTwc;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 884
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 885
    return-void

    .line 884
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .registers 14
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .line 998
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 999
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1001
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1002
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$wvw7lRuu5PcGsV4qFqdWZJza5zs;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$wvw7lRuu5PcGsV4qFqdWZJza5zs;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1008
    return-void

    .line 1007
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 20
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "tag"    # Ljava/lang/String;

    .line 654
    move-object v11, p0

    move-object/from16 v12, p3

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 655
    if-eqz v12, :cond_e

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, v12}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move-object v5, v0

    .line 656
    .local v5, "localWs":Landroid/os/WorkSource;
    iget-object v13, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 657
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 658
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 659
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v13

    .line 666
    return-void

    .line 665
    :catchall_30
    move-exception v0

    monitor-exit v13
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public noteWifiApMode(Z)V
    .registers 12
    .param p1, "enabled"    # Z

    .line 1454
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1455
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1456
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1457
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1458
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$q5aqtM7GnboRGnpFzpCAysXJMls;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$q5aqtM7GnboRGnpFzpCAysXJMls;-><init>(Lcom/android/server/am/BatteryStatsService;ZJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1463
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1464
    return-void

    .line 1463
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .registers 14
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .line 1696
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1697
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1698
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1699
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1700
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1701
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$8Nh0HYbP9SVYfCHCa-_LFj6plIs;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$8Nh0HYbP9SVYfCHCa-_LFj6plIs;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1707
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1708
    return-void

    .line 1707
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1712
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1713
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1714
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1715
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1716
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eufv6hZWGUMI2DBk2lLvT46Bs1k;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eufv6hZWGUMI2DBk2lLvT46Bs1k;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1722
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1723
    return-void

    .line 1722
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 12
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 1889
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1891
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2a

    .line 1896
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1897
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1898
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1899
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ogUldTVwyAu3SJ28OJT7WuSfCU0;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ogUldTVwyAu3SJ28OJT7WuSfCU0;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1902
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1903
    return-void

    .line 1902
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw v1

    .line 1892
    :cond_2a
    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid wifi data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1625
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1626
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1627
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1628
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1629
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$xtGdMDfn3Jam5dAHDa7rRcp0LOg;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$xtGdMDfn3Jam5dAHDa7rRcp0LOg;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1634
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1635
    return-void

    .line 1634
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiMulticastEnabled(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1612
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1613
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1614
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1615
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1616
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$FK9_OucnQ_3RER2mOYm8d1S-3qw;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$FK9_OucnQ_3RER2mOYm8d1S-3qw;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1621
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1622
    return-void

    .line 1621
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiOff()V
    .registers 10

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1140
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1141
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1142
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1143
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$lRzEdUAS66sGNC_SaGLvu8wwz10;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$lRzEdUAS66sGNC_SaGLvu8wwz10;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1150
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1151
    return-void

    .line 1150
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteWifiOn()V
    .registers 10

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1125
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1127
    .local v3, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1128
    .local v5, "uptime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0_9QvunSJQg_8H7zNXCUbgMiHYg;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0_9QvunSJQg_8H7zNXCUbgMiHYg;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    nop

    .end local v3    # "elapsedRealtime":J
    .end local v5    # "uptime":J
    monitor-exit v0

    .line 1136
    return-void

    .line 1135
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public noteWifiRadioPowerState(IJI)V
    .registers 19
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J
    .param p4, "uid"    # I

    .line 1429
    move-object v11, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1430
    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1431
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1432
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1433
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z_2c0Wbg170ZsTXZx_EBXu3a5qo;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z_2c0Wbg170ZsTXZx_EBXu3a5qo;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1449
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v12

    .line 1450
    return-void

    .line 1449
    :catchall_23
    move-exception v0

    monitor-exit v12
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public noteWifiRssiChanged(I)V
    .registers 12
    .param p1, "newRssi"    # I

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1548
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1549
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1550
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1551
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$A3pUcbldCEjY4FezJcq2HMUOiY0;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$A3pUcbldCEjY4FezJcq2HMUOiY0;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1556
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1557
    return-void

    .line 1556
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1468
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1469
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1470
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1471
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1472
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1473
    .local v6, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;

    move-object v1, v10

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJLandroid/os/WorkSource;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1481
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1482
    return-void

    .line 1481
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 16
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 1485
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1486
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_e

    :cond_d
    move-object v4, v0

    .line 1487
    .local v4, "localOldWs":Landroid/os/WorkSource;
    :goto_e
    if-eqz p2, :cond_15

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_15
    move-object v5, v0

    .line 1488
    .local v5, "localNewWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1489
    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1490
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1491
    .local v8, "uptime":J
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;

    move-object v2, v12

    move-object v3, p0

    move-object v10, p2

    move-object v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJLandroid/os/WorkSource;Landroid/os/WorkSource;)V

    invoke-virtual {v1, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1501
    nop

    .end local v6    # "elapsedRealtime":J
    .end local v8    # "uptime":J
    monitor-exit v0

    .line 1502
    return-void

    .line 1501
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public noteWifiScanStarted(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1586
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1587
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1588
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1589
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1590
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$pUq8m7Z8lrus4eE9P8TylNgGf90;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$pUq8m7Z8lrus4eE9P8TylNgGf90;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1595
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1596
    return-void

    .line 1595
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1668
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1669
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1670
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1671
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1672
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1673
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$6gh4LlGrWGsaf52tt0Jj6fhqghM;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$6gh4LlGrWGsaf52tt0Jj6fhqghM;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1678
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1679
    return-void

    .line 1678
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteWifiScanStopped(I)V
    .registers 12
    .param p1, "uid"    # I

    .line 1599
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1600
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1601
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1602
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1603
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$37sJkGZQrUtIWklNTE_HaxM3AbQ;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$37sJkGZQrUtIWklNTE_HaxM3AbQ;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1608
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1609
    return-void

    .line 1608
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1682
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1683
    if-eqz p1, :cond_b

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1684
    .local v3, "localWs":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1685
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1686
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1687
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$vjL-DmIue6yPVNSLiZpLpzSgjrI;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$vjL-DmIue6yPVNSLiZpLpzSgjrI;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1692
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1693
    return-void

    .line 1692
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .registers 12
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .line 1521
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1522
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1523
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1524
    .local v5, "elapsedRealtime":J
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1529
    nop

    .end local v5    # "elapsedRealtime":J
    monitor-exit v0

    .line 1530
    return-void

    .line 1529
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1505
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1506
    if-eqz p1, :cond_c

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v0

    goto :goto_d

    :cond_c
    move-object v3, p1

    .line 1507
    .local v3, "localWs":Landroid/os/WorkSource;
    :goto_d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1508
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1509
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1510
    .local v6, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UsDrO9aWe-CbOZg1faCCOyP_-1c;

    move-object v1, v10

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UsDrO9aWe-CbOZg1faCCOyP_-1c;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJLandroid/os/WorkSource;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1517
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 1518
    return-void

    .line 1517
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .registers 14
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .line 1533
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1534
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1535
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1536
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1537
    .local v7, "uptime":J
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;-><init>(Lcom/android/server/am/BatteryStatsService;IZJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1543
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v0

    .line 1544
    return-void

    .line 1543
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method onCleanupUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 394
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 396
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1E9tfZunntag8yYNmnXGj4Fqqzk;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1E9tfZunntag8yYNmnXGj4Fqqzk;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 402
    return-void

    .line 401
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 12
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 343
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 345
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 346
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$MODBHTYwsmf7wJjLF-xWVMn7MgE;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$MODBHTYwsmf7wJjLF-xWVMn7MgE;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method onUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 405
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BatteryStatsService$6f0xnIBrL47n5V9yb9guO_vyseM;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$6f0xnIBrL47n5V9yb9guO_vyseM;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public publish()V
    .registers 4

    .line 232
    const-class v0, Landroid/os/BatteryStatsInternal;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "batterystats"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 234
    return-void
.end method

.method public registerBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)Z
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/app/IBatteryStatsCallback;

    .line 2644
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2646
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2647
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->registerBatteryStatsCallbackLocked(Lcom/android/internal/app/IBatteryStatsCallback;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2648
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1
.end method

.method removeIsolatedUid(II)V
    .registers 6
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 427
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ucRPyRZD0Xxzz6KBhKI_SDPwn2w;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ucRPyRZD0Xxzz6KBhKI_SDPwn2w;-><init>(Lcom/android/server/am/BatteryStatsService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method removeUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 385
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Xl0jPcOFkCcK1tCueQwn2qYiSbY;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Xl0jPcOFkCcK1tCueQwn2qYiSbY;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method reportExcessiveCpu(ILjava/lang/String;JJ)V
    .registers 19
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uptimeSince"    # J
    .param p5, "cputimeUsed"    # J

    .line 2746
    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2747
    :try_start_4
    iget-object v0, v9, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$W1G5xaccDAUHL3_Pb_iYmQsyH_4;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$W1G5xaccDAUHL3_Pb_iYmQsyH_4;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2752
    monitor-exit v10

    .line 2753
    return-void

    .line 2752
    :catchall_17
    move-exception v0

    monitor-exit v10
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public scheduleWriteToDisk()V
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BatteryStatsService$HF8AWLKydY8zkU5HbZSiTZcFN7c;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$HF8AWLKydY8zkU5HbZSiTZcFN7c;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public setBatteryState(IIIIIIIIJIIIIZ)V
    .registers 42
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J
    .param p11, "secEvent"    # I
    .param p12, "secOnline"    # I
    .param p13, "secCurrentEvent"    # I
    .param p14, "secTxShareEvent"    # I
    .param p15, "otgOnline"    # Z

    .line 1953
    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1955
    iget-object v14, v15, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1956
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1957
    .local v18, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 1958
    .local v20, "uptime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1961
    .local v22, "currentTime":J
    iget-object v0, v15, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/-$$Lambda$BatteryStatsService$YGom5sdiP3kIGYpwgRqDj9aO4jc;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_47

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-object/from16 v24, v0

    move-object v0, v13

    move/from16 v13, p11

    move-object/from16 v25, v14

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    :try_start_3c
    invoke-direct/range {v1 .. v23}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$YGom5sdiP3kIGYpwgRqDj9aO4jc;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZJJJ)V

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1995
    nop

    .end local v18    # "elapsedRealtime":J
    .end local v20    # "uptime":J
    .end local v22    # "currentTime":J
    monitor-exit v25

    .line 1996
    return-void

    .line 1995
    :catchall_47
    move-exception v0

    move-object/from16 v25, v14

    :goto_4a
    monitor-exit v25
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_4c

    throw v0

    :catchall_4c
    move-exception v0

    goto :goto_4a
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .registers 8
    .param p1, "delayMillis"    # I

    .line 2666
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POWER_SAVER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2670
    .local v0, "ident":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2671
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "battery_charging_state_update_delay"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 2675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2671
    return v3

    .line 2675
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2676
    throw v2
.end method

.method public setTemperatureNCurrent(IIIII)V
    .registers 21
    .param p1, "ap_temp"    # I
    .param p2, "pa_temp"    # I
    .param p3, "skin_temp"    # I
    .param p4, "sub_batt_temp"    # I
    .param p5, "current"    # I

    .line 2001
    move-object v12, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2002
    iget-object v13, v12, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2003
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2004
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2005
    .local v10, "uptime":J
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIJJ)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2011
    nop

    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    monitor-exit v13

    .line 2012
    return-void

    .line 2011
    :catchall_28
    move-exception v0

    monitor-exit v13
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public shutdown()V
    .registers 3

    .line 312
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 317
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 319
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 320
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 321
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_21

    .line 324
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->shutdown()V

    .line 325
    return-void

    .line 321
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public systemServicesReady()V
    .registers 3

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    .line 238
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 239
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 240
    return-void
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .registers 8
    .param p1, "requestUid"    # I

    .line 2492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 2493
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2499
    .local v0, "ident":J
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2500
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2501
    const-string/jumbo v2, "get-health-stats-for-uids"

    const/16 v3, 0x3f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2503
    :cond_23
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_34
    .catchall {:try_start_12 .. :try_end_26} :catchall_32

    .line 2504
    :try_start_26
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2f

    .line 2510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2504
    return-object v3

    .line 2505
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUid":I
    :try_start_31
    throw v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_34
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 2510
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :catchall_32
    move-exception v2

    goto :goto_52

    .line 2506
    :catch_34
    move-exception v2

    .line 2507
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_35
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2508
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUid":I
    throw v2
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_32

    .line 2510
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :goto_52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2511
    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .registers 9
    .param p1, "requestUids"    # [I

    .line 2519
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2520
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2524
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 2527
    .local v2, "i":I
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2528
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2529
    const-string/jumbo v3, "get-health-stats-for-uids"

    const/16 v4, 0x3f

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2531
    :cond_24
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_27} :catch_42
    .catchall {:try_start_13 .. :try_end_27} :catchall_40

    .line 2532
    :try_start_27
    array-length v4, p1

    .line 2533
    .local v4, "N":I
    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    .line 2534
    .local v5, "results":[Landroid/os/health/HealthStatsParceler;
    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v4, :cond_38

    .line 2535
    aget v6, p1, v2

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v5, v2

    .line 2534
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 2537
    :cond_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_3d

    .line 2544
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2537
    return-object v5

    .line 2538
    .end local v4    # "N":I
    .end local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    :catchall_3d
    move-exception v4

    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    .end local v0    # "ident":J
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUids":[I
    :try_start_3f
    throw v4
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_40} :catch_42
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 2544
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :catchall_40
    move-exception v3

    goto :goto_45

    .line 2539
    :catch_42
    move-exception v3

    .line 2542
    .local v3, "ex":Ljava/lang/Exception;
    nop

    .end local v0    # "ident":J
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUids":[I
    :try_start_44
    throw v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_40

    .line 2544
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2545
    throw v3
.end method

.method public unregisterBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)Z
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/app/IBatteryStatsCallback;

    .line 2653
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2655
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2656
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->unregisterBatteryStatsCallbackLocked(Lcom/android/internal/app/IBatteryStatsCallback;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2657
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public updateAudioOutEnergyInfo(Landroid/os/AudioOutEnergyInfo;)V
    .registers 12
    .param p1, "info"    # Landroid/os/AudioOutEnergyInfo;

    .line 2605
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2607
    if-nez p1, :cond_1d

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalied AudioOutEnergyInfo given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    return-void

    .line 2612
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2613
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2614
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2615
    .local v6, "uptime":J
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/AudioOutEnergyInfo;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2620
    nop

    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    monitor-exit v0

    .line 2621
    return-void

    .line 2620
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method updateBatteryStatsOnActivityUsage(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "resumed"    # Z

    .line 2714
    move-object v11, p0

    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2715
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2716
    .local v7, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2717
    .local v9, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;

    move-object v1, v13

    move-object v2, p0

    move/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;ZJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2731
    nop

    .end local v7    # "elapsedRealtime":J
    .end local v9    # "uptime":J
    monitor-exit v12

    .line 2732
    return-void

    .line 2731
    :catchall_22
    move-exception v0

    monitor-exit v12
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public updateForegroundAppEnergyInfo(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ForegroundAppEnergyInfo;",
            ">;)V"
        }
    .end annotation

    .line 2585
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/os/ForegroundAppEnergyInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2587
    if-nez p1, :cond_1d

    .line 2588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalied display pmic data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display PMIC"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    return-void

    .line 2592
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2593
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2594
    .local v1, "elapsedRealtime":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DgjFBCsITV0HiT694IUDW8N7IFw;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DgjFBCsITV0HiT694IUDW8N7IFw;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/util/List;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2599
    nop

    .end local v1    # "elapsedRealtime":J
    monitor-exit v0

    .line 2600
    return-void

    .line 2599
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v1
.end method

.method updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cpuTimeDiff"    # J

    .line 2681
    move-object v11, p0

    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2682
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2683
    .local v5, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2684
    .local v7, "uptime":J
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/-$$Lambda$BatteryStatsService$pyi8m9NaRt46C7PNJ07wLxtbnrg;

    move-object v1, v13

    move-object v2, p0

    move/from16 v3, p2

    move-object v4, p1

    move-wide/from16 v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$pyi8m9NaRt46C7PNJ07wLxtbnrg;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2696
    nop

    .end local v5    # "elapsedRealtime":J
    .end local v7    # "uptime":J
    monitor-exit v12

    .line 2697
    return-void

    .line 2696
    :catchall_20
    move-exception v0

    monitor-exit v12
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public updateSemModemActivityInfo(Landroid/os/SemModemActivityInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/os/SemModemActivityInfo;

    .line 2626
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2628
    if-nez p1, :cond_1d

    .line 2629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid SemModemActivityInfo given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    return-void

    .line 2633
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2634
    :try_start_20
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BatteryStatsService$B2G04pGXnkHp_oO0I4ejNH7F7uc;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$B2G04pGXnkHp_oO0I4ejNH7F7uc;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/SemModemActivityInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2639
    monitor-exit v0

    .line 2640
    return-void

    .line 2639
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v1
.end method
