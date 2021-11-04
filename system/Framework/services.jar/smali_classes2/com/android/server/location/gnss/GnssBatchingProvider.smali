.class public Lcom/android/server/location/gnss/GnssBatchingProvider;
.super Ljava/lang/Object;
.source "GnssBatchingProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssBatchingProvider"


# instance fields
.field private mEnabled:Z

.field private final mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

.field private mPeriodNanos:J

.field private mStarted:Z

.field private mWakeOnFifoFull:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-string v0, "GnssBatchingProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssBatchingProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssBatchingProvider;-><init>(Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;)V
    .registers 2
    .param p1, "gnssBatchingProviderNative"    # Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    .line 50
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 32
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_get_batch_size()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(JZ)Z
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 32
    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_start_batch(JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_flush_batch()V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 32
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_stop_batch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 32
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_init_batching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_cleanup_batching()V

    return-void
.end method

.method private extension_isSupportGnssBatching()Z
    .registers 3

    .line 59
    const-string/jumbo v0, "ro.location.hwflp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_12
    const-string v0, "GnssBatchingProvider"

    const-string v1, "GNSS batching is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method private static native native_cleanup_batching()V
.end method

.method private static native native_flush_batch()V
.end method

.method private static native native_get_batch_size()I
.end method

.method private static native native_init_batching()Z
.end method

.method private static native native_start_batch(JZ)Z
.end method

.method private static native native_stop_batch()Z
.end method


# virtual methods
.method public disable()V
    .registers 2

    .line 140
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    return-void

    .line 143
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->stop()Z

    .line 144
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->cleanupBatching()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mEnabled:Z

    .line 146
    return-void
.end method

.method public enable()V
    .registers 3

    .line 78
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_7

    .line 79
    return-void

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->initBatching()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mEnabled:Z

    .line 82
    if-nez v0, :cond_18

    .line 83
    const-string v0, "GnssBatchingProvider"

    const-string v1, "Failed to initialize GNSS batching"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_18
    return-void
.end method

.method public flush()V
    .registers 3

    .line 114
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_7

    .line 115
    return-void

    .line 117
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    if-nez v0, :cond_13

    .line 118
    const-string v0, "GnssBatchingProvider"

    const-string v1, "Cannot flush since GNSS batching has not started."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_13
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->flushBatch()V

    .line 122
    return-void
.end method

.method public getBatchSize()I
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_8

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->getBatchSize()I

    move-result v0

    return v0
.end method

.method resumeIfStarted()V
    .registers 5

    .line 150
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_7

    .line 151
    return-void

    .line 153
    :cond_7
    sget-boolean v0, Lcom/android/server/location/gnss/GnssBatchingProvider;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 154
    const-string v0, "GnssBatchingProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    if-eqz v0, :cond_20

    .line 157
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mPeriodNanos:J

    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mWakeOnFifoFull:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    .line 159
    :cond_20
    return-void
.end method

.method public start(JZ)Z
    .registers 8
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z

    .line 91
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 92
    return v1

    .line 94
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mEnabled:Z

    if-eqz v0, :cond_3f

    .line 97
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2e

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid periodNanos "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " in batching request, not started"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GnssBatchingProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v1

    .line 102
    :cond_2e
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    .line 103
    if-eqz v0, :cond_3c

    .line 104
    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mPeriodNanos:J

    .line 105
    iput-boolean p3, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mWakeOnFifoFull:Z

    .line 107
    :cond_3c
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    return v0

    .line 95
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stop()Z
    .registers 3

    .line 128
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 129
    return v1

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->stopBatch()Z

    move-result v0

    .line 132
    .local v0, "stopped":Z
    if-eqz v0, :cond_12

    .line 133
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    .line 135
    :cond_12
    return v0
.end method
