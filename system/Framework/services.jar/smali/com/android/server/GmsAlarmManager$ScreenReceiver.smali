.class Lcom/android/server/GmsAlarmManager$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;)V
    .registers 4

    .line 437
    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 438
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    # getter for: Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/GmsAlarmManager;->access$300(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 442
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 445
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOn:Z
    invoke-static {v0, v2}, Lcom/android/server/GmsAlarmManager;->access$602(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 446
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 447
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->cancelAlarm()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1000(Lcom/android/server/GmsAlarmManager;)V

    .line 448
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/16 v2, 0x2710

    # invokes: Lcom/android/server/GmsAlarmManager;->sendCheckNetWorkDelay(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/GmsAlarmManager;->access$1100(Lcom/android/server/GmsAlarmManager;J)V

    .line 449
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$902(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_50

    .line 450
    :cond_2d
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_50

    .line 451
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_50

    .line 454
    :cond_46
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$602(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 455
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$902(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 457
    :cond_50
    :goto_50
    return-void
.end method
