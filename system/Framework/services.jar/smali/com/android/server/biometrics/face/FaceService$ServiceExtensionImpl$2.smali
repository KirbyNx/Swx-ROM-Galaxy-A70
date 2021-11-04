.class Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$2;
.super Landroid/os/Handler;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2695
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$2;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 2698
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x5

    const-string v3, "GFaceService"

    if-eq v0, v1, :cond_2e

    if-eq v0, v2, :cond_21

    .line 2711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 2706
    :cond_21
    const-string/jumbo v0, "handleMessage: MSG_BRIGHTNESS_READY_TO_SET_MAX"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$2;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsReadyToSetMaxBrightness:Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17502(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z

    .line 2708
    goto :goto_5c

    .line 2700
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: MSG_BRIGHTNESS_LEVEL_UP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$2;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelUp:I
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$19700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$2;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelUp:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$19700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setBrightness(I)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    .line 2702
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$2;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2703
    nop

    .line 2713
    :goto_5c
    return-void
.end method
