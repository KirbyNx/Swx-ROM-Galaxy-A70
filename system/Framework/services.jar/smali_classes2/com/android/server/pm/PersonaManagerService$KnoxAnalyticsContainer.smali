.class Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KnoxAnalyticsContainer"
.end annotation


# static fields
.field public static final activity_stamp:Ljava/lang/String; = "ACTIVITY_STAMP"

.field public static dpm:Landroid/app/admin/IDevicePolicyManager; = null

.field public static final license_event:Ljava/lang/String; = "LICENSE_EVENT"

.field public static final login_accounts_changed:Ljava/lang/String; = "LOGIN_ACCOUNTS_CHANGED"

.field public static final move_to_knox_file:Ljava/lang/String; = "MOVE_TO_KNOX_FILE"

.field public static final package_added:Ljava/lang/String; = "PACKAGE_ADDED"

.field public static final package_changed:Ljava/lang/String; = "PACKAGE_CHANGED"

.field public static final profile_removed:Ljava/lang/String; = "WORK_PROFILE_REMOVED"

.field public static final rcp_policy_changed:Ljava/lang/String; = "RCP_POLICY_CHANGED"

.field public static final status_snapshot:Ljava/lang/String; = "STATUS_SNAPSHOT"

.field public static final work_mode_off:Ljava/lang/String; = "WORK_MODE_OFF"

.field public static final work_mode_on:Ljava/lang/String; = "WORK_MODE_ON"

.field public static final work_profile_created:Ljava/lang/String; = "WORK_PROFILE_CREATED"

