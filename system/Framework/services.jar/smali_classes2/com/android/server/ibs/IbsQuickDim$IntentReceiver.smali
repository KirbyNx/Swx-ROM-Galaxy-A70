.class Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IbsQuickDim;)V
    .registers 4

    .line 328
    iput-object p1, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 329
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v1, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/ibs/IbsQuickDim;->access$1400(Lcom/android/server/ibs/IbsQuickDim;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 341
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1200(Lcom/android/server/ibs/IbsQuickDim;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 342
    :try_start_14
    iget-object v2, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mScreenOn:Z
    invoke-static {v2, v1}, Lcom/android/server/ibs/IbsQuickDim;->access$102(Lcom/android/server/ibs/IbsQuickDim;Z)Z

    .line 343
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # invokes: Lcom/android/server/ibs/IbsQuickDim;->quitDimMode()V
    invoke-static {v1}, Lcom/android/server/ibs/IbsQuickDim;->access$1500(Lcom/android/server/ibs/IbsQuickDim;)V

    .line 344
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    invoke-static {v1}, Lcom/android/server/ibs/IbsQuickDim;->access$800(Lcom/android/server/ibs/IbsQuickDim;)Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    .line 345
    const-string v1, "IbsQuickDim"

    const-string/jumbo v2, "screen off "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    const/4 v2, 0x2

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v1, v2}, Lcom/android/server/ibs/IbsQuickDim;->access$402(Lcom/android/server/ibs/IbsQuickDim;I)I

    .line 347
    monitor-exit v0

    goto/16 :goto_b1

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_39

    throw v1

    .line 348
    :cond_3c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4f

    .line 349
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mScreenOn:Z
    invoke-static {v0, v2}, Lcom/android/server/ibs/IbsQuickDim;->access$102(Lcom/android/server/ibs/IbsQuickDim;Z)Z

    goto :goto_b1

    .line 350
    :cond_4f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 351
    const-string v0, "IbsQuickDim"

    const-string v1, "POWER_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z
    invoke-static {v0, v2}, Lcom/android/server/ibs/IbsQuickDim;->access$302(Lcom/android/server/ibs/IbsQuickDim;Z)Z

    goto :goto_b1

    .line 353
    :cond_68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 354
    const-string v0, "IbsQuickDim"

    const-string v2, "POWER_DISCONNECTED"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z
    invoke-static {v0, v1}, Lcom/android/server/ibs/IbsQuickDim;->access$302(Lcom/android/server/ibs/IbsQuickDim;Z)Z

    .line 356
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mChargingFinishTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/IbsQuickDim;->access$1602(Lcom/android/server/ibs/IbsQuickDim;J)J

    .line 357
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/ibs/IbsQuickDim;->mSQDPowerSave:F

    goto :goto_b1

    .line 358
    :cond_8f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 359
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$300(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_a4

    return-void

    .line 360
    :cond_a4
    const/4 v0, -0x1

    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 361
    .local v0, "flag":I
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # invokes: Lcom/android/server/ibs/IbsQuickDim;->setQuickDimModeFromPms(I)V
    invoke-static {v1, v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1700(Lcom/android/server/ibs/IbsQuickDim;I)V

    .line 363
    .end local v0    # "flag":I
    :cond_b1
    :goto_b1
    return-void
.end method
