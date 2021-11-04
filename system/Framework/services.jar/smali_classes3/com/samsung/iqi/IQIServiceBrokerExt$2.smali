.class Lcom/samsung/iqi/IQIServiceBrokerExt$2;
.super Landroid/database/ContentObserver;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/iqi/IQIServiceBrokerExt;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 67
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # invokes: Lcom/samsung/iqi/IQIServiceBrokerExt;->getOpt()I
    invoke-static {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$400(Lcom/samsung/iqi/IQIServiceBrokerExt;)I

    move-result v0

    .line 68
    .local v0, "opt":I
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$500(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: opt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z
    invoke-static {v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$600(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "running"

    goto :goto_2d

    :cond_2b
    const-string v2, "stopped"

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IQIServiceBrokerExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_39
    const/4 v1, 0x1

    if-nez v0, :cond_7e

    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z
    invoke-static {v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$600(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 72
    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$000(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 73
    :try_start_4b
    iget-object v3, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # setter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z
    invoke-static {v3, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$102(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)Z

    .line 74
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_7b

    .line 75
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$300(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object v2, v2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.att.iqi.action.UPLOAD_COMPLETE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    const/4 v1, 0x0

    # invokes: Lcom/samsung/iqi/IQIServiceBrokerExt;->submitSS2S(Z)V
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$700(Z)V

    .line 77
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$900(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$800(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a0

    .line 74
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1

    .line 78
    :cond_7e
    if-ne v0, v1, :cond_a0

    .line 79
    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z
    invoke-static {v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$600(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 80
    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$900(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$800(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    # invokes: Lcom/samsung/iqi/IQIServiceBrokerExt;->submitSS2S(Z)V
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$700(Z)V

    goto :goto_a0

    .line 83
    :cond_9b
    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # invokes: Lcom/samsung/iqi/IQIServiceBrokerExt;->changeIqiState(Z)V
    invoke-static {v2, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$200(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 86
    :cond_a0
    :goto_a0
    return-void
.end method
