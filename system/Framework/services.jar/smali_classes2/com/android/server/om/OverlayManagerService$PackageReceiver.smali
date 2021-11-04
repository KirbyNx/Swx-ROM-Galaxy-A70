.class final Lcom/android/server/om/OverlayManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerService$1;

    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;[I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 437
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageAdded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 438
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_7a

    aget v5, p2, v4

    .line 439
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_7f

    .line 442
    const/4 v7, 0x0

    .line 444
    .local v7, "siblingSourcePkg":Ljava/lang/String;
    :try_start_26
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, p1, v9, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;IIZ)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 447
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v8}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungThemeSibling(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_47

    .line 448
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v10, "samsungtheme-sibling"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 450
    invoke-static {v7, p1}, Lcom/android/server/om/SemSamsungThemeUtils;->addSiblingTarget(Ljava/lang/String;Ljava/lang/String;)Z

    .line 456
    :cond_47
    if-eqz v8, :cond_73

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    if-nez v9, :cond_73

    .line 457
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v9

    invoke-virtual {v9, p1, v5, v8}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 458
    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 459
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    goto :goto_73

    .line 461
    :cond_6a
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageAdded(Ljava/lang/String;I)V

    .line 464
    .end local v7    # "siblingSourcePkg":Ljava/lang/String;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :cond_73
    :goto_73
    monitor-exit v6

    .line 438
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 464
    .restart local v5    # "userId":I
    :catchall_77
    move-exception v2

    monitor-exit v6
    :try_end_79
    .catchall {:try_start_26 .. :try_end_79} :catchall_77

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_79
    throw v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7f

    .line 467
    .end local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_7a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 468
    nop

    .line 469
    return-void

    .line 467
    :catchall_7f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 468
    throw v2
.end method

.method private onPackageChanged(Ljava/lang/String;[I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 474
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 475
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_64

    aget v5, p2, v4

    .line 476
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_69

    .line 480
    :try_start_25
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, p1, v8, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;IIZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 485
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_5d

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 486
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 487
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v8

    if-eqz v8, :cond_54

    .line 488
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageChanged(Ljava/lang/String;I)V

    goto :goto_5d

    .line 490
    :cond_54
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageChanged(Ljava/lang/String;I)V

    .line 493
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_5d
    :goto_5d
    monitor-exit v6

    .line 475
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 493
    .restart local v5    # "userId":I
    :catchall_61
    move-exception v2

    monitor-exit v6
    :try_end_63
    .catchall {:try_start_25 .. :try_end_63} :catchall_61

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_63
    throw v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_69

    .line 496
    .end local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_64
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 497
    nop

    .line 498
    return-void

    .line 496
    :catchall_69
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 497
    throw v2
.end method

.method private onPackageRemoved(Ljava/lang/String;[I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 569
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 570
    array-length v2, p2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_53

    aget v4, p2, v3

    .line 571
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_58

    .line 572
    :try_start_24
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 573
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 574
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_43

    .line 575
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    goto :goto_4c

    .line 577
    :cond_43
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageRemoved(Ljava/lang/String;I)V

    .line 579
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    :goto_4c
    monitor-exit v5

    .line 570
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 579
    .restart local v4    # "userId":I
    :catchall_50
    move-exception v2

    monitor-exit v5
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_50

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_52
    throw v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_58

    .line 582
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_53
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    nop

    .line 584
    return-void

    .line 582
    :catchall_58
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    throw v2
.end method

.method private onPackageReplaced(Ljava/lang/String;[I)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 521
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 522
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_9e

    aget v5, p2, v4

    .line 523
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_a3

    .line 526
    const/4 v7, 0x0

    .line 528
    .local v7, "siblingSourcePkg":Ljava/lang/String;
    :try_start_26
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, p1, v9, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;IIZ)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 531
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v8}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungThemeSibling(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 532
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v10, "samsungtheme-sibling"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 534
    invoke-static {v7, p1}, Lcom/android/server/om/SemSamsungThemeUtils;->addSiblingTarget(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5f

    .line 536
    :cond_48
    invoke-static {p1}, Lcom/android/server/om/SemSamsungThemeUtils;->removeSiblingTarget(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 537
    const-class v9, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    .line 539
    .local v9, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 540
    .local v10, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    invoke-virtual {v9, v5, p1, v11, v10}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;Ljava/util/Collection;)Z

    .line 547
    .end local v9    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v10    # "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5f
    :goto_5f
    if-eqz v8, :cond_97

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    if-nez v9, :cond_97

    .line 548
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v9

    invoke-virtual {v9, p1, v5, v8}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 549
    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 550
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplaced(Ljava/lang/String;I)V

    goto :goto_97

    .line 552
    :cond_82
    if-eqz v7, :cond_8e

    .line 553
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, v7, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageReplaced(Ljava/lang/String;I)V

    goto :goto_97

    .line 555
    :cond_8e
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v9}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageReplaced(Ljava/lang/String;I)V

    .line 559
    .end local v7    # "siblingSourcePkg":Ljava/lang/String;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :cond_97
    :goto_97
    monitor-exit v6

    .line 522
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 559
    .restart local v5    # "userId":I
    :catchall_9b
    move-exception v2

    monitor-exit v6
    :try_end_9d
    .catchall {:try_start_26 .. :try_end_9d} :catchall_9b

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_9d
    throw v2
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_a3

    .line 562
    .end local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_9e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 563
    nop

    .line 564
    return-void

    .line 562
    :catchall_a3
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 563
    throw v2
.end method

.method private onPackageReplacing(Ljava/lang/String;[I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 503
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 504
    array-length v2, p2

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_49

    aget v4, p2, v3

    .line 505
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_4e

    .line 506
    :try_start_24
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 507
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 508
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_42

    .line 509
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplacing(Ljava/lang/String;I)V

    .line 511
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    :cond_42
    monitor-exit v5

    .line 504
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 511
    .restart local v4    # "userId":I
    :catchall_46
    move-exception v2

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_46

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_48
    throw v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_4e

    .line 514
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_49
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 515
    nop

    .line 516
    return-void

    .line 514
    :catchall_4e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 515
    throw v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 384
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OverlayManager"

    if-nez v0, :cond_e

    .line 386
    const-string v2, "Cannot handle package broadcast with null action"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 389
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 390
    .local v2, "data":Landroid/net/Uri;
    if-nez v2, :cond_1a

    .line 391
    const-string v3, "Cannot handle package broadcast with null data"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void

    .line 394
    :cond_1a
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 399
    .local v3, "replacing":Z
    const-string v5, "android.intent.extra.UID"

    const/16 v6, -0x2710

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 400
    .local v5, "extraUid":I
    const/4 v7, 0x1

    if-ne v5, v6, :cond_3b

    .line 401
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    .local v6, "userIds":[I
    goto :goto_43

    .line 403
    .end local v6    # "userIds":[I
    :cond_3b
    new-array v6, v7, [I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    aput v8, v6, v4

    .line 406
    .restart local v6    # "userIds":[I
    :goto_43
    const/4 v8, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0xa480416

    const/4 v11, 0x2

    if-eq v9, v10, :cond_6c

    const v10, 0x1f50b9c2

    if-eq v9, v10, :cond_62

    const v10, 0x5c1076e2

    if-eq v9, v10, :cond_59

    :cond_58
    goto :goto_76

    :cond_59
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    goto :goto_77

    :cond_62
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    move v4, v11

    goto :goto_77

    :cond_6c
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    move v4, v7

    goto :goto_77

    :goto_76
    move v4, v8

    :goto_77
    if-eqz v4, :cond_9a

    if-eq v4, v7, :cond_88

    if-eq v4, v11, :cond_7e

    goto :goto_a4

    .line 422
    :cond_7e
    if-eqz v3, :cond_84

    .line 423
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplacing(Ljava/lang/String;[I)V

    goto :goto_a4

    .line 425
    :cond_84
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    .line 427
    goto :goto_a4

    .line 417
    :cond_88
    const-string v4, "android.intent.extra.REASON"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a4

    .line 418
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    goto :goto_a4

    .line 408
    :cond_9a
    if-eqz v3, :cond_a0

    .line 409
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplaced(Ljava/lang/String;[I)V

    goto :goto_a4

    .line 411
    :cond_a0
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    .line 413
    nop

    .line 432
    :cond_a4
    :goto_a4
    return-void
.end method
