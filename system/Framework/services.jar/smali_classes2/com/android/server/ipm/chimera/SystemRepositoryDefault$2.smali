.class Lcom/android/server/ipm/chimera/SystemRepositoryDefault$2;
.super Landroid/app/IUidObserver$Stub;
.source "SystemRepositoryDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/SystemRepositoryDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    .line 366
    iput-object p1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    # getter for: Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->access$000(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 371
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$2;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    # getter for: Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->access$000(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;

    .line 372
    .local v2, "observer":Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;
    invoke-interface {v2, p1, p2}, Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;->onUidGone(IZ)V

    .line 373
    .end local v2    # "observer":Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;
    goto :goto_11

    .line 374
    :cond_21
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    return-void
.end method
