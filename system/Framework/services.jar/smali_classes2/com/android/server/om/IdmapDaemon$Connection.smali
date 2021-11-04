.class Lcom/android/server/om/IdmapDaemon$Connection;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/IdmapDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mOpened:Z

.field final synthetic this$0:Lcom/android/server/om/IdmapDaemon;


# direct methods
.method private constructor <init>(Lcom/android/server/om/IdmapDaemon;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 66
    # getter for: Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->access$000(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 67
    :try_start_d
    # getter for: Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->access$100(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/om/IdmapDaemon;
    .param p2, "x1"    # Lcom/android/server/om/IdmapDaemon$1;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    .line 73
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    # getter for: Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/om/IdmapDaemon;->access$000(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 74
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    if-nez v1, :cond_d

    .line 75
    monitor-exit v0

    return-void

    .line 78
    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 79
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    # getter for: Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->access$100(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 82
    monitor-exit v0

    return-void

    .line 85
    :cond_1e
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/om/-$$Lambda$IdmapDaemon$Connection$4U-n0RSv1BPv15mvu8B8zXARcpk;

    invoke-direct {v2, p0}, Lcom/android/server/om/-$$Lambda$IdmapDaemon$Connection$4U-n0RSv1BPv15mvu8B8zXARcpk;-><init>(Lcom/android/server/om/IdmapDaemon$Connection;)V

    iget-object v3, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    .line 95
    # getter for: Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/om/IdmapDaemon;->access$000(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x2710

    .line 85
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public synthetic lambda$close$0$IdmapDaemon$Connection()V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    # getter for: Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/om/IdmapDaemon;->access$000(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 88
    :try_start_7
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    # getter for: Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;
    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->access$200(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    # getter for: Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->access$100(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_27

    .line 92
    :cond_1c
    # invokes: Lcom/android/server/om/IdmapDaemon;->stopIdmapService()V
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->access$300()V

    .line 93
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;
    invoke-static {v1, v2}, Lcom/android/server/om/IdmapDaemon;->access$202(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)Landroid/os/IIdmap2;

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 89
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    .line 94
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method
