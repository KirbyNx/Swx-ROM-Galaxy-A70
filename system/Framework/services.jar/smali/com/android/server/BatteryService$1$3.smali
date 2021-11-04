.class Lcom/android/server/BatteryService$1$3;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$1;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/BatteryService$1;

    .line 596
    iput-object p1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 599
    iget-object v0, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 601
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 602
    :try_start_15
    iget-object v2, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v2, v2, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "led_indicator_charing"

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v6, 0x0

    if-ne v3, v5, :cond_27

    move v3, v5

    goto :goto_28

    :cond_27
    move v3, v6

    :goto_28
    # setter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 603
    iget-object v2, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v2, v2, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "led_indicator_low_battery"

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v5, :cond_3a

    move v3, v5

    goto :goto_3b

    :cond_3a
    move v3, v6

    :goto_3b
    # setter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    .line 606
    iget-object v2, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v2, v2, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 607
    const-string/jumbo v3, "show_wireless_charger_menu"

    .line 606
    invoke-static {v0, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v5, :cond_4c

    .line 607
    goto :goto_4d

    :cond_4c
    move v5, v6

    .line 606
    :goto_4d
    # setter for: Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;Z)Z

    .line 610
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_USER_SWITCHED: Led Charging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v4, v4, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Led Low Battery:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v4, v4, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 611
    # getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " wfc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v4, v4, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 612
    # getter for: Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_15 .. :try_end_91} :catchall_aa

    .line 614
    iget-object v1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 615
    :try_start_9a
    iget-object v1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 616
    monitor-exit v2

    .line 617
    return-void

    .line 616
    :catchall_a7
    move-exception v1

    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_9a .. :try_end_a9} :catchall_a7

    throw v1

    .line 613
    :catchall_aa
    move-exception v2

    :try_start_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v2
.end method
