.class Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    .line 4066
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 4069
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    # getter for: Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEalyWakeUpLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->access$3400(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4072
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->access$3502(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)Z

    .line 4073
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    # invokes: Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->updateSuspendBlockerLocked()V
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->access$3600(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V

    .line 4074
    monitor-exit v0

    .line 4075
    return-void

    .line 4074
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method
