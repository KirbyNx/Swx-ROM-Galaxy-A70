.class Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    .line 1005
    iput-object p1, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1008
    iget-object v0, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1009
    :try_start_9
    iget-object v1, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/wc_param_info"

    # invokes: Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "wcParamInfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wireless_wc_write"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1013
    .local v2, "settingsWcParam":I
    iget-object v3, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mWcParamOffset:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2800(Lcom/android/server/BatteryService;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_49

    if-eqz v1, :cond_49

    const/4 v3, 0x1

    if-ne v2, v3, :cond_49

    .line 1014
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wireless_wc_write onchanged"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v3, p0, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->setWcParamInfo(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/server/BatteryService;->access$2900(Lcom/android/server/BatteryService;Ljava/lang/String;)V

    .line 1017
    .end local v1    # "wcParamInfo":Ljava/lang/String;
    .end local v2    # "settingsWcParam":I
    :cond_49
    monitor-exit v0

    .line 1018
    return-void

    .line 1017
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_9 .. :try_end_4d} :catchall_4b

    throw v1
.end method
