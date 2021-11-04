.class Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    .line 876
    iput-object p1, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 879
    iget-object v0, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 880
    :try_start_9
    iget-object v1, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 881
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v3, "adaptive_fast_charging"

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v1, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v5, :cond_24

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    :goto_25
    # setter for: Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->access$2002(Lcom/android/server/BatteryService;Z)Z

    .line 882
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdaptiveFastCharging Settings = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v4, v4, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v2, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    .line 885
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    monitor-exit v0

    .line 886
    return-void

    .line 885
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_9 .. :try_end_5b} :catchall_59

    throw v1
.end method
