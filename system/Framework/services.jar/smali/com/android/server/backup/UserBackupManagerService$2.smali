.class Lcom/android/server/backup/UserBackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/UserBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 1370
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$UserBackupManagerService$2(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "components"    # [Ljava/lang/String;

    .line 1418
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1300(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$1$UserBackupManagerService$2(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1473
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1300(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$2$UserBackupManagerService$2(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1501
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1300(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1376
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1377
    .local v3, "action":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1378
    .local v0, "replacing":Z
    const/4 v4, 0x0

    .line 1379
    .local v4, "added":Z
    const/4 v5, 0x0

    .line 1380
    .local v5, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1381
    .local v6, "extras":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 1383
    .local v7, "packageList":[Ljava/lang/String;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_57

    .line 1384
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 1385
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    goto :goto_57

    .line 1425
    :cond_2a
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 1426
    const/4 v4, 0x1

    .line 1427
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move v7, v5

    move v5, v4

    move v4, v0

    goto :goto_98

    .line 1428
    :cond_3e
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 1429
    const/4 v4, 0x0

    .line 1430
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move v7, v5

    move v5, v4

    move v4, v0

    goto :goto_98

    .line 1428
    :cond_52
    move-object v8, v7

    move v7, v5

    move v5, v4

    move v4, v0

    goto :goto_98

    .line 1386
    :cond_57
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1387
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_5e

    .line 1388
    return-void

    .line 1391
    :cond_5e
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 1392
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v10, :cond_6a

    .line 1393
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    aput-object v10, v11, v9

    move-object v7, v11

    .line 1396
    :cond_6a
    const-string v11, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1397
    if-eqz v5, :cond_88

    .line 1399
    nop

    .line 1400
    const-string v9, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1416
    .local v9, "components":[Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;
    invoke-static {v11}, Lcom/android/server/backup/UserBackupManagerService;->access$600(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v11

    new-instance v12, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$VpHOYQHCWBG618oharjEXEDr57U;

    invoke-direct {v12, v1, v10, v9}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$VpHOYQHCWBG618oharjEXEDr57U;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1420
    return-void

    .line 1423
    .end local v9    # "components":[Ljava/lang/String;
    :cond_88
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1424
    const-string v11, "android.intent.extra.REPLACING"

    invoke-virtual {v6, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1425
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v10    # "packageName":Ljava/lang/String;
    move-object v8, v7

    move v7, v5

    move v5, v4

    move v4, v0

    .line 1433
    .end local v0    # "replacing":Z
    .local v4, "replacing":Z
    .local v5, "added":Z
    .local v7, "changed":Z
    .local v8, "packageList":[Ljava/lang/String;
    :goto_98
    if-eqz v8, :cond_198

    array-length v0, v8

    if-nez v0, :cond_a1

    move-object/from16 v16, v3

    goto/16 :goto_19a

    .line 1437
    :cond_a1
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1438
    .local v10, "uid":I
    if-eqz v5, :cond_16b

    .line 1439
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$700(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v11

    monitor-enter v11

    .line 1440
    if-eqz v4, :cond_bd

    .line 1444
    :try_start_b2
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # invokes: Lcom/android/server/backup/UserBackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V
    invoke-static {v0, v8, v10}, Lcom/android/server/backup/UserBackupManagerService;->access$800(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_b8

    goto :goto_bd

    .line 1447
    :catchall_b8
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_167

    .line 1446
    :cond_bd
    :goto_bd
    :try_start_bd
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # invokes: Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    invoke-static {v0, v8}, Lcom/android/server/backup/UserBackupManagerService;->access$900(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V

    .line 1447
    monitor-exit v11
    :try_end_c3
    .catchall {:try_start_bd .. :try_end_c3} :catchall_164

    .line 1449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1450
    .local v11, "now":J
    array-length v13, v8

    move v14, v9

    :goto_c9
    if-ge v14, v13, :cond_15a

    aget-object v15, v8, v14

    .line 1452
    .local v15, "packageName":Ljava/lang/String;
    :try_start_cd
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1453
    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1000(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1454
    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    invoke-static {v9}, Lcom/android/server/backup/UserBackupManagerService;->access$500(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v9

    .line 1453
    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v9, v0

    .line 1455
    .local v9, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v9}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_105

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1457
    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    invoke-static {v2}, Lcom/android/server/backup/UserBackupManagerService;->access$500(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v2

    .line 1456
    invoke-static {v0, v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1458
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v15, v11, v12}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1459
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cd .. :try_end_fa} :catch_12e

    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .local v16, "action":Ljava/lang/String;
    const-wide/16 v2, 0x0

    :try_start_fe
    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_119

    .line 1456
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_102
    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    goto :goto_107

    .line 1455
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_105
    move-object/from16 v16, v3

    .line 1466
    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_107
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$200(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_10e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fe .. :try_end_10e} :catch_12c

    .line 1467
    :try_start_10e
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # invokes: Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V
    invoke-static {v0, v15}, Lcom/android/server/backup/UserBackupManagerService;->access$1100(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V

    .line 1468
    monitor-exit v2
    :try_end_114
    .catchall {:try_start_10e .. :try_end_114} :catchall_129

    .line 1469
    :try_start_114
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # invokes: Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1200(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1472
    :goto_119
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$600(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    new-instance v2, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$9w65wn45YYtTkXbyQZdj_7K5LSs;

    invoke-direct {v2, v1, v15}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$9w65wn45YYtTkXbyQZdj_7K5LSs;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_127
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_114 .. :try_end_127} :catch_12c

    .line 1482
    nop

    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    goto :goto_151

    .line 1468
    .restart local v9    # "app":Landroid/content/pm/PackageInfo;
    :catchall_129
    move-exception v0

    :try_start_12a
    monitor-exit v2
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_129

    .end local v4    # "replacing":Z
    .end local v5    # "added":Z
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "changed":Z
    .end local v8    # "packageList":[Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v11    # "now":J
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "action":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$2;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_12b
    throw v0
    :try_end_12c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12b .. :try_end_12c} :catch_12c

    .line 1474
    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    .restart local v4    # "replacing":Z
    .restart local v5    # "added":Z
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v7    # "changed":Z
    .restart local v8    # "packageList":[Ljava/lang/String;
    .restart local v10    # "uid":I
    .restart local v11    # "now":J
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$2;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_12c
    move-exception v0

    goto :goto_131

    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :catch_12e
    move-exception v0

    move-object/from16 v16, v3

    .line 1476
    .end local v3    # "action":Ljava/lang/String;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_131
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1479
    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    invoke-static {v2}, Lcom/android/server/backup/UserBackupManagerService;->access$500(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t resolve new app "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1478
    # invokes: Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1476
    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "packageName":Ljava/lang/String;
    :goto_151
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    const/4 v9, 0x0

    goto/16 :goto_c9

    .line 1488
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_15a
    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    const-string v2, "@pm@"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1489
    .end local v11    # "now":J
    goto :goto_197

    .line 1447
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :catchall_164
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_167
    :try_start_167
    monitor-exit v11
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_169

    throw v0

    :catchall_169
    move-exception v0

    goto :goto_167

    .line 1490
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_16b
    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    if-nez v4, :cond_180

    .line 1494
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$700(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 1495
    :try_start_176
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # invokes: Lcom/android/server/backup/UserBackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V
    invoke-static {v0, v8, v10}, Lcom/android/server/backup/UserBackupManagerService;->access$800(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 1496
    monitor-exit v2

    goto :goto_180

    :catchall_17d
    move-exception v0

    monitor-exit v2
    :try_end_17f
    .catchall {:try_start_176 .. :try_end_17f} :catchall_17d

    throw v0

    .line 1499
    :cond_180
    :goto_180
    array-length v0, v8

    const/4 v9, 0x0

    :goto_182
    if-ge v9, v0, :cond_197

    aget-object v2, v8, v9

    .line 1500
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    # getter for: Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;
    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->access$600(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    new-instance v11, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$ICUfBQAK1UQkmGSsPDmR00etFBk;

    invoke-direct {v11, v1, v2}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$ICUfBQAK1UQkmGSsPDmR00etFBk;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1499
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_182

    .line 1504
    :cond_197
    :goto_197
    return-void

    .line 1433
    .end local v10    # "uid":I
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_198
    move-object/from16 v16, v3

    .line 1434
    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_19a
    return-void
.end method
