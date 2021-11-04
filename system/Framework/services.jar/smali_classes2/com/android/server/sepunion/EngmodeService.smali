.class public final Lcom/android/server/sepunion/EngmodeService;
.super Lcom/samsung/android/sepunion/IEngmodeService$Stub;
.source "EngmodeService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/EngmodeService$MultipartUtility;,
        Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;,
        Lcom/android/server/sepunion/EngmodeService$getTimeThread;
    }
.end annotation


# static fields
.field private static final EM_TIMER_SIX_HOUR:I = 0xa4cb80

.field private static final EM_TOKEN_PROP:Ljava/lang/String; = "security.em.tstate"

.field private static final MODE_REFILL_AND_CHECK:I = 0xff0f

.field private static final TAG:Ljava/lang/String; = "engmode_service"


# instance fields
.field private mAvailableNetwork:Z

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mCheckServerTime:Ljava/util/TimerTask;

.field private mContext:Landroid/content/Context;

.field private mEMServerDate:Ljava/lang/String;

.field private mEMServerLongDate:J

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mTimeThread:Ljava/lang/Thread;

.field private mTimerObserve:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IEngmodeService$Stub;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Lcom/android/server/sepunion/EngmodeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/EngmodeService$2;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/EngmodeService;->mAvailableNetwork:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    .line 107
    const-string v0, "engmode_service"

    const-string v1, "EM Service is started"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/EngmodeService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/sepunion/EngmodeService;->isTokenInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 57
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 57
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/sepunion/EngmodeService;[B)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;
    .param p1, "x1"    # [B

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/EngmodeService;->updateTime([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/EngmodeService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/EngmodeService;)Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 57
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 57
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;
    .param p1, "x1"    # Ljava/util/Timer;

    .line 57
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/EngmodeService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/sepunion/EngmodeService;->registerNetworkCallback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/sepunion/EngmodeService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/server/sepunion/EngmodeService;->mAvailableNetwork:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 57
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mCheckServerTime:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/sepunion/EngmodeService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;
    .param p1, "x1"    # J

    .line 57
    iput-wide p1, p0, Lcom/android/server/sepunion/EngmodeService;->mEMServerLongDate:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/sepunion/EngmodeService;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/sepunion/EngmodeService;->makeTimeReq()[B

    move-result-object v0

    return-object v0
.end method

.method private getEmManager()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 240
    if-nez v0, :cond_18

    .line 241
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 242
    if-nez v0, :cond_18

    .line 243
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private isTokenInstalled()Z
    .registers 4

    .line 129
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "security.em.tstate"

    const-string v2, "FAILED"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "tokenState":Ljava/lang/String;
    const-string v2, "NM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_15

    if-eqz v2, :cond_14

    .line 131
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_14
    return v0

    .line 134
    .end local v1    # "tokenState":Ljava/lang/String;
    :catch_15
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    return v0
.end method

.method private makeTimeReq()[B
    .registers 3

    .line 250
    const-string v0, "engmode_service"

    const-string/jumbo v1, "makeTimeReq() called"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result v1

    if-nez v1, :cond_15

    .line 253
    const-string v1, "Failed to get manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_15
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->makeTimeReq()[B

    move-result-object v0

    return-object v0
.end method

.method private registerNetworkCallback()Z
    .registers 7

    .line 142
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 144
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 146
    invoke-virtual {v2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 147
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/4 v4, 0x2

    .line 148
    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 150
    .local v2, "builder":Landroid/net/NetworkRequest$Builder;
    new-instance v4, Lcom/android/server/sepunion/EngmodeService$3;

    invoke-direct {v4, p0}, Lcom/android/server/sepunion/EngmodeService$3;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v4, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 180
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v4, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_30

    .line 184
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "builder":Landroid/net/NetworkRequest$Builder;
    nop

    .line 185
    return v3

    .line 181
    :catch_30
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    return v0
.end method

.method private updateTime([B)Ljava/lang/String;
    .registers 4
    .param p1, "resTime"    # [B

    .line 261
    const-string v0, "engmode_service"

    const-string/jumbo v1, "updateTimeReq() called"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0}, Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z

    move-result v1

    if-nez v1, :cond_16

    .line 264
    const-string v1, "Failed to get manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, ""

    return-object v0

    .line 268
    :cond_16
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->updateTime([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 234
    const-string v0, "\n##### EngmodeService #####\n##### (dumpsys sepunion EngmodeService) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerTime()J
    .registers 11

    .line 342
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    const-string v1, "engmode_service"

    const-string v2, "getServerTime() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-boolean v1, p0, Lcom/android/server/sepunion/EngmodeService;->mAvailableNetwork:Z

    const-wide/16 v2, 0x1

    if-nez v1, :cond_19

    .line 346
    const-string v1, "engmode_service"

    const-string v4, "Network isn\'t connected\n"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    monitor-exit v0

    return-wide v2

    .line 350
    :cond_19
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    if-eqz v1, :cond_26

    .line 351
    const-string v1, "engmode_service"

    const-string v4, "Already running time thread"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_70

    return-wide v2

    .line 356
    :cond_26
    :try_start_26
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/sepunion/EngmodeService$getTimeThread;

    invoke-direct {v4, p0}, Lcom/android/server/sepunion/EngmodeService$getTimeThread;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    .line 357
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_39} :catch_65
    .catchall {:try_start_26 .. :try_end_39} :catchall_70

    .line 362
    .local v4, "startTime":J
    :cond_39
    const-wide/16 v6, 0x64

    :try_start_3b
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 363
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_48} :catch_4d
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_48} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_48} :catch_65
    .catchall {:try_start_3b .. :try_end_48} :catchall_70

    if-nez v1, :cond_4e

    .line 364
    :cond_4a
    goto :goto_5a

    .line 368
    :catch_4b
    move-exception v1

    goto :goto_4f

    .line 366
    :catch_4d
    move-exception v1

    .line 370
    :cond_4e
    nop

    .line 371
    :goto_4f
    :try_start_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_65
    .catchall {:try_start_4f .. :try_end_53} :catchall_70

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x2af8

    cmp-long v1, v6, v8

    if-ltz v1, :cond_39

    .line 376
    .end local v4    # "startTime":J
    :goto_5a
    nop

    .line 378
    :try_start_5b
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;

    if-eqz v1, :cond_63

    .line 379
    iget-wide v1, p0, Lcom/android/server/sepunion/EngmodeService;->mEMServerLongDate:J

    monitor-exit v0

    return-wide v1

    .line 381
    :cond_63
    monitor-exit v0

    return-wide v2

    .line 372
    :catch_65
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    .line 375
    const-wide/16 v2, -0x3e8

    monitor-exit v0

    return-wide v2

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_70

    throw v1
.end method

.method public makeTimerTask()V
    .registers 2

    .line 78
    new-instance v0, Lcom/android/server/sepunion/EngmodeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/EngmodeService$1;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mCheckServerTime:Ljava/util/TimerTask;

    .line 100
    return-void
.end method

.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 200
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_23

    .line 201
    :try_start_4
    const-string v0, "engmode_service"

    const-string/jumbo v1, "onBootPhase() boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_23

    .line 207
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catch_1e
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    :goto_23
    nop

    .line 210
    :goto_24
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "opt"    # Landroid/os/Bundle;

    .line 192
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 195
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 189
    return-void
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 213
    return-void
.end method

.method public onStopUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 216
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 219
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 222
    return-void
.end method
