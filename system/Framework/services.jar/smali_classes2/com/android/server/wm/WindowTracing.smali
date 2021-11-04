.class Lcom/android/server/wm/WindowTracing;
.super Ljava/lang/Object;
.source "WindowTracing.java"


# static fields
.field private static final BUFFER_CAPACITY_ALL:I = 0x400000

.field private static final BUFFER_CAPACITY_CRITICAL:I = 0x80000

.field private static final BUFFER_CAPACITY_TRIM:I = 0x200000

.field private static final MAGIC_NUMBER_VALUE:J = 0x45434152544e4957L

.field private static final TAG:Ljava/lang/String; = "WindowTracing"

.field private static final TRACE_FILENAME:Ljava/lang/String; = "/data/misc/wmtrace/wm_trace.pb"


# instance fields
.field private final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mEnabled:Z

.field private final mEnabledLock:Ljava/lang/Object;

.field private volatile mEnabledLockFree:Z

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mLogLevel:I

.field private mLogOnFrame:Z

.field private mScheduled:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTraceFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;I)V
    .registers 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "choreographer"    # Landroid/view/Choreographer;
    .param p4, "bufferCapacity"    # I

    .line 85
    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowTracing;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "choreographer"    # Landroid/view/Choreographer;
    .param p4, "globalLock"    # Lcom/android/server/wm/WindowManagerGlobalLock;
    .param p5, "bufferCapacity"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowTracing$lz89IHzR4nKO_ZtXtwyNGkRleMY;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowTracing$lz89IHzR4nKO_ZtXtwyNGkRleMY;-><init>(Lcom/android/server/wm/WindowTracing;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 90
    iput-object p3, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    .line 91
    iput-object p2, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 92
    iput-object p4, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 94
    new-instance v1, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v1, p5}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 95
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 96
    return-void
.end method

.method static createDefaultAndStartLooper(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)Lcom/android/server/wm/WindowTracing;
    .registers 5
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/wm_trace.pb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "file":Ljava/io/File;
    new-instance v1, Lcom/android/server/wm/WindowTracing;

    const/high16 v2, 0x200000

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/android/server/wm/WindowTracing;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;I)V

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 12
    .param p1, "where"    # Ljava/lang/String;

    .line 292
    const-wide/16 v0, 0x20

    const-string/jumbo v2, "traceStateLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 294
    :try_start_8
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 295
    .local v2, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 296
    .local v3, "tokenOuter":J
    const-wide v5, 0x10600000001L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 297
    const-wide v5, 0x10900000002L

    invoke-virtual {v2, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 299
    const-wide v5, 0x10b00000003L

    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 300
    .local v5, "tokenInner":J
    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_6a
    .catchall {:try_start_8 .. :try_end_36} :catchall_68

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 301
    const-string v8, "dumpDebugLocked"

    invoke-static {v0, v1, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_62

    .line 303
    :try_start_3e
    iget-object v8, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    invoke-virtual {v8, v2, v9}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_5c

    .line 305
    :try_start_45
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 306
    nop

    .line 307
    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_62

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 308
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 309
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 310
    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v7, v2}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 311
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5b} :catch_6a
    .catchall {:try_start_4a .. :try_end_5b} :catchall_68

    .line 315
    .end local v2    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "tokenOuter":J
    .end local v5    # "tokenInner":J
    goto :goto_73

    .line 305
    .restart local v2    # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local v3    # "tokenOuter":J
    .restart local v5    # "tokenInner":J
    :catchall_5c
    move-exception v8

    :try_start_5d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 306
    nop

    .end local v2    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "tokenOuter":J
    .end local v5    # "tokenInner":J
    .end local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .end local p1    # "where":Ljava/lang/String;
    throw v8

    .line 307
    .restart local v2    # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local v3    # "tokenOuter":J
    .restart local v5    # "tokenInner":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .restart local p1    # "where":Ljava/lang/String;
    :catchall_62
    move-exception v8

    monitor-exit v7
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    :try_start_64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .end local p1    # "where":Ljava/lang/String;
    throw v8
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_68} :catch_6a
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    .line 315
    .end local v2    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "tokenOuter":J
    .end local v5    # "tokenInner":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .restart local p1    # "where":Ljava/lang/String;
    :catchall_68
    move-exception v2

    goto :goto_78

    .line 312
    :catch_6a
    move-exception v2

    .line 313
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string v3, "WindowTracing"

    const-string v4, "Exception while tracing state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_68

    .line 315
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_73
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 316
    nop

    .line 317
    return-void

    .line 315
    :goto_78
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 316
    throw v2
