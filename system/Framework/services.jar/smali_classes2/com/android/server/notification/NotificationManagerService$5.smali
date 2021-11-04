.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 1577
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 40
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1580
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1581
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_b

    .line 1582
    return-void

    .line 1585
    :cond_b
    const/4 v0, 0x0

    .line 1586
    .local v0, "queryRestart":Z
    const/4 v4, 0x0

    .line 1587
    .local v4, "queryRemove":Z
    const/4 v5, 0x0

    .line 1588
    .local v5, "packageChanged":Z
    const/4 v6, 0x1

    .line 1589
    .local v6, "cancelNotifications":Z
    const/4 v7, 0x0

    .line 1590
    .local v7, "hideNotifications":Z
    const/4 v8, 0x0

    .line 1591
    .local v8, "unhideNotifications":Z
    const/16 v20, 0x5

    .line 1593
    .local v20, "reason":I
    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v11, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v12, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const-string v14, "android.intent.action.PACKAGE_CHANGED"

    if-nez v9, :cond_69

    .line 1594
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    if-nez v9, :cond_64

    .line 1595
    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_64

    .line 1596
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v5, v9

    if-nez v9, :cond_5f

    .line 1597
    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v0, v9

    if-nez v9, :cond_64

    .line 1598
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_64

    .line 1599
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_64

    .line 1600
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_64

    .line 1601
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_300

    goto :goto_64

    .line 1596
    :cond_5f
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    goto :goto_6d

    .line 1602
    :cond_64
    :goto_64
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    goto :goto_6d

    .line 1593
    :cond_69
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    .line 1602
    .end local v0    # "queryRestart":Z
    .local v4, "queryRestart":Z
    .local v5, "queryRemove":Z
    .local v21, "packageChanged":Z
    :goto_6d
    const-string v0, "android.intent.extra.user_handle"

    const/4 v9, -0x1

    move-object/from16 v16, v15

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1604
    .local v15, "changeUserId":I
    const/16 v17, 0x0

    .line 1605
    .local v17, "pkgList":[Ljava/lang/String;
    const/16 v18, 0x0

    .line 1606
    .local v18, "uidList":[I
    move-object/from16 v19, v14

    const/4 v9, 0x0

    if-eqz v5, :cond_89

    .line 1607
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_89

    const/4 v0, 0x1

    goto :goto_8a

    :cond_89
    move v0, v9

    :goto_8a
    move/from16 v23, v0

    .line 1608
    .local v23, "removingPackage":Z
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v14, "NotificationService"

    if-eqz v0, :cond_b1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " removing="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v23

    .end local v23    # "removingPackage":Z
    .local v9, "removingPackage":Z
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .end local v9    # "removingPackage":Z
    .restart local v23    # "removingPackage":Z
    :cond_b1
    move/from16 v9, v23

    .line 1609
    .end local v23    # "removingPackage":Z
    .restart local v9    # "removingPackage":Z
    :goto_b3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "android.intent.extra.changed_uid_list"

    move/from16 v23, v5

    .end local v5    # "queryRemove":Z
    .local v23, "queryRemove":Z
    const-string v5, "android.intent.extra.changed_package_list"

    if-eqz v0, :cond_d1

    .line 1610
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1611
    .end local v17    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    move/from16 v22, v8

    const/4 v12, 0x0

    const/4 v13, -0x1

    move v8, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v0

    .end local v18    # "uidList":[I
    .local v5, "uidList":[I
    goto/16 :goto_1a6

    .line 1612
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    :cond_d1
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1613
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1614
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 1615
    .end local v18    # "uidList":[I
    .restart local v5    # "uidList":[I
    const/4 v6, 0x0

    .line 1616
    const/4 v7, 0x1

    move/from16 v22, v8

    const/4 v12, 0x0

    const/4 v13, -0x1

    move v8, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_1a6

    .line 1617
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    :cond_eb
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1618
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1619
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 1620
    .end local v18    # "uidList":[I
    .restart local v5    # "uidList":[I
    const/4 v6, 0x0

    .line 1621
    const/4 v8, 0x1

    move/from16 v22, v8

    const/4 v12, 0x0

    const/4 v13, -0x1

    move v8, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_1a6

    .line 1622
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    :cond_105
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 1623
    nop

    .line 1624
    const-string v0, "android.intent.extra.distraction_restrictions"

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1626
    .local v0, "distractionRestrictions":I
    and-int/lit8 v10, v0, 0x2

    if-eqz v10, :cond_124

    .line 1628
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1629
    .end local v17    # "pkgList":[Ljava/lang/String;
    .local v5, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    .line 1630
    .end local v18    # "uidList":[I
    .local v10, "uidList":[I
    const/4 v6, 0x0

    .line 1631
    const/4 v7, 0x1

    move-object v0, v5

    move-object v5, v10

    goto :goto_130

    .line 1633
    .end local v5    # "pkgList":[Ljava/lang/String;
    .end local v10    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    :cond_124
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1634
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v5    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    .line 1635
    .end local v18    # "uidList":[I
    .restart local v10    # "uidList":[I
    const/4 v6, 0x0

    .line 1636
    const/4 v8, 0x1

    move-object v0, v5

    move-object v5, v10

    .line 1639
    .end local v10    # "uidList":[I
    .local v0, "pkgList":[Ljava/lang/String;
    .local v5, "uidList":[I
    :goto_130
    move/from16 v22, v8

    const/4 v12, 0x0

    const/4 v13, -0x1

    move v8, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_1a6

    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    :cond_13a
    const-string v5, "android.intent.extra.UID"

    if-eqz v4, :cond_159

    .line 1640
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1641
    .end local v17    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v11, v10, [I

    const/4 v10, -0x1

    invoke-virtual {v2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v10, 0x0

    aput v5, v11, v10

    move-object v5, v11

    move/from16 v22, v8

    const/4 v12, 0x0

    const/4 v13, -0x1

    move v8, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v0

    .end local v18    # "uidList":[I
    .restart local v5    # "uidList":[I
    goto :goto_1a6

    .line 1643
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v5    # "uidList":[I
    .restart local v17    # "pkgList":[Ljava/lang/String;
    .restart local v18    # "uidList":[I
    :cond_159
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 1644
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_160

    .line 1645
    return-void

    .line 1647
    :cond_160
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 1648
    .local v11, "pkgName":Ljava/lang/String;
    if-nez v11, :cond_167

    .line 1649
    return-void

    .line 1651
    :cond_167
    if-eqz v21, :cond_18d

    .line 1654
    :try_start_169
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1656
    const/4 v12, -0x1

    if-eq v15, v12, :cond_174

    move v12, v15

    goto :goto_175

    .line 1657
    :cond_174
    const/4 v12, 0x0

    .line 1654
    :goto_175
    invoke-interface {v0, v11, v12}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_179
    .catch Ljava/lang/IllegalArgumentException; {:try_start_169 .. :try_end_179} :catch_182
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_179} :catch_180

    .line 1658
    .local v0, "enabled":I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_17e

    if-nez v0, :cond_17f

    .line 1660
    :cond_17e
    const/4 v6, 0x0

    .line 1670
    .end local v0    # "enabled":I
    :cond_17f
    :goto_17f
    goto :goto_18d

    .line 1668
    :catch_180
    move-exception v0

    goto :goto_18d

    .line 1662
    :catch_182
    move-exception v0

    .line 1665
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v12, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v12, :cond_17f

    .line 1666
    const-string v12, "Exception trying to look up app enabled setting"

    invoke-static {v14, v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17f

    .line 1672
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_18d
    :goto_18d
    const/4 v13, 0x1

    new-array v0, v13, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v0, v12

    .line 1673
    .end local v17    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v17    # "pkgList":[Ljava/lang/String;
    new-array v0, v13, [I

    const/4 v13, -0x1

    invoke-virtual {v2, v5, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aput v5, v0, v12

    move-object v5, v0

    move/from16 v22, v8

    move v8, v7

    move v7, v6

    move-object v6, v5

    move-object/from16 v5, v17

    .line 1675
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v17    # "pkgList":[Ljava/lang/String;
    .end local v18    # "uidList":[I
    .local v5, "pkgList":[Ljava/lang/String;
    .local v6, "uidList":[I
    .local v7, "cancelNotifications":Z
    .local v8, "hideNotifications":Z
    .local v22, "unhideNotifications":Z
    :goto_1a6
    if-eqz v5, :cond_22f

    array-length v0, v5

    if-lez v0, :cond_22f

    .line 1676
    if-eqz v7, :cond_213

    .line 1677
    array-length v0, v5

    move v11, v12

    :goto_1af
    if-ge v11, v0, :cond_206

    aget-object v25, v5, v11

    .line 1678
    .local v25, "pkgName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2400()I

    move-result v17

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2500()I

    move-result v18

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    if-nez v4, :cond_1c8

    const/16 v29, 0x1

    goto :goto_1ca

    :cond_1c8
    move/from16 v29, v12

    :goto_1ca
    const/16 v30, 0x0

    move/from16 v31, v12

    move v12, v13

    move v13, v9

    .end local v9    # "removingPackage":Z
    .local v13, "removingPackage":Z
    move-object v9, v10

    move/from16 v10, v17

    move/from16 v32, v11

    move/from16 v11, v18

    move-object/from16 v12, v25

    move/from16 v33, v13

    const/16 v17, 0x1

    .end local v13    # "removingPackage":Z
    .local v33, "removingPackage":Z
    move-object/from16 v13, v26

    move-object/from16 v35, v14

    move-object/from16 v34, v19

    move/from16 v14, v27

    move/from16 v24, v15

    move-object/from16 v36, v16

    .end local v15    # "changeUserId":I
    .local v24, "changeUserId":I
    move/from16 v15, v28

    move/from16 v16, v29

    move/from16 v17, v24

    move/from16 v18, v20

    move-object/from16 v19, v30

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1677
    .end local v25    # "pkgName":Ljava/lang/String;
    add-int/lit8 v11, v32, 0x1

    move/from16 v15, v24

    move/from16 v12, v31

    move/from16 v9, v33

    move-object/from16 v19, v34

    move-object/from16 v14, v35

    move-object/from16 v16, v36

    const/4 v13, -0x1

    goto :goto_1af

    .end local v24    # "changeUserId":I
    .end local v33    # "removingPackage":Z
    .restart local v9    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_206
    move/from16 v33, v9

    move/from16 v31, v12

    move-object/from16 v35, v14

    move/from16 v24, v15

    move-object/from16 v36, v16

    move-object/from16 v34, v19

    .end local v9    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v24    # "changeUserId":I
    .restart local v33    # "removingPackage":Z
    goto :goto_23b

    .line 1681
    .end local v24    # "changeUserId":I
    .end local v33    # "removingPackage":Z
    .restart local v9    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_213
    move/from16 v33, v9

    move/from16 v31, v12

    move-object/from16 v35, v14

    move/from16 v24, v15

    move-object/from16 v36, v16

    move-object/from16 v34, v19

    .end local v9    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v24    # "changeUserId":I
    .restart local v33    # "removingPackage":Z
    if-eqz v8, :cond_227

    .line 1682
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_23b

    .line 1683
    :cond_227
    if-eqz v22, :cond_23b

    .line 1684
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_23b

    .line 1675
    .end local v24    # "changeUserId":I
    .end local v33    # "removingPackage":Z
    .restart local v9    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_22f
    move/from16 v33, v9

    move/from16 v31, v12

    move-object/from16 v35, v14

    move/from16 v24, v15

    move-object/from16 v36, v16

    move-object/from16 v34, v19

    .line 1688
    .end local v9    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v24    # "changeUserId":I
    .restart local v33    # "removingPackage":Z
    :cond_23b
    :goto_23b
    move-object/from16 v9, v36

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_250

    .line 1689
    move-object/from16 v9, v34

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    goto :goto_250

    :cond_24c
    move/from16 v11, v24

    goto/16 :goto_2ec

    .line 1690
    :cond_250
    :goto_250
    const/4 v0, 0x0

    .line 1691
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1692
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_25d

    .line 1693
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_25e

    .line 1692
    :cond_25d
    move-object v10, v0

    .line 1695
    .end local v0    # "pkgName":Ljava/lang/String;
    .local v10, "pkgName":Ljava/lang/String;
    :goto_25e
    move/from16 v11, v24

    const/4 v12, -0x1

    .end local v24    # "changeUserId":I
    .local v11, "changeUserId":I
    if-eq v11, v12, :cond_265

    move v15, v11

    goto :goto_267

    :cond_265
    move/from16 v15, v31

    :goto_267
    move v12, v15

    .line 1696
    .local v12, "userId":I
    if-eqz v10, :cond_2ec

    .line 1698
    :try_start_26a
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v13, 0x80

    invoke-interface {v0, v10, v13, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v13, v0

    .line 1700
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v13, :cond_2e7

    iget-object v0, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2e7

    .line 1701
    const-string/jumbo v0, "user"

    iget-object v14, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "com.samsung.android.notification.listener.autobind"

    const-string v2, "default"

    invoke-virtual {v14, v15, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification listener autobind, pkg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v35

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->checkNotificationAccessSetting(Ljava/lang/String;I)Z
    invoke-static {v0, v10, v12}, Lcom/android/server/notification/NotificationManagerService;->access$2600(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e7

    .line 1704
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1705
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    const/high16 v2, 0xc0000

    invoke-virtual {v0, v10, v2, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v0

    move-object v2, v0

    .line 1708
    .local v2, "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2bf
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;
    :try_end_2cb
    .catch Landroid/os/RemoteException; {:try_start_26a .. :try_end_2cb} :catch_2e8

    move-object v15, v0

    .line 1710
    .local v15, "cn":Landroid/content/ComponentName;
    :try_start_2cc
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0
    :try_end_2d2
    .catch Landroid/os/RemoteException; {:try_start_2cc .. :try_end_2d2} :catch_2db

    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local v16, "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :try_start_2d5
    invoke-interface {v0, v15, v12, v2}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_2d8
    .catch Landroid/os/RemoteException; {:try_start_2d5 .. :try_end_2d8} :catch_2d9

    .line 1713
    goto :goto_2e2

    .line 1711
    :catch_2d9
    move-exception v0

    goto :goto_2df

    .end local v16    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v2    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :catch_2db
    move-exception v0

    move-object/from16 v16, v2

    const/4 v2, 0x1

    .line 1712
    .end local v2    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :goto_2df
    :try_start_2df
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2e2
    .catch Landroid/os/RemoteException; {:try_start_2df .. :try_end_2e2} :catch_2e8

    .line 1714
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v15    # "cn":Landroid/content/ComponentName;
    :goto_2e2
    move-object/from16 v2, v16

    goto :goto_2bf

    .line 1708
    .end local v16    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v2    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_2e5
    move-object/from16 v16, v2

    .line 1720
    .end local v2    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2e7
    goto :goto_2ec

    .line 1718
    :catch_2e8
    move-exception v0

    .line 1719
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1724
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v12    # "userId":I
    :cond_2ec
    :goto_2ec
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    move/from16 v2, v33

    .end local v33    # "removingPackage":Z
    .local v2, "removingPackage":Z
    invoke-virtual {v0, v2, v11, v5, v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    move v0, v4

    move v6, v7

    move v7, v8

    move/from16 v5, v21

    move/from16 v8, v22

    move/from16 v4, v23

    .line 1726
    .end local v2    # "removingPackage":Z
    .end local v11    # "changeUserId":I
    .end local v21    # "packageChanged":Z
    .end local v22    # "unhideNotifications":Z
    .end local v23    # "queryRemove":Z
    .local v0, "queryRestart":Z
    .local v4, "queryRemove":Z
    .local v5, "packageChanged":Z
    .local v6, "cancelNotifications":Z
    .local v7, "hideNotifications":Z
    .local v8, "unhideNotifications":Z
    :cond_300
    return-void
.end method
