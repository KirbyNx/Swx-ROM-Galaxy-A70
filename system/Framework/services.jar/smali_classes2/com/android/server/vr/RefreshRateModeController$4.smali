.class Lcom/android/server/vr/RefreshRateModeController$4;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
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

    .line 109
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/RefreshRateModeController;->access$000(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 113
    const/16 v1, 0x40

    const/4 v2, 0x1

    const-wide/16 v3, 0x96

    const/4 v5, 0x2

    if-eq p1, v1, :cond_d0

    const/16 v1, 0x80

    const/4 v6, 0x0

    if-eq p1, v1, :cond_95

    const/high16 v1, 0x100000

    if-eq p1, v1, :cond_5a

    const/high16 v1, 0x200000

    if-eq p1, v1, :cond_1e

    goto/16 :goto_10b

    .line 123
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # setter for: Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z
    invoke-static {v1, v6}, Lcom/android/server/vr/RefreshRateModeController;->access$702(Lcom/android/server/vr/RefreshRateModeController;Z)Z

    .line 124
    # getter for: Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->access$400()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 125
    const-string v1, "RefreshRateModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGearVrStateChanged mIsPersistentVrModeEnabled="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z
    invoke-static {v6}, Lcom/android/server/vr/RefreshRateModeController;->access$700(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_46
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    goto/16 :goto_10b

    .line 115
    :cond_5a
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # setter for: Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/vr/RefreshRateModeController;->access$702(Lcom/android/server/vr/RefreshRateModeController;Z)Z

    .line 116
    # getter for: Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->access$400()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 117
    const-string v1, "RefreshRateModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGearVrStateChanged mIsPersistentVrModeEnabled="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z
    invoke-static {v6}, Lcom/android/server/vr/RefreshRateModeController;->access$700(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_82
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    goto :goto_10b

    .line 139
    :cond_95
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # setter for: Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z
    invoke-static {v1, v6}, Lcom/android/server/vr/RefreshRateModeController;->access$802(Lcom/android/server/vr/RefreshRateModeController;Z)Z

    .line 140
    # getter for: Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->access$400()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 141
    const-string v1, "RefreshRateModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGearVrStateChanged mIsVrModeEnabled="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z
    invoke-static {v6}, Lcom/android/server/vr/RefreshRateModeController;->access$800(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_bd
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    goto :goto_10b

    .line 131
    :cond_d0
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # setter for: Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/vr/RefreshRateModeController;->access$802(Lcom/android/server/vr/RefreshRateModeController;Z)Z

    .line 132
    # getter for: Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->access$400()Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 133
    const-string v1, "RefreshRateModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGearVrStateChanged mIsVrModeEnabled="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z
    invoke-static {v6}, Lcom/android/server/vr/RefreshRateModeController;->access$800(Lcom/android/server/vr/RefreshRateModeController;)Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_f8
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$4;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/vr/RefreshRateModeController;->access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    nop

    .line 149
    :goto_10b
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_10d
    move-exception v1

    monitor-exit v0
    :try_end_10f
    .catchall {:try_start_1e .. :try_end_10f} :catchall_10d

    throw v1
.end method
