.class Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    .line 4124
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 4130
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->val$enable:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 4131
    .local v0, "state":I
    :goto_7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$3800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/display/DisplayBlanker;->setDisplayStateLimitForEarlyWakeUp(I)V

    .line 4133
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    # getter for: Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEalyWakeUpLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->access$3400(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4134
    :try_start_19
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z
    invoke-static {v2, v3}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->access$3902(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)Z

    .line 4135
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    # invokes: Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->updateSuspendBlockerLocked()V
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->access$3600(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V

    .line 4136
    monitor-exit v1

    .line 4137
    return-void

    .line 4136
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_26

    throw v2
.end method
