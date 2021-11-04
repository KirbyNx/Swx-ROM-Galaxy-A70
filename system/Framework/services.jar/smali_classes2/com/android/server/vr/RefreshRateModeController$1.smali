.class Lcom/android/server/vr/RefreshRateModeController$1;
.super Landroid/os/Handler;
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

    .line 61
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 64
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/RefreshRateModeController;->access$000(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 65
    :try_start_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    goto :goto_1e

    .line 71
    :cond_10
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # invokes: Lcom/android/server/vr/RefreshRateModeController;->updateNormalRefreshModeLocked()V
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$200(Lcom/android/server/vr/RefreshRateModeController;)V

    .line 72
    goto :goto_1e

    .line 67
    :cond_16
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 68
    .local v1, "refreshRateMode":I
    iget-object v2, p0, Lcom/android/server/vr/RefreshRateModeController$1;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # invokes: Lcom/android/server/vr/RefreshRateModeController;->setRefreshRateModeSetting(I)V
    invoke-static {v2, v1}, Lcom/android/server/vr/RefreshRateModeController;->access$100(Lcom/android/server/vr/RefreshRateModeController;I)V

    .line 69
    nop

    .line 76
    .end local v1    # "refreshRateMode":I
    :goto_1e
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method
