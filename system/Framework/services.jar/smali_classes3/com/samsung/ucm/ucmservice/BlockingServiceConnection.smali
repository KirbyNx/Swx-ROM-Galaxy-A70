.class public Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
.super Ljava/lang/Object;
.source "BlockingServiceConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Landroid/os/IBinder;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "service"    # Landroid/os/IBinder;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->serviceConnection:Landroid/content/ServiceConnection;

    .line 29
    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->service:Landroid/os/IBinder;

    .line 30
    return-void
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 77
    if-eqz p0, :cond_43

    .line 80
    if-eqz p1, :cond_3b

    .line 83
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 85
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/os/IBinder;>;"
    new-instance v2, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;

    invoke-direct {v2, v0}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 106
    .local v2, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    invoke-virtual {p0, p1, v2, v1, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 108
    .local v1, "isBound":Z
    if-eqz v1, :cond_24

    .line 111
    new-instance v3, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;

    .line 112
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-direct {v3, p0, v2, v4}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V

    .line 111
    return-object v3

    .line 109
    :cond_24
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not bind to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 81
    .end local v0    # "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/os/IBinder;>;"
    .end local v1    # "isBound":Z
    .end local v2    # "keyChainServiceConnection":Landroid/content/ServiceConnection;
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 118
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_15

    .line 119
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 40
    return-void

    .line 44
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 48
    goto :goto_c

    .line 46
    :catch_b
    move-exception v0

    .line 49
    :goto_c
    return-void
.end method

.method public getService()Landroid/os/IBinder;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->service:Landroid/os/IBinder;

    return-object v0
.end method
