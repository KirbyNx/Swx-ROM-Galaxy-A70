.class Lcom/android/server/GmsAlarmManager$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;)V
    .registers 4

    .line 398
    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    # getter for: Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/GmsAlarmManager;->access$300(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 407
    const-string v0, "GmsAlarmManager"

    const-string v1, "CONNECTIVITY RECEIVER"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1, v2}, Lcom/android/server/GmsAlarmManager;->access$402(Lcom/android/server/GmsAlarmManager;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 410
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_c2

    .line 411
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 412
    .local v1, "type":I
    const v2, 0x9d08

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkInfo type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  -- isConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x11

    if-eq v1, v0, :cond_6f

    if-eq v1, v2, :cond_6f

    if-eqz v1, :cond_6f

    if-eq v1, v3, :cond_6f

    const/16 v0, 0x10

    if-ne v1, v0, :cond_c2

    .line 417
    :cond_6f
    if-ne v1, v3, :cond_98

    .line 418
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 419
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$500(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_98

    .line 421
    :cond_8b
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$500(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    .line 424
    :cond_98
    :goto_98
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$600(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 425
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z
    invoke-static {v0, v2}, Lcom/android/server/GmsAlarmManager;->access$902(Lcom/android/server/GmsAlarmManager;Z)Z

    .line 426
    return-void

    .line 428
    :cond_b6
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->cancelAlarm()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1000(Lcom/android/server/GmsAlarmManager;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/16 v2, 0x2710

    # invokes: Lcom/android/server/GmsAlarmManager;->sendCheckNetWorkDelay(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/GmsAlarmManager;->access$1100(Lcom/android/server/GmsAlarmManager;J)V

    .line 433
    .end local v1    # "type":I
    :cond_c2
    return-void
.end method
