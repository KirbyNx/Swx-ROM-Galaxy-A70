.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.super Ljava/lang/Object;
.source "NetworkAnalyticsDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static REATTEMPT_COMMAND_ACTIVATE:I = 0x0

.field private static REATTEMPT_COMMAND_DEACTIVATE:I = 0x0

.field private static REATTEMPT_COMMAND_FREQUENCY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDriver"

.field private static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# instance fields
.field atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field private dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

.field private mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field public ncmVersion:Ljava/lang/String;

.field private stateOfFileDescriptor:Z

.field private stateOfIntervalSet:Z

.field private stateOfThread:Z

.field private syncObject:Ljava/lang/Object;

.field private test:Ljava/lang/String;

.field public versionMismatchCheck:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_ACTIVATE:I

    .line 35
    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_DEACTIVATE:I

    .line 36
    const/4 v0, 0x5

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_FREQUENCY:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V
    .registers 5
    .param p1, "connectionManager"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;
    .param p2, "dataDeliver"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 40
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 41
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->syncObject:Ljava/lang/Object;

    .line 43
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfThread:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    .line 46
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    .line 48
    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    .line 50
    const-string/jumbo v0, "{ \"src\":\"10.10.12.12\", \"dst\":\"66.7.251.20\", \"sport\":\"5000\", \"dport\":\"443\", \"uid\":\"10197\", \"pid\":\"666\", \"bsent\":\"1400\", \"brecv\":\"4500\", \"hostname\":\"www.space.com\", \"protocol\":\"tcp\", \"hash\":\"a0627953\" }"

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->test:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 57
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 29
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 29
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    .param p1, "x1"    # Z

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    return-void
.end method

.method public static getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    .registers 3
    .param p0, "connectionManager"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;
    .param p1, "dataDeliver"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 64
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 66
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    return-object v0
.end method

.method private setStateOfCharDevice(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    .line 100
    return-void
.end method

.method private setStateOfThread(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 213
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    return-void
.end method


# virtual methods
.method public native activate(I)I
.end method

.method public beginDataRecording(I)V
    .registers 6
    .param p1, "flowType"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    if-eqz v0, :cond_5

    .line 139
    return-void

    .line 140
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->activate(I)I

    move-result v0

    .line 141
    .local v0, "returnValue":I
    if-gez v0, :cond_13

    .line 142
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: Activation ioctl failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 145
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    .line 146
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 147
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    .line 149
    return-void
.end method

.method public checkDataCollectionState()V
    .registers 1

    .line 183
    return-void
.end method

.method public native checkNcmVersion()I
.end method

.method public declared-synchronized checkNcmVersionMismatch()I
    .registers 4

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    if-nez v0, :cond_27

    .line 106
    const/4 v0, -0x1

    .line 107
    .local v0, "returnValue":I
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersion()I

    move-result v1

    move v0, v1

    .line 108
    if-gez v0, :cond_20

    .line 109
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: Mismatch between kernel and userspace npa version."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v0, -0x14

    .line 111
    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2f

    .line 112
    monitor-exit p0

    return v0

    .line 114
    .end local p0    # "this":Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    .line 116
    .end local v0    # "returnValue":I
    :cond_27
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return v0

    .line 104
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native closeDevice()I
.end method

.method public native deactivate()I
.end method

.method public endDataRecording()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    if-nez v0, :cond_5

    .line 155
    return-void

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getActiveProfilesNumber()I

    move-result v0

    if-lez v0, :cond_e

    .line 158
    return-void

    .line 161
    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->cancel(Z)Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->deactivate()I

    move-result v1

    .line 165
    .local v1, "returnValue":I
    const-string v2, "NetworkAnalytics:NetworkAnalyticsDriver"

    if-gez v1, :cond_29

    .line 166
    const-string v0, "endDataRecording: Deactivation ioctl failed."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 169
    :cond_29
    iput-boolean v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->closeDevice()I

    move-result v1

    .line 171
    if-gez v1, :cond_37

    .line 172
    const-string v0, "endDataRecording: closing of character device failed."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 175
    :cond_37
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V

    .line 177
    .end local v1    # "returnValue":I
    return-void
.end method

.method public native getNcmVersion()I
.end method

.method public jniSendingData(Ljava/lang/String;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->accumulateData(Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public declared-synchronized openCharDevice(I)I
    .registers 5
    .param p1, "writeEnabled"    # I

    monitor-enter p0

    .line 72
    const/4 v0, -0x1

    .line 73
    .local v0, "returnValue":I
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    if-nez v1, :cond_1c

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openDevice(I)I

    move-result v1

    move v0, v1

    .line 75
    if-gez v0, :cond_18

    .line 76
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: Opening of character device failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_3d

    .line 77
    const/16 v0, -0x13

    .line 78
    monitor-exit p0

    return v0

    .line 80
    .end local p0    # "this":Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    :cond_18
    const/4 v1, 0x1

    :try_start_19
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V

    .line 82
    :cond_1c
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    if-nez v1, :cond_3a

    .line 83
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->getNcmVersion()I

    move-result v1

    move v0, v1

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 85
    if-gez v0, :cond_3a

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 87
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: Get npa version failed. Char device in open state."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_3d

    .line 88
    const/4 v0, -0x1

    .line 89
    monitor-exit p0

    return v0

    .line 92
    :cond_3a
    const/4 v0, 0x0

    .line 93
    monitor-exit p0

    return v0

    .line 71
    .end local v0    # "returnValue":I
    .end local p1    # "writeEnabled":I
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native openDevice(I)I
.end method

.method public native readDevice()Ljava/lang/String;
.end method

.method public native setIntervalValue(I)I
.end method

.method public declared-synchronized setIntervalValueForFlow(I)I
    .registers 5
    .param p1, "intervalValue"    # I

    monitor-enter p0

    .line 122
    const/4 v0, -0x1

    .line 123
    .local v0, "returnValue":I
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    if-nez v1, :cond_17

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setIntervalValue(I)I

    move-result v1

    move v0, v1

    .line 125
    if-gez v0, :cond_17

    .line 126
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: set interval value failed. Char device in open state."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_1a

    .line 127
    const/4 v0, -0x1

    .line 128
    monitor-exit p0

    return v0

    .line 131
    .end local p0    # "this":Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    :cond_17
    const/4 v0, 0x0

    .line 132
    monitor-exit p0

    return v0

    .line 121
    .end local v0    # "returnValue":I
    .end local p1    # "intervalValue":I
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
