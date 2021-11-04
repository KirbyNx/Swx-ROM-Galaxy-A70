.class Lcom/android/server/power/PowerManagerService$22;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 10698
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 20
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .line 10701
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 10702
    .local v3, "scontext":Landroid/hardware/scontext/SContext;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 10703
    .local v4, "moveStateChangeTime":J
    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_be

    .line 10704
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object v7

    .line 10705
    .local v7, "wirelessChargingDetection":Landroid/hardware/scontext/SContextWirelessChargingDetection;
    invoke-virtual {v7}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result v8

    .line 10706
    .local v8, "action":I
    const/4 v0, 0x0

    if-eqz v8, :cond_b3

    const/4 v9, 0x1

    if-eq v8, v9, :cond_22

    goto/16 :goto_be

    .line 10712
    :cond_22
    const-string v10, "PowerManagerService"

    const-string v11, "WirelessChargerSContextListener : Move"

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10713
    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v9, v10, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    .line 10714
    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v9, v9, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v9, :cond_be

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$19700(Lcom/android/server/power/PowerManagerService;)Landroid/os/BatteryManagerInternal;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v9

    if-nez v9, :cond_be

    .line 10715
    const-string v9, "PowerManagerService"

    const-string v10, "SContextListener : Unregister SContextListener"

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10716
    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v9, v9, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->access$19800(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 10717
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v0, v6, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    .line 10719
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 10720
    :try_start_5f
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$19900(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v9

    sub-long v9, v4, v9

    const-wide/16 v11, 0x12c

    cmp-long v0, v9, v11

    if-gez v0, :cond_ae

    .line 10721
    const-string v0, "PowerManagerService"

    const-string v9, "WirelessChargerSContextListener : received move lately"

    invoke-static {v0, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10722
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v9, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J
    invoke-static {v0, v9, v10}, Lcom/android/server/power/PowerManagerService;->access$19902(Lcom/android/server/power/PowerManagerService;J)J

    .line 10723
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v9, 0x40

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v9}, Lcom/android/server/power/PowerManagerService;->access$3676(Lcom/android/server/power/PowerManagerService;I)I

    .line 10724
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v9, " powered change"

    # setter for: Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/server/power/PowerManagerService;->access$4902(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 10725
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v9, 0x3

    # setter for: Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I
    invoke-static {v0, v9}, Lcom/android/server/power/PowerManagerService;->access$4802(Lcom/android/server/power/PowerManagerService;I)I

    .line 10726
    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x3

    const-string v14, "android.server.power:POWER"

    const/16 v15, 0x3e8

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 10727
    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3e8

    .line 10726
    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z
    invoke-static/range {v10 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;JILjava/lang/String;ILjava/lang/String;I)Z

    .line 10728
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)V

    .line 10730
    :cond_ae
    monitor-exit v6

    goto :goto_be

    :catchall_b0
    move-exception v0

    monitor-exit v6
    :try_end_b2
    .catchall {:try_start_5f .. :try_end_b2} :catchall_b0

    throw v0

    .line 10708
    :cond_b3
    const-string v6, "PowerManagerService"

    const-string v9, "WirelessChargerSContextListener : No Move"

    invoke-static {v6, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10709
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$22;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v0, v6, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    .line 10737
    .end local v7    # "wirelessChargingDetection":Landroid/hardware/scontext/SContextWirelessChargingDetection;
    .end local v8    # "action":I
    :cond_be
    :goto_be
    return-void
.end method
