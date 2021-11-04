.class Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
.super Lcom/samsung/android/camera/IRequestInjector$Stub;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestInjectorService"
.end annotation


# instance fields
.field private final INTENT_ACTION_CLOSE:Ljava/lang/String;

.field private final INTENT_ACTION_OPEN:Ljava/lang/String;

.field private final INTENT_KEY_CAMERA_ID:Ljava/lang/String;

.field private final INTENT_KEY_CLOSE_PACKAGE_NAME:Ljava/lang/String;

.field private final INTENT_KEY_OPEN_PACKAGE_NAME:Ljava/lang/String;

.field private final PACKAGE_NAME_VT_CAMERA_SETTING:Ljava/lang/String;

.field private final mExtraRequestMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestInjectorLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2

    .line 658
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Lcom/samsung/android/camera/IRequestInjector$Stub;-><init>()V

    .line 659
    const-string p1, "com.samsung.android.vtcamerasettings"

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->PACKAGE_NAME_VT_CAMERA_SETTING:Ljava/lang/String;

    .line 660
    const-string/jumbo p1, "intentfilter.samsung.vtcamerasetting.cameraobserver"

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->INTENT_ACTION_OPEN:Ljava/lang/String;

    .line 661
    const-string/jumbo p1, "intentfilter.samsung.vtcamerasetting.closecamera"

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->INTENT_ACTION_CLOSE:Ljava/lang/String;

    .line 662
    const-string p1, "camera_open_package_name"

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->INTENT_KEY_OPEN_PACKAGE_NAME:Ljava/lang/String;

    .line 663
    const-string p1, "camera_close_package_name"

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->INTENT_KEY_CLOSE_PACKAGE_NAME:Ljava/lang/String;

    .line 664
    const-string p1, "camera_open_id"

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->INTENT_KEY_CAMERA_ID:Ljava/lang/String;

    .line 666
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    .line 667
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Lcom/samsung/android/camera/CameraServiceWorker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;
    .param p2, "x1"    # Lcom/samsung/android/camera/CameraServiceWorker$1;

    .line 658
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    return-void
.end method

