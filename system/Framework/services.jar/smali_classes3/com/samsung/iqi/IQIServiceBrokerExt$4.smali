.class Lcom/samsung/iqi/IQIServiceBrokerExt$4;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 99
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z
    invoke-static {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$500(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "IQIServiceBrokerExt"

    const-string v1, "mUploadStateReceiver upload done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_f
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$000(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_16
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$100(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 105
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z
    invoke-static {v1, v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$102(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)Z

    .line 106
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # invokes: Lcom/samsung/iqi/IQIServiceBrokerExt;->changeIqiState(Z)V
    invoke-static {v1, v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$200(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    .line 107
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$900(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$800(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    # getter for: Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$300(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object v2, v2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    :cond_45
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_47

    throw v1
.end method
