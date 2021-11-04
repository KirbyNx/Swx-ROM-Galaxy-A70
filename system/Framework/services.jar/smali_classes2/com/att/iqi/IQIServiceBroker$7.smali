.class Lcom/att/iqi/IQIServiceBroker$7;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 730
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 733
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implementation service connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " binder service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    const-string v1, "IQIServiceBroker"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_2c
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v0

    .line 738
    :try_start_2f
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # invokes: Lcom/att/iqi/IQIServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    invoke-static {v2, p2}, Lcom/att/iqi/IQIServiceBroker;->access$1900(Lcom/att/iqi/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v2

    # setter for: Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;
    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$1502(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    .line 739
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x1

    # invokes: Lcom/att/iqi/IQIServiceBroker;->notifyServiceState(Z)V
    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$2000(Lcom/att/iqi/IQIServiceBroker;Z)V

    .line 740
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_5e

    .line 742
    const/4 v1, 0x0

    :try_start_46
    new-instance v2, Lcom/att/iqi/IQIServiceBroker$7$1;

    invoke-direct {v2, p0}, Lcom/att/iqi/IQIServiceBroker$7$1;-><init>(Lcom/att/iqi/IQIServiceBroker$7;)V

    invoke-interface {p2, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4e} :catch_4f
    .catchall {:try_start_46 .. :try_end_4e} :catchall_5e

    .line 753
    goto :goto_57

    .line 751
    :catch_4f
    move-exception v2

    .line 752
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_50
    const-string v3, "IQIServiceBroker"

    const-string v4, "Exception while linking IBinder to death"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_57
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # setter for: Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I
    invoke-static {v2, v1}, Lcom/att/iqi/IQIServiceBroker;->access$2102(Lcom/att/iqi/IQIServiceBroker;I)I

    .line 755
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 760
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "IQIServiceBroker"

    const-string v1, "Implementation service unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_d
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v0

    .line 762
    :try_start_10
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    # invokes: Lcom/att/iqi/IQIServiceBroker;->notifyServiceState(Z)V
    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$2000(Lcom/att/iqi/IQIServiceBroker;Z)V

    .line 763
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v3, 0x0

    # setter for: Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;
    invoke-static {v1, v3}, Lcom/att/iqi/IQIServiceBroker;->access$1502(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    .line 764
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 765
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # setter for: Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I
    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$2102(Lcom/att/iqi/IQIServiceBroker;I)I

    .line 766
    monitor-exit v0

    .line 767
    return-void

    .line 766
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v1
.end method
