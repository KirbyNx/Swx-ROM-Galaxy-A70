.class Lcom/android/server/power/PowerManagerService$16;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 7887
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 9
    .param p1, "state"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7890
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7891
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isVrModeEnabled()Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$7900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    .line 7892
    .local v1, "oldVrModeEnabled":Z
    const/high16 v2, 0x10000

    const/4 v3, 0x1

    if-eq p1, v2, :cond_32

    const/high16 v2, 0x20000

    const/4 v4, 0x0

    if-eq p1, v2, :cond_2c

    const/high16 v2, 0x40000

    if-eq p1, v2, :cond_26

    const/high16 v2, 0x80000

    if-eq p1, v2, :cond_20

    goto :goto_38

    .line 7903
    :cond_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsLowPersistenceModeAllowed:Z
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$8102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 7904
    goto :goto_38

    .line 7900
    :cond_26
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsLowPersistenceModeAllowed:Z
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$8102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 7901
    goto :goto_38

    .line 7897
    :cond_2c
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsLowPersistenceMode:Z
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$8002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 7898
    goto :goto_38

    .line 7894
    :cond_32
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsLowPersistenceMode:Z
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$8002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 7895
    nop

    .line 7908
    :goto_38
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isVrModeEnabled()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$7900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    .line 7909
    .local v2, "newVrModeEnabled":Z
    if-eq v1, v2, :cond_6b

    .line 7910
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGearVrStateChanged for mIsLowPersistenceMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7911
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v4, 0x2000

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$3676(Lcom/android/server/power/PowerManagerService;I)I

    .line 7912
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$16;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)V

    .line 7914
    .end local v1    # "oldVrModeEnabled":Z
    .end local v2    # "newVrModeEnabled":Z
    :cond_6b
    monitor-exit v0

    .line 7915
    return-void

    .line 7914
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_7 .. :try_end_6f} :catchall_6d

    throw v1
.end method
