.class Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$1;
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

    .line 2675
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$1;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 2678
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "GFaceService"

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    .line 2690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 2685
    :cond_21
    const-string/jumbo v0, "handleMessage: MSG_PROXIMITY_SENSOR_ERROR"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$1;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$1;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v1, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getHalDeviceId()J

    move-result-wide v1

    const/16 v3, 0x16

    const/16 v4, 0x3e9

    # invokes: Lcom/android/server/biometrics/face/FaceService;->handleAcquired(JII)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/face/FaceService;->access$19600(Lcom/android/server/biometrics/face/FaceService;JII)V

    .line 2687
    goto :goto_49

    .line 2680
    :cond_3b
    const-string/jumbo v0, "handleMessage : MSG_INACTIVITY_TIMER_EXPIRED(TIMEOUT)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$1;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    const/16 v1, -0x3e8

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->finishProcessing(I)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$19500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    .line 2682
    nop

    .line 2692
    :goto_49
    return-void
.end method
