.class Lcom/android/server/input/CameraMotorManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "CameraMotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/CameraMotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/CameraMotorManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/CameraMotorManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 1351
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1354
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1356
    .local v1, "time":J
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1357
    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
    invoke-static {v3}, Lcom/android/server/input/CameraMotorManagerService;->access$1500(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/input/CameraMotorManagerService$7$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/input/CameraMotorManagerService$7$1;-><init>(Lcom/android/server/input/CameraMotorManagerService$7;J)V

    invoke-virtual {v3, v4}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    .line 1369
    :cond_1f
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1370
    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
    invoke-static {v3}, Lcom/android/server/input/CameraMotorManagerService;->access$1500(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/input/CameraMotorManagerService$7$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/input/CameraMotorManagerService$7$2;-><init>(Lcom/android/server/input/CameraMotorManagerService$7;J)V

    invoke-virtual {v3, v4}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    .line 1382
    :cond_36
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1383
    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService$7;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # getter for: Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
    invoke-static {v3}, Lcom/android/server/input/CameraMotorManagerService;->access$1500(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/input/CameraMotorManagerService$7$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/input/CameraMotorManagerService$7$3;-><init>(Lcom/android/server/input/CameraMotorManagerService$7;J)V

    invoke-virtual {v3, v4}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->post(Ljava/lang/Runnable;)Z

    .line 1394
    :cond_4c
    :goto_4c
    return-void
.end method
