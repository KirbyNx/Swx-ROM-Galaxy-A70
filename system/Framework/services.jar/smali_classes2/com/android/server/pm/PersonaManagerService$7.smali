.class Lcom/android/server/pm/PersonaManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaManagerService;

    .line 3577
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3580
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "Notifications"

    const-string v3, "Calendar"

    const-string/jumbo v4, "knox-import-data"

    const-string/jumbo v5, "knox-export-data"

    const-string v6, "PACKAGE_INFO"

    const-string v7, "Contacts"

    const-string/jumbo v8, "true"

    const-string v9, "android.intent.extra.user_handle"

    const/16 v10, -0x2710

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 3582
    .local v9, "userId":I
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v10

    const-string/jumbo v11, "samsung.knox.intent.action.rcp.MOVEMENT"

    const-string v12, "android.intent.action.SCREEN_OFF"

    const-string v13, "android.intent.action.ACTION_SHUTDOWN"

    const-string/jumbo v14, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    if-nez v10, :cond_2f

    if-eqz v9, :cond_45

    .line 3583
    :cond_2f
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v10

    if-nez v10, :cond_45

    if-eqz v9, :cond_6e

    .line 3584
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-nez v10, :cond_6e

    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v10

    if-eq v9, v10, :cond_6e

    .line 3585
    :cond_45
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6e

    .line 3586
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6e

    .line 3587
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6e

    .line 3588
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6e

    .line 3589
    return-void

    .line 3593
    :cond_6e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v2, "pN"

    move-object/from16 v16, v11

    const-string v11, "cTp"

    move-object/from16 v17, v8

    if-nez v10, :cond_8f

    .line 3594
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f6

    .line 3595
    :cond_8f
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v8

    sget-object v10, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-ltz v8, :cond_1f6

    .line 3596
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 3597
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    const-string v4, "add"

    if-eqz v0, :cond_fe

    .line 3606
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_DUALDAR"

    const-string v6, "DUALDAR_PACKAGE_ADDED"

    const/4 v7, 0x1

    invoke-direct {v0, v5, v7, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3607
    .local v0, "dData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3608
    .local v5, "addVal":I
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 3610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On Pkg Add, Data values : packageName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", add = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PersonaManagerService:DualDARAnalytics"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Payload / "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 3613
    .end local v0    # "dData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .end local v5    # "addVal":I
    goto/16 :goto_1f2

    :cond_fe
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-ne v9, v0, :cond_19b

    .line 3614
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v5

    const/16 v7, 0x40

    invoke-virtual {v0, v3, v7, v5}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 3615
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-eqz v0, :cond_1f1

    .line 3617
    const/4 v0, 0x0

    .line 3618
    .local v0, "visible":I
    :try_start_121
    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v10

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getVisibleApps(I)Ljava/util/Set;
    invoke-static {v8, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6200(Lcom/android/server/pm/PersonaManagerService;I)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_131
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_158

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3619
    .local v10, "visibleApp":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v12}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v13

    invoke-virtual {v12, v10, v7, v13}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z
    invoke-static {v11, v12}, Lcom/android/server/pm/PersonaManagerService;->access$6300(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PackageInfo;)Z

    move-result v11

    if-nez v11, :cond_157

    .line 3620
    add-int/lit8 v0, v0, 0x1

    .line 3622
    .end local v10    # "visibleApp":Ljava/lang/String;
    :cond_157
    goto :goto_131

    .line 3623
    :cond_158
    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 3624
    .local v7, "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3625
    .local v8, "kna":Landroid/os/Bundle;
    const-string v10, "e"

    invoke-virtual {v8, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3627
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17d

    const/4 v2, 0x1

    goto :goto_17e

    :cond_17d
    const/4 v2, 0x0

    :goto_17e
    invoke-virtual {v8, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3628
    const-string/jumbo v2, "noIP"

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3629
    const-string/jumbo v2, "noWP"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3630
    const/4 v2, 0x1

    invoke-static {v8, v6, v2}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;Ljava/lang/String;Z)V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_195} :catch_196

    .line 3631
    .end local v0    # "visible":I
    .end local v7    # "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "kna":Landroid/os/Bundle;
    goto :goto_1f1

    :catch_196
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f1

    .line 3633
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_19b
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 3634
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v5, v0

    .line 3635
    .local v5, "addVal":I
    const/4 v6, 0x0

    .line 3637
    .local v6, "installerPkg":Ljava/lang/String;
    :try_start_1ab
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ab .. :try_end_1b5} :catch_1b7

    move-object v6, v0

    .line 3640
    goto :goto_1bb

    .line 3638
    :catch_1b7
    move-exception v0

    .line 3639
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3641
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1bb
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3642
    .local v0, "kna":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 3643
    .local v7, "imeVal":I
    if-eqz v6, :cond_1cf

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1cf

    .line 3644
    const-string/jumbo v8, "instN"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    :cond_1cf
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1d8

    .line 3647
    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isIMPackage(Ljava/lang/String;I)I
    invoke-static {v8, v3, v9}, Lcom/android/server/pm/PersonaManagerService;->access$6400(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;I)I

    move-result v7

    .line 3650
    :cond_1d8
    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->getContainerType(I)I

    move-result v8

    invoke-virtual {v0, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3651
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3652
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3653
    const-string/jumbo v2, "ime"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3654
    const-string v2, "PACKAGE_CHANGED"

    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1f2

    .line 3633
    .end local v0    # "kna":Landroid/os/Bundle;
    .end local v5    # "addVal":I
    .end local v6    # "installerPkg":Ljava/lang/String;
    .end local v7    # "imeVal":I
    :cond_1f1
    :goto_1f1
    nop

    .line 3656
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1f2
    move-object/from16 v2, p2

    goto/16 :goto_417

    :cond_1f6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v8, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_217

    .line 3657
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3658
    .restart local v0    # "kna":Landroid/os/Bundle;
    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->getContainerType(I)I

    move-result v2

    invoke-virtual {v0, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3659
    const-string v2, "WORK_MODE_ON"

    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3660
    .end local v0    # "kna":Landroid/os/Bundle;
    move-object/from16 v2, p2

    goto/16 :goto_417

    :cond_217
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v8, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_238

    .line 3661
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3662
    .restart local v0    # "kna":Landroid/os/Bundle;
    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->getContainerType(I)I

    move-result v2

    invoke-virtual {v0, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3663
    const-string v2, "WORK_MODE_OFF"

    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3664
    .end local v0    # "kna":Landroid/os/Bundle;
    move-object/from16 v2, p2

    goto/16 :goto_417

    :cond_238
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_419

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_251

    move-object v3, v2

    move-object/from16 v2, p2

    goto/16 :goto_41c

    .line 3680
    :cond_251
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cd

    .line 3682
    :try_start_25d
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$5600(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3683
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_2c7

    .line 3684
    const/4 v2, 0x0

    .line 3685
    .local v2, "isDuplicated":Z
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_278
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3686
    .local v4, "cName":Ljava/lang/String;
    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28d

    .line 3687
    const/4 v2, 0x1

    .line 3689
    .end local v4    # "cName":Ljava/lang/String;
    :cond_28d
    goto :goto_278

    .line 3690
    :cond_28e
    if-nez v2, :cond_2c7

    .line 3691
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3692
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller_id_to_show_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;)Landroid/database/ContentObserver;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_2c7} :catch_2c8

    .line 3697
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "isDuplicated":Z
    :cond_2c7
    goto :goto_2cc

    .line 3695
    :catch_2c8
    move-exception v0

    .line 3696
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3698
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2cc
    return-void

    .line 3699
    :cond_2cd
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d4

    .line 3701
    :try_start_2d7
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    .line 3702
    .local v2, "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_313

    .line 3703
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3704
    .local v10, "knoxId":I
    if-eqz v10, :cond_310

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v12

    if-nez v12, :cond_310

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v12

    if-nez v12, :cond_302

    .line 3705
    goto :goto_310

    .line 3707
    :cond_302
    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v12

    if-nez v12, :cond_30e

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v12

    if-eqz v12, :cond_310

    .line 3708
    :cond_30e
    move v9, v10

    .line 3709
    goto :goto_313

    .line 3702
    .end local v10    # "knoxId":I
    :cond_310
    :goto_310
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e3

    .line 3713
    .end local v8    # "i":I
    :cond_313
    :goto_313
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_3ce

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-eqz v8, :cond_321

    goto/16 :goto_3ce

    .line 3717
    :cond_321
    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v8

    invoke-virtual {v8, v9, v7, v5}, Lcom/android/server/pm/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3718
    .local v8, "contactsExport":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v10

    invoke-virtual {v10, v9, v7, v4}, Lcom/android/server/pm/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3719
    .local v7, "contactsImport":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v10

    invoke-virtual {v10, v9, v3, v5}, Lcom/android/server/pm/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3720
    .local v5, "calendarExport":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v10

    invoke-virtual {v10, v9, v3, v4}, Lcom/android/server/pm/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3721
    .local v3, "calendarImport":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v4

    const-string/jumbo v10, "knox-sanitize-data"

    invoke-virtual {v4, v9, v0, v10}, Lcom/android/server/pm/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3722
    .local v4, "sanitizeData":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v10

    const-string/jumbo v12, "knox-sanitize-data-lockscreen"

    invoke-virtual {v10, v9, v0, v12}, Lcom/android/server/pm/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3723
    .local v0, "sanitizeDataLockscreen":Ljava/lang/String;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3724
    .local v10, "kna":Landroid/os/Bundle;
    const-string v12, "contactExp"

    move-object/from16 v13, v17

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_374

    move v14, v6

    goto :goto_375

    :cond_374
    const/4 v14, 0x0

    :goto_375
    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3725
    const-string v12, "contactImp"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_382

    move v14, v6

    goto :goto_383

    :cond_382
    const/4 v14, 0x0

    :goto_383
    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3726
    const-string v12, "calendarExp"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_390

    move v14, v6

    goto :goto_391

    :cond_390
    const/4 v14, 0x0

    :goto_391
    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3727
    const-string v12, "calendarImp"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_39e

    move v14, v6

    goto :goto_39f

    :cond_39e
    const/4 v14, 0x0

    :goto_39f
    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3728
    const-string/jumbo v12, "sntDtPc"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3ad

    move v14, v6

    goto :goto_3ae

    :cond_3ad
    const/4 v14, 0x0

    :goto_3ae
    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3729
    const-string/jumbo v12, "sntDtPcLckscn"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3bb

    goto :goto_3bc

    :cond_3bb
    const/4 v6, 0x0

    :goto_3bc
    invoke-virtual {v10, v12, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3730
    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->getContainerType(I)I

    move-result v6

    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3731
    const-string v6, "RCP_POLICY_CHANGED"

    invoke-static {v10, v6}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_3cb
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_3cb} :catch_3cf

    .line 3736
    .end local v0    # "sanitizeDataLockscreen":Ljava/lang/String;
    .end local v2    # "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "calendarImport":Ljava/lang/String;
    .end local v4    # "sanitizeData":Ljava/lang/String;
    .end local v5    # "calendarExport":Ljava/lang/String;
    .end local v7    # "contactsImport":Ljava/lang/String;
    .end local v8    # "contactsExport":Ljava/lang/String;
    .end local v10    # "kna":Landroid/os/Bundle;
    move-object/from16 v2, p2

    goto :goto_417

    .line 3714
    .restart local v2    # "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3ce
    :goto_3ce
    return-void

    .line 3733
    .end local v2    # "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_3cf
    move-exception v0

    .line 3734
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3735
    return-void

    .line 3737
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_403

    .line 3738
    const-string/jumbo v0, "move_to_knox"

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3739
    .local v0, "moveToKnox":Z
    move v3, v0

    .line 3740
    .local v3, "dstVal":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3741
    .local v4, "kna":Landroid/os/Bundle;
    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->getContainerType(I)I

    move-result v5

    invoke-virtual {v4, v11, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3742
    const-string/jumbo v5, "move"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3743
    const-string v5, "MOVE_TO_KNOX_FILE"

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3744
    .end local v0    # "moveToKnox":Z
    .end local v3    # "dstVal":I
    .end local v4    # "kna":Landroid/os/Bundle;
    goto :goto_417

    :cond_403
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_418

    .line 3745
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendSnapshotLog(I)V
    invoke-static {v0, v9}, Lcom/android/server/pm/PersonaManagerService;->access$6900(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 3749
    :goto_417
    return-void

    .line 3747
    :cond_418
    return-void

    .line 3664
    :cond_419
    move-object v3, v2

    move-object/from16 v2, p2

    .line 3665
    :goto_41c
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v0

    if-eqz v0, :cond_473

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_473

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_473

    .line 3666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPostActiveTime:J
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$6600(Lcom/android/server/pm/PersonaManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 3667
    .local v4, "usage_time":J
    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_473

    .line 3668
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3669
    .local v0, "kna":Landroid/os/Bundle;
    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->getContainerType(I)I

    move-result v6

    invoke-virtual {v0, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3670
    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPostActivePackage:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$6700(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3671
    const-string/jumbo v3, "usgT"

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3672
    const-string v3, "WORKAPP_USAGE"

    invoke-static {v0, v3}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3676
    .end local v0    # "kna":Landroid/os/Bundle;
    .end local v4    # "usage_time":J
    :cond_473
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I
    invoke-static {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->access$6502(Lcom/android/server/pm/PersonaManagerService;I)I

    .line 3677
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v3, ""

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mPostActivePackage:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->access$6702(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 3678
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mPostActiveTime:J
    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->access$6602(Lcom/android/server/pm/PersonaManagerService;J)J

    .line 3679
    return-void
.end method
