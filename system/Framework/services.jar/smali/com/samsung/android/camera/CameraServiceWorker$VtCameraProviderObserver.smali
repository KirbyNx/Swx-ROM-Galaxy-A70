.class Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;
.super Landroid/database/ContentObserver;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VtCameraProviderObserver"
.end annotation


# instance fields
.field private final INDEX_PACKAGE_NAME:I

.field private final INDEX_UID:I

.field private final MATCH_PATH_QUERY_ALLOWED_APP:Ljava/lang/String;

.field private final PACKAGE_NAME_VT_CAMERA_SETTING:Ljava/lang/String;

.field private final VT_CAMERA_SETTING_AUTHORITY:Ljava/lang/String;

.field private final VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

.field private final mAllowedPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListMapLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 548
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 549
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 532
    const-string p1, "com.samsung.android.vtcamerasettings"

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->PACKAGE_NAME_VT_CAMERA_SETTING:Ljava/lang/String;

    .line 533
    const-string p1, "com.samsung.android.vtcamerasettings.VsetInfoProvider"

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY:Ljava/lang/String;

    .line 534
    const-string p1, "content://com.samsung.android.vtcamerasettings.VsetInfoProvider"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

    .line 535
    const-string p1, "AllowedAppInfo"

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->MATCH_PATH_QUERY_ALLOWED_APP:Ljava/lang/String;

    .line 537
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->INDEX_UID:I

    .line 538
    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->INDEX_PACKAGE_NAME:I

    .line 540
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    .line 541
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    .line 550
    return-void
.end method

.method private providerExistOrNot()Z
    .registers 11

    .line 636
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 639
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_b
    const-string v2, "com.samsung.android.vtcamerasettings"

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 640
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 642
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 643
    :cond_23
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_45

    .line 644
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v5, v4

    move v6, v1

    :goto_2b
    if-ge v6, v5, :cond_45

    aget-object v7, v4, v6

    .line 645
    .local v7, "providerInfo":Landroid/content/pm/ProviderInfo;
    const-string v8, "com.samsung.android.vtcamerasettings.VsetInfoProvider"

    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    const/4 v1, 0x1

    return v1

    .line 644
    .end local v7    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 649
    :cond_3e
    const-string v4, "CameraService_worker"

    const-string v5, "Provider exist, but not (updated-)system app."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_45} :catch_46

    .line 653
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_45
    goto :goto_47

    .line 651
    :catch_46
    move-exception v2

    .line 654
    :goto_47
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 626
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_3
    const-string v1, "\n\tDump of Request Injector Allow List"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tTotal # of allow list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 630
    .local v2, "pkgName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    .end local v2    # "pkgName":Ljava/lang/String;
    goto :goto_28

    .line 632
    :cond_49
    monitor-exit v0

    .line 633
    return-void

    .line 632
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public onChange(Z)V
    .registers 10
    .param p1, "selfChange"    # Z

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VtCameraProviderObserver.onChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VtCameraProviderObserver.onChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_39
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_fc

    .line 560
    :try_start_3e
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "AllowedAppInfo"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_58} :catch_d9
    .catchall {:try_start_3e .. :try_end_58} :catchall_fc

    .line 561
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_d3

    :try_start_5a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d3

    .line 562
    :cond_60
    :goto_60
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 563
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 564
    .local v2, "uid":I
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_60

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_79

    goto :goto_60

    .line 567
    :cond_79
    const-string v4, "CameraService_worker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to allow list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-object v4, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onChange: Adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to allow list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 569
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c5
    .catchall {:try_start_5a .. :try_end_c5} :catchall_c7

    .line 570
    nop

    .end local v2    # "uid":I
    .end local v3    # "pkgName":Ljava/lang/String;
    goto :goto_60

    .line 560
    :catchall_c7
    move-exception v2

    if-eqz v1, :cond_d2

    :try_start_ca
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_ce

    goto :goto_d2

    :catchall_ce
    move-exception v3

    :try_start_cf
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;
    .end local p1    # "selfChange":Z
    :cond_d2
    :goto_d2
    throw v2

    .line 572
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;
    .restart local p1    # "selfChange":Z
    :cond_d3
    if-eqz v1, :cond_d8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d8} :catch_d9
    .catchall {:try_start_cf .. :try_end_d8} :catchall_fc

    .line 575
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_d8
    goto :goto_f7

    .line 572
    :catch_d9
    move-exception v1

    .line 573
    .local v1, "e":Ljava/lang/Exception;
    :try_start_da
    const-string v2, "CameraService_worker"

    const-string v3, "Unable to query from VT Camera setting provider"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    sget-object v2, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to query from VT Camera setting provider, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 576
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_f7
    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_da .. :try_end_f8} :catchall_fc

    .line 578
    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->updateCameraService()V

    .line 579
    return-void

    .line 576
    :catchall_fc
    move-exception v1

    :try_start_fd
    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    throw v1
.end method

.method public tryRegisterContentObserver()V
    .registers 6

    .line 582
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->providerExistOrNot()Z

    move-result v0

    const-string v1, "CameraService_worker"

    if-eqz v0, :cond_2e

    .line 583
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "AllowedAppInfo"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 584
    const-string v0, "VT Camera provider exist. Observer registered."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 587
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->onChange(Z)V

    goto :goto_38

    .line 589
    :cond_2e
    const-string v0, "VT Camera provider does not exist. Skip observer register."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 592
    :goto_38
    return-void
.end method

.method public updateCameraService()V
    .registers 8

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "retry":I
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$400(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/hardware/ICameraService;

    move-result-object v1

    .line 598
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    :goto_7
    if-nez v1, :cond_2c

    .line 599
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "retry":I
    .local v2, "retry":I
    const/4 v3, 0x3

    if-lt v0, v3, :cond_1d

    .line 600
    const-string v0, "CameraService_worker"

    const-string v3, "Native camera service not available."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v3, "Native camera service not available."

    invoke-static {v0, v3}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 602
    return-void

    .line 606
    :cond_1d
    const-wide/16 v3, 0x64

    :try_start_1f
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23

    .line 609
    goto :goto_24

    .line 607
    :catch_23
    move-exception v0

    .line 610
    :goto_24
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$400(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/hardware/ICameraService;

    move-result-object v1

    move v0, v2

    goto :goto_7

    .line 613
    .end local v2    # "retry":I
    .restart local v0    # "retry":I
    :cond_2c
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 615
    :try_start_2f
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/hardware/ICameraService;->updateRequestInjectorAllowedList([Ljava/lang/String;)V

    .line 616
    const-string v3, "CameraService_worker"

    const-string v4, "Updating allowed package list for request injector is done"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v3, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v4, "Updating allowed package list for request injector is done"

    invoke-static {v3, v4}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_4b} :catch_4e
    .catchall {:try_start_2f .. :try_end_4b} :catchall_4c

    .line 621
    goto :goto_6c

    .line 622
    :catchall_4c
    move-exception v3

    goto :goto_6e

    .line 618
    :catch_4e
    move-exception v3

    .line 619
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v4, "CameraService_worker"

    const-string v5, "Fail to update allowed package list for Request Injector"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    sget-object v4, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to update allowed package list for Request Injector"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 622
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_6c
    monitor-exit v2

    .line 623
    return-void

    .line 622
    :goto_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_4f .. :try_end_6f} :catchall_4c

    throw v3
.end method
