.class Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;
.super Ljava/lang/Object;
.source "CameraServiceWorker.java"

# interfaces
.implements Landroid/hardware/input/CameraMotorManager$OnCameraMotorPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraMotorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Lcom/samsung/android/camera/CameraServiceWorker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;
    .param p2, "x1"    # Lcom/samsung/android/camera/CameraServiceWorker$1;

    .line 263
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    return-void
.end method


# virtual methods
.method public onCameraMotorPositionChanged(JI)V
    .registers 10
    .param p1, "whenNanos"    # J
    .param p3, "inCameraMotorPosition"    # I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCameraMotorPositionChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->cameraMotorPositionToString(I)Ljava/lang/String;
    invoke-static {p3}, Lcom/samsung/android/camera/CameraServiceWorker;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ns, CameraMotorStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 267
    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$100(Lcom/samsung/android/camera/CameraServiceWorker;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v0, -0x190

    if-eq p3, v0, :cond_b5

    const/16 v0, -0x12c

    const/4 v2, 0x1

    if-eq p3, v0, :cond_68

    const/16 v0, -0x64

    if-eq p3, v0, :cond_b5

    const/4 v0, 0x2

    if-eqz p3, :cond_52

    if-eq p3, v2, :cond_45

    goto/16 :goto_d9

    .line 307
    :cond_45
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # setter for: Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I
    invoke-static {v2, v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$102(Lcom/samsung/android/camera/CameraServiceWorker;I)I

    .line 308
    const-string/jumbo v0, "onCameraMotorPositionChanged : mCameraMotorStatus changed to CAMERA_MOTOR_POSITION_TOP."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    goto/16 :goto_d9

    .line 302
    :cond_52
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$500(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I
    invoke-static {v0, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$102(Lcom/samsung/android/camera/CameraServiceWorker;I)I

    .line 304
    const-string/jumbo v0, "onCameraMotorPositionChanged : mCameraMotorStatus changed to CAMERA_MOTOR_POSITION_BOTTOM."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    goto :goto_d9

    .line 271
    :cond_68
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$100(Lcom/samsung/android/camera/CameraServiceWorker;)I

    move-result v0

    if-ne v0, v2, :cond_b5

    .line 273
    :try_start_70
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$200(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 274
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$200(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 276
    :cond_81
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 277
    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 278
    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x104023e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/samsung/android/camera/CameraServiceWorker;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$202(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 282
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$200(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_ae
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_70 .. :try_end_ae} :catch_af

    .line 285
    goto :goto_b5

    .line 283
    :catch_af
    move-exception v0

    .line 284
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "Resource Id not found: will not display any message toast"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_b5
    :goto_b5
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$400(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/hardware/ICameraService;

    move-result-object v0

    .line 291
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_d9

    .line 294
    const/16 v2, 0x64

    :try_start_bf
    invoke-interface {v0, v2}, Landroid/hardware/ICameraService;->notifyStateError(I)V
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 298
    :goto_c2
    goto :goto_d9

    .line 295
    :catch_c3
    move-exception v2

    .line 296
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not notify mediaserver, remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_c2

    .line 313
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_d9
    :goto_d9
    return-void
.end method
