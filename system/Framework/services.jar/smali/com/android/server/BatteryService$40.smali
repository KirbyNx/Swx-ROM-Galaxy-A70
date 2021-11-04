.class Lcom/android/server/BatteryService$40;
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

    .line 3313
    iput-object p1, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 3316
    iget-object v0, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4800(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3317
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$5300(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    .line 3318
    .local v1, "currentbatteryUsage":J
    move-wide v3, v1

    .line 3320
    .local v3, "newbatteryUsage":J
    iget-object v5, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLifeExtender:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;)Z

    move-result v5

    const-wide/32 v6, 0xf4240

    if-eqz v5, :cond_28

    .line 3321
    cmp-long v5, v3, v6

    if-gez v5, :cond_36

    .line 3322
    add-long/2addr v3, v6

    .line 3323
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!@ + 10000 cycle"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 3326
    :cond_28
    cmp-long v5, v3, v6

    if-ltz v5, :cond_36

    .line 3327
    sub-long/2addr v3, v6

    .line 3328
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!@ - 10000 cycle"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    :cond_36
    :goto_36
    cmp-long v5, v1, v3

    if-eqz v5, :cond_57

    .line 3333
    iget-object v5, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v5, v6, v3, v4}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3334
    iget-object v5, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v5, v3, v4}, Lcom/android/server/BatteryService;->access$5202(Lcom/android/server/BatteryService;J)J

    .line 3335
    # getter for: Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$5400()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 3336
    iget-object v5, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    const-wide/16 v7, 0x64

    div-long v7, v3, v7

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3339
    .end local v1    # "currentbatteryUsage":J
    .end local v3    # "newbatteryUsage":J
    :cond_57
    monitor-exit v0

    .line 3340
    return-void

    .line 3339
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_59

    throw v1
.end method
