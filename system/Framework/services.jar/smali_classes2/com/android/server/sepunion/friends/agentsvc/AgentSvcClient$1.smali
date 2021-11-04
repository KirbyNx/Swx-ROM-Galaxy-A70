.class Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    .line 34
    iput-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget-object v2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    # getter for: Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z
    invoke-static {v2}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->access$000(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    # getter for: Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    invoke-static {v2}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->access$100(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "AgentSvcClient"

    const-string/jumbo v4, "onServiceConnected binder[%s] %s %d"

    invoke-static {v2, v4, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    # getter for: Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z
    invoke-static {v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->access$000(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 40
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "onServiceConnected 111"

    invoke-static {v2, v4, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    # setter for: Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z
    invoke-static {v0, v3}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->access$002(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Z)Z

    .line 43
    :try_start_41
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    # getter for: Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->access$100(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 44
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    # getter for: Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->access$100(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 46
    const-string v0, "FSvc is connected"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_5e} :catch_5f

    goto :goto_63

    .line 48
    :catch_5f
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 50
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_63
    goto :goto_7c

    .line 52
    :cond_64
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "onServiceConnected 222"

    invoke-static {v2, v3, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object v3

    # invokes: Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;
    invoke-static {v0, v3}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->access$200(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 55
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "FSvc is re-connected"

    invoke-static {v2, v1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    :goto_7c
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 61
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->access$200(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AgentSvcClient"

    const-string v2, "FSvc is disconnected"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    return-void
.end method
