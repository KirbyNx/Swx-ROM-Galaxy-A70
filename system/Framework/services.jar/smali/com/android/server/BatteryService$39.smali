.class Lcom/android/server/BatteryService$39;
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

    .line 3282
    iput-object p1, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 3285
    iget-object v0, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4800(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3286
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$5300(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    .line 3287
    .local v1, "batteryUsage":J
    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    .line 3288
    iget-object v5, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v5, v6, v1, v2}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3289
    # getter for: Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$5400()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 3290
    iget-object v5, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    div-long v7, v1, v3

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3291
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "12 hours cycle"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    iget-object v5, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    # operator++ for: Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$6508(Lcom/android/server/BatteryService;)J

    .line 3293
    iget-object v5, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$6500(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    cmp-long v5, v5, v7

    if-nez v5, :cond_64

    .line 3294
    const-wide/16 v5, 0x4650

    add-long/2addr v1, v5

    .line 3295
    iget-object v5, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v5, v6, v1, v2}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3296
    iget-object v5, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    div-long v3, v1, v3

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v5, v6, v3, v4}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3297
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "monthly cycle"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    iget-object v3, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J
    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService;->access$6502(Lcom/android/server/BatteryService;J)J

    .line 3300
    :cond_64
    iget-object v3, p0, Lcom/android/server/BatteryService$39;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->setFullChargingOnDockStartTime()V
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$6600(Lcom/android/server/BatteryService;)V

    .line 3302
    .end local v1    # "batteryUsage":J
    :cond_69
    monitor-exit v0

    .line 3303
    return-void

    .line 3302
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6b

    throw v1
.end method
