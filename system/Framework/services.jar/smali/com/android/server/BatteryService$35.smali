.class Lcom/android/server/BatteryService$35;
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

    .line 3151
    iput-object p1, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 3155
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSehHealthInfoSamsung:Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4400(Lcom/android/server/BatteryService;)Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    move-result-object v0

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    .line 3156
    # getter for: Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$5900(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1b

    .line 3157
    return-void

    .line 3161
    :cond_1b
    const-wide/16 v3, 0x0

    .line 3162
    .local v3, "batteryLevelNow":J
    const-wide/16 v5, 0x0

    .line 3163
    .local v5, "usage":J
    iget-object v0, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3164
    :try_start_26
    iget-object v7, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$6000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v7

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    int-to-long v3, v7

    .line 3165
    iget-object v7, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$6100(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_74

    .line 3166
    iget-object v7, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$6100(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    sub-long v5, v7, v3

    .line 3167
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@[BatteryInfo] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$6100(Lcom/android/server/BatteryService;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget-object v7, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v7, v3, v4}, Lcom/android/server/BatteryService;->access$6102(Lcom/android/server/BatteryService;J)J

    .line 3171
    :cond_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_26 .. :try_end_75} :catchall_b5

    .line 3172
    cmp-long v0, v5, v1

    if-gtz v0, :cond_7a

    .line 3173
    return-void

    .line 3175
    :cond_7a
    iget-object v0, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4800(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3176
    :try_start_81
    iget-object v0, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5300(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    add-long/2addr v7, v5

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v0, v7, v8}, Lcom/android/server/BatteryService;->access$5202(Lcom/android/server/BatteryService;J)J

    .line 3177
    iget-object v0, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    iget-object v7, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v0, v2, v7, v8}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3178
    # getter for: Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$5400()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 3179
    iget-object v0, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v7, p0, Lcom/android/server/BatteryService$35;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    const-wide/16 v9, 0x64

    div-long/2addr v7, v9

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v0, v2, v7, v8}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3181
    :cond_b0
    monitor-exit v1

    .line 3182
    return-void

    .line 3181
    :catchall_b2
    move-exception v0

    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_81 .. :try_end_b4} :catchall_b2

    throw v0

    .line 3171
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1
.end method
