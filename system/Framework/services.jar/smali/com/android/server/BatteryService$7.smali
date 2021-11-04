.class Lcom/android/server/BatteryService$7;
.super Landroid/os/Handler;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->startCallThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 779
    iput-object p1, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 781
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    goto :goto_18

    .line 788
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/BatteryService;->setCallWirelessPowerSharingExternelEvent(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;Z)V

    goto :goto_18

    .line 784
    :cond_12
    iget-object v0, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->setCallWirelessPowerSharingExternelEvent(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;Z)V

    .line 785
    nop

    .line 791
    :goto_18
    return-void
.end method
