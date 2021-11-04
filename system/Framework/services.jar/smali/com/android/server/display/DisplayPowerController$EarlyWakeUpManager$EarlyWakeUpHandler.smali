.class final Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EarlyWakeUpHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4234
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    .line 4235
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 4236
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 4240
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_14

    .line 4242
    :cond_6
    const-string v0, "DisplayPowerController"

    const-string v1, "[ew] MSG_EARLY_WAKEUP_TIMEOUT"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;->this$1:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)V

    .line 4246
    :goto_14
    return-void
.end method
