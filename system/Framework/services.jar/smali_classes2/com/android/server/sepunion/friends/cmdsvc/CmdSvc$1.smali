.class Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;
.super Ljava/lang/Object;
.source "CmdSvc.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    .line 37
    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 40
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # getter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z
    invoke-static {v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$000(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CmdSvc"

    const-string/jumbo v3, "onServiceConnected %s"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # getter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z
    invoke-static {v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$000(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 43
    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # setter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z
    invoke-static {v1, v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$002(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Z)Z

    .line 45
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # getter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$100(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 47
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # getter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$100(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_3c

    .line 48
    :catch_38
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 50
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3c
    goto :goto_47

    .line 52
    :cond_3d
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # invokes: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$200(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V

    .line 54
    :goto_47
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 58
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$200(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CmdSvc"

    const-string/jumbo v2, "onServiceDisconnected "

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    return-void
.end method
