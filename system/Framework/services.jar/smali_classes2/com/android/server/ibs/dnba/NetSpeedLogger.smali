.class public Lcom/android/server/ibs/dnba/NetSpeedLogger;
.super Ljava/lang/Object;
.source "NetSpeedLogger.java"


# static fields
.field public static final LOG_LOCAL_SIZE:I = 0xbb8

.field private static sInstance:Lcom/android/server/ibs/dnba/NetSpeedLogger;


# instance fields
.field mIsShowingGlobalLog:Z

.field mIsUsed:Z

.field private mNetSpeedLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->sInstance:Lcom/android/server/ibs/dnba/NetSpeedLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->mNetSpeedLog:Landroid/util/LocalLog;

    .line 19
    const-string/jumbo v0, "persist.log.seclevel"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->mIsShowingGlobalLog:Z

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->mIsUsed:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/ibs/dnba/NetSpeedLogger;
    .registers 2

    const-class v0, Lcom/android/server/ibs/dnba/NetSpeedLogger;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/android/server/ibs/dnba/NetSpeedLogger;->sInstance:Lcom/android/server/ibs/dnba/NetSpeedLogger;

    if-nez v1, :cond_e

    .line 24
    new-instance v1, Lcom/android/server/ibs/dnba/NetSpeedLogger;

    invoke-direct {v1}, Lcom/android/server/ibs/dnba/NetSpeedLogger;-><init>()V

    sput-object v1, Lcom/android/server/ibs/dnba/NetSpeedLogger;->sInstance:Lcom/android/server/ibs/dnba/NetSpeedLogger;

    .line 26
    :cond_e
    sget-object v1, Lcom/android/server/ibs/dnba/NetSpeedLogger;->sInstance:Lcom/android/server/ibs/dnba/NetSpeedLogger;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 22
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public add(Lcom/android/server/ibs/dnba/NetSpeedStatus;)V
    .registers 4
    .param p1, "stat"    # Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 30
    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->mIsUsed:Z

    if-nez v0, :cond_7

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->mIsUsed:Z

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->mNetSpeedLog:Landroid/util/LocalLog;

    invoke-virtual {p1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->dumpNetSpeedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public dumpNetSpeedLogger(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->mIsShowingGlobalLog:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->mIsUsed:Z

    if-ne v0, v1, :cond_1f

    .line 39
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 40
    const-string v0, "NetSpeedLogger history Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    const-string v0, "APP name/Start Time/End time/Limited Netspeed/Dropped Package/Dropped Bytes/Command/Limited Reason/Released Reason"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedLogger;->mNetSpeedLog:Landroid/util/LocalLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 45
    :cond_1f
    return-void
.end method