.field public static final workapp_usage:Ljava/lang/String; = "WORKAPP_USAGE"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5386
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->dpm:Landroid/app/admin/IDevicePolicyManager;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 5370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAnalyticsData(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .registers 2
    .param p0, "event"    # Ljava/lang/String;

    .line 5389
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->getAnalyticsData(Ljava/lang/String;Z)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    return-object v0
.end method

.method private static getAnalyticsData(Ljava/lang/String;Z)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .registers 5
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "isAppSeparationMode"    # Z

    .line 5393
    if-eqz p1, :cond_b

    .line 5394
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const/4 v1, 0x1

    const-string v2, "KNOX_APP_SEPARATION"

    invoke-direct {v0, v2, v1, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5395
    .local v0, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    return-object v0

    .line 5397
    .end local v0    # "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :cond_b
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const/4 v1, 0x3

    const-string v2, "KNOX_CONTAINER"

    invoke-direct {v0, v2, v1, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5398
    .restart local v0    # "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    return-object v0
.end method

.method public static getContainerType(I)I
    .registers 6
    .param p0, "userId"    # I

    .line 5404
    const-string/jumbo v0, "ro.organization_owned"

    const/4 v1, 0x0

    .line 5405
    .local v1, "containerType":I
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5406
    const/4 v1, 0x2

    goto :goto_13

    .line 5407
    :cond_c
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5408
    const/4 v1, 0x3

    .line 5411
    :cond_13
    :goto_13
    const/4 v2, 0x0

    if-nez p0, :cond_25

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 5412
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5413
    const/4 v1, 0x5

    goto :goto_25

    .line 5415
    :cond_24
    const/4 v1, 0x4

    .line 5418
    :cond_25
    :goto_25
    # getter for: Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$7000()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_42

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 5420
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 5421
    const/4 v1, 0x7

    goto :goto_42

    .line 5423
    :cond_41
    const/4 v1, 0x6

    .line 5427
    :cond_42
    :goto_42
    move-object v3, v0

    .line 5428
    .local v3, "PROPERTY_ORGANIZATION_OWNED":Ljava/lang/String;
    :try_start_43
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5429
    .local v0, "property":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v4

    if-nez v4, :cond_57

    const/4 v2, 0x1

    .line 5430
    .local v2, "isWpcodEnabled":Z
    :cond_57
    if-eqz v2, :cond_6a

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 5432
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v4
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_63} :catch_6b

    if-eqz v4, :cond_68

    .line 5433
    const/16 v1, 0x9

    goto :goto_6a

    .line 5435
    :cond_68
    const/16 v1, 0x8

    .line 5438
    .end local v0    # "property":Ljava/lang/String;
    .end local v2    # "isWpcodEnabled":Z
    .end local v3    # "PROPERTY_ORGANIZATION_OWNED":Ljava/lang/String;
    :cond_6a
    :goto_6a
    goto :goto_6f

    :catch_6b
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5439
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6f
    return v1
.end method

.method public static logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "event"    # Ljava/lang/String;

    .line 5494
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 5495
    return-void
.end method

.method public static logEvent(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .registers 12
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "isAppSeparationMode"    # Z

    .line 5443
    const-string v0, " / "

    const-string v1, "PersonaManagerService:KnoxAnalytics"

    if-eqz p2, :cond_b1

    .line 5444
    const-wide/16 v2, 0x0

    .line 5445
    .local v2, "creationTime":J
    if-eqz p0, :cond_45

    # getter for: Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$7000()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v4

    if-lez v4, :cond_45

    .line 5446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5448
    .local v4, "ident":J
    :try_start_18
    # getter for: Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$7000()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v6

    # getter for: Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$7000()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 5449
    .local v6, "ui":Landroid/content/pm/UserInfo;
    iget-wide v7, v6, Landroid/content/pm/UserInfo;->creationTime:J
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2e} :catch_32
    .catchall {:try_start_18 .. :try_end_2e} :catchall_30

    move-wide v2, v7

    .end local v6    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_36

    .line 5453
    :catchall_30
    move-exception v0

    goto :goto_41

    .line 5450
    :catch_32
    move-exception v6

    .line 5451
    .local v6, "e":Ljava/lang/Exception;
    :try_start_33
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    .line 5453
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5454
    nop

    .line 5456
    const-string/jumbo v6, "id"

    invoke-virtual {p0, v6, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_45

    .line 5453
    :goto_41
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5454
    throw v0

    .line 5458
    .end local v4    # "ident":J
    :cond_45
    :goto_45
    invoke-static {p1, p2}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->getAnalyticsData(Ljava/lang/String;Z)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v4

    .line 5459
    .local v4, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5460
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 5461
    .local v7, "o":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_6c

    .line 5462
    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_8c

    .line 5463
    :cond_6c
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_77

    .line 5464
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    .line 5465
    :cond_77
    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_82

    .line 5466
    move-object v8, v7

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_8c

    .line 5467
    :cond_82
    instance-of v8, v7, [Ljava/lang/String;

    if-eqz v8, :cond_8c

    .line 5468
    move-object v8, v7

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5469
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "o":Ljava/lang/Object;
    :cond_8c
    :goto_8c
    goto :goto_51

    .line 5470
    :cond_8d
    invoke-static {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 5471
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$7100()Z

    move-result v5

    if-eqz v5, :cond_af

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5472
    .end local v2    # "creationTime":J
    .end local v4    # "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :cond_af
    goto/16 :goto_128

    .line 5473
    :cond_b1
    if-eqz p0, :cond_be

    # getter for: Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$7000()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v2

    if-lez v2, :cond_be

    .line 5474
    return-void

    .line 5476
    :cond_be
    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService$KnoxAnalyticsContainer;->getAnalyticsData(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v2

    .line 5477
    .local v2, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ca
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_106

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5478
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 5479
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_e5

    .line 5480
    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_105

    .line 5481
    :cond_e5
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_f0

    .line 5482
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    .line 5483
    :cond_f0
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_fb

    .line 5484
    move-object v6, v5

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_105

    .line 5485
    :cond_fb
    instance-of v6, v5, [Ljava/lang/String;

    if-eqz v6, :cond_105

    .line 5486
    move-object v6, v5

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5487
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_105
    :goto_105
    goto :goto_ca

    .line 5488
    :cond_106
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 5489
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$7100()Z

    move-result v3

    if-eqz v3, :cond_128

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    .end local v2    # "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :cond_128
    :goto_128
    return-void
.end method
