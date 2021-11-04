.class Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 4

    .line 924
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 925
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 926
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 927
    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 928
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 931
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1400(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 934
    :try_start_2d
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->initDefaultSCPMList()V
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1500(Lcom/samsung/android/camera/CameraServiceWorker;)V

    .line 935
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const/16 v2, 0x1e

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->notifySCPMParamChangeRetryLocked(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1600(Lcom/samsung/android/camera/CameraServiceWorker;I)V

    .line 936
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_49

    .line 937
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->updateSCPMParametersFromDB()V

    .line 939
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1700(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->tryRegisterContentObserver()V

    goto :goto_4c

    .line 936
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1

    .line 941
    :cond_4c
    :goto_4c
    return-void
.end method
