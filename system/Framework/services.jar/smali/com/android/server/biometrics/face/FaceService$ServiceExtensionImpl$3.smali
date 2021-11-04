.class Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;
.super Landroid/view/OrientationEventListener;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

.field final synthetic val$this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/content/Context;ILcom/android/server/biometrics/face/FaceService;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rate"    # I

    .line 2729
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iput-object p4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->val$this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onOrientationChanged$0$FaceService$ServiceExtensionImpl$3()V
    .registers 3

    .line 2739
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLastRotation:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$19800(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setRotationDaemon(I)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$20000(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5
    .param p1, "orientation"    # I

    .line 2732
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$12600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2733
    return-void

    .line 2735
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$12600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2736
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLastRotation:I
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$19800(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v1

    if-eq v0, v1, :cond_3c

    .line 2737
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLastRotation:I
    invoke-static {v1, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$19802(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I

    .line 2738
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2739
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v1, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$19900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$3$_K9C7amkdMYFHirINQgsUyi8Uds;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$3$_K9C7amkdMYFHirINQgsUyi8Uds;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;)V

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 2742
    :cond_3c
    return-void
.end method
