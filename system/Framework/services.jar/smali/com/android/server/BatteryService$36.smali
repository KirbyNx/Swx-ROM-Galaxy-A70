.class Lcom/android/server/BatteryService$36;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .line 3195
    iput-object p1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 3198
    const-wide/16 v0, 0x0

    .line 3199
    .local v0, "maxTemp":J
    iget-object v2, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3200
    :try_start_9
    iget-object v3, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryMaxTemp:J
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    move-wide v0, v3

    .line 3201
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_50

    .line 3202
    iget-object v2, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$4800(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3203
    :try_start_18
    iget-object v2, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5700(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2f

    .line 3204
    iget-object v2, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$5800(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$5702(Lcom/android/server/BatteryService;J)J

    .line 3206
    :cond_2f
    iget-object v2, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5700(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-gez v2, :cond_4b

    .line 3207
    iget-object v2, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService;->access$5702(Lcom/android/server/BatteryService;J)J

    .line 3208
    iget-object v2, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/max_temp"

    iget-object v5, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$5700(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3210
    :cond_4b
    monitor-exit v3

    .line 3211
    return-void

    .line 3210
    :catchall_4d
    move-exception v2

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_4d

    throw v2

    .line 3201
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v3
.end method
