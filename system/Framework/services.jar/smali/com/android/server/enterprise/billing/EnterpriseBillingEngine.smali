.class public Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
.super Ljava/lang/Object;
.source "EnterpriseBillingEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$EnterpriseBillingEngineConstants;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingEngine"

.field private static engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;


# instance fields
.field private ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " EnterpriseBillingEngine() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 58
    const-string v0, "EnterpriseBillingEngine() - created"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    monitor-enter v0

    .line 64
    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 65
    const-string v1, "EnterpriseBillingEngine"

    const-string v3, "Feature not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput-object v2, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    goto :goto_2a

    .line 67
    :cond_14
    if-nez p0, :cond_1f

    .line 68
    const-string v1, "EnterpriseBillingEngine"

    const-string v3, "Feature enabled, but context passed is null"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_46

    .line 69
    monitor-exit v0

    return-object v2

    .line 70
    :cond_1f
    :try_start_1f
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v1, :cond_2a

    .line 71
    new-instance v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 73
    :cond_2a
    :goto_2a
    const-string v1, "EnterpriseBillingEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " engine - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_46

    monitor-exit v0

    return-object v1

    .line 63
    .end local p0    # "context":Landroid/content/Context;
    :catchall_46
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendEventToRIL - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 335
    .local v2, "token":J
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "eapnType":Ljava/lang/String;
    const-string v4, "com.samsung.server.enterprise.billing.mapping_modified"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_60
    .catchall {:try_start_1b .. :try_end_27} :catchall_5e

    const-string v5, "ent_type"

    if-eqz v4, :cond_3a

    .line 337
    :try_start_2b
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.samsung.server.enterprise.billing.action_enable_status_modified"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v4, "extraIntent":Landroid/content/Intent;
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    .end local v4    # "extraIntent":Landroid/content/Intent;
    :cond_3a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEventToRIL - end - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5c} :catch_60
    .catchall {:try_start_2b .. :try_end_5c} :catchall_5e

    .line 352
    nop

    .end local v0    # "eapnType":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_77

    :catchall_5e
    move-exception v0

    goto :goto_7c

    .line 349
    :catch_60
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    :try_start_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendEventToRIL - failed -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_61 .. :try_end_76} :catchall_5e

    .line 352
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :goto_7c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    throw v0
.end method


# virtual methods
.method public addContainerToExceptionList(Ljava/lang/String;I)I
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addContainerToExceptionList called by VPN inside EnterpriseBillingEngine for container- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public addUIDListToExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 475
    .local p2, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "addUIDListToExceptionList called by VPN inside EnterpriseBillingEngine for packages"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method protected allowOnWifi(Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .line 309
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnWifi - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 311
    const-string v1, "com.samsung.server.enterprise.billing.wifi_fallback_modified"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 313
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowOnWifi - Invalid Profile Name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_29
    const-string v1, "allowOnWifi - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method protected allowRoaming(Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .line 321
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnRoaming - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 323
    const-string v1, "com.samsung.server.enterprise.billing.roaming_modified"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 325
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowRoaming - Invalid Profile Name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_29
    const-string v1, "allowOnRoaming - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method protected disableApplicationOrContainer(Ljava/lang/String;)Z
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "returnValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableForContainerOrApplication() - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseBillingEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz p1, :cond_cc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_cc

    .line 140
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 141
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 143
    .local v1, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 145
    .local v3, "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_3c

    :cond_33
    if-eqz v3, :cond_3f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3c

    goto :goto_3f

    .line 163
    :cond_3c
    const/4 v0, 0x1

    goto/16 :goto_c6

    .line 146
    :cond_3f
    :goto_3f
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getActiveApnForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    move-result-object v4

    .line 147
    .local v4, "apn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableForContainerOrApplication() - active apn - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getDefaultApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "defaultType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableForContainerOrApplication() - active apn defaultType - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->clearActiveApnProfile(Ljava/lang/String;)I

    move-result v0

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableForContainerOrApplication() - clearActiveApnProfile- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->clearEapnProfile(Ljava/lang/String;)I

    move-result v0

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableForContainerOrApplication() - clear eapn profile - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz v5, :cond_c5

    if-eqz v4, :cond_c5

    .line 159
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;Ljava/lang/String;)I

    move-result v6

    .line 160
    .local v6, "value":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableForContainerOrApplication() - update active apn defualtType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v4    # "apn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    .end local v5    # "defaultType":Ljava/lang/String;
    .end local v6    # "value":I
    :cond_c5
    nop

    .line 166
    :goto_c6
    const-string v4, "com.samsung.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v1    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_e0

    .line 168
    :cond_cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableApplicationOrContainer() - ERROR - Invalid profileName - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_e0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableForContainerOrApplication() - end - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-lez v0, :cond_f8

    const/4 v1, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v1, 0x0

    :goto_f9
    return v1
