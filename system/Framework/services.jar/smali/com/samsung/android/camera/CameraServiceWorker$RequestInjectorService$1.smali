.class Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService$1;
.super Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->tryRegisterCameraOpenListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    .line 698
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .registers 12
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;

    .line 701
    const-string v0, "camera_open_id"

    const-string v1, "com.samsung.android.vtcamerasettings"

    const-string v2, "VT Camera Setting does not exist "

    const-string v3, "VT Camera Setting does not exist"

    const-string v4, "CameraService_worker"

    if-eqz p3, :cond_4c

    const/4 v5, 0x3

    if-eq p3, v5, :cond_11

    goto/16 :goto_8c

    .line 721
    :cond_11
    :try_start_11
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "intentfilter.samsung.vtcamerasetting.closecamera"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v1, "camera_close_package_name"

    invoke-virtual {v5, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    iget-object v0, v0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_31} :catch_33

    .line 730
    nop

    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_8c

    .line 726
    :catch_33
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    goto :goto_8c

    .line 703
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_4c
    const-string v5, "Camera is opened. Start VT Camera Setting."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :try_start_51
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "intentfilter.samsung.vtcamerasetting.cameraobserver"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v1, "camera_open_package_name"

    invoke-virtual {v5, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    iget-object v0, v0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_71
    .catch Ljava/lang/SecurityException; {:try_start_51 .. :try_end_71} :catch_73

    .line 716
    nop

    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_8c

    .line 712
    :catch_73
    move-exception v0

    .line 714
    .restart local v0    # "e":Ljava/lang/SecurityException;
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 718
    .end local v0    # "e":Ljava/lang/SecurityException;
    nop

    .line 734
    :goto_8c
    return-void
.end method
