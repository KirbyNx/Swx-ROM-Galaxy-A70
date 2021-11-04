.class Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;
.super Ljava/lang/Object;
.source "GnssBatchingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssBatchingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssBatchingProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanupBatching()V
    .registers 1

    .line 184
    # invokes: Lcom/android/server/location/gnss/GnssBatchingProvider;->native_cleanup_batching()V
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$500()V

    .line 185
    return-void
.end method

.method public flushBatch()V
    .registers 1

    .line 172
    # invokes: Lcom/android/server/location/gnss/GnssBatchingProvider;->native_flush_batch()V
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$200()V

    .line 173
    return-void
.end method

.method public getBatchSize()I
    .registers 2

    .line 164
    # invokes: Lcom/android/server/location/gnss/GnssBatchingProvider;->native_get_batch_size()I
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$000()I

    move-result v0

    return v0
.end method

.method public initBatching()Z
    .registers 2

    .line 180
    # invokes: Lcom/android/server/location/gnss/GnssBatchingProvider;->native_init_batching()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$400()Z

    move-result v0

    return v0
.end method

.method public startBatch(JZ)Z
    .registers 5
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z

    .line 168
    # invokes: Lcom/android/server/location/gnss/GnssBatchingProvider;->native_start_batch(JZ)Z
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$100(JZ)Z

    move-result v0

    return v0
.end method

.method public stopBatch()Z
    .registers 2

    .line 176
    # invokes: Lcom/android/server/location/gnss/GnssBatchingProvider;->native_stop_batch()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->access$300()Z

    move-result v0

    return v0
.end method
