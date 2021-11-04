.class Lcom/android/server/display/WifiDisplayController$37;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .line 2487
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2490
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2491
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "swipe"

    const-string/jumbo v3, "keyguard"

    const-string v4, "WifiDisplayController"

    const-string/jumbo v5, "usls"

    if-eqz v1, :cond_74

    .line 2492
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v6, "power"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2493
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    if-eqz v6, :cond_73

    .line 2494
    const/4 v6, 0x0

    const-string v7, "bouncerShowing"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2495
    .local v6, "isBouncerShowing":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received KEYGUARD_STATE_UPDATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    if-eqz v6, :cond_53

    .line 2497
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->getScreenLockType()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$7200(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    .line 2499
    :cond_53
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 2500
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 2501
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    .line 2503
    :cond_6b
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v4, "none"

    invoke-virtual {v2, v5, v4}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2507
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v3    # "km":Landroid/app/KeyguardManager;
    .end local v6    # "isBouncerShowing":Z
    :cond_73
    :goto_73
    goto :goto_c2

    :cond_74
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 2508
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$7300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 2509
    const-string v1, "Received ACTION_SCREEN_ON by user"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 2511
    .local v1, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 2512
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v3, v5, v2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2514
    .end local v1    # "km":Landroid/app/KeyguardManager;
    :cond_a0
    goto :goto_c2

    .line 2515
    :cond_a1
    const-string v1, "Received ACTION_SCREEN_ON by controller"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$7302(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto :goto_c2

    .line 2518
    :cond_ad
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 2519
    const-string v1, "Received ACTION_SCREEN_OFF"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$37;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "screen_off"

    invoke-virtual {v1, v5, v2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2522
    :cond_c2
    :goto_c2
    return-void
.end method
