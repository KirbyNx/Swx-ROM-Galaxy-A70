.class final Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockoutReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V
    .registers 2

    .line 2476
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Lcom/android/server/biometrics/face/FaceService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p2, "x1"    # Lcom/android/server/biometrics/face/FaceService$1;

    .line 2476
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2479
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting lockout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2481
    const-string/jumbo v0, "lockout_reset_user"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2482
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->resetFailedAttempts(Z)V
    invoke-static {v2, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1100(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)V

    .line 2484
    .end local v0    # "user":I
    :cond_3f
    return-void
.end method
