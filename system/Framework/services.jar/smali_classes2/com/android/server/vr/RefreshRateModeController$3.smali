.class Lcom/android/server/vr/RefreshRateModeController$3;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "RefreshRateModeController.java"


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

    .line 95
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 98
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/RefreshRateModeController;->access$000(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 99
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # setter for: Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z
    invoke-static {v1, p1}, Lcom/android/server/vr/RefreshRateModeController;->access$602(Lcom/android/server/vr/RefreshRateModeController;Z)Z

    .line 100
    # getter for: Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->access$400()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 101
    const-string v1, "RefreshRateModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPersistentVrStateChanged mIsDaydreamPersistentVrModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z
    invoke-static {v3}, Lcom/android/server/vr/RefreshRateModeController;->access$600(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2f
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_46

    throw v1
.end method
