.class Lcom/android/server/am/CachedAppOptimizer$1;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 207
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 210
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$000(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 211
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "use_compaction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 213
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # invokes: Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$100(Lcom/android/server/am/CachedAppOptimizer;)V

    goto/16 :goto_b0

    .line 214
    :cond_2b
    const-string v3, "compact_action_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v3, "compact_action_2"

    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto/16 :goto_ab

    .line 217
    :cond_3d
    const-string v3, "compact_throttle_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, "compact_throttle_2"

    .line 218
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, "compact_throttle_3"

    .line 219
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, "compact_throttle_4"

    .line 220
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_a5

    .line 222
    :cond_5e
    const-string v3, "compact_statsd_sample_rate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 223
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # invokes: Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$400(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_b0

    .line 224
    :cond_6c
    const-string/jumbo v3, "freeze_statsd_sample_rate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 225
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # invokes: Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$500(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_b0

    .line 226
    :cond_7b
    const-string v3, "compact_full_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 227
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # invokes: Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$600(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_b0

    .line 228
    :cond_89
    const-string v3, "compact_full_delta_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 229
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # invokes: Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$700(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_b0

    .line 230
    :cond_97
    const-string v3, "compact_proc_state_throttle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 231
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # invokes: Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$800(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_b0

    .line 221
    :cond_a5
    :goto_a5
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # invokes: Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$300(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_b0

    .line 216
    :cond_ab
    :goto_ab
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # invokes: Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V
    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->access$200(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 233
    .end local v2    # "name":Ljava/lang/String;
    :cond_b0
    :goto_b0
    goto/16 :goto_f

    .line 234
    :cond_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_7 .. :try_end_b3} :catchall_c5

    .line 235
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$900(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 236
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    # getter for: Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$900(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;->onPropertyChanged()V

    .line 238
    :cond_c4
    return-void

    .line 234
    :catchall_c5
    move-exception v1

    :try_start_c6
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v1
.end method
