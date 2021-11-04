.class Lcom/android/server/ipm/chimera/SystemRepositoryDefault$3;
.super Landroid/app/IProcessObserver$Stub;
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

    .line 401
    iput-object p1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 14
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 405
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    # getter for: Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->access$100(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 406
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    invoke-virtual {v1, p2}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->getPackageNameFromUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "pkgList":[Ljava/lang/String;
    if-eqz v1, :cond_46

    array-length v2, v1

    if-nez v2, :cond_13

    goto :goto_46

    .line 410
    :cond_13
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    invoke-virtual {v2, p2}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->getUserId(I)I

    move-result v6

    .line 411
    .local v6, "userId":I
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    invoke-virtual {v2}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 412
    .local v8, "isHomePackage":Z
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    # getter for: Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->access$100(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_30
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;

    .line 413
    .local v2, "observer":Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;
    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;->onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V

    .line 415
    .end local v2    # "observer":Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;
    goto :goto_30

    .line 416
    .end local v1    # "pkgList":[Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v8    # "isHomePackage":Z
    :cond_44
    monitor-exit v0

    .line 417
    return-void

    .line 408
    .restart local v1    # "pkgList":[Ljava/lang/String;
    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    .line 416
    .end local v1    # "pkgList":[Ljava/lang/String;
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    return-void
.end method