.end method

.method protected enableApplicationOrContainer(Ljava/lang/String;)Z
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .line 88
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "enableForContainer() - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "returnValue":Z
    if-eqz p1, :cond_62

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_62

    .line 91
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v2

    .line 92
    .local v2, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz v2, :cond_4c

    .line 93
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "eapnType":Ljava/lang/String;
    if-eqz v3, :cond_29

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleProfile(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x1

    goto :goto_4b

    .line 99
    :cond_29
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAvailableEapn()Ljava/lang/String;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_45

    .line 102
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addEapnProfileMapping(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 103
    .local v4, "rows":I
    if-lez v4, :cond_3f

    const/4 v5, 0x1

    goto :goto_40

    :cond_3f
    const/4 v5, 0x0

    :goto_40
    move v1, v5

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleProfile(Ljava/lang/String;)V

    .line 105
    .end local v4    # "rows":I
    goto :goto_4b

    .line 107
    :cond_45
    const-string v4, "enableForContainer() - ERROR - no eapn type available - "

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    .line 112
    .end local v3    # "eapnType":Ljava/lang/String;
    :goto_4b
    goto :goto_61

    .line 114
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableForContainer() - ERROR - No such profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x0

    .line 117
    .end local v2    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    :goto_61
    goto :goto_77

    .line 119
    :cond_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableForContainer() - ERROR - Invalid profileName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x0

    .line 123
    :goto_77
    const-string v2, "enableForContainer() - end - "

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v1
.end method

.method public getApplicationsForConnection(Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .param p1, "eapnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getApplicationsForConnection - start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 561
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_ca

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_ca

    .line 562
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "profileName":Ljava/lang/String;
    if-eqz v3, :cond_c9

    .line 564
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v4

    .line 565
    .local v4, "isProfileActive":Z
    if-eqz v4, :cond_c9

    .line 567
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 568
    .local v5, "applications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_92

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_92

    .line 569
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_92

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 570
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 572
    .local v8, "containerId":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 573
    .local v9, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_91

    .line 574
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_72
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_91

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 576
    .local v11, "packageName":Ljava/lang/String;
    const/4 v12, -0x1

    .line 578
    .local v12, "uid":I
    :try_start_7f
    invoke-virtual {v2, v11, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v13
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_83} :catch_85

    move v12, v13

    .line 581
    goto :goto_86

    .line 579
    :catch_85
    move-exception v13

    .line 582
    :goto_86
    const/4 v13, -0x1

    if-eq v12, v13, :cond_90

    .line 583
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "uid":I
    :cond_90
    goto :goto_72

    .line 587
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "containerId":I
    .end local v9    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_91
    goto :goto_50

    .line 590
    :cond_92
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 591
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getVpnEngineDetailsForBillingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 592
    .local v6, "vpnEngines":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    if-eqz v6, :cond_c9

    .line 593
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;

    .line 595
    .local v8, "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    :try_start_aa
    iget-object v9, v8, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->enginePackageName:Ljava/lang/String;

    iget v10, v8, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->containerId:I

    invoke-virtual {v2, v9, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v9

    .line 601
    .local v9, "vpnUid":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c3

    .line 602
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_aa .. :try_end_c3} :catch_c4

    .line 606
    .end local v9    # "vpnUid":I
    :cond_c3
    goto :goto_c8

    .line 604
    :catch_c4
    move-exception v9

    .line 605
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 607
    .end local v8    # "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_c8
    goto :goto_9e

    .line 612
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "isProfileActive":Z
    .end local v5    # "applications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "vpnEngines":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    :cond_c9
    goto :goto_df

    .line 613
    :cond_ca
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getApplicationsForConnection Invalid parameter- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_df
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getApplicationsForConnection - end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-object v0
.end method

.method public getContainersForConnection(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "eapnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getContainersUsingProfile - start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3b

    .line 535
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "profileName":Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 537
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v3

    .line 538
    .local v3, "isProfileActive":Z
    if-eqz v3, :cond_3a

    .line 539
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 542
    .end local v2    # "profileName":Ljava/lang/String;
    .end local v3    # "isProfileActive":Z
    :cond_3a
    goto :goto_50

    .line 543
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContainersUsingProfile Invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContainersUsingProfile - end : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-object v0
.end method

.method public declared-synchronized getUidApnTypeMapping()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 421
    :try_start_1
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, " - getUidApnTypeMapping - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    .line 423
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 420
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected handleAllprofiles()V
    .registers 6

    .line 174
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "handleAllprofiles - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "profiles":[Ljava/lang/String;
    if-eqz v1, :cond_32

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handle - profile not null - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    array-length v2, v1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 180
    .local v4, "profileName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleProfile(Ljava/lang/String;)V

    .line 179
    .end local v4    # "profileName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 183
    :cond_32
    const-string/jumbo v2, "handleAllprofiles - end"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method protected handleProfile(Ljava/lang/String;)V
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handle - start - individual profile - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_1de

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1de

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handle - start - for profile - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getActiveApnForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    move-result-object v0

    .line 200
    .local v0, "apn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getDefaultApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "oldDefaultApnType":Ljava/lang/String;
    const-string/jumbo v3, "handle - default apn type set for profile - "

    if-eqz v0, :cond_6d

    if-nez v2, :cond_6d

    .line 203
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getDefaultType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;)Ljava/lang/String;

    move-result-object v2

    .line 204
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->setDefaultApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 205
    .local v4, "isSetDefaulType":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v4    # "isSetDefaulType":Z
    :cond_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handle - current active apn for profile - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", and current default type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getCurrentActiveApns(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 211
    .local v4, "apns":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handle - current telephony active apns - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "eapnType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handle - Eapntype of current profile from service storage - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz v4, :cond_1c8

    .line 218
    const-string v6, "com.samsung.server.enterprise.billing.mapping_modified"

    if-eqz v0, :cond_121

    .line 219
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cd

    goto :goto_121

    .line 264
    :cond_cd
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getDefaultType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "defaultApnType":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handle - for active apn, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", the apntype is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz v3, :cond_100

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f9

    goto :goto_100

    .line 276
    :cond_f9
    const-string/jumbo v7, "handle - current apn is sufficient"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    .line 271
    :cond_100
    :goto_100
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;Ljava/lang/String;)I

    move-result v7

    .line 273
    .local v7, "update":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handle - update apntype of active apn in telephony db - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v7    # "update":I
    nop

    .line 278
    :goto_11c
    invoke-direct {p0, v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c8

    .line 223
    .end local v3    # "defaultApnType":Ljava/lang/String;
    :cond_121
    :goto_121
    const-string/jumbo v7, "handle - apn should be changed"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v7, p1, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getMatchingApn(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    move-result-object v7

    .line 227
    .local v7, "eapn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handle - matching apn from policy storage for active telephony apns - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v7, :cond_1c5

    .line 233
    if-eqz v2, :cond_158

    if-eqz v0, :cond_158

    .line 234
    const-string/jumbo v8, "handle - changed current apn to its defaulttype in telephony db"

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v8, v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;Ljava/lang/String;)I

    .line 236
    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v8, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->deleteActiveProfileApn(Ljava/lang/String;)Z

    .line 239
    :cond_158
    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getDefaultType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;)Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "newDefaultApnType":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handle - default apn type of new eapn - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p1, v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addActiveApnToProfile(Ljava/lang/String;Lcom/samsung/android/knox/net/billing/EnterpriseApn;)Z

    move-result v9

    .line 245
    .local v9, "isAddedActiveApn":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handle - added active apn for profile - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v10, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1, v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->setDefaultApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 249
    .local v10, "isSetDefaulType":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;Ljava/lang/String;)I

    move-result v3

    .line 253
    .local v3, "update":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - update eapn type of new eapn in telephony db - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0, v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v3    # "update":I
    .end local v8    # "newDefaultApnType":Ljava/lang/String;
    .end local v9    # "isAddedActiveApn":Z
    .end local v10    # "isSetDefaulType":Z
    goto :goto_1c8

    .line 257
    :cond_1c5
    invoke-direct {p0, v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v7    # "eapn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    :cond_1c8
    :goto_1c8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handle - end - for profile - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0    # "apn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    .end local v2    # "oldDefaultApnType":Ljava/lang/String;
    .end local v4    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .end local v5    # "eapnType":Ljava/lang/String;
    goto :goto_1f2

    .line 287
    :cond_1de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either profile name is invalid or This profile no longer exists in the entries, but still mapping is kept - error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_1f2
    const-string/jumbo v0, "handle - end - "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method protected informMappingChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .line 514
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "informMappingChanged - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 516
    const-string v1, "com.samsung.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 518
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "informMappingChanged - Invalid parameter - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_2b
    const-string/jumbo v1, "informMappingChanged - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method public isEnterpriseAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .line 690
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEnterpriseAPN - Start: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "EnterpriseBillingEngine"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v6, 0x0

    .line 697
    .local v6, "returnValue":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 699
    .local v7, "token":J
    :try_start_32
    iget-object v0, v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    if-eqz v0, :cond_ee

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 700
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 701
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 703
    iget-object v0, v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "activeProfileNameArray":[Ljava/lang/String;
    if-eqz v0, :cond_ec

    array-length v9, v0

    if-lez v9, :cond_ec

    .line 705
    array-length v9, v0

    const/4 v10, 0x0

    :goto_55
    if-ge v10, v9, :cond_e9

    aget-object v11, v0, v10

    .line 706
    .local v11, "activeProfileName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isEnterpriseAPN - checking active profile - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v12, v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v12, v11}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v12

    .line 708
    .local v12, "activeProfile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz v12, :cond_db

    iget-object v13, v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v13, v11}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_db

    .line 709
    invoke-virtual {v12}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getApnsFromProfile()Ljava/util/List;

    move-result-object v13

    .line 710
    .local v13, "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    if-eqz v13, :cond_d8

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_d8

    .line 711
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    .line 712
    .local v15, "eapn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    move-object/from16 v16, v0

    .end local v0    # "activeProfileNameArray":[Ljava/lang/String;
    .local v16, "activeProfileNameArray":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isEnterpriseAPN - found enterprise apn - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, v15, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, v15, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, v15, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_cb} :catch_f5
    .catchall {:try_start_32 .. :try_end_cb} :catchall_f3

    if-eqz v0, :cond_d0

    .line 714
    const/4 v0, 0x1

    .line 715
    .end local v6    # "returnValue":Z
    .local v0, "returnValue":Z
    move v6, v0

    goto :goto_dd

    .line 717
    .end local v0    # "returnValue":Z
    .end local v15    # "eapn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    .restart local v6    # "returnValue":Z
    :cond_d0
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_8e

    .line 711
    .end local v16    # "activeProfileNameArray":[Ljava/lang/String;
    .local v0, "activeProfileNameArray":[Ljava/lang/String;
    :cond_d5
    move-object/from16 v16, v0

    .end local v0    # "activeProfileNameArray":[Ljava/lang/String;
    .restart local v16    # "activeProfileNameArray":[Ljava/lang/String;
    goto :goto_dd

    .line 710
    .end local v16    # "activeProfileNameArray":[Ljava/lang/String;
    .restart local v0    # "activeProfileNameArray":[Ljava/lang/String;
    :cond_d8
    move-object/from16 v16, v0

    .end local v0    # "activeProfileNameArray":[Ljava/lang/String;
    .restart local v16    # "activeProfileNameArray":[Ljava/lang/String;
    goto :goto_dd

    .line 708
    .end local v13    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .end local v16    # "activeProfileNameArray":[Ljava/lang/String;
    .restart local v0    # "activeProfileNameArray":[Ljava/lang/String;
    :cond_db
    move-object/from16 v16, v0

    .line 720
    .end local v0    # "activeProfileNameArray":[Ljava/lang/String;
    .restart local v16    # "activeProfileNameArray":[Ljava/lang/String;
    :goto_dd
    const/4 v0, 0x1

    if-ne v6, v0, :cond_e1

    .line 721
    goto :goto_ee

    .line 705
    .end local v11    # "activeProfileName":Ljava/lang/String;
    .end local v12    # "activeProfile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    :cond_e1
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_55

    .end local v16    # "activeProfileNameArray":[Ljava/lang/String;
    .restart local v0    # "activeProfileNameArray":[Ljava/lang/String;
    :cond_e9
    move-object/from16 v16, v0

    .end local v0    # "activeProfileNameArray":[Ljava/lang/String;
    .restart local v16    # "activeProfileNameArray":[Ljava/lang/String;
    goto :goto_ee

    .line 704
    .end local v16    # "activeProfileNameArray":[Ljava/lang/String;
    .restart local v0    # "activeProfileNameArray":[Ljava/lang/String;
    :cond_ec
    move-object/from16 v16, v0

    .line 729
    .end local v0    # "activeProfileNameArray":[Ljava/lang/String;
    :cond_ee
    :goto_ee
    nop

    :goto_ef
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    goto :goto_10d

    .line 729
    :catchall_f3
    move-exception v0

    goto :goto_123

    .line 726
    :catch_f5
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isEnterpriseAPN - failed -"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_f6 .. :try_end_10b} :catchall_f3

    .line 729
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_ef

    .line 732
    :goto_10d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isEnterpriseAPN - End: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return v6

    .line 729
    :goto_123
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    throw v0
.end method

.method protected isPrimarySimDataActive()Z
    .registers 5

    .line 358
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "isPrimarySimDataActive - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 360
    .local v1, "slotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrimarySimDataActive - slotId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-nez v1, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public isRoamingAllowed(Ljava/lang/String;)Z
    .registers 7
    .param p1, "eapnType"    # Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "returnValue":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRoamingAllowed - start - eapn - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseBillingEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 455
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRoamingAllowed - profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isRoamingAllowed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4a

    .line 460
    :cond_44
    const-string/jumbo v3, "isRoamingAllowed - Error no profile matching eapnType"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v1    # "profileName":Ljava/lang/String;
    :goto_4a
    goto :goto_5f

    .line 464
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isRoamingAllowed - Invalid eapnType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isRoamingAllowed - end - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v0
.end method

.method public isSplitBillingEnabled(Ljava/lang/String;)Z
    .registers 9
    .param p1, "eapnType"    # Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - isSplitBillingEnabled - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x0

    .line 374
    .local v0, "returnValue":Z
    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5d

    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, "ebpInternal":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v2

    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, "dualSimSupported":Z
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isDualSimSupported()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 379
    const/4 v3, 0x1

    .line 382
    :cond_30
    if-nez v3, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isPrimarySimDataActive()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 383
    const/4 v0, 0x0

    goto :goto_5c

    .line 385
    :cond_3a
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "profileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - profileName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-eqz v4, :cond_5c

    .line 388
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v0

    .line 391
    .end local v2    # "ebpInternal":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    .end local v3    # "dualSimSupported":Z
    .end local v4    # "profileName":Ljava/lang/String;
    :cond_5c
    :goto_5c
    goto :goto_71

    .line 392
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isSplitBillingEnabled - Invalid eapnType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isSplitBillingEnabled - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v0
.end method

.method public isTurnedOn(Ljava/lang/String;)Z
    .registers 7
    .param p1, "eapnType"    # Ljava/lang/String;

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - isTurnedOn - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "returnValue":Z
    if-eqz p1, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_48

    .line 404
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "profileName":Ljava/lang/String;
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_47

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isTurnedOn - profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileTurnedOn(Ljava/lang/String;)Z

    move-result v0

    .line 409
    .end local v2    # "profileName":Ljava/lang/String;
    :cond_47
    goto :goto_5c

    .line 411
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isTurnedOn - Error Invalid eapnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isTurnedOn - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v0
.end method

.method public isWifiFallbackAllowed(Ljava/lang/String;)Z
    .registers 7
    .param p1, "eapnType"    # Ljava/lang/String;

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "returnValue":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiFallbackAllowed - start - eapn - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseBillingEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 432
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWifiFallbackAllowed - profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isWifiFallbackAllowed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4a

    .line 437
    :cond_44
    const-string/jumbo v3, "isWifiFallbackAllowed - Error no profile matching eapnType"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v1    # "profileName":Ljava/lang/String;
    :goto_4a
    goto :goto_60

    .line 442
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiFallbackAllowed - Error Invalid eapnType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isWifiFallbackAllowed - end - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return v0
.end method

.method protected profileActivationStatusChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;

    .line 524
    const-string v0, "com.samsung.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public removeAllUidByTAG(Ljava/lang/String;)Z
    .registers 4
    .param p1, "tagName"    # Ljava/lang/String;

    .line 678
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "removeAllUidByTAG - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public removeContainerFromExceptionList(Ljava/lang/String;I)I
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeContainerFromExceptionList called by VPN inside enterpriseBillingService for container- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public removeUIDListFromExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 497
    .local p2, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "removeUIDListFromExceptionList called by VPN inside enterpriseBillingService for packages"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public sendNotification(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mobileNetworkType"    # Ljava/lang/String;

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendNotification - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz p1, :cond_c0

    if-eqz p2, :cond_c0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_c0

    .line 635
    :cond_27
    const-string v0, "ent1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "ent2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_4a

    .line 650
    :cond_38
    const-string/jumbo v0, "sendNotification - personal user"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_b9

    .line 637
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "profileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendNotification - profileName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    if-eqz v0, :cond_b8

    .line 640
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 641
    .local v2, "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendNotification - containers - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-eqz v2, :cond_b8

    .line 643
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_88
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 644
    .local v4, "containerId":I
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendNotification - Broadcast sent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v4    # "containerId":I
    goto :goto_88

    .line 649
    .end local v0    # "profileName":Ljava/lang/String;
    .end local v2    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_b8
    nop

    .line 653
    :goto_b9
    const-string/jumbo v0, "sendNotification - end"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 630
    :cond_c0
    :goto_c0
    return-void
.end method

.method protected turnOn(Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turnOn - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 298
    const-string v0, "com.samsung.server.enterprise.billing.profile_turn_on_status_modified"

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 300
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOn - Invalid Profile Name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_3a
    const-string/jumbo v0, "turnOn - end - "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method