.method private pkgInstalledOrNot(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 683
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x4

    :try_start_b
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 684
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_22

    if-eqz v2, :cond_21

    .line 685
    :cond_1f
    const/4 v2, 0x1

    return v2

    .line 689
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_21
    goto :goto_23

    .line 687
    :catch_22
    move-exception v1

    .line 690
    :goto_23
    const/4 v1, 0x0

    return v1
.end method

.method private sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "bundles"    # [Landroid/os/PersistableBundle;

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendExtraRequestsToRequestInjector updated size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendExtraRequestsToRequestInjector updated size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 824
    :try_start_30
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_136

    .line 825
    :try_start_33
    array-length v1, p1

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_a7

    aget-object v3, p1, v2

    .line 826
    .local v3, "bundle":Landroid/os/PersistableBundle;
    const-string v4, "CameraService_worker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    sget-object v4, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 829
    const-string/jumbo v4, "key.i32"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_78

    const-string/jumbo v4, "key.i32"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v4, v4

    if-gtz v4, :cond_8b

    :cond_78
    const-string/jumbo v4, "key.u8"

    .line 830
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_98

    const-string/jumbo v4, "key.u8"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_98

    .line 831
    :cond_8b
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    const-string/jumbo v5, "key.tagName"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 833
    :cond_98
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    const-string/jumbo v5, "key.tagName"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    .end local v3    # "bundle":Landroid/os/PersistableBundle;
    :goto_a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 837
    :cond_a7
    const/4 v1, 0x0

    .line 838
    .local v1, "retry":I
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;
    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$400(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/hardware/ICameraService;

    move-result-object v2

    .line 840
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    :goto_ae
    if-nez v2, :cond_e5

    .line 841
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "retry":I
    .local v3, "retry":I
    const/4 v4, 0x3

    if-lt v1, v4, :cond_d5

    .line 842
    const-string v1, "CameraService_worker"

    const-string v4, "Native camera service not available."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v4, "Native camera service not available."

    invoke-static {v1, v4}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 844
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_33 .. :try_end_c4} :catchall_133

    .line 867
    const-string v0, "CameraService_worker"

    const-string/jumbo v1, "sendExtraRequestsToRequestInjector done"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string/jumbo v1, "sendExtraRequestsToRequestInjector done"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 844
    return-void

    .line 848
    :cond_d5
    const-wide/16 v4, 0x64

    :try_start_d7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_da
    .catch Ljava/lang/InterruptedException; {:try_start_d7 .. :try_end_da} :catch_db
    .catchall {:try_start_d7 .. :try_end_da} :catchall_133

    .line 851
    goto :goto_dc

    .line 849
    :catch_db
    move-exception v1

    .line 852
    :goto_dc
    :try_start_dc
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$400(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_e2
    .catchall {:try_start_dc .. :try_end_e2} :catchall_133

    move-object v2, v1

    move v1, v3

    goto :goto_ae

    .line 856
    .end local v3    # "retry":I
    .restart local v1    # "retry":I
    :cond_e5
    :try_start_e5
    invoke-interface {v2, p1}, Landroid/hardware/ICameraService;->applyExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 864
    goto :goto_120

    .line 857
    :cond_ec
    const-string v3, "CameraService_worker"

    const-string v4, "Fail to apply ExtraRequests to Request Injector, maybe type mismatch"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    sget-object v3, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v4, "Fail to apply ExtraRequests to Request Injector, maybe type mismatch"

    invoke-static {v3, v4}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 859
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Fail to apply request. Please check log"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v1    # "retry":I
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    .end local p1    # "bundles":[Landroid/os/PersistableBundle;
    throw v3
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_102} :catch_102
    .catchall {:try_start_e5 .. :try_end_102} :catchall_133

    .line 861
    .restart local v1    # "retry":I
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    .restart local p1    # "bundles":[Landroid/os/PersistableBundle;
    :catch_102
    move-exception v3

    .line 862
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_103
    const-string v4, "CameraService_worker"

    const-string v5, "Fail to apply ExtraRequests to Request Injector"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    sget-object v4, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to apply ExtraRequests to Request Injector"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 865
    .end local v1    # "retry":I
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_120
    monitor-exit v0
    :try_end_121
    .catchall {:try_start_103 .. :try_end_121} :catchall_133

    .line 867
    const-string v0, "CameraService_worker"

    const-string/jumbo v1, "sendExtraRequestsToRequestInjector done"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string/jumbo v1, "sendExtraRequestsToRequestInjector done"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 869
    nop

    .line 870
    return-void

    .line 865
    :catchall_133
    move-exception v1

    :try_start_134
    monitor-exit v0
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    .end local p1    # "bundles":[Landroid/os/PersistableBundle;
    :try_start_135
    throw v1
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_136

    .line 867
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    .restart local p1    # "bundles":[Landroid/os/PersistableBundle;
    :catchall_136
    move-exception v0

    const-string v1, "CameraService_worker"

    const-string/jumbo v2, "sendExtraRequestsToRequestInjector done"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string/jumbo v2, "sendExtraRequestsToRequestInjector done"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 869
    throw v0
.end method


# virtual methods
.method public applyRequests([Landroid/os/PersistableBundle;)V
    .registers 14
    .param p1, "requests"    # [Landroid/os/PersistableBundle;

    .line 744
    const-string v0, "Invalid request, no KEY_I32/KEY_U8"

    const-string v1, "Invalid request, no TAG_NAME"

    const-string v2, "  "

    const-string/jumbo v3, "key.tagName"

    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c8

    .line 748
    if-eqz p1, :cond_bb

    array-length v4, p1

    const/4 v5, 0x1

    if-lt v4, v5, :cond_bb

    .line 753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 755
    .local v4, "identity":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyRequests requests size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "CameraService_worker"

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object v6, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 759
    :try_start_4d
    array-length v6, p1

    const/4 v7, 0x0

    :goto_4f
    if-ge v7, v6, :cond_ae

    aget-object v9, p1, v7

    .line 761
    .local v9, "request":Landroid/os/PersistableBundle;
    invoke-virtual {v9, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 763
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-object v10, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v9, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a3

    .line 770
    const-string/jumbo v10, "key.i32"

    invoke-virtual {v9, v10}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    if-nez v10, :cond_a0

    const-string/jumbo v10, "key.u8"

    invoke-virtual {v9, v10}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    if-eqz v10, :cond_95

    goto :goto_a0

    .line 771
    :cond_95
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 772
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "identity":J
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    .end local p1    # "requests":[Landroid/os/PersistableBundle;
    throw v1

    .line 759
    .end local v9    # "request":Landroid/os/PersistableBundle;
    .restart local v4    # "identity":J
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    .restart local p1    # "requests":[Landroid/os/PersistableBundle;
    :cond_a0
    :goto_a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 767
    .restart local v9    # "request":Landroid/os/PersistableBundle;
    :cond_a3
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 768
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "identity":J
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    .end local p1    # "requests":[Landroid/os/PersistableBundle;
    throw v0

    .line 776
    .end local v9    # "request":Landroid/os/PersistableBundle;
    .restart local v4    # "identity":J
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    .restart local p1    # "requests":[Landroid/os/PersistableBundle;
    :cond_ae
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V
    :try_end_b1
    .catchall {:try_start_4d .. :try_end_b1} :catchall_b6

    .line 778
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    nop

    .line 780
    return-void

    .line 778
    :catchall_b6
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    throw v0

    .line 749
    .end local v4    # "identity":J
    :cond_bb
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v1, "Invalid request, null or 0 size"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_c8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearRequests()V
    .registers 12

    .line 784
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_75

    .line 788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 791
    .local v0, "identity":J
    :try_start_12
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_70

    .line 792
    :try_start_15
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 793
    .local v3, "currentRequests":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/PersistableBundle;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v4, "newRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PersistableBundle;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersistableBundle;

    .line 796
    .local v6, "request":Landroid/os/PersistableBundle;
    invoke-virtual {v6}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v8

    .line 797
    .local v8, "copyRequest":Landroid/os/PersistableBundle;
    const-string/jumbo v9, "key.i32"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    if-eqz v9, :cond_46

    const-string/jumbo v9, "key.i32"

    new-array v10, v7, [I

    invoke-virtual {v8, v9, v10}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 798
    :cond_46
    const-string/jumbo v9, "key.u8"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    if-eqz v9, :cond_57

    const-string/jumbo v9, "key.u8"

    new-array v7, v7, [I

    invoke-virtual {v8, v9, v7}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 800
    :cond_57
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    nop

    .end local v6    # "request":Landroid/os/PersistableBundle;
    .end local v8    # "copyRequest":Landroid/os/PersistableBundle;
    goto :goto_24

    .line 803
    :cond_5c
    new-array v5, v7, [Landroid/os/PersistableBundle;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/PersistableBundle;

    invoke-direct {p0, v5}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V

    .line 804
    .end local v3    # "currentRequests":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/PersistableBundle;>;"
    .end local v4    # "newRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PersistableBundle;>;"
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_15 .. :try_end_68} :catchall_6d

    .line 806
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    nop

    .line 808
    return-void

    .line 804
    :catchall_6d
    move-exception v3

    :try_start_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    :try_start_6f
    throw v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 806
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    :catchall_70
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    throw v2

    .line 785
    .end local v0    # "identity":J
    :cond_75
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 873
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a6

    .line 874
    :try_start_4
    const-string v1, "\n\tDump of Request Injector Service Activity"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const-string v1, "\t\tInterface v2 Hash:b05ff96f01de43f1b43fef6b50a2aa6a578c5be3"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tTotal # of ExtraRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 878
    .local v2, "bundle":Landroid/os/PersistableBundle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\tKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "key.tagName"

    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", i32 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "key.i32"

    .line 879
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;->INSTANCE:Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", u8 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "key.u8"

    .line 880
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;->INSTANCE:Lcom/samsung/android/camera/-$$Lambda$obMFQSqgDyNH7U1soRB49cqrEjc;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 878
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    .end local v2    # "bundle":Landroid/os/PersistableBundle;
    goto :goto_32

    .line 882
    :cond_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_4 .. :try_end_9f} :catchall_a1

    .line 883
    monitor-exit p0

    return-void

    .line 882
    :catchall_a1
    move-exception v1

    :goto_a2
    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a4

    :try_start_a3
    throw v1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a6

    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    :catchall_a4
    move-exception v1

    goto :goto_a2

    .line 872
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_a6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 676
    const-string v0, "b05ff96f01de43f1b43fef6b50a2aa6a578c5be3"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .registers 2

    .line 671
    const/4 v0, 0x2

    return v0
.end method

.method public sendAllExtraRequestsToRequestInjector()V
    .registers 4

    .line 811
    const-string v0, "CameraService_worker"

    const-string/jumbo v1, "sendAllExtraRequestsToRequestInjector"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string/jumbo v1, "sendAllExtraRequestsToRequestInjector"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_13
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/PersistableBundle;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PersistableBundle;

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V

    .line 816
    monitor-exit v0

    .line 817
    return-void

    .line 816
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public tryRegisterCameraOpenListener()V
    .registers 4

    .line 694
    const-string v0, "com.samsung.android.vtcamerasettings"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->pkgInstalledOrNot(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CameraService_worker"

    if-eqz v0, :cond_31

    .line 695
    const-string v0, "VT Camera Setting exists. Register camera listener."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService$1;-><init>(Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;)V

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 735
    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$500(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/os/Handler;

    move-result-object v2

    .line 698
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;Landroid/os/Handler;)V

    goto :goto_3b

    .line 737
    :cond_31
    const-string v0, "VT Camera Setting does not exist. Skip register camera listener."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 740
    :goto_3b
    return-void
.end method
