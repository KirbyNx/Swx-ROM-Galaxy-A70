.class Lcom/android/server/pm/PackageManagerService$14;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$isCurrentLocationExternal:Z

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;Lcom/android/server/pm/PackageManagerService$PackageFreezer;ILjava/lang/String;Z)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 29283
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$14;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$moveId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$14;->val$isCurrentLocationExternal:Z

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29295
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$14;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 29296
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$14;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 29297
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    const/4 v1, -0x6

    if-eqz v0, :cond_80

    .line 29298
    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveIdMapForSd:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7400()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 29299
    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPreMounted:Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4b

    .line 29300
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3c

    .line 29301
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v2

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v3, v3, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v2, v3, v1}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6900(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 29303
    :cond_3c
    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveIdMapForSd:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7400()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 29304
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_7b

    .line 29305
    :cond_4b
    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveIdMapForSd:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7400()Ljava/util/Map;

    move-result-object v2

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$moveId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 29306
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29307
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7b

    .line 29308
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;

    .line 29309
    .local v2, "sdParams":Lcom/android/server/pm/PackageManagerService$SdcardParams;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->startMovePackage(Lcom/android/server/pm/PackageManagerService$SdcardParams;)V
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->access$7700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$SdcardParams;)V

    .line 29312
    .end local v2    # "sdParams":Lcom/android/server/pm/PackageManagerService$SdcardParams;
    :cond_7b
    :goto_7b
    monitor-exit v0

    goto :goto_80

    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_14 .. :try_end_7f} :catchall_7d

    throw v1

    .line 29315
    :cond_80
    :goto_80
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v0

    .line 29316
    .local v0, "status":I
    if-eqz v0, :cond_a2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_95

    .line 29330
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$14;->val$moveId:I

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v2, v3, v1}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6900(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_c6

    .line 29326
    :cond_95
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$moveId:I

    const/4 v3, -0x1

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6900(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 29328
    goto :goto_c6

    .line 29319
    :cond_a2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$moveId:I

    const/16 v3, 0x64

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6900(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 29321
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$moveId:I

    const/16 v3, -0x64

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6900(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 29323
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$14;->val$isCurrentLocationExternal:Z

    # invokes: Lcom/android/server/pm/PackageManagerService;->logAppMovedStorage(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$7800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)V

    .line 29324
    nop

    .line 29334
    :goto_c6
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29286
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
