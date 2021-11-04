.class public Lcom/android/server/wm/CoreLiveLog;
.super Ljava/lang/Object;
.source "CoreLiveLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;,
        Lcom/android/server/wm/CoreLiveLog$StatisticPool;
    }
.end annotation


# static fields
.field static final ENABLE_DISABLE:I = 0x2

.field static final ENABLE_POSSIBLE:I = 0x1

.field public static final ERROR_DEFAULT:Ljava/lang/String; = "test_error_code"

.field public static final ERROR_TRANSITION_TIMEOUT:Ljava/lang/String; = "TRANSITION_TIMEOUT"

.field public static final MAX_CHILD_WINDOW:I = 0xa

.field public static final MAX_CHILD_WINDOW_LOG:I = 0x5

.field public static final REPORT_INTERVAL_HOME_LAUNCH:I = 0x64

.field public static final REPORT_INTERVAL_ROTATION:I = 0x1e

.field public static final STAT_HOME_LAUNCH:Ljava/lang/String; = "STAT_HOME_LAUNCH"

.field public static final STAT_ROTATION:Ljava/lang/String; = "STAT_ROTATION"

.field private static final TAG:Ljava/lang/String; = "CoreLiveLog"

.field public static final TOO_MANY_WINDOW:I = 0xa

.field public static final TRANSITION_SLOW:F = 0.8f

.field public static final WARNING_TOO_MANY_WINDOW:Ljava/lang/String; = "WINDOW_TOO_MANY"

.field public static final WARNING_TRANSITION_SLOW:Ljava/lang/String; = "TRANSITION_SLOW"

.field private static sContext:Landroid/content/Context;

.field private static sDebug:Z

.field private static sPossible:I


# instance fields
.field private mDescriptor:Ljava/io/FileDescriptor;

.field private mOut:Ljava/io/File;

.field private mPrint:Ljava/io/PrintWriter;

.field private mStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 36
    const-string v0, "CoreLiveLog"

    .line 37
    const-string/jumbo v1, "persist.live_alert"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/CoreLiveLog;->sDebug:Z

    .line 55
    sput v2, Lcom/android/server/wm/CoreLiveLog;->sPossible:I

    .line 70
    const/4 v1, 0x2

    :try_start_f
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/log/wmLog/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    :goto_21
    if-ge v2, v5, :cond_2c

    aget-object v6, v4, v2

    .line 73
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 72
    nop

    .end local v6    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 75
    :cond_2c
    const-string v2, "clear dir: /data/log/wmLog/"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 77
    :cond_32
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 78
    const-string v2, "fail to create dir: /data/log/wmLog/"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput v1, Lcom/android/server/wm/CoreLiveLog;->sPossible:I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3f} :catch_40

    .line 86
    .end local v3    # "dir":Ljava/io/File;
    :cond_3f
    :goto_3f
    goto :goto_48

    .line 83
    :catch_40
    move-exception v2

    .line 84
    .local v2, "ee":Ljava/lang/Exception;
    const-string v3, "fail to clear dir: /data/log/wmLog/"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sput v1, Lcom/android/server/wm/CoreLiveLog;->sPossible:I

    .line 87
    .end local v2    # "ee":Ljava/lang/Exception;
    :goto_48
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 35
    sget-object v0, Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 35
    sput-object p0, Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 35
    sget-boolean v0, Lcom/android/server/wm/CoreLiveLog;->sDebug:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CoreLiveLog;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog;->mOut:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/CoreLiveLog;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CoreLiveLog;
    .param p1, "x1"    # Ljava/io/File;

    .line 35
    iput-object p1, p0, Lcom/android/server/wm/CoreLiveLog;->mOut:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/FileInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CoreLiveLog;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog;->mStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/CoreLiveLog;Ljava/io/FileInputStream;)Ljava/io/FileInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CoreLiveLog;
    .param p1, "x1"    # Ljava/io/FileInputStream;

    .line 35
    iput-object p1, p0, Lcom/android/server/wm/CoreLiveLog;->mStream:Ljava/io/FileInputStream;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CoreLiveLog;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog;->mDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/CoreLiveLog;Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CoreLiveLog;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 35
    iput-object p1, p0, Lcom/android/server/wm/CoreLiveLog;->mDescriptor:Ljava/io/FileDescriptor;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/CoreLiveLog;)Ljava/io/PrintWriter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CoreLiveLog;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/CoreLiveLog;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CoreLiveLog;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 35
    iput-object p1, p0, Lcom/android/server/wm/CoreLiveLog;->mPrint:Ljava/io/PrintWriter;

    return-object p1
