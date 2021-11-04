.class Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;
.super Ljava/lang/Object;
.source "ProxyAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 138
    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # getter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$000(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KnoxService::ProxyAgentWrapper"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_29
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    invoke-static {v2, v3}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$202(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    .line 191
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z
    invoke-static {v2, v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$302(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z

    .line 192
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # invokes: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->triggerRestart()V
    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$700(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V

    .line 194
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNullBinding : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # getter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$000(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KnoxService::ProxyAgentWrapper"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 176
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_29
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    invoke-static {v2, v3}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$202(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    .line 179
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z
    invoke-static {v2, v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$302(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z

    .line 180
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # invokes: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->triggerRestart()V
    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$700(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Knox Proxy Agent started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # getter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$000(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KnoxService::ProxyAgentWrapper"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # getter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    invoke-static {v0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$100(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_36
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    move-result-object v4

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    invoke-static {v3, v4}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$202(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    .line 146
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # getter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    invoke-static {v3}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$200(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    move-result-object v3

    if-nez v3, :cond_53

    .line 147
    const-string v2, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v3, "onServiceConnected: Unable to find Knox Proxy Agent!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    monitor-exit v0

    return-void

    .line 150
    :cond_53
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z
    invoke-static {v3, v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$302(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z

    .line 151
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z
    invoke-static {v3, v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$402(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z

    .line 152
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v2, v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 153
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_36 .. :try_end_65} :catchall_78

    .line 155
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # getter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z
    invoke-static {v0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$500(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 156
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # invokes: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->onAgentReconnected()V
    invoke-static {v0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$600(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z
    invoke-static {v0, v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$502(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z

    .line 159
    :cond_77
    return-void

    .line 153
    :catchall_78
    move-exception v1

    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Knox Proxy Agent disconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # getter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$000(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KnoxService::ProxyAgentWrapper"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v0, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_28
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    invoke-static {v2, v3}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$202(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    .line 167
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # setter for: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z
    invoke-static {v2, v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$302(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z

    .line 168
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    # invokes: Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->triggerRestart()V
    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->access$700(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3a

    throw v1
.end method
