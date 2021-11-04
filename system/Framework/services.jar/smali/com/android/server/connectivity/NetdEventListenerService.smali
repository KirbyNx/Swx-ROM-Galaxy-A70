.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;,
        Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;,
        Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;,
        Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
    }
.end annotation


# static fields
.field private static final ALLOWED_CALLBACK_TYPES:[I

.field private static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field private static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field private static final DBG:Z = false

.field private static final METRICS_SNAPSHOT_BUFFER_SIZE:I = 0x90

.field private static final METRICS_SNAPSHOT_SPAN_MS:J = 0xea60L

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field private static final TAG:Ljava/lang/String;

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400

.field static final WAKEUP_EVENT_IFACE_PREFIX:Ljava/lang/String; = "iface:"


# instance fields
.field private final MSG_CHECK_NETWORKERROR:I

.field private final filter:Landroid/content/IntentFilter;

.field private mCheckedNetId:I

.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mConnectTb:Lcom/android/internal/util/TokenBucket;

.field private mContext:Landroid/content/Context;

.field private mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

.field private mDnsHandler:Landroid/os/Handler;

.field private mFailCount:I

.field private mLastSnapshot:J

.field private mLastSnapshotReal:J

.field private mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

.field private final mNetworkMetrics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealNetworkMetrics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/metrics/WakeupStats;",
            ">;"
        }
    .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    .line 167
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 209
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    .line 211
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    .line 212
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 219
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 220
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_43

    .line 221
    new-instance v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Landroid/os/Handler;

    goto :goto_4b

    .line 223
    :cond_43
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handlerThread.getLooper() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_4b
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 7
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .line 229
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mRealNetworkMetrics:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    const/16 v2, 0x90

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 121
    new-instance v3, Lcom/android/internal/util/RingBuffer;

    const-class v4, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mRealNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 124
    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshotReal:J

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 132
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/WakeupEvent;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 138
    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    .line 145
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Landroid/os/Handler;

    .line 150
    const/16 v0, 0x2711

    iput v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->MSG_CHECK_NETWORKERROR:I

    .line 177
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/net/INetdEventCallback;

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 751
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetdEventListenerService$1;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 231
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/NetdEventListenerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetdEventListenerService;

    .line 81
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->deleteMobileDataLogFile()V

    return-void
.end method

.method private addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/net/metrics/WakeupEvent;

    .line 573
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 574
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 575
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    .line 576
    .local v1, "stats":Landroid/net/metrics/WakeupStats;
    if-nez v1, :cond_1c

    .line 577
    new-instance v2, Landroid/net/metrics/WakeupStats;

    invoke-direct {v2, v0}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 578
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_1c
    invoke-virtual {v1, p1}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 581
    return-void
.end method