.end method

.method public static isPossible()Z
    .registers 2

    .line 94
    sget v0, Lcom/android/server/wm/CoreLiveLog;->sPossible:I

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 95
    invoke-static {}, Lcom/android/server/wm/CoreLiveLogUtil;->isDebug()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;

    .line 96
    invoke-static {v0}, Lcom/android/server/wm/CoreLiveLogUtil;->isUserTrial(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_18

    .line 99
    :cond_14
    const/4 v0, 0x2

    sput v0, Lcom/android/server/wm/CoreLiveLog;->sPossible:I

    goto :goto_1a

    .line 97
    :cond_18
    :goto_18
    sput v1, Lcom/android/server/wm/CoreLiveLog;->sPossible:I

    .line 102
    :cond_1a
    :goto_1a
    sget v0, Lcom/android/server/wm/CoreLiveLog;->sPossible:I

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    sput-object p0, Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;

    .line 91
    return-void
.end method


# virtual methods
.method public synthetic lambda$sendLog$0$CoreLiveLog(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .param p1, "inst"    # Ljava/lang/Runnable;
    .param p2, "code"    # Ljava/lang/String;

    .line 127
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 128
    if-eqz p1, :cond_a

    .line 129
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_a
    sget-object v0, Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog;->mOut:Ljava/io/File;

    invoke-static {v0, v1, p2}, Lcom/android/server/wm/CoreLiveLogUtil;->sendToDiagmon(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/CoreLiveLog;->release()V

    .line 133
    return-void
.end method

.method public release()V
    .registers 3

    .line 107
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog;->mStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_a

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog;->mStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 113
    :cond_a
    :goto_a
    iput-object v0, p0, Lcom/android/server/wm/CoreLiveLog;->mStream:Ljava/io/FileInputStream;

    .line 114
    goto :goto_14

    .line 113
    :catchall_d
    move-exception v1

    goto :goto_15

    .line 110
    :catch_f
    move-exception v1

    .line 111
    .local v1, "ee":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    .end local v1    # "ee":Ljava/io/IOException;
    goto :goto_a

    .line 115
    :goto_14
    return-void

    .line 113
    :goto_15
    iput-object v0, p0, Lcom/android/server/wm/CoreLiveLog;->mStream:Ljava/io/FileInputStream;

    .line 114
    throw v1
.end method

.method public sendLog(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .param p1, "inst"    # Ljava/lang/Runnable;
    .param p2, "code"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog;->mOut:Ljava/io/File;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;

    if-nez v0, :cond_9

    goto :goto_17

    .line 126
    :cond_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$3TMk6CUHmmtaYB-b8Cq23oiWcF0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$3TMk6CUHmmtaYB-b8Cq23oiWcF0;-><init>(Lcom/android/server/wm/CoreLiveLog;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    return-void

    .line 123
    :cond_17
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot send log "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoreLiveLog"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public sendLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "code"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/CoreLiveLog;->sendLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public sendLogImmediate(Ljava/lang/String;)V
    .registers 4
    .param p1, "error_code"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog;->mOut:Ljava/io/File;

    if-eqz v0, :cond_10

    sget-object v1, Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;

    if-nez v1, :cond_9

    goto :goto_10

    .line 141
    :cond_9
    invoke-static {v1, v0, p1}, Lcom/android/server/wm/CoreLiveLogUtil;->sendToDiagmon(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/CoreLiveLog;->release()V

    .line 143
    return-void

    .line 138
    :cond_10
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot send log "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoreLiveLog"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method
