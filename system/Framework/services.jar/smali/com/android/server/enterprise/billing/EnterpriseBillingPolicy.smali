.class public Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
.super Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy$Stub;
.source "EnterpriseBillingPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field private static final INVALID_ADMIN_UID:I = 0x0

.field private static final NOTIFICATION_ID:I = 0x186a1

.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingPolicy"


# instance fields
.field private ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

.field private ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

.field private ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

.field private ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy$Stub;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    .line 53
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 54
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 56
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .line 58
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    .line 68
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private checkNoMDMPermission()Z
    .registers 8

    .line 87
    const-string v0, "EnterpriseBillingPolicy"

    const-string v1, "checkNoMDMPermission: start: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    .line 102
    .local v1, "returnVal":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_a
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING_NOMDM"

    .line 103
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_12} :catch_18

    if-nez v4, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    :goto_16
    move v1, v2

    .line 113
    goto :goto_27

    .line 104
    :catch_18
    move-exception v4

    .line 106
    .local v4, "ex":Ljava/lang/SecurityException;
    :try_start_19
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

    .line 107
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_21} :catch_3c

    if-nez v5, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    move v1, v2

    .line 112
    nop

    .line 115
    .end local v4    # "ex":Ljava/lang/SecurityException;
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNoMDMPermission: end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v1

    .line 108
    .restart local v4    # "ex":Ljava/lang/SecurityException;
    :catch_3c
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Permission denied - missing com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING_NOMDM or com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private deactivateEnterpriseBilling(Ljava/lang/String;)V
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- deactivateEnterpriseBilling - profile  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateEnterpriseBillingInternal(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 72
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_EBILLING"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 79
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 81
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public activateProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "isActivate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activateProfile - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "returnValue":Z
    if-eqz p1, :cond_33

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 651
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 652
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->activateProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4f

    .line 654
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateProfile - Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return v0
.end method

.method public declared-synchronized addProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    const-string v1, "addProfile - start "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "returnValue":Z
    if-eqz p1, :cond_16

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 133
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->addProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z

    move-result v1

    move v0, v1

    goto :goto_34

    .line 135
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_16
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addProfile - Error, invalid input parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_34
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    .line 138
    monitor-exit p0

    return v0

    .line 128
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addProfileForCurrentContainer(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .registers 5
    .param p1, "profile"    # Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    const/4 v0, 0x0

    .line 679
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_9

    .line 681
    const/4 v1, 0x0

    return v1

    .line 684
    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->addProfileForCurrentContainer(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z

    move-result v0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProfileForCurrentContainer end : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseBillingPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return v0
.end method

.method public addVpnToBillingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "billingProfileName"    # Ljava/lang/String;
    .param p3, "vpnProfileName"    # Ljava/lang/String;
    .param p4, "pacakgeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVpnToBillingProfile - start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "returnValue":Z
    if-eqz p1, :cond_31

    .line 603
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 604
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->addVpnToBillingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_45

    .line 606
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVpnToBillingProfile - Error invcalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :goto_45
    const-string v2, "addVpnToBillingProfile - end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return v0
.end method

.method public addVpnToBillingProfileForCurrentContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "billingProfileName"    # Ljava/lang/String;
    .param p2, "vpnProfileName"    # Ljava/lang/String;
    .param p3, "pacakgeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_9

    .line 767
    const/4 v1, 0x0

    return v1

    .line 771
    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->addVpnToBillingProfileForCurrentContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVpnToBillingProfileForCurrentContainer - end,returnValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseBillingPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return v0
.end method

.method public declared-synchronized allowRoaming(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 475
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    const-string v1, "allowRoaming"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "returnValue":Z
    if-eqz p1, :cond_16

    .line 478
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 479
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->allowRoaming(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    goto :goto_34

    .line 481
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_16
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowRoaming- Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 483
    :goto_34
    monitor-exit p0

    return v0

    .line 474
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    .end local p3    # "allow":Z
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allowWifiFallback(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 443
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    const-string v1, "allowWifiFallback- start -"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    if-eqz p1, :cond_13

    .line 445
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 446
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->allowWifiFallback(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    goto :goto_31

    .line 448
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_13
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowWifiFallback- Error invalid parameter-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_31
    const-string v0, "EnterpriseBillingPolicy"

    const-string v1, "allowWifiFallback- end -"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 451
    monitor-exit p0

    return-void

    .line 442
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    .end local p3    # "allow":Z
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 284
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableProfile - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "returnValue":Z
    if-eqz p1, :cond_25

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 288
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_43

    .line 290
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_25
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfile - Error Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_43
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5b

    .line 293
    monitor-exit p0

    return v0

    .line 283
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableProfileForApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 267
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableProfileForApps - start -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "returnValue":Z
    if-eqz p1, :cond_2d

    if-eqz p2, :cond_2d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 272
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v1

    move v0, v1

    goto :goto_4b

    .line 274
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_2d
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfileForApps - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_4b
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfileForApps - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    .line 277
    monitor-exit p0

    return v0

    .line 266
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableProfileForContainer(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 244
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    const-string v1, "disableProfileForContainer - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "returnValue":Z
    if-eqz p1, :cond_16

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 252
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    move v0, v1

    goto :goto_2c

    .line 254
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_16
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfileForContainer - Error Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_2c
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfileForContainer - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 259
    monitor-exit p0

    return v0

    .line 243
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public disableProfileForCurrentContainer()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    const-string v0, "EnterpriseBillingPolicy"

    const-string v1, "disableProfileForCurrentContainer - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v1, 0x0

    .line 707
    .local v1, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v2

    if-nez v2, :cond_10

    .line 709
    const/4 v0, 0x0

    return v0

    .line 712
    :cond_10
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForCurrentContainer()Z

    move-result v1

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfileForCurrentContainer - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 798
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 800
    const-string v0, "Permission Denial: can\'t dump EnterpriseBilling"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    return-void

    .line 803
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    if-nez v0, :cond_15

    return-void

    .line 806
    :cond_15
    const-string v1, "_id"

    const-string v2, "adminUid"

    const-string/jumbo v3, "profile_name"

    const-string/jumbo v4, "package"

    const-string v5, "container_id"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "eb_mapping_table"

    invoke-virtual {v0, p2, v5, v4}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v4, "adminUid"

    const-string/jumbo v5, "profile_name"

    const-string/jumbo v6, "profile_id"

    const-string v7, "apn"

    const-string/jumbo v8, "mcc"

    const-string/jumbo v9, "mnc"

    const-string/jumbo v10, "profile_creator"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "eb_profiles_table"

    invoke-virtual {v0, p2, v5, v4}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v4, "_id"

    const-string v5, "adminUid"

    const-string/jumbo v6, "profile_name"

    const-string/jumbo v7, "turn_on"

    const-string v8, "activate"

    const-string v9, "allow_on_wifi"

    const-string v10, "allow_on_roaming"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "eb_profile_settings_table"

    invoke-virtual {v0, p2, v5, v4}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v4, "eapn_type"

    const-string v5, "default_type"

    filled-new-array {v1, v2, v4, v5, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "eapn_mapping_table"

    invoke-virtual {v0, p2, v2, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v1, "_id"

    const-string v2, "adminUid"

    const-string v3, "apn"

    const-string/jumbo v4, "mcc"

    const-string/jumbo v5, "mnc"

    const-string/jumbo v6, "profile_name"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "active_profile_table"

    invoke-virtual {v0, p2, v2, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public declared-synchronized enableProfileForApps(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 224
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableProfileForApps - start -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "returnValue":Z
    if-eqz p1, :cond_3d

    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3d

    if-eqz p3, :cond_3d

    .line 228
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 229
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 230
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForApps(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    move v0, v1

    goto :goto_63

    .line 232
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_3d
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableProfileForApps - Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_63
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableProfileForApps - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_1 .. :try_end_79} :catchall_7b

    .line 236
    monitor-exit p0

    return v0

    .line 223
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    .end local p3    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_7b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableProfileForContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableProfileForContainer - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "returnValue":Z
    if-eqz p1, :cond_2d

    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2d

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 208
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_4b

    .line 210
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_2d
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableProfileForContainer - Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_4b
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableProfileForContainer - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    .line 215
    monitor-exit p0

    return v0

    .line 202
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableProfileForCurrentContainer(Ljava/lang/String;)Z
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_8

    .line 694
    return v0

    .line 696
    :cond_8
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForCurrentContainer(Ljava/lang/String;)Z

    move-result v0

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableProfileForCurrentContainer - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseBillingPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return v0
.end method

.method public declared-synchronized getApplicationsUsingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getApplicationsUsingProfile - start -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    .line 427
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_39

    if-eqz p2, :cond_39

    .line 429
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_39

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 430
    invoke-virtual {v1, p2, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 432
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 433
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getApplicationsUsingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 435
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_39
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationsUsingProfile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 436
    monitor-exit p0

    return-object v0

    .line 421
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAvailableProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    const-string v0, "EnterpriseBillingPolicy"

    const-string/jumbo v1, "getAvailableProfiles - start "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, "availableProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_15

    .line 585
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 586
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getAvailableProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    goto :goto_2a

    .line 588
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvailableProfiles - Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvailableProfiles - end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-object v1
.end method

.method public getAvailableProfilesForCaller()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    const-string v0, "EnterpriseBillingPolicy"

    const-string/jumbo v1, "getAvailableProfilesForCaller - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v1, 0x0

    .line 751
    .local v1, "availableProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v2

    if-nez v2, :cond_11

    .line 753
    const/4 v0, 0x0

    return-object v0

    .line 756
    :cond_11
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getAvailableProfilesForCaller()Ljava/util/List;

    move-result-object v1

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvailableProfilesForCaller - end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-object v1
.end method

.method public declared-synchronized getContainersUsingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 404
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    const-string/jumbo v1, "getContainersUsingProfile - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_17

    .line 407
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 408
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getContainersUsingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    goto :goto_36

    .line 410
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_17
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContainersUsingProfile - Error invalid parameter -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_36
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContainersUsingProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    .line 413
    monitor-exit p0

    return-object v0

    .line 403
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProfileDetails(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 183
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileDetails - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz p1, :cond_26

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 188
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getProfileDetails(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v1

    move-object v0, v1

    goto :goto_45

    .line 191
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_26
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileDetails - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_45
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileDetails - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 194
    monitor-exit p0

    return-object v0

    .line 182
    .end local v0    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProfileForApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 385
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileForApplication - start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz p1, :cond_26

    .line 390
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 391
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getProfileForApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v1

    move-object v0, v1

    goto :goto_45

    .line 393
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_26
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForApplication - Error invalid parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_45
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForApplication - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 396
    monitor-exit p0

    return-object v0

    .line 384
    .end local v0    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProfileForContainer(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 368
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    const-string/jumbo v1, "getProfileForContainer - start "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz p1, :cond_17

    .line 371
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 372
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getProfileForContainer(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v1

    move-object v0, v1

    goto :goto_2e

    .line 374
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_17
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForContainer - Error invalid parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_2e
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForContainer - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 377
    monitor-exit p0

    return-object v0

    .line 367
    .end local v0    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getVpnsBoundToProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getVpnProfilesforBillingProfile - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v0, 0x0

    .line 637
    .local v0, "vpnProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 638
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getVpnsBoundToProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_46

    .line 640
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVpnProfilesforBillingProfile - invalid input parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVpnProfilesforBillingProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-object v0
.end method

.method public isProfileActive(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isProfileActive - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "returnValue":Z
    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 667
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 668
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isProfileActive(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_49

    .line 670
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActive - Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActive - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v0
.end method

.method public isProfileActiveByCaller(Ljava/lang/String;)Z
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isProfileActiveByCaller - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v2

    if-nez v2, :cond_20

    .line 740
    const/4 v1, 0x0

    return v1

    .line 743
    :cond_20
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isProfileActiveByCaller(Ljava/lang/String;)Z

    move-result v0

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActiveByCaller - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return v0
.end method

.method public declared-synchronized isProfileEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 300
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileEnabled - start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "returnValue":Z
    if-eqz p1, :cond_26

    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 304
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isProfileEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_45

    .line 306
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_26
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileEnabled - Error Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_45
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileEnabled - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 309
    monitor-exit p0

    return v0

    .line 299
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isProfileTurnedOn(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 351
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileTurnedOn - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "returnValue":Z
    if-eqz p1, :cond_26

    .line 354
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 355
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isProfileTurnedOn(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_45

    .line 357
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_26
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileTurnedOn - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_45
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileTurnedOn - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 360
    monitor-exit p0

    return v0

    .line 350
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRoamingAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 490
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiRoamingAllowed - start -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "returnValue":Z
    if-eqz p1, :cond_26

    .line 493
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 494
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isRoamingAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_45

    .line 496
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_26
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiRoamingAllowed- Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_45
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiRoamingAllowed - end -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 499
    monitor-exit p0

    return v0

    .line 489
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isWifiFallbackAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 458
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiFallbackAllowed - start -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "returnValue":Z
    if-eqz p1, :cond_26

    .line 461
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 462
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isWifiFallbackAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_45

    .line 464
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_26
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiFallbackAllowed - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_45
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiFallbackAllowed - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 467
    monitor-exit p0

    return v0

    .line 457
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 793
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 794
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- on onAdminAdded - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- on AdminRemoved - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 8
    .param p1, "uid"    # I

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- on onPreAdminRemoval - start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    if-nez v0, :cond_20

    .line 527
    const-string v0, "- ebpHelper is null "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 531
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "profiles":[Ljava/lang/String;
    if-eqz v0, :cond_4f

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onPreAdminRemoval - profiles not null  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v2, :cond_4f

    aget-object v4, v0, v3

    .line 536
    .local v4, "profileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForAnAdmin(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 539
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->deactivateEnterpriseBilling(Ljava/lang/String;)V

    .line 535
    .end local v4    # "profileName":Ljava/lang/String;
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 543
    :cond_4f
    const-string v2, "- on onPreAdminRemoval - end "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void
.end method

.method public declared-synchronized removeProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 166
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeProfile - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "returnValue":Z
    if-eqz p1, :cond_26

    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 170
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->removeProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_45

    .line 172
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_26
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfile - Error, invalid input parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_45
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 175
    monitor-exit p0

    return v0

    .line 165
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeProfileForCurrentContainer(Ljava/lang/String;)Z
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProfileForCurrentContainer - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v2

    if-nez v2, :cond_20

    .line 724
    const/4 v1, 0x0

    return v1

    .line 727
    :cond_20
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->removeProfileForCurrentContainer(Ljava/lang/String;)Z

    move-result v0

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfileForCurrentContainer - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return v0
.end method

.method public removeVpnFromBillingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ebProfileName"    # Ljava/lang/String;
    .param p3, "vpnProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeVpnFromBillingProfile - start, profile names- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "returnValue":Z
    if-eqz p1, :cond_2c

    .line 620
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 621
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->removeVpnFromBillingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_41

    .line 623
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnFromBillingProfile - Error invalid parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :goto_41
    const-string/jumbo v2, "removeVpnFromBillingProfile - end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v0
.end method

.method public removeVpnFromBillingProfileForCurrentContainer(Ljava/lang/String;)Z
    .registers 6
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeVpnFromBillingProfile - start, vpn profile name- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v2

    if-nez v2, :cond_20

    .line 783
    const/4 v1, 0x0

    return v1

    .line 786
    :cond_20
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->removeVpnFromBillingProfileForCurrentContainer(Ljava/lang/String;)Z

    move-result v0

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnFromBillingProfile - end,returnValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return v0
.end method

.method public systemReady()V
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    if-nez v0, :cond_d

    .line 558
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 560
    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v0, :cond_19

    .line 561
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 563
    :cond_19
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    if-nez v0, :cond_25

    .line 564
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .line 566
    :cond_25
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    if-eqz v0, :cond_44

    .line 567
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->getInstance(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    .line 568
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_44

    .line 569
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->start()V

    .line 572
    :cond_44
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    if-nez v0, :cond_51

    .line 573
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 575
    :cond_51
    const-string v0, "EnterpriseBillingPolicy"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method public declared-synchronized turnOffProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    const-string/jumbo v1, "turnOffProfile - start  - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "returnValue":Z
    if-eqz p1, :cond_17

    .line 337
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 338
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->turnOffProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_36

    .line 341
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_17
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOffProfile - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_36
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOffProfile - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    .line 344
    monitor-exit p0

    return v0

    .line 333
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized turnOnProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 316
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOnProfile - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "returnValue":Z
    if-eqz p1, :cond_26

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 321
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->turnOnProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_45

    .line 323
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_26
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOnProfile - Error invalid parameter  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_45
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOnProfile - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 326
    monitor-exit p0

    return v0

    .line 315
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 146
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    const-string/jumbo v1, "updateProfile - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "returnValue":Z
    if-eqz p1, :cond_17

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 151
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->updateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z

    move-result v1

    move v0, v1

    goto :goto_36

    .line 153
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
    :cond_17
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProfile - Error, invalid input parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_36
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    .line 158
    monitor-exit p0

    return v0

    .line 145
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
