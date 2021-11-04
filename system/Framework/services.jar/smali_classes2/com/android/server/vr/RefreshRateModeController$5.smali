.class Lcom/android/server/vr/RefreshRateModeController$5;
.super Ljava/lang/Object;
.source "RefreshRateModeController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/RefreshRateModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/RefreshRateModeController;


# direct methods
.method constructor <init>(Lcom/android/server/vr/RefreshRateModeController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 152
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$5;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 156
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 164
    if-nez p1, :cond_4d

    .line 165
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController$5;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/RefreshRateModeController;->access$000(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_9
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$5;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # invokes: Lcom/android/server/vr/RefreshRateModeController;->getNormalRefreshRateMode()Z
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$900(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v1

    .line 167
    .local v1, "isNormalRefreshRate":Z
    iget-object v2, p0, Lcom/android/server/vr/RefreshRateModeController$5;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z
    invoke-static {v2}, Lcom/android/server/vr/RefreshRateModeController;->access$1000(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v2

    if-eq v2, v1, :cond_48

    .line 168
    iget-object v2, p0, Lcom/android/server/vr/RefreshRateModeController$5;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # setter for: Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z
    invoke-static {v2, v1}, Lcom/android/server/vr/RefreshRateModeController;->access$1002(Lcom/android/server/vr/RefreshRateModeController;Z)Z

    .line 169
    # getter for: Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 170
    const-string v2, "RefreshRateModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayChanged mIsNormalRefreshRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vr/RefreshRateModeController$5;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z
    invoke-static {v4}, Lcom/android/server/vr/RefreshRateModeController;->access$1000(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3f
    iget-object v2, p0, Lcom/android/server/vr/RefreshRateModeController$5;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;
    invoke-static {v2}, Lcom/android/server/vr/RefreshRateModeController;->access$1100(Lcom/android/server/vr/RefreshRateModeController;)Lcom/android/server/vr/GearVrManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerService;->updateLowPersistenceModeAllowedLocked()V

    .line 174
    .end local v1    # "isNormalRefreshRate":Z
    :cond_48
    monitor-exit v0

    goto :goto_4d

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_4a

    throw v1

    .line 176
    :cond_4d
    :goto_4d
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 160
    return-void
.end method
