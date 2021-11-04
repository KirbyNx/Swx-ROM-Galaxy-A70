.class Lcom/android/server/wifioffload/WifiOffloadService$3;
.super Landroid/database/ContentObserver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 710
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    .line 715
    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifioffload/WifiOffloadService;->access$800(Lcom/android/server/wifioffload/WifiOffloadService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    .line 714
    :goto_19
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/wifioffload/WifiOffloadService;->access$702(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 717
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService$3;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifioffload/WifiOffloadService;->access$800(Lcom/android/server/wifioffload/WifiOffloadService;)Landroid/content/Context;

    move-result-object v1

    .line 718
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_offload_network_notify"

    .line 717
    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_32

    move v2, v3

    :cond_32
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/wifioffload/WifiOffloadService;->access$902(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    :try_end_35
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_35} :catch_36

    .line 723
    goto :goto_50

    .line 720
    :catch_36
    move-exception v0

    .line 721
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getting \'AirplaneMode\' setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiOffloadService"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_50
    return-void
.end method
