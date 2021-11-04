.class Lcom/android/server/display/DisplayManagerService$LocalService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService$LocalService;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

.field final synthetic val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/display/DisplayManagerService$LocalService;

    .line 4520
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestDisplayState(IIIF)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "stateInternal"    # I
    .param p3, "dualScreenPolicy"    # I
    .param p4, "brightness"    # F

    .line 4527
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 4528
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(I)V

    .line 4532
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(IIIF)V
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$6800(Lcom/android/server/display/DisplayManagerService;IIIF)V

    .line 4541
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$6200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(I)V

    .line 4548
    :cond_1a
    if-eq p1, v0, :cond_4d

    .line 4552
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(IIIF)V
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$6800(Lcom/android/server/display/DisplayManagerService;IIIF)V

    .line 4562
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$6200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(I)V

    .line 4564
    const/4 v1, 0x0

    .line 4565
    .local v1, "forceUpdate":Z
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingDualScreenPolicy:I
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6900(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v2

    if-eq v2, p3, :cond_3d

    .line 4566
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # setter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingDualScreenPolicy:I
    invoke-static {v2, p3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$6902(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    .line 4567
    const/4 v1, 0x1

    .line 4570
    :cond_3d
    const/4 v2, 0x2

    if-ne p1, v2, :cond_48

    if-ne p2, v0, :cond_48

    .line 4571
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v2, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(I)V

    goto :goto_4d

    .line 4573
    :cond_48
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(I)V

    .line 4579
    .end local v1    # "forceUpdate":Z
    :cond_4d
    :goto_4d
    return-void
.end method

.method public setDisplayStateLimitForEarlyWakeUp(I)V
    .registers 7
    .param p1, "stateLimit"    # I

    .line 4586
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4588
    :try_start_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_a9

    .line 4589
    :try_start_12
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mRequestedStateLimitForEarlyWakeUp:I
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$7100(Lcom/android/server/display/DisplayManagerService;)I

    move-result v2

    if-eq v2, p1, :cond_7d

    .line 4590
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayStateLimitForEarlyWakeUp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # setter for: Lcom/android/server/display/DisplayManagerService;->mRequestedStateLimitForEarlyWakeUp:I
    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$7102(Lcom/android/server/display/DisplayManagerService;I)I

    .line 4593
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    # invokes: Lcom/android/server/display/DisplayManagerService$LocalService;->applyLocalDisplayStateLocked(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$7200(Lcom/android/server/display/DisplayManagerService$LocalService;Ljava/util/List;)V

    .line 4598
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_12 .. :try_end_4c} :catchall_a6

    .line 4600
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4d
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 4601
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_6c
    .catchall {:try_start_4d .. :try_end_6c} :catchall_a9

    .line 4600
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 4604
    .end local v1    # "i":I
    :cond_6f
    :try_start_6f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4605
    nop

    .line 4606
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_b7

    .line 4609
    return-void

    .line 4595
    :cond_7d
    :try_start_7d
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayStateLimitForEarlyWakeUp: sameRequest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4596
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_7d .. :try_end_99} :catchall_a6

    .line 4604
    :try_start_99
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_b7

    .line 4596
    return-void

    .line 4598
    :catchall_a6
    move-exception v2

    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService$LocalService$1;
    .end local p1    # "stateLimit":I
    :try_start_a8
    throw v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    .line 4604
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService$LocalService$1;
    .restart local p1    # "stateLimit":I
    :catchall_a9
    move-exception v1

    :try_start_aa
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$7000(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4605
    nop

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService$LocalService$1;
    .end local p1    # "stateLimit":I
    throw v1

    .line 4606
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService$LocalService$1;
    .restart local p1    # "stateLimit":I
    :catchall_b7
    move-exception v1

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_aa .. :try_end_b9} :catchall_b7

    throw v1
.end method
