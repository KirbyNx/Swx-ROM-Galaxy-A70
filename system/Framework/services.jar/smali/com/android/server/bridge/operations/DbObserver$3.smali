.class Lcom/android/server/bridge/operations/DbObserver$3;
.super Landroid/database/ContentObserver;
.source "DbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/bridge/operations/DbObserver;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/bridge/operations/DbObserver$3;->onChange(ZLandroid/net/Uri;)V

    .line 89
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 97
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->access$200(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conatcts onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    iget-object v0, v0, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    monitor-enter v0

    .line 99
    :try_start_10
    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/bridge/operations/DbObserver;->access$300(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    iget-object v2, v2, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/bridge/operations/DbObserver;->access$300(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver$3;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    iget-object v2, v2, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_2e

    throw v1
.end method
