.class Lcom/android/server/vr/GearVrManagerService$1;
.super Ljava/lang/Object;
.source "GearVrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/GearVrManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 582
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onXrDisplayAdded(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 585
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1200(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 586
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    iget-object v1, v1, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1300(Lcom/android/server/vr/GearVrManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 588
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1400(Lcom/android/server/vr/GearVrManagerService;)V

    .line 589
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateTetheredDisplayStateLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1500(Lcom/android/server/vr/GearVrManagerService;)V

    .line 590
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateMetaScreenLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1600(Lcom/android/server/vr/GearVrManagerService;)V

    .line 591
    monitor-exit v0

    .line 592
    return-void

    .line 591
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public onXrDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 607
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1200(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 608
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateMetaScreenLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1600(Lcom/android/server/vr/GearVrManagerService;)V

    .line 609
    monitor-exit v0

    .line 610
    return-void

    .line 609
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onXrDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 596
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1200(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 597
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    iget-object v1, v1, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 598
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1300(Lcom/android/server/vr/GearVrManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 599
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1400(Lcom/android/server/vr/GearVrManagerService;)V

    .line 600
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateTetheredDisplayStateLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1500(Lcom/android/server/vr/GearVrManagerService;)V

    .line 601
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$1;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateMetaScreenLocked()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1600(Lcom/android/server/vr/GearVrManagerService;)V

    .line 602
    monitor-exit v0

    .line 603
    return-void

    .line 602
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1
.end method
