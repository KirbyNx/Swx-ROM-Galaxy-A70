.class Lcom/android/server/policy/PhoneWindowManagerExt$7;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 4231
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 4243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTorchModeChanged mCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5800(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5800(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5800(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4246
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mTorchMode:Z
    invoke-static {v0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 4248
    :cond_4a
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 4234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTorchModeUnavailable mCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5800(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5800(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5800(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 4237
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mTorchMode:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5902(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 4239
    :cond_43
    return-void
.end method
