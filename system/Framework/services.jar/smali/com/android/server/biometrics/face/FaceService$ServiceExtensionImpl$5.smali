.class Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->registerBroadcastEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 3543
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$5;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$FaceService$ServiceExtensionImpl$5()V
    .registers 2

    .line 3551
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$5;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->stopOperation()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 3552
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$5;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->cancelDaemon()I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    .line 3553
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3546
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3547
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBroadCastReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x741706da

    if-eq v1, v2, :cond_25

    :cond_24
    goto :goto_2f

    :cond_25
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    goto :goto_30

    :goto_2f
    const/4 v1, -0x1

    :goto_30
    if-eqz v1, :cond_33

    goto :goto_43

    .line 3550
    :cond_33
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$5;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v1, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$22300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$5$E2uuQcMAuku2a9pabIxTRHQ5n5c;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$5$E2uuQcMAuku2a9pabIxTRHQ5n5c;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$5;)V

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 3556
    :goto_43
    return-void
.end method
