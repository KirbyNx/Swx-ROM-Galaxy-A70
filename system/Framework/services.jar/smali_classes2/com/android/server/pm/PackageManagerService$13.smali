.class Lcom/android/server/pm/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->startMovePackage(Lcom/android/server/pm/PackageManagerService$SdcardParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$SdcardParams;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 29001
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 29005
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$13;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$SdcardParams;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;->volumeUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v3, v3, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$SdcardParams;->callingUid:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$SdcardParams;->user:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$7200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_19
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 29020
    goto :goto_87

    .line 29006
    :catch_1a
    move-exception v0

    .line 29007
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29008
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$sdParams:Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v2, v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    const/4 v3, -0x6

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6900(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 29010
    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveIdMapForSd:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7400()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 29011
    :try_start_48
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5a

    .line 29012
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29013
    :cond_5a
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    if-ne v2, v3, :cond_86

    .line 29014
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$SdcardParams;

    .line 29015
    .local v3, "param":Lcom/android/server/pm/PackageManagerService$SdcardParams;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v4

    iget v5, v3, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    const/4 v6, -0x1

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6900(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 29016
    .end local v3    # "param":Lcom/android/server/pm/PackageManagerService$SdcardParams;
    goto :goto_66

    .line 29017
    :cond_7f
    # getter for: Lcom/android/server/pm/PackageManagerService;->mPendingMoves:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$7500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 29019
    :cond_86
    monitor-exit v1

    .line 29021
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_87
    return-void

    .line 29019
    .restart local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :catchall_88
    move-exception v2

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_48 .. :try_end_8a} :catchall_88

    throw v2
.end method
