.class public Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;
.super Ljava/lang/Object;
.source "CmdSvcFacade.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final WAIT_TIMEOUT:I = 0x7d0


# instance fields
.field private final mBlockingDeque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile mCompleted:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    .local p0, "this":Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;, "Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    .line 22
    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "waitThread"    # Ljava/lang/Thread;

    .line 27
    .local p0, "this":Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;, "Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade<TT;>;"
    const/4 v0, 0x1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_14

    .line 28
    if-eqz p1, :cond_14

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_14

    .line 30
    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 31
    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2d

    .line 38
    :cond_14
    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_45

    .line 40
    :try_start_18
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 41
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_2c

    .line 43
    :catchall_28
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 45
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2c
    :goto_2c
    goto :goto_45

    .line 35
    :catchall_2d
    move-exception v1

    .line 36
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_2e
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_46

    .line 38
    .end local v1    # "e":Ljava/lang/Throwable;
    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_45

    .line 40
    :try_start_35
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 41
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_28

    goto :goto_2c

    .line 48
    :cond_45
    :goto_45
    return v0

    .line 38
    :catchall_46
    move-exception v0

    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_5f

    .line 40
    :try_start_4b
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 41
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_5b

    .line 45
    :cond_5a
    goto :goto_5f

    .line 43
    :catchall_5b
    move-exception v1

    .line 44
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 47
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5f
    :goto_5f
    throw v0
.end method


# virtual methods
.method public synthetic lambda$perform$0$CmdSvcFacade(Ljava/lang/Thread;Landroid/os/Message;)Z
    .registers 4
    .param p1, "waitThread"    # Ljava/lang/Thread;
    .param p2, "msg"    # Landroid/os/Message;

    .line 59
    .local p0, "this":Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;, "Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade<TT;>;"
    invoke-direct {p0, p2, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public perform(Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;",
            ">;)TT;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;, "Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;>;"
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "retVal":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 58
    .local v1, "waitThread":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/android/server/sepunion/friends/cmdsvc/-$$Lambda$CmdSvcFacade$mtbpcjHnMtGetjSKTTFieIg55sg;

    invoke-direct {v5, p0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/-$$Lambda$CmdSvcFacade$mtbpcjHnMtGetjSKTTFieIg55sg;-><init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;)V

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v2, v3}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    move-result-object v2

    .line 60
    .local v2, "svc":Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
    if-eqz v2, :cond_48

    if-eqz p1, :cond_48

    :try_start_25
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_3c

    if-eqz v3, :cond_48

    .line 62
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_37

    move-object v0, v3

    .line 65
    goto :goto_48

    .line 63
    :catchall_37
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_38
    invoke-static {v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_48

    .line 58
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_3c
    move-exception v3

    if-eqz v2, :cond_47

    :try_start_3f
    invoke-virtual {v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw v3

    .line 67
    :cond_48
    :goto_48
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    .line 69
    .end local v2    # "svc":Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
    :cond_4d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    .line 70
    return-object v0
.end method
