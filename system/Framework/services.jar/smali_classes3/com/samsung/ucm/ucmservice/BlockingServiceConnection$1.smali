.class Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;
.super Ljava/lang/Object;
.source "BlockingServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->bindAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile mConnectedAtLeastOnce:Z

.field final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 90
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->mConnectedAtLeastOnce:Z

    if-nez v0, :cond_e

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->mConnectedAtLeastOnce:Z

    .line 93
    :try_start_7
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d

    .line 97
    goto :goto_e

    .line 94
    :catch_d
    move-exception v0

    .line 99
    :cond_e
    :goto_e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 103
    return-void
.end method
