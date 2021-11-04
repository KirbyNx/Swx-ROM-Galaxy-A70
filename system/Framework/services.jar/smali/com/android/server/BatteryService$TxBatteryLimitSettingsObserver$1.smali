.class Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    .line 979
    iput-object p1, p0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 982
    iget-object v0, p0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 983
    :try_start_9
    iget-object v1, p0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 984
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "tx_battery_limit"

    const/16 v4, 0x1e

    const/4 v5, -0x2

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    # setter for: Lcom/android/server/BatteryService;->mTxBatteryLimit:I
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$2502(Lcom/android/server/BatteryService;I)I

    .line 985
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tx Battery Limit Settings = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    iget-object v4, v4, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mTxBatteryLimit:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v2, p0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, p0, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mTxBatteryLimit:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)I

    move-result v3

    # invokes: Lcom/android/server/BatteryService;->setWirelessPowerSharingTxBatteryLimit(I)V
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$2600(Lcom/android/server/BatteryService;I)V

    .line 988
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    monitor-exit v0

    .line 989
    return-void

    .line 988
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_57

    throw v1
.end method
