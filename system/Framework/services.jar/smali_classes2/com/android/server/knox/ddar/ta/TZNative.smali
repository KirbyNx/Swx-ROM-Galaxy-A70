.class Lcom/android/server/knox/ddar/ta/TZNative;
.super Ljava/lang/Object;
.source "TZNative.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DualDAR:TZNative"


# instance fields
.field private mDDARTZNativePtr_:J

.field private mIsLoaded:Z

.field private mProcessName:Ljava/lang/String;

.field private mRecvBufSize:I

.field private mRootName:Ljava/lang/String;

.field private mSendBufSize:I

.field private mTAId:I

.field private mTATechnology:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .param p1, "taId"    # I
    .param p2, "taTechnology"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/String;
    .param p4, "process"    # Ljava/lang/String;
    .param p5, "sendbufsize"    # I
    .param p6, "recvbufsize"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TZNative constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDAR:TZNative"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 24
    iput p1, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mTAId:I

    .line 25
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 26
    iput p5, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mSendBufSize:I

    .line 27
    iput p6, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mRecvBufSize:I

    .line 28
    iput-object p2, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mTATechnology:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mRootName:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mProcessName:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    .line 32
    return-void
.end method

.method private native nativeDDARProcessTACommand(Lcom/android/server/knox/ddar/ta/TACommandRequest;Lcom/android/server/knox/ddar/ta/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(IJJ)Z
    .registers 25
    .param p1, "taFd"    # I
    .param p2, "taOffset"    # J
    .param p4, "taSize"    # J

    .line 35
    move-object/from16 v11, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    iget-wide v0, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    const-wide/16 v16, 0x0

    cmp-long v0, v0, v16

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1a

    .line 36
    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "DualDAR:TZNative"

    const-string v2, "TZNative::loadTA called for TA that is already loaded. Call Ignored"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    return v10

    .line 40
    :cond_1a
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v12, v0

    if-gtz v2, :cond_78

    cmp-long v0, v14, v0

    if-lez v0, :cond_27

    move v12, v9

    goto :goto_79

    .line 45
    :cond_27
    long-to-int v3, v12

    long-to-int v4, v14

    iget v5, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mTAId:I

    iget v6, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mSendBufSize:I

    iget v7, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mRecvBufSize:I

    iget-object v8, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mTATechnology:Ljava/lang/String;

    iget-object v0, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mRootName:Ljava/lang/String;

    iget-object v2, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mProcessName:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move/from16 v2, p1

    move v12, v9

    move-object v9, v0

    move v0, v10

    move-object/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/knox/ddar/ta/TZNative;->nativeDDARCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 47
    cmp-long v1, v1, v16

    if-nez v1, :cond_54

    .line 48
    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "DualDAR:TZNative"

    const-string v2, "Error: nativeDDARCreateTLCommunicationContext failed"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    return v12

    .line 52
    :cond_54
    const-class v1, Lcom/android/server/knox/ddar/ta/TZNative;

    monitor-enter v1

    .line 53
    :try_start_57
    iput-boolean v0, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    .line 54
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_75

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TZNative::loadTA: mDDARTZNativePtr_ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v11, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "DualDAR:TZNative"

    invoke-static {v3, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 56
    return v0

    .line 54
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0

    .line 40
    :cond_78
    move v12, v9

    .line 41
    :goto_79
    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "DualDAR:TZNative"

    const-string/jumbo v2, "loadTA: cannot get ta offset or size"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    return v12
.end method

.method public native nativeDDARCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDDARDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Lcom/android/server/knox/ddar/ta/TACommandRequest;)Lcom/android/server/knox/ddar/ta/TACommandResponse;
    .registers 7
    .param p1, "request"    # Lcom/android/server/knox/ddar/ta/TACommandRequest;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TZNative::processTACommand: request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; mDDARTZNativePtr_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDAR:TZNative"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    new-instance v0, Lcom/android/server/knox/ddar/ta/TACommandResponse;

    invoke-direct {v0}, Lcom/android/server/knox/ddar/ta/TACommandResponse;-><init>()V

    .line 76
    .local v0, "response":Lcom/android/server/knox/ddar/ta/TACommandResponse;
    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/ddar/ta/TZNative;->nativeDDARProcessTACommand(Lcom/android/server/knox/ddar/ta/TACommandRequest;Lcom/android/server/knox/ddar/ta/TACommandResponse;)Z

    move-result v2

    .line 77
    .local v2, "ret":Z
    if-nez v2, :cond_37

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "TZNative::processTACommand: Error: nativeDDARProcessTACommand returned failure"

    invoke-static {v3, v4, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    const/4 v1, 0x0

    return-object v1

    .line 81
    :cond_37
    return-object v0
.end method

.method public unloadTA()V
    .registers 6

    .line 60
    const-class v0, Lcom/android/server/knox/ddar/ta/TZNative;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    if-nez v1, :cond_11

    goto :goto_23

    .line 65
    :cond_11
    iput-boolean v2, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    .line 66
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3f

    .line 68
    invoke-virtual {p0}, Lcom/android/server/knox/ddar/ta/TZNative;->nativeDDARDestroyTLCommunicationContext()V

    .line 69
    iput-wide v3, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 70
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "DualDAR:TZNative"

    const-string v2, "TZNative::unloadTA called"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 71
    return-void

    .line 62
    :cond_23
    :goto_23
    :try_start_23
    const-string v1, "DualDAR:TZNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/knox/ddar/ta/TZNative;->mIsLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    monitor-exit v0

    return-void

    .line 66
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_3f

    throw v1
.end method
