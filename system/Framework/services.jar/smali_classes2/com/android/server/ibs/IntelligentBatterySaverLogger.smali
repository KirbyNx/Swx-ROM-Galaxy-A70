.class public Lcom/android/server/ibs/IntelligentBatterySaverLogger;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverLogger.java"


# static fields
.field public static final LOG_LOCAL_SIZE:I = 0xbb8

.field private static sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;


# instance fields
.field private mIBSLog:Landroid/util/LocalLog;

.field mIsShowingGlobalLog:Z

.field mIsUsed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsShowingGlobalLog:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    .registers 2

    const-class v0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    monitor-enter v0

    .line 26
    :try_start_3
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    if-nez v1, :cond_e

    .line 27
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-direct {v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;-><init>()V

    sput-object v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 29
    :cond_e
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 25
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    if-nez v0, :cond_7

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public dumpIBSHistoryLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 40
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsShowingGlobalLog:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    if-ne v0, v1, :cond_1a

    .line 41
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 42
    const-string v0, "IntelligentBatterySaverLogger history Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 46
    :cond_1a
    return-void
.end method