.method private collectPendingMetricsSnapshot(J)V
    .registers 7
    .param p1, "timeMs"    # J

    .line 257
    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    .line 258
    return-void

    .line 260
    :cond_10
    invoke-static {p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->projectSnapshotTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 261
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 262
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    .line 263
    .local v0, "snapshot":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 264
    return-void

    .line 266
    :cond_25
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method private collectPendingMetricsSnapshotRealNetwork(J)V
    .registers 7
    .param p1, "timeMs"    # J

    .line 289
    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshotReal:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    .line 290
    return-void

    .line 292
    :cond_10
    invoke-static {p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->projectSnapshotTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshotReal:J

    .line 293
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mRealNetworkMetrics:Landroid/util/SparseArray;

    .line 294
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    .line 295
    .local v0, "snapshot":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 296
    return-void

    .line 298
    :cond_25
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mRealNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method private deleteMobileDataLogFile()V
    .registers 3

    .line 766
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/err/mobiledata_dns.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 767
    .local v0, "deleteDnsfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 768
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 770
    :cond_10
    return-void
.end method

.method private getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;
    .registers 9
    .param p1, "timeMs"    # J
    .param p3, "netId"    # I

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    .line 240
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 241
    .local v0, "metrics":Landroid/net/metrics/NetworkMetrics;
    if-nez v0, :cond_1e

    .line 243
    new-instance v1, Landroid/net/metrics/NetworkMetrics;

    invoke-direct {p0, p3}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {v1, p3, v2, v3, v4}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    move-object v0, v1

    .line 244
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    :cond_1e
    return-object v0
.end method

.method private getMetricsForRealNetwork(JI)Landroid/net/metrics/NetworkMetrics;
    .registers 9
    .param p1, "timeMs"    # J
    .param p3, "netId"    # I

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshotRealNetwork(J)V

    .line 272
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mRealNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 273
    .local v0, "metrics":Landroid/net/metrics/NetworkMetrics;
    if-nez v0, :cond_1e

    .line 275
    new-instance v1, Landroid/net/metrics/NetworkMetrics;

    invoke-direct {p0, p3}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {v1, p3, v2, v3, v4}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    move-object v0, v1

    .line 276
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mRealNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    :cond_1e
    return-object v0
.end method

.method private getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .registers 3

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    .line 251
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    return-object v0
.end method

.method private getRealNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .registers 3

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshotRealNetwork(J)V

    .line 283
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mRealNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    return-object v0
.end method

.method private getTransports(I)J
    .registers 5
    .param p1, "netId"    # I

    .line 666
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, p1}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 667
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_10

    .line 668
    const-wide/16 v1, 0x0

    return-wide v1

    .line 670
    :cond_10
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v1

    return-wide v1
.end method

.method private static isValidCallerType(I)Z
    .registers 4
    .param p0, "callerType"    # I

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v2, v1

    if-ge v0, v2, :cond_f

    .line 201
    aget v1, v1, v0

    if-ne p0, v1, :cond_c

    .line 202
    const/4 v1, 0x1

    return v1

    .line 200
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static varargs maybeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 675
    return-void
.end method

.method private static projectSnapshotTime(J)J
    .registers 6
    .param p0, "timeMs"    # J

    .line 235
    const-wide/32 v0, 0xea60

    div-long v2, p0, v0

    mul-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 6
    .param p1, "callerType"    # I
    .param p2, "callback"    # Landroid/net/INetdEventCallback;

    monitor-enter p0

    .line 182
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 183
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_27

    .line 184
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 186
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    aput-object p2, v0, p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_27

    .line 187
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 181
    .end local p1    # "callerType":I
    .end local p2    # "callback":Landroid/net/INetdEventCallback;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    monitor-enter p0

    .line 584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 585
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 586
    .local v1, "stats":Landroid/net/metrics/ConnectStats;
    iget v2, v1, Landroid/net/metrics/ConnectStats;->eventCount:I

    if-nez v2, :cond_19

    .line 587
    goto :goto_20

    .line 589
    :cond_19
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v1    # "stats":Landroid/net/metrics/ConnectStats;
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 591
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_24
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 592
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 593
    .local v1, "ev":Landroid/net/metrics/DnsEvent;
    iget v2, v1, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-nez v2, :cond_3b

    .line 594
    goto :goto_42

    .line 596
    :cond_3b
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v1    # "ev":Landroid/net/metrics/DnsEvent;
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 598
    .end local v0    # "i":I
    :cond_45
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_46
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 599
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 601
    .end local v0    # "i":I
    :cond_60
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 602
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_6a
    .catchall {:try_start_2 .. :try_end_6a} :catchall_6c

    .line 603
    monitor-exit p0

    return-void

    .line 583
    .end local p1    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 569
    const-string v0, "8e27594d285ca7c567d87e8cf74766c27647e02b"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 608
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    .line 609
    .local v0, "lastSnapshot":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 610
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 613
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mRealNetworkMetrics:Landroid/util/SparseArray;

    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v1

    .line 614
    .local v1, "lastSnapshotrealnet":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    iget-object v2, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 615
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mRealNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 618
    :cond_2f
    const-string v2, "dns/connect events:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 620
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/metrics/NetworkMetrics;

    iget-object v3, v3, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 622
    .end local v2    # "i":I
    :cond_4d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4e
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_66

    .line 623
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/metrics/NetworkMetrics;

    iget-object v3, v3, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 625
    .end local v2    # "i":I
    :cond_66
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    const-string/jumbo v2, "network statistics:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_78
    if-ge v5, v3, :cond_82

    aget-object v6, v2, v5

    .line 628
    .local v6, "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 627
    .end local v6    # "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 630
    :cond_82
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    const-string/jumbo v2, "real network statistics:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getRealNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v2

    array-length v3, v2

    move v5, v4

    :goto_93
    if-ge v5, v3, :cond_9d

    aget-object v6, v2, v5

    .line 634
    .restart local v6    # "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 633
    .end local v6    # "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    .line 636
    :cond_9d
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string/jumbo v2, "packet wakeup events:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a9
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_bd

    .line 640
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 639
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 642
    .end local v2    # "i":I
    :cond_bd
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/metrics/WakeupEvent;

    array-length v3, v2

    :goto_c6
    if-ge v4, v3, :cond_d0

    aget-object v5, v2, v4

    .line 643
    .local v5, "wakeup":Landroid/net/metrics/WakeupEvent;
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_cd
    .catchall {:try_start_1 .. :try_end_cd} :catchall_d2

    .line 642
    .end local v5    # "wakeup":Landroid/net/metrics/WakeupEvent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    .line 645
    :cond_d0
    monitor-exit p0

    return-void

    .line 607
    .end local v0    # "lastSnapshot":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .end local v1    # "lastSnapshotrealnet":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_d2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listAsProtos()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 651
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 653
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 655
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_24
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 656
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 658
    .end local v1    # "i":I
    :cond_40
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_41
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 659
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/WakeupStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5d

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 661
    .end local v1    # "i":I
    :cond_5b
    monitor-exit p0

    return-object v0

    .line 650
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .registers 24
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v10, p4

    monitor-enter p0

    .line 495
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v11, v4

    .line 496
    .local v11, "timestamp":J
    invoke-direct {v1, v11, v12, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v10}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    .line 498
    invoke-static/range {p4 .. p4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_28

    .line 499
    invoke-direct {v1, v11, v12, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForRealNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v10}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    .line 503
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_28
    iget-object v13, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v14, v13

    const/4 v4, 0x0

    move v15, v4

    :goto_2d
    if-ge v15, v14, :cond_44

    aget-object v4, v13, v15

    move-object/from16 v16, v4

    .line 504
    .local v16, "callback":Landroid/net/INetdEventCallback;
    if-eqz v16, :cond_41

    .line 505
    move-object/from16 v4, v16

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide v7, v11

    move/from16 v9, p6

    invoke-interface/range {v4 .. v9}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_46

    .line 503
    .end local v16    # "callback":Landroid/net/INetdEventCallback;
    :cond_41
    add-int/lit8 v15, v15, 0x1

    goto :goto_2d

    .line 508
    :cond_44
    monitor-exit p0

    return-void

    .line 494
    .end local v11    # "timestamp":J
    .end local p1    # "netId":I
    .end local p2    # "error":I
    .end local p3    # "latencyMs":I
    .end local p4    # "ipAddr":Ljava/lang/String;
    .end local p5    # "port":I
    .end local p6    # "uid":I
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDnsErrorEvent(Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;)V
    .registers 28
    .param p1, "dnsResultParams"    # Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    .line 350
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    .line 351
    .local v3, "returnCode":I
    const/4 v4, 0x0

    if-eqz v3, :cond_206

    iget-object v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_206

    .line 353
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS failed ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v5, -0x1

    .line 357
    .local v5, "serverError":I
    iget-object v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_33

    .line 358
    return-void

    .line 360
    :cond_33
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 361
    .local v6, "info":Landroid/net/NetworkInfo;
    if-nez v6, :cond_3a

    .line 362
    return-void

    .line 364
    :cond_3a
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .line 366
    .local v7, "currentNetwork":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v8

    .line 367
    .local v8, "subId":I
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v9, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v8}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    move-object v9, v0

    .line 368
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v10

    .line 369
    .local v10, "signalStrength":Landroid/telephony/SignalStrength;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v11

    .line 370
    .local v11, "carrierName":Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    move v12, v0

    .line 371
    .local v12, "isRoaming":I
    const/4 v0, 0x0

    .line 372
    .local v0, "signalLevel":I
    iget v13, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 374
    .local v13, "netid":I
    iget-object v14, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    iget v15, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 375
    .local v14, "packageNames":[Ljava/lang/String;
    const-string v15, ""

    .line 376
    .local v15, "packageName":Ljava/lang/String;
    if-eqz v14, :cond_6c

    .line 377
    aget-object v15, v14, v4

    .line 380
    :cond_6c
    if-eqz v10, :cond_75

    .line 381
    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    move/from16 v16, v0

    goto :goto_77

    .line 380
    :cond_75
    move/from16 v16, v0

    .line 384
    .end local v0    # "signalLevel":I
    .local v16, "signalLevel":I
    :goto_77
    iget v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    const/16 v4, 0x14

    move/from16 v17, v5

    .end local v5    # "serverError":I
    .local v17, "serverError":I
    const/16 v18, 0x1

    if-ne v0, v4, :cond_1a9

    if-nez v7, :cond_1a9

    iget v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    if-eq v13, v0, :cond_1a9

    .line 385
    iput v13, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    .line 387
    :try_start_89
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8e} :catch_18a

    move-object/from16 v19, v0

    .line 389
    .local v19, "socket":Ljava/net/DatagramSocket;
    :try_start_90
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "sending DNS"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_17a

    .line 390
    const/16 v0, 0x3e8

    move-object/from16 v4, v19

    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .local v4, "socket":Ljava/net/DatagramSocket;
    :try_start_9c
    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 391
    iget-object v0, v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "queryParts":[Ljava/lang/String;
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 393
    .local v5, "random":Ljava/util/Random;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b1
    .catchall {:try_start_9c .. :try_end_b1} :catchall_174

    move-object/from16 v21, v20

    .line 394
    .local v21, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v20, v6

    const/4 v2, 0x2

    .end local v6    # "info":Landroid/net/NetworkInfo;
    .local v20, "info":Landroid/net/NetworkInfo;
    :try_start_b6
    new-array v6, v2, [B

    .line 395
    .local v6, "id":[B
    invoke-virtual {v5, v6}, Ljava/util/Random;->nextBytes([B)V

    .line 397
    move-object/from16 v2, v21

    .end local v21    # "out":Ljava/io/ByteArrayOutputStream;
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 398
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const/4 v5, 0x2

    .end local v5    # "random":Ljava/util/Random;
    .end local v6    # "id":[B
    .local v21, "random":Ljava/util/Random;
    .local v22, "id":[B
    new-array v6, v5, [B

    const/4 v5, 0x0

    aput-byte v18, v6, v5

    aput-byte v5, v6, v18

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 399
    const/4 v6, 0x2

    new-array v5, v6, [B

    const/4 v6, 0x0

    aput-byte v6, v5, v6

    aput-byte v18, v5, v18

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 400
    const/4 v5, 0x2

    new-array v6, v5, [B

    const/4 v5, 0x0

    aput-byte v5, v6, v5

    aput-byte v5, v6, v18

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 401
    const/4 v6, 0x2

    new-array v5, v6, [B

    const/4 v6, 0x0

    aput-byte v6, v5, v6

    aput-byte v6, v5, v18

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 402
    const/4 v5, 0x2

    new-array v6, v5, [B

    const/4 v5, 0x0

    aput-byte v5, v6, v5

    aput-byte v5, v6, v18

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 404
    array-length v5, v0
    :try_end_fc
    .catchall {:try_start_b6 .. :try_end_fc} :catchall_170

    const/4 v6, 0x0

    :goto_fd
    if-ge v6, v5, :cond_123

    :try_start_ff
    aget-object v23, v0, v6

    move-object/from16 v24, v23

    .line 405
    .local v24, "phrase":Ljava/lang/String;
    move-object/from16 v23, v0

    .end local v0    # "queryParts":[Ljava/lang/String;
    .local v23, "queryParts":[Ljava/lang/String;
    const-string v0, "US-ASCII"

    move/from16 v25, v5

    move-object/from16 v5, v24

    .end local v24    # "phrase":Ljava/lang/String;
    .local v5, "phrase":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 406
    .local v0, "bytes":[B
    move-object/from16 v24, v5

    .end local v5    # "phrase":Ljava/lang/String;
    .restart local v24    # "phrase":Ljava/lang/String;
    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 407
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_118
    .catchall {:try_start_ff .. :try_end_118} :catchall_11f

    .line 404
    .end local v0    # "bytes":[B
    .end local v24    # "phrase":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v23

    move/from16 v5, v25

    goto :goto_fd

    .line 424
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "random":Ljava/util/Random;
    .end local v22    # "id":[B
    .end local v23    # "queryParts":[Ljava/lang/String;
    :catchall_11f
    move-exception v0

    move/from16 v24, v8

    goto :goto_181

    .line 409
    .local v0, "queryParts":[Ljava/lang/String;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "random":Ljava/util/Random;
    .restart local v22    # "id":[B
    :cond_123
    move-object/from16 v23, v0

    .end local v0    # "queryParts":[Ljava/lang/String;
    .restart local v23    # "queryParts":[Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_126
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    const/4 v6, 0x2

    new-array v0, v6, [B

    aput-byte v5, v0, v5

    aput-byte v18, v0, v18

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 412
    const/4 v5, 0x2

    new-array v0, v5, [B

    const/4 v5, 0x0

    aput-byte v5, v0, v5

    aput-byte v18, v0, v18

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 413
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 415
    .local v0, "query":[B
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v0

    const-string v24, "8.8.8.8"

    .line 416
    move-object/from16 v25, v2

    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .local v25, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static/range {v24 .. v24}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_14d
    .catchall {:try_start_126 .. :try_end_14d} :catchall_170

    move/from16 v24, v8

    .end local v8    # "subId":I
    .local v24, "subId":I
    const/16 v8, 0x35

    :try_start_151
    invoke-direct {v5, v0, v6, v2, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    move-object v2, v5

    .line 417
    .local v2, "queryPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v4, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 419
    array-length v5, v0

    new-array v5, v5, [B

    .line 420
    .local v5, "reply":[B
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v8, v5

    invoke-direct {v6, v5, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 421
    .local v6, "replyPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v4, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_164
    .catchall {:try_start_151 .. :try_end_164} :catchall_16e

    .line 422
    const/4 v8, 0x0

    .line 424
    .end local v0    # "query":[B
    .end local v2    # "queryPacket":Ljava/net/DatagramPacket;
    .end local v5    # "reply":[B
    .end local v6    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v17    # "serverError":I
    .end local v21    # "random":Ljava/util/Random;
    .end local v22    # "id":[B
    .end local v23    # "queryParts":[Ljava/lang/String;
    .end local v25    # "out":Ljava/io/ByteArrayOutputStream;
    .local v8, "serverError":I
    :try_start_165
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_16b

    .line 425
    nop

    .line 429
    .end local v4    # "socket":Ljava/net/DatagramSocket;
    move v5, v8

    goto :goto_1af

    .line 426
    :catch_16b
    move-exception v0

    move v5, v8

    goto :goto_191

    .line 424
    .end local v8    # "serverError":I
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v17    # "serverError":I
    :catchall_16e
    move-exception v0

    goto :goto_181

    .end local v24    # "subId":I
    .local v8, "subId":I
    :catchall_170
    move-exception v0

    move/from16 v24, v8

    .end local v8    # "subId":I
    .restart local v24    # "subId":I
    goto :goto_181

    .end local v20    # "info":Landroid/net/NetworkInfo;
    .end local v24    # "subId":I
    .local v6, "info":Landroid/net/NetworkInfo;
    .restart local v8    # "subId":I
    :catchall_174
    move-exception v0

    move-object/from16 v20, v6

    move/from16 v24, v8

    .end local v6    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "subId":I
    .restart local v20    # "info":Landroid/net/NetworkInfo;
    .restart local v24    # "subId":I
    goto :goto_181

    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .end local v20    # "info":Landroid/net/NetworkInfo;
    .end local v24    # "subId":I
    .restart local v6    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "subId":I
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    :catchall_17a
    move-exception v0

    move-object/from16 v20, v6

    move/from16 v24, v8

    move-object/from16 v4, v19

    .end local v6    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "subId":I
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v20    # "info":Landroid/net/NetworkInfo;
    .restart local v24    # "subId":I
    :goto_181
    :try_start_181
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 425
    nop

    .end local v3    # "returnCode":I
    .end local v7    # "currentNetwork":I
    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v10    # "signalStrength":Landroid/telephony/SignalStrength;
    .end local v11    # "carrierName":Ljava/lang/String;
    .end local v12    # "isRoaming":I
    .end local v13    # "netid":I
    .end local v14    # "packageNames":[Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "signalLevel":I
    .end local v17    # "serverError":I
    .end local v20    # "info":Landroid/net/NetworkInfo;
    .end local v24    # "subId":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    .end local p1    # "dnsResultParams":Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
    throw v0
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_186} :catch_186

    .line 426
    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "returnCode":I
    .restart local v7    # "currentNetwork":I
    .restart local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v10    # "signalStrength":Landroid/telephony/SignalStrength;
    .restart local v11    # "carrierName":Ljava/lang/String;
    .restart local v12    # "isRoaming":I
    .restart local v13    # "netid":I
    .restart local v14    # "packageNames":[Ljava/lang/String;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "signalLevel":I
    .restart local v17    # "serverError":I
    .restart local v20    # "info":Landroid/net/NetworkInfo;
    .restart local v24    # "subId":I
    .restart local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    .restart local p1    # "dnsResultParams":Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
    :catch_186
    move-exception v0

    move/from16 v5, v17

    goto :goto_191

    .end local v20    # "info":Landroid/net/NetworkInfo;
    .end local v24    # "subId":I
    .restart local v6    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "subId":I
    :catch_18a
    move-exception v0

    move-object/from16 v20, v6

    move/from16 v24, v8

    move/from16 v5, v17

    .line 427
    .end local v6    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "subId":I
    .end local v17    # "serverError":I
    .local v0, "e":Ljava/io/IOException;
    .local v5, "serverError":I
    .restart local v20    # "info":Landroid/net/NetworkInfo;
    .restart local v24    # "subId":I
    :goto_191
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v5, 0x1

    goto :goto_1af

    .line 384
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "serverError":I
    .end local v20    # "info":Landroid/net/NetworkInfo;
    .end local v24    # "subId":I
    .restart local v6    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "subId":I
    .restart local v17    # "serverError":I
    :cond_1a9
    move-object/from16 v20, v6

    move/from16 v24, v8

    .line 432
    .end local v6    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "subId":I
    .restart local v20    # "info":Landroid/net/NetworkInfo;
    .restart local v24    # "subId":I
    move/from16 v5, v17

    .end local v17    # "serverError":I
    .restart local v5    # "serverError":I
    :goto_1af
    iget-object v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    .line 433
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v18

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const/4 v4, 0x3

    iget v6, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x4

    .line 434
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x7

    aput-object v15, v2, v4

    const/16 v4, 0x8

    aput-object v11, v2, v4

    .line 432
    const-string v4, "%02d %02d %d %d %d %d %d %s %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->log(Ljava/lang/String;)V

    .line 436
    iget v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_201

    .line 437
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    goto :goto_205

    .line 439
    :cond_201
    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    .line 441
    .end local v5    # "serverError":I
    .end local v7    # "currentNetwork":I
    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v10    # "signalStrength":Landroid/telephony/SignalStrength;
    .end local v11    # "carrierName":Ljava/lang/String;
    .end local v12    # "isRoaming":I
    .end local v13    # "netid":I
    .end local v14    # "packageNames":[Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "signalLevel":I
    .end local v20    # "info":Landroid/net/NetworkInfo;
    .end local v24    # "subId":I
    :goto_205
    goto :goto_20b

    .line 442
    :cond_206
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    .line 443
    iput v2, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    .line 445
    :goto_20b
    return-void
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 31
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p8

    monitor-enter p0

    .line 324
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v9, v2

    .line 325
    .local v9, "timestamp":J
    invoke-direct {v1, v9, v10, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v2

    invoke-virtual {v2, v12, v13, v14}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    .line 326
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Requested by : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v2, 0x2

    if-eq v13, v2, :cond_44

    const/4 v2, 0x7

    if-eq v13, v2, :cond_44

    .line 329
    invoke-direct {v1, v9, v10, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForRealNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v2

    invoke-virtual {v2, v12, v13, v14}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    .line 332
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_44
    iget-object v11, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v8, v11

    const/4 v2, 0x0

    move v7, v2

    :goto_49
    if-ge v7, v8, :cond_7e

    aget-object v2, v11, v7

    move-object/from16 v16, v2

    .line 333
    .local v16, "callback":Landroid/net/INetdEventCallback;
    if-eqz v16, :cond_6d

    .line 334
    move-object/from16 v2, v16

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move/from16 v17, v7

    move-object/from16 v7, p6

    move/from16 v18, v8

    move/from16 v8, p7

    move-wide/from16 v19, v9

    .end local v9    # "timestamp":J
    .local v19, "timestamp":J
    move-object/from16 v21, v11

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Landroid/net/INetdEventCallback;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V

    goto :goto_75

    .line 333
    .end local v19    # "timestamp":J
    .restart local v9    # "timestamp":J
    :cond_6d
    move/from16 v17, v7

    move/from16 v18, v8

    move-wide/from16 v19, v9

    move-object/from16 v21, v11

    .line 332
    .end local v9    # "timestamp":J
    .end local v16    # "callback":Landroid/net/INetdEventCallback;
    .restart local v19    # "timestamp":J
    :goto_75
    add-int/lit8 v7, v17, 0x1

    move/from16 v8, v18

    move-wide/from16 v9, v19

    move-object/from16 v11, v21

    goto :goto_49

    .line 340
    .end local v19    # "timestamp":J
    .restart local v9    # "timestamp":J
    :cond_7e
    move-wide/from16 v19, v9

    .end local v9    # "timestamp":J
    .restart local v19    # "timestamp":J
    iget-object v2, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Landroid/os/Handler;

    if-eqz v2, :cond_9b

    .line 341
    iget-object v2, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 342
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    move-object/from16 v4, p5

    invoke-direct {v3, v0, v13, v4, v15}, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;-><init>(IILjava/lang/String;I)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    iget-object v3, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_9a
    .catchall {:try_start_d .. :try_end_9a} :catchall_9f

    goto :goto_9d

    .line 340
    .end local v2    # "msg":Landroid/os/Message;
    :cond_9b
    move-object/from16 v4, p5

    .line 346
    :goto_9d
    monitor-exit p0

    return-void

    .line 323
    .end local v19    # "timestamp":J
    .end local p1    # "netId":I
    .end local p2    # "eventType":I
    .end local p3    # "returnCode":I
    .end local p4    # "latencyMs":I
    .end local p5    # "hostname":Ljava/lang/String;
    .end local p6    # "ipAddresses":[Ljava/lang/String;
    .end local p7    # "ipAddressesCount":I
    .end local p8    # "uid":I
    :catchall_9f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 470
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 471
    .local v3, "callback":Landroid/net/INetdEventCallback;
    if-eqz v3, :cond_e

    .line 472
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 470
    .end local v3    # "callback":Landroid/net/INetdEventCallback;
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 475
    :cond_11
    monitor-exit p0

    return-void

    .line 469
    .end local p1    # "netId":I
    .end local p2    # "added":Z
    .end local p3    # "prefixString":Ljava/lang/String;
    .end local p4    # "prefixLength":I
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 483
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 484
    .local v3, "callback":Landroid/net/INetdEventCallback;
    if-eqz v3, :cond_e

    .line 485
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 483
    .end local v3    # "callback":Landroid/net/INetdEventCallback;
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 488
    :cond_11
    monitor-exit p0

    return-void

    .line 482
    .end local p1    # "netId":I
    .end local p2    # "ipAddress":Ljava/lang/String;
    .end local p3    # "hostname":Ljava/lang/String;
    .end local p4    # "validated":Z
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 15
    .param p1, "networkIds"    # [I
    .param p2, "sentPackets"    # [I
    .param p3, "lostPackets"    # [I
    .param p4, "rttsUs"    # [I
    .param p5, "sentAckDiffsMs"    # [I

    monitor-enter p0

    .line 542
    :try_start_1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p5

    if-eq v0, v1, :cond_12

    goto :goto_30

    .line 550
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 551
    .local v0, "timestamp":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_2e

    .line 552
    aget v3, p1, v2

    .line 553
    .local v3, "netId":I
    aget v4, p2, v2

    .line 554
    .local v4, "sent":I
    aget v5, p3, v2

    .line 555
    .local v5, "lost":I
    aget v6, p4, v2

    .line 556
    .local v6, "rttUs":I
    aget v7, p5, v2

    .line 557
    .local v7, "sentAckDiffMs":I
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v8

    .line 558
    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_39

    .line 551
    .end local v3    # "netId":I
    .end local v4    # "sent":I
    .end local v5    # "lost":I
    .end local v6    # "rttUs":I
    .end local v7    # "sentAckDiffMs":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 560
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_2e
    monitor-exit p0

    return-void

    .line 546
    .end local v0    # "timestamp":J
    :cond_30
    :goto_30
    :try_start_30
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Mismatched lengths of TCP socket stats data arrays"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_39

    .line 547
    monitor-exit p0

    return-void

    .line 541
    .end local p1    # "networkIds":[I
    .end local p2    # "sentPackets":[I
    .end local p3    # "lostPackets":[I
    .end local p4    # "rttsUs":[I
    .end local p5    # "sentAckDiffsMs":[I
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 28
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ethertype"    # I
    .param p4, "ipNextHeader"    # I
    .param p5, "dstHw"    # [B
    .param p6, "srcIp"    # Ljava/lang/String;
    .param p7, "dstIp"    # Ljava/lang/String;
    .param p8, "srcPort"    # I
    .param p9, "dstPort"    # I
    .param p10, "timestampNs"    # J

    move-object/from16 v1, p0

    monitor-enter p0

    .line 513
    :try_start_3
    const-string/jumbo v0, "iface:"

    const-string v2, ""

    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "iface":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v2, p10, v4

    if-lez v2, :cond_1b

    .line 516
    const-wide/32 v4, 0xf4240

    div-long v4, p10, v4

    move-wide v14, v4

    .local v4, "timestampMs":J
    goto :goto_20

    .line 518
    .end local v4    # "timestampMs":J
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v14, v4

    .line 521
    .local v14, "timestampMs":J
    :goto_20
    new-instance v2, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v2}, Landroid/net/metrics/WakeupEvent;-><init>()V

    .line 522
    .local v2, "event":Landroid/net/metrics/WakeupEvent;
    iput-object v0, v2, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 523
    iput-wide v14, v2, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 524
    move/from16 v13, p2

    iput v13, v2, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 525
    move/from16 v12, p3

    iput v12, v2, Landroid/net/metrics/WakeupEvent;->ethertype:I

    .line 526
    invoke-static/range {p5 .. p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    .line 527
    move-object/from16 v11, p6

    iput-object v11, v2, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    .line 528
    move-object/from16 v10, p7

    iput-object v10, v2, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    .line 529
    move/from16 v9, p4

    iput v9, v2, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    .line 530
    move/from16 v7, p8

    iput v7, v2, Landroid/net/metrics/WakeupEvent;->srcPort:I

    .line 531
    move/from16 v6, p9

    iput v6, v2, Landroid/net/metrics/WakeupEvent;->dstPort:I

    .line 532
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 534
    iget-object v4, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-virtual {v4}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, "dstMac":Ljava/lang/String;
    const/16 v4, 0x2c

    move/from16 v5, p2

    move-object v6, v0

    move/from16 v7, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p4

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6a

    .line 537
    monitor-exit p0

    return-void

    .line 512
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "event":Landroid/net/metrics/WakeupEvent;
    .end local v8    # "dstMac":Ljava/lang/String;
    .end local v14    # "timestampMs":J
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "ethertype":I
    .end local p4    # "ipNextHeader":I
    .end local p5    # "dstHw":[B
    .end local p6    # "srcIp":Ljava/lang/String;
    .end local p7    # "dstIp":Ljava/lang/String;
    .end local p8    # "srcPort":I
    .end local p9    # "dstPort":I
    .end local p10    # "timestampNs":J
    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetdEventCallback(I)Z
    .registers 5
    .param p1, "callerType"    # I

    monitor-enter p0

    .line 191
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 192
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    .line 193
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 195
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_28

    .line 196
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 190
    .end local p1    # "callerType":I
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected writeMobileDataDnsFile()V
    .registers 6

    .line 773
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/err"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 775
    return-void

    .line 778
    :cond_e
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/err/mobiledata_dns.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 780
    .local v2, "fw":Ljava/io/PrintWriter;
    nop

    .line 782
    :try_start_17
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 783
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 785
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 786
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    invoke-virtual {v3, v2}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 787
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2d} :catch_34
    .catchall {:try_start_17 .. :try_end_2d} :catchall_32

    .line 791
    nop

    .line 792
    :goto_2e
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_3b

    .line 791
    :catchall_32
    move-exception v3

    goto :goto_3c

    .line 788
    :catch_34
    move-exception v3

    .line 789
    .local v3, "e":Ljava/lang/Exception;
    :try_start_35
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    .line 791
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3b

    .line 792
    goto :goto_2e

    .line 796
    :cond_3b
    :goto_3b
    return-void

    .line 791
    :goto_3c
    if-eqz v2, :cond_41

    .line 792
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 794
    :cond_41
    throw v3
.end method
