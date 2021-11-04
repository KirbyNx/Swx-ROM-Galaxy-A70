.class Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field final synthetic val$this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Landroid/os/Looper;Lcom/android/server/power/PowerManagerService;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 10069
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->val$this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 10071
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_13

    .line 10073
    :cond_8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOn()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$18600(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V

    .line 10074
    goto :goto_13

    .line 10076
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;->this$1:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightOff()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$18700(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V

    .line 10079
    :goto_13
    return-void
.end method
