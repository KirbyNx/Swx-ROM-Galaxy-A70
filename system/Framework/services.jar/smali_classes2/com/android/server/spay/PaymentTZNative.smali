.class Lcom/android/server/spay/PaymentTZNative;
.super Ljava/lang/Object;
.source "PaymentTZNative.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# instance fields
.field private mIsLoaded:Z

.field private mMOPTZNativePtr_:J

.field private mProcessName:Ljava/lang/String;

.field private mRecvBufSize:I

.field private mRootName:Ljava/lang/String;

.field private mSendBufSize:I

.field private mTAId:I

.field private mTATechnology:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "taId"    # I
    .param p2, "taTechnology"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/String;
    .param p4, "process"    # Ljava/lang/String;
    .param p5, "sendbufsize"    # I
    .param p6, "recvbufsize"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentTZNative constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1d
    iput p1, p0, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 32
    iput p5, p0, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    .line 33
    iput p6, p0, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    .line 34
    iput-object p2, p0, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 38
    return-void
.end method

.method private native nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(Landroid/content/Context;IJJ)Z
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taFd"    # I
    .param p3, "taOffset"    # J
    .param p5, "taSize"    # J

    .line 41
    move-object/from16 v12, p0

    move-wide/from16 v13, p3

    move-wide/from16 v10, p5

    iget-wide v0, v12, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v15, 0x0

    cmp-long v0, v0, v15

    const/4 v9, 0x1

    if-eqz v0, :cond_17

    .line 42
    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentTZNative::loadTA called for TA that is already loaded. Call Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return v9

    .line 46
    :cond_17
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v13, v0

    const/16 v17, 0x0

    if-gtz v2, :cond_7b

    cmp-long v0, v10, v0

    if-lez v0, :cond_25

    goto :goto_7b

    .line 51
    :cond_25
    long-to-int v4, v13

    long-to-int v5, v10

    iget v6, v12, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    iget v7, v12, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    iget v8, v12, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    iget-object v0, v12, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move/from16 v3, p2

    move-object v9, v0

    move-object/from16 v10, v19

    move-object/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/spay/PaymentTZNative;->nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 53
    cmp-long v0, v0, v15

    if-nez v0, :cond_54

    .line 54
    const-string v0, "PaymentManagerService"

    const-string v1, "Error: nativeCreateTLCommunicationContext failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v17

    .line 58
    :cond_54
    const-class v1, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v1

    .line 59
    const/4 v0, 0x1

    :try_start_58
    iput-boolean v0, v12, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 60
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_78

    .line 61
    sget-boolean v1, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v1, :cond_77

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v12, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_77
    return v0

    .line 60
    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    .line 47
    :cond_7b
    :goto_7b
    const-string v0, "PaymentManagerService"

    const-string v1, "SpayFw_loadTA: cannot get ta offset or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v17
.end method

.method public native nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .registers 6
    .param p1, "request"    # Landroid/spay/TACommandRequest;

    .line 80
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    const-string v1, "PaymentManagerService"

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentTZNative::processTACommand: request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mMOPTZNativePtr_ = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_24
    new-instance v0, Landroid/spay/TACommandResponse;

    invoke-direct {v0}, Landroid/spay/TACommandResponse;-><init>()V

    .line 82
    .local v0, "response":Landroid/spay/TACommandResponse;
    invoke-direct {p0, p1, v0}, Lcom/android/server/spay/PaymentTZNative;->nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z

    move-result v2

    .line 83
    .local v2, "ret":Z
    if-nez v2, :cond_36

    .line 84
    const-string v3, "PaymentTZNative::processTACommand: Error: nativeProcessTACommand returned failure"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x0

    return-object v1

    .line 87
    :cond_36
    return-object v0
.end method

.method public unloadTA()V
    .registers 6

    .line 66
    const-class v0, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    iget-boolean v1, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    if-nez v1, :cond_10

    goto :goto_25

    .line 71
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 72
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3f

    .line 74
    invoke-virtual {p0}, Lcom/android/server/spay/PaymentTZNative;->nativeDestroyTLCommunicationContext()V

    .line 75
    iput-wide v3, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 76
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentTZNative::unloadTA called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_24
    return-void

    .line 68
    :cond_25
    :goto_25
    :try_start_25
    const-string v1, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-exit v0

    return-void

    .line 72
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_3f

    throw v1
.end method
