.class Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;
.super Ljava/lang/Object;
.source "DualDARDaemonProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    .line 386
    iput-object p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 389
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string v2, "coudn\'t connect with daemon!"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 391
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    # setter for: Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mIsNotified:Z
    invoke-static {v0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->access$002(Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;Z)Z

    .line 392
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    iget-object v0, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 393
    return-void
.end method