.end method

.method private logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .line 333
    const-string v0, "WindowTracing"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz p1, :cond_d

    .line 335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 338
    :cond_d
    return-void
.end method

.method private schedule()V
    .registers 3

    .line 278
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    if-eqz v0, :cond_5

    .line 279
    return-void

    .line 282
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 284
    return-void
.end method

.method private setBufferCapacity(ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "capacity"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing buffer capacity to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 175
    return-void
.end method

.method private setLogFrequency(ZLjava/io/PrintWriter;)V
    .registers 5
    .param p1, "onFrame"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log frequency to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    if-eqz p1, :cond_f

    const-string v1, "frame"

    goto :goto_12

    :cond_f
    const-string/jumbo v1, "transaction"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 169
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 170
    return-void
.end method

.method private setLogLevel(ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "logLevel"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log level to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 148
    iput p1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 150
    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    goto :goto_31

    .line 160
    :cond_1f
    const/high16 v0, 0x80000

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    goto :goto_31

    .line 156
    :cond_25
    const/high16 v0, 0x200000

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 157
    goto :goto_31

    .line 152
    :cond_2b
    const/high16 v0, 0x400000

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 153
    nop

    .line 164
    :goto_31
    return-void
.end method

.method private writeTraceToFileLocked()V
    .registers 8

    .line 346
    const-wide/16 v0, 0x20

    :try_start_2
    const-string/jumbo v2, "writeTraceToFileLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 347
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 348
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10600000001L

    const-wide v5, 0x45434152544e4957L    # 4.655612620390422E25

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 349
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_21} :catch_24
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    .line 353
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_2d

    :catchall_22
    move-exception v2

    goto :goto_32

    .line 350
    :catch_24
    move-exception v2

    .line 351
    .local v2, "e":Ljava/io/IOException;
    :try_start_25
    const-string v3, "WindowTracing"

    const-string v4, "Unable to write buffer to file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_22

    .line 353
    nop

    .end local v2    # "e":Ljava/io/IOException;
    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 354
    nop

    .line 355
    return-void

    .line 353
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 354
    throw v2
.end method


# virtual methods
.method getStatus()Ljava/lang/String;
    .registers 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "Enabled"

    goto :goto_15

    :cond_13
    const-string v1, "Disabled"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLog level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 253
    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    return-object v0
.end method

.method isEnabled()Z
    .registers 2

    .line 178
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    return v0
.end method

.method public synthetic lambda$new$0$WindowTracing(J)V
    .registers 4
    .param p1, "frameTimeNanos"    # J

    .line 69
    const-string/jumbo v0, "onFrame"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    return-void
.end method

.method logState(Ljava/lang/String;)V
    .registers 3
    .param p1, "where"    # Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 264
    return-void

    .line 267
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    if-eqz v0, :cond_f

    .line 268
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->schedule()V

    goto :goto_12

    .line 270
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 272
    :goto_12
    return-void
.end method

.method onShellCommand(Landroid/os/ShellCommand;)I
    .registers 11
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 182
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 183
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_140

    :cond_13
    goto :goto_60

    :sswitch_14
    const-string/jumbo v2, "transaction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x4

    goto :goto_61

    :sswitch_1f
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v6

    goto :goto_61

    :sswitch_2a
    const-string/jumbo v2, "level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x5

    goto :goto_61

    :sswitch_35
    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    goto :goto_61

    :sswitch_3f
    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v5

    goto :goto_61

    :sswitch_4a
    const-string/jumbo v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x6

    goto :goto_61

    :sswitch_55
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v4

    goto :goto_61

    :goto_60
    move v2, v3

    :goto_61
    packed-switch v2, :pswitch_data_15e

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string v2, "Window manager trace options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string v2, "  start: Start logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string v2, "  stop: Stop logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string v2, "  frame: Log trace once per frame"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const-string v2, "  transaction: Log each transaction"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    const-string v2, "  size: Set the maximum log size (in KB)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string v2, "  status: Print trace status"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string v2, "  level [lvl]: Set the log level between"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v2, "    lvl may be one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const-string v2, "      critical: Only visible windows with reduced information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v2, "      trim: All windows with reduced"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    const-string v2, "      all: All window and information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    return v3

    .line 225
    :pswitch_b5
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 227
    return v6

    .line 203
    :pswitch_c8
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "logLevelStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x179a1

    if-eq v7, v8, :cond_f9

    const v8, 0x367422    # 5.000777E-39f

    if-eq v7, v8, :cond_ee

    const v8, 0x745b779f

    if-eq v7, v8, :cond_e4

    :cond_e3
    goto :goto_102

    :cond_e4
    const-string v7, "critical"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e3

    move v3, v4

    goto :goto_102

    :cond_ee
    const-string/jumbo v7, "trim"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e3

    move v3, v5

    goto :goto_102

    :cond_f9
    const-string v7, "all"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e3

    move v3, v6

    :goto_102
    if-eqz v3, :cond_114

    if-eq v3, v5, :cond_110

    if-eq v3, v4, :cond_10c

    .line 218
    invoke-direct {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_118

    .line 214
    :cond_10c
    invoke-direct {p0, v4, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 215
    goto :goto_118

    .line 210
    :cond_110
    invoke-direct {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 211
    goto :goto_118

    .line 206
    :cond_114
    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 207
    nop

    .line 222
    :goto_118
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 223
    return v6

    .line 199
    .end local v2    # "logLevelStr":Ljava/lang/String;
    :pswitch_11e
    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/WindowTracing;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 201
    return v6

    .line 195
    :pswitch_127
    invoke-direct {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 196
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 197
    return v6

    .line 192
    :pswitch_130
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 193
    return v6

    .line 189
    :pswitch_138
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 190
    return v6

    .line 186
    :pswitch_13c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 187
    return v6

    :sswitch_data_140
    .sparse-switch
        -0x3532300e -> :sswitch_55
        0x35e001 -> :sswitch_4a
        0x360802 -> :sswitch_3f
        0x5d2a96d -> :sswitch_35
        0x6219b84 -> :sswitch_2a
        0x68ac462 -> :sswitch_1f
        0x7fa0d2de -> :sswitch_14
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_13c
        :pswitch_138
        :pswitch_130
        :pswitch_127
        :pswitch_11e
        :pswitch_c8
        :pswitch_b5
    .end packed-switch
.end method

.method startTrace(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 99
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    .line 100
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 101
    return-void

    .line 103
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_d
    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/protolog/ProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 108
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_41

    .line 109
    const-string/jumbo v0, "trace.enable"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 110
    return-void

    .line 108
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method stopTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;Z)V

    .line 118
    return-void
.end method

.method stopTrace(Ljava/io/PrintWriter;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "writeToFile"    # Z

    .line 126
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    .line 127
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 128
    return-void

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 134
    if-nez v1, :cond_58

    .line 138
    if-eqz p2, :cond_4f

    .line 139
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 142
    :cond_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_d .. :try_end_50} :catchall_66

    .line 143
    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/protolog/ProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 144
    return-void

    .line 135
    :cond_58
    :try_start_58
    const-string v1, "ERROR: tracing was re-enabled while waiting for flush."

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "tracing enabled while waiting for flush."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "writeToFile":Z
    throw v1

    .line 142
    .restart local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "writeToFile":Z
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_66

    throw v1
.end method

.method writeTraceToFile()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 328
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_f

    .line 329
    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/protolog/ProtoLogImpl;->writeProtoLogToFile()V

    .line 330
    return-void

    .line 328
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method
