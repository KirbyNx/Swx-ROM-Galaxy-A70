.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    .line 281
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.game.gos.action.TSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 285
    const-string v0, "set_game_mode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "game_mode":Ljava/lang/String;
    const-string v1, "set_scan_rate"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "scan_rate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGameServiceBroadcastReceiver: game:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " scan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-eqz v0, :cond_61

    :try_start_38
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_61

    .line 291
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    # getter for: Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->access$200(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 292
    const-string v2, "mGameServiceBroadcastReceiver: game mode is not changed"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 294
    :cond_54
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-virtual {v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setGameMode(Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    # setter for: Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->access$202(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_61

    .line 307
    :catch_5f
    move-exception v2

    goto :goto_8a

    .line 299
    :cond_61
    :goto_61
    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9f

    .line 300
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    # getter for: Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->access$300(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 301
    const-string v2, "mGameServiceBroadcastReceiver: scan rate is not changed"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 303
    :cond_7f
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-virtual {v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setScanRate(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    # setter for: Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->access$302(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_89} :catch_5f

    goto :goto_9f

    .line 308
    .local v2, "e":Ljava/lang/Exception;
    :goto_8a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGameServiceBroadcastReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    .line 311
    .end local v0    # "game_mode":Ljava/lang/String;
    .end local v1    # "scan_rate":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9f
    :goto_9f
    return-void
.end method
