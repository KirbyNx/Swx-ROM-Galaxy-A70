.class public Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
.super Ljava/lang/Object;
.source "EnterpriseBillingPolicyInternal.java"


# static fields
.field public static final ADMIN_PKG_NAME:Ljava/lang/String; = "admPkgName "

.field public static final ADMIN_UID:Ljava/lang/String; = "admUid"

.field public static final APP_PKG_LIST:Ljava/lang/String; = "pkgLst"

.field public static final CID:Ljava/lang/String; = "cId"

.field public static final EBILLING_PROFILE:Ljava/lang/String; = "prf"

.field public static final EBILLING_PROFILE_ID:Ljava/lang/String; = "prfId"

.field public static final ENABLE:Ljava/lang/String; = "enb"

.field public static final ENTIRE_CONTAINER:Ljava/lang/String; = "Entire_Container"

.field public static final EVENT:Ljava/lang/String; = "API:"

.field public static final FEATURE:Ljava/lang/String; = "KNOX_ENTERPRISE_BILLING"

.field private static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field private static final INVALID_ADMIN_UID:I = 0x0

.field private static final NOTIFICATION_ID:I = 0x186a1

.field private static final PROPERTY_KNOX_CONTAINER_INFO:Ljava/lang/String; = "persist.sys.knox.userinfo"

.field public static final SCHEMA_VERSION:I = 0x1

.field private static final SYSTEM_PROP_BILLING:Ljava/lang/String; = "sys.enterprise.billing.version"

.field private static final SYSTEM_PROP_BILLING_SUPPORT_DUALSIM:Ljava/lang/String; = "sys.enterprise.billing.dualsim"

.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingPolicyInternal"

.field public static final VPN_PKG_NAME:Ljava/lang/String; = "vpnPkgN"

.field public static final VPN_PROFILE_ID:Ljava/lang/String; = "vpnPrfId"

.field private static dualSimSupport:Z

.field private static ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;


# instance fields
.field private ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

.field private ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->dualSimSupport:Z

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 51
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 78
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 84
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mContext:Landroid/content/Context;

    .line 85
    new-instance v1, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 86
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EBPInternal Constructor called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseBillingPolicyInternal"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 89
    const-string v1, ""

    .line 90
    .local v1, "billingVersion":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v3

    .line 91
    .local v3, "knox_version":Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_ae

    .line 119
    const-string v1, "1.3.0"

    .line 120
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->dualSimSupport:Z

    goto :goto_66

    .line 115
    :pswitch_5a
    const-string v1, "1.2.0"

    .line 116
    goto :goto_66

    .line 108
    :pswitch_5d
    const-string v1, "1.1.0"

    .line 109
    goto :goto_66

    .line 104
    :pswitch_60
    const-string v1, "1.0.0"

    .line 105
    goto :goto_66

    .line 100
    :pswitch_63
    const-string v1, ""

    .line 101
    nop

    .line 125
    :goto_66
    const-string/jumbo v4, "sys.enterprise.billing.version"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SYSTEM_PROP_BILLING : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-boolean v4, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->dualSimSupport:Z

    if-eqz v4, :cond_8c

    const-string/jumbo v4, "true"

    goto :goto_8e

    :cond_8c
    const-string v4, "false"

    :goto_8e
    const-string/jumbo v5, "sys.enterprise.billing.dualsim"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SYSTEM_PROP_BILLING_SUPPORT_DUALSIM : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "billingVersion":Ljava/lang/String;
    .end local v3    # "knox_version":Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    :cond_ac
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_60
        :pswitch_60
        :pswitch_5d
        :pswitch_5d
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
    .end packed-switch
.end method

.method private activateSplitBillingIfFirstTime(Ljava/lang/String;)V
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1238
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->activateProfile(Ljava/lang/String;Z)Z

    .line 1239
    return-void
.end method

.method private static checkContainerType(II)Z
    .registers 13
    .param p0, "containerId"    # I
    .param p1, "flag"    # I

    .line 1413
    const-string v0, ":"

    .line 1414
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 1415
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1417
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_43

    .line 1418
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1419
    .local v4, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    array-length v6, v4

    if-ge v5, v6, :cond_43

    .line 1420
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1421
    .local v6, "info":[Ljava/lang/String;
    if-eqz v6, :cond_40

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_40

    .line 1422
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1423
    .local v7, "id":I
    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1424
    .local v9, "flags":I
    if-ne v7, p0, :cond_40

    and-int v10, p1, v9

    if-lez v10, :cond_40

    .line 1425
    return v8

    .line 1419
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "id":I
    .end local v9    # "flags":I
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1429
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_43
    return v3
.end method

.method private deactivateSplitBillingIfLastTime(Ljava/lang/String;)V
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1243
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->activateProfile(Ljava/lang/String;Z)Z

    .line 1244
    return-void
.end method

.method private disableProfileForAppsInternal(Ljava/util/List;II)Z
    .registers 12
    .param p2, "callerUid"    # I
    .param p3, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableProfileForAppsInternal - start -  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicyInternal"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, "returnValue":Z
    if-eqz p1, :cond_6c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 760
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 762
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_32

    .line 763
    goto :goto_23

    .line 766
    :cond_32
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 767
    invoke-virtual {v4, v3, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForApplication(Ljava/lang/String;I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v4

    .line 769
    .local v4, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz v4, :cond_6a

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 771
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    .line 770
    invoke-virtual {v5, v6, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 772
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, v3, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeApplicationFromProfile(Ljava/lang/String;I)I

    move-result v5

    .line 774
    .local v5, "rowsUpdated":I
    if-lez v5, :cond_6a

    .line 775
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 777
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v7

    .line 776
    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v0

    .line 778
    if-eqz v0, :cond_6a

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 779
    invoke-virtual {v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v6

    if-nez v6, :cond_6a

    .line 780
    nop

    .line 781
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    .line 780
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V

    .line 785
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local v5    # "rowsUpdated":I
    :cond_6a
    goto :goto_23

    :cond_6b
    goto :goto_80

    .line 787
    :cond_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfileForAppsInternal -error Invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :goto_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfileForAppsInternal - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return v0
.end method

.method private disableProfileForContainerInternal(II)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "callerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableProfileForContainerInternal - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicyInternal"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x0

    .line 667
    .local v0, "returnValue":Z
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 668
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForContainer(I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v2

    .line 670
    .local v2, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz v2, :cond_78

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 672
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 671
    invoke-virtual {v3, v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProfileForContainerInternal - eprofile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeContainerFromProfile(I)I

    move-result v3

    .line 676
    .local v3, "rowsUpdated":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableProfileForContainerInternal - rowsupdated - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-lez v3, :cond_78

    if-eqz v2, :cond_78

    .line 679
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 680
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v0

    .line 681
    if-eqz v0, :cond_78

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 682
    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v4

    if-nez v4, :cond_78

    .line 683
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V

    .line 687
    .end local v3    # "rowsUpdated":I
    :cond_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProfileForContainerInternal - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return v0
.end method

.method private enableProfileForAppsInternal(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableProfileForAppsInternal - start -  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EnterpriseBillingPolicyInternal"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v0, 0x0

    .line 571
    .local v0, "returnValue":Z
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v3

    .line 572
    .local v3, "isProfileAlreadyMapped":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableProfileForAppsInternal - isProfileAlreadyMapped -  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8b

    if-eqz p2, :cond_8b

    .line 576
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8b

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 577
    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 579
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 581
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_64

    .line 582
    goto :goto_55

    .line 585
    :cond_64
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 586
    invoke-virtual {v5, v4, p4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForApplication(Ljava/lang/String;I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v5

    .line 587
    .local v5, "profileForSameApplication":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-nez v5, :cond_89

    .line 588
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 589
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, v4, p1, p3, p4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addApplicationToProfile(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    .line 592
    .local v6, "rowsUpdated":I
    if-lez v6, :cond_89

    .line 593
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 594
    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->enableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v0

    .line 595
    if-eqz v0, :cond_89

    if-nez v3, :cond_89

    .line 597
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->activateSplitBillingIfFirstTime(Ljava/lang/String;)V

    .line 602
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "profileForSameApplication":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local v6    # "rowsUpdated":I
    :cond_89
    goto :goto_55

    :cond_8a
    goto :goto_a5

    .line 604
    :cond_8b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableProfileForAppsInternal - Error Invalid parameter- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :goto_a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableProfileForAppsInternal - end - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return v0
.end method

.method private enableProfileForContainerInternal(Ljava/lang/String;II)Z
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "callerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableProfileForContainerInternal - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicyInternal"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 443
    invoke-virtual {v0, p1, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 444
    const/4 v0, 0x0

    return v0

    .line 447
    :cond_2a
    const/4 v0, 0x0

    .line 449
    .local v0, "returnValue":Z
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v2

    .line 450
    .local v2, "isProfileAlreadyMapped":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableProfileForContainerInternal - isProfileAlreadyMapped -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 455
    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForContainer(I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v3

    .line 456
    .local v3, "profileForSameContainer":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-nez v3, :cond_af

    .line 457
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 458
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addContainerToProfile(ILjava/lang/String;I)I

    move-result v4

    .line 460
    .local v4, "rowsUpdated":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableProfileForContainerInternal - ebpHelper updated - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v5, -0x1

    if-le v4, v5, :cond_af

    .line 464
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 465
    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->enableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v0

    .line 466
    if-nez v0, :cond_94

    .line 467
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 468
    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeContainerFromProfile(I)I

    move-result v4

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableProfileForContainerInternal - reverted the entry - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableProfileForContainerInternal - ebEngine updated - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-eqz v0, :cond_af

    if-nez v2, :cond_af

    .line 478
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->activateSplitBillingIfFirstTime(Ljava/lang/String;)V

    .line 484
    .end local v4    # "rowsUpdated":I
    :cond_af
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableProfileForContainerInternal - end - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return v0
.end method

.method private getAdminUid(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAdminuid start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicyInternal"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1521
    .local v0, "userId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdminuid start, user ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/4 v2, 0x0

    .line 1524
    .local v2, "adminUid":I
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1526
    .local v3, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 1527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAdminUid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return v2
.end method

.method private getAdminUidForContainer(I)I
    .registers 8
    .param p1, "uid"    # I

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAdminUidForContainer start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingPolicyInternal"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1537
    .local v0, "userId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdminUidForContainer start, user ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const/4 v2, 0x0

    .line 1540
    .local v2, "adminUid":I
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1542
    .local v3, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 1544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAdminUidForContainer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    return v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    monitor-enter v0

    .line 137
    if-nez p0, :cond_8

    .line 138
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 139
    :cond_8
    :try_start_8
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    if-nez v1, :cond_13

    .line 140
    new-instance v1, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .line 142
    :cond_13
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ebpInternal - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2f

    monitor-exit v0

    return-object v1

    .line 136
    .end local p0    # "context":Landroid/content/Context;
    :catchall_2f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 1249
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1251
    :cond_7
    return-object v0
.end method

.method private getVpnProfileId(Ljava/lang/String;)I
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .line 2139
    const/4 v0, -0x1

    .line 2140
    .local v0, "profileId":I
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    .line 2141
    .local v1, "vpnConfig":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 2142
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_26

    .line 2143
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileId()I

    move-result v0

    .line 2144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVpnProfileId : vpnProfileId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnterpriseBillingPolicyInternal"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_26
    return v0
.end method

.method private isContainerAvailable(I)Z
    .registers 3
    .param p1, "containerId"    # I

    .line 1409
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_a

    :cond_4
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->checkContainerType(II)Z

    move-result v0

    :goto_a
    return v0
.end method

.method private setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "data"    # Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .param p2, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "profileName"    # Ljava/lang/String;

    .line 2128
    if-eqz p2, :cond_9

    .line 2129
    iget v0, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "admUid"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 2132
    :cond_9
    if-eqz p3, :cond_1d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 2133
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileID(Ljava/lang/String;)I

    move-result v0

    .line 2134
    .local v0, "profileId":I
    const-string/jumbo v1, "prfId"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 2136
    .end local v0    # "profileId":I
    :cond_1d
    return-void
.end method

.method private turn(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "turnOn"    # Z

    .line 883
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->turnOnProfile(Ljava/lang/String;Z)I

    move-result v0

    .line 884
    .local v0, "returnValue":I
    if-eqz p1, :cond_f

    .line 885
    if-lez v0, :cond_f

    .line 886
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->turnOn(Ljava/lang/String;)V

    .line 889
    :cond_f
    if-lez v0, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method


# virtual methods
.method public declared-synchronized activateProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "isActivate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1448
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateProfile - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const/4 v0, 0x0

    .line 1450
    .local v0, "returnValue":Z
    if-eqz p1, :cond_54

    if-eqz p2, :cond_54

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_54

    .line 1452
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1454
    .local v1, "callerUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isMappingExists(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1455
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->activateProfile(Ljava/lang/String;Z)Z

    move-result v2

    move v0, v2

    .line 1456
    const-string v2, "EnterpriseBillingPolicyInternal"

    const-string v3, "activateProfile - policy set"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    if-eqz v0, :cond_53

    .line 1458
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->profileActivationStatusChanged(Ljava/lang/String;)V

    .line 1461
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_53
    goto :goto_72

    .line 1462
    :cond_54
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 1464
    :goto_72
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_1 .. :try_end_88} :catchall_c9

    .line 1467
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c6

    .line 1468
    const/4 v2, 0x0

    .line 1469
    .local v2, "enable":I
    :try_start_8c
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_ENTERPRISE_BILLING"

    const-string v5, "API:activateProfile"

    invoke-direct {v3, v4, v1, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1470
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1471
    if-eqz p3, :cond_9d

    .line 1472
    const/4 v2, 0x1

    .line 1473
    :cond_9d
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "enb"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1474
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a9} :catch_aa
    .catchall {:try_start_8c .. :try_end_a9} :catchall_c9

    goto :goto_c6

    .line 1476
    .end local v2    # "enable":I
    :catch_aa
    move-exception v1

    .line 1477
    .local v1, "e":Ljava/lang/Exception;
    :try_start_ab
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_ab .. :try_end_c5} :catchall_c9

    goto :goto_c7

    .line 1478
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c6
    :goto_c6
    nop

    .line 1480
    :goto_c7
    monitor-exit p0

    return v0

    .line 1447
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    .end local p3    # "isActivate":Z
    :catchall_c9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    monitor-enter p0

    .line 147
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProfile -start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "returnValue":I
    if-eqz p1, :cond_79

    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 153
    .local v1, "callerUid":I
    if-eqz p2, :cond_62

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->isProfileNameValid()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 154
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->isProfileValid()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 155
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addProfile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getApnsFromProfile()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2, v1, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addProfile(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;II)I

    move-result v2

    move v0, v2

    goto :goto_78

    .line 160
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_62
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addProfile - failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v1    # "callerUid":I
    :goto_78
    goto :goto_97

    .line 163
    :cond_79
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 166
    :goto_97
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addProfile number of rows updated- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_1 .. :try_end_ad} :catchall_eb

    .line 169
    const/4 v1, 0x1

    if-lez v0, :cond_e4

    .line 170
    :try_start_b0
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "profileName":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_ENTERPRISE_BILLING"

    const-string v5, "API:createProfile"

    invoke-direct {v3, v4, v1, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 172
    invoke-direct {p0, v3, p1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c7} :catch_c8
    .catchall {:try_start_b0 .. :try_end_c7} :catchall_eb

    goto :goto_e4

    .line 176
    .end local v2    # "profileName":Ljava/lang/String;
    :catch_c8
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c9
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_c9 .. :try_end_e3} :catchall_eb

    goto :goto_e5

    .line 178
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e4
    :goto_e4
    nop

    .line 180
    :goto_e5
    if-lez v0, :cond_e8

    goto :goto_e9

    :cond_e8
    const/4 v1, 0x0

    :goto_e9
    monitor-exit p0

    return v1

    .line 146
    .end local v0    # "returnValue":I
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    :catchall_eb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addProfileForCurrentContainer(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .registers 10
    .param p1, "profile"    # Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1551
    if-eqz p1, :cond_29

    .line 1552
    :try_start_3
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProfileForCurrentContainer : start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getApnsFromProfile()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1552
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_29
    const/4 v0, 0x0

    .line 1558
    .local v0, "returnValue":I
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addProfileForCurrentContainer -uid before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid before"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1558
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1563
    .local v1, "uid":I
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1567
    .local v2, "identity":J
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addProfileForCurrentContainer -Binder.clearCallingIdentity(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addProfileForCurrentContainer -uid after : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid after"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1573
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_3 .. :try_end_ab} :catchall_fa

    .line 1578
    :try_start_ab
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getAdminUidForContainer(I)I

    move-result v4

    .line 1579
    .local v4, "adminUid":I
    if-eqz p1, :cond_d4

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->isProfileValid()Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 1580
    const-string v5, "EnterpriseBillingPolicyInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "admin uid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, p1, v4, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addProfileforCurrentcontainer(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;II)I

    move-result v5
    :try_end_d3
    .catchall {:try_start_ab .. :try_end_d3} :catchall_f5

    move v0, v5

    .line 1589
    .end local v4    # "adminUid":I
    :cond_d4
    :try_start_d4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1590
    nop

    .line 1592
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addProfileForCurrentContainer end : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_d4 .. :try_end_ee} :catchall_fa

    .line 1593
    if-lez v0, :cond_f2

    const/4 v4, 0x1

    goto :goto_f3

    :cond_f2
    const/4 v4, 0x0

    :goto_f3
    monitor-exit p0

    return v4

    .line 1589
    :catchall_f5
    move-exception v4

    :try_start_f6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1590
    throw v4
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_fa

    .line 1550
    .end local v0    # "returnValue":I
    .end local v1    # "uid":I
    .end local v2    # "identity":J
    .end local p1    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    :catchall_fa
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addVpnToBillingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "billingProfileName"    # Ljava/lang/String;
    .param p3, "vpnProfileName"    # Ljava/lang/String;
    .param p4, "pacakgeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1315
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVpnToBillingProfile - start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const/4 v0, 0x0

    .line 1317
    .local v0, "returnValue":Z
    const/4 v1, 0x0

    .line 1318
    .local v1, "isContainerKA":Z
    if-eqz p1, :cond_a7

    .line 1319
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1322
    .local v2, "containerId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move v9, v3

    .line 1324
    .local v9, "callerUid":I
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVpnToBillingProfile -callerUid- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", containerId- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    if-eqz p4, :cond_9e

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_59

    goto :goto_9e

    .line 1330
    :cond_59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9d

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1331
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, p2, v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1333
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, v2

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addVpnProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    .line 1334
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVpnToBillingProfile -return value- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    if-eqz v0, :cond_9c

    .line 1336
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->informMappingChanged(Ljava/lang/String;)V

    .line 1338
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_9c
    const/4 v1, 0x1

    .line 1341
    .end local v2    # "containerId":I
    .end local v9    # "callerUid":I
    :cond_9d
    goto :goto_bd

    .line 1327
    .restart local v2    # "containerId":I
    .restart local v9    # "callerUid":I
    :cond_9e
    :goto_9e
    const-string v3, "EnterpriseBillingPolicyInternal"

    const-string v4, "addVpnToBillingProfile - Invalid Vpn package"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_1 .. :try_end_a5} :catchall_11b

    .line 1328
    monitor-exit p0

    return v0

    .line 1342
    .end local v2    # "containerId":I
    .end local v9    # "callerUid":I
    :cond_a7
    :try_start_a7
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVpnToBillingProfile - Error invcalid parameter- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :goto_bd
    const-string v2, "EnterpriseBillingPolicyInternal"

    const-string v3, "addVpnToBillingProfile - end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_a7 .. :try_end_c4} :catchall_11b

    .line 1347
    const/4 v2, 0x1

    if-ne v0, v2, :cond_118

    .line 1348
    const/4 v3, 0x0

    .line 1349
    .local v3, "containerId":I
    :try_start_c8
    new-instance v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_ENTERPRISE_BILLING"

    const-string v6, "API:bindVpnToProfile"

    invoke-direct {v4, v5, v2, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1350
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1351
    if-ne v1, v2, :cond_db

    .line 1352
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v3, v2

    .line 1353
    :cond_db
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "cId"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1354
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string/jumbo v4, "vpnPrfId"

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getVpnProfileId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1355
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string/jumbo v4, "vpnPkgN"

    invoke-virtual {v2, v4, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_fb} :catch_fc
    .catchall {:try_start_c8 .. :try_end_fb} :catchall_11b

    goto :goto_118

    .line 1358
    .end local v3    # "containerId":I
    :catch_fc
    move-exception v2

    .line 1359
    .local v2, "e":Ljava/lang/Exception;
    :try_start_fd
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catchall {:try_start_fd .. :try_end_117} :catchall_11b

    goto :goto_119

    .line 1360
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_118
    :goto_118
    nop

    .line 1362
    :goto_119
    monitor-exit p0

    return v0

    .line 1314
    .end local v0    # "returnValue":Z
    .end local v1    # "isContainerKA":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "billingProfileName":Ljava/lang/String;
    .end local p3    # "vpnProfileName":Ljava/lang/String;
    .end local p4    # "pacakgeName":Ljava/lang/String;
    :catchall_11b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addVpnToBillingProfileForCurrentContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "billingProfileName"    # Ljava/lang/String;
    .param p2, "vpnProfileName"    # Ljava/lang/String;
    .param p3, "pacakgeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1805
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1806
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1808
    .local v1, "containerId":I
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVpnToBillingProfileForCurrentContainer - start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const/4 v8, 0x0

    .line 1810
    .local v8, "returnValue":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v9, v2

    .line 1811
    .local v9, "identity":J
    if-nez p3, :cond_48

    .line 1812
    const-string v2, "EnterpriseBillingPolicyInternal"

    const-string v3, "addVpnToBillingProfileForCurrentContainer - Invalid Vpn package"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_b1

    .line 1813
    monitor-exit p0

    return v8

    .line 1815
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_48
    :try_start_48
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getAdminUidForContainer(I)I

    move-result v7
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_b1

    .line 1817
    .local v7, "adminUid":I
    :try_start_4c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    if-eqz p3, :cond_90

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1818
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1819
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addVpnProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    move v8, v2

    .line 1820
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVpnToBillingProfileForCurrentContainer -return value- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    if-eqz v8, :cond_90

    .line 1822
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->informMappingChanged(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_4c .. :try_end_90} :catchall_ac

    .line 1829
    :cond_90
    :try_start_90
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1830
    nop

    .line 1831
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVpnToBillingProfileForCurrentContainer - end,returnValue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_90 .. :try_end_aa} :catchall_b1

    .line 1832
    monitor-exit p0

    return v8

    .line 1829
    :catchall_ac
    move-exception v2

    :try_start_ad
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1830
    throw v2
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_b1

    .line 1804
    .end local v0    # "uid":I
    .end local v1    # "containerId":I
    .end local v7    # "adminUid":I
    .end local v8    # "returnValue":Z
    .end local v9    # "identity":J
    .end local p1    # "billingProfileName":Ljava/lang/String;
    .end local p2    # "vpnProfileName":Ljava/lang/String;
    .end local p3    # "pacakgeName":Ljava/lang/String;
    :catchall_b1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allowRoaming(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1161
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string v1, "allowRoaming"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/4 v0, 0x0

    .line 1163
    .local v0, "returnValue":Z
    const/4 v1, 0x1

    if-eqz p1, :cond_32

    .line 1166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1168
    .local v2, "callerUid":I
    if-eqz p2, :cond_31

    .line 1169
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_31

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1170
    invoke-virtual {v3, p2, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1172
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->allowRoaming(Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_2a

    move v3, v1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    move v0, v3

    .line 1173
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->allowRoaming(Ljava/lang/String;)V

    .line 1175
    .end local v2    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_31
    goto :goto_50

    .line 1176
    :cond_32
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowRoaming- Error invalid parameter- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_90

    .line 1181
    :goto_50
    if-ne v0, v1, :cond_8d

    .line 1182
    const/4 v2, 0x0

    .line 1183
    .local v2, "enable":I
    :try_start_53
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_ENTERPRISE_BILLING"

    const-string v5, "API:allowRoaming"

    invoke-direct {v3, v4, v1, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1184
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1185
    if-eqz p3, :cond_64

    .line 1186
    const/4 v2, 0x1

    .line 1187
    :cond_64
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "enb"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1188
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_70} :catch_71
    .catchall {:try_start_53 .. :try_end_70} :catchall_90

    goto :goto_8d

    .line 1190
    .end local v2    # "enable":I
    :catch_71
    move-exception v1

    .line 1191
    .local v1, "e":Ljava/lang/Exception;
    :try_start_72
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_72 .. :try_end_8c} :catchall_90

    goto :goto_8e

    .line 1192
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8d
    :goto_8d
    nop

    .line 1194
    :goto_8e
    monitor-exit p0

    return v0

    .line 1160
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    .end local p3    # "allow":Z
    :catchall_90
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

    .line 1107
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string v1, "allowWifiFallback- start -"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    if-eqz p1, :cond_31

    .line 1111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1113
    .local v0, "callerUid":I
    if-eqz p2, :cond_30

    .line 1114
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1115
    invoke-virtual {v1, p2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1117
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->hasMappings(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1118
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->allowWifiFallback(Ljava/lang/String;Z)V

    .line 1119
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->allowOnWifi(Ljava/lang/String;)V

    .line 1122
    .end local v0    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_30
    goto :goto_4f

    .line 1123
    :cond_31
    const-string v0, "EnterpriseBillingPolicyInternal"

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

    .line 1126
    :goto_4f
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string v1, "allowWifiFallback- end -"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    .line 1127
    monitor-exit p0

    return-void

    .line 1106
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    .end local p3    # "allow":Z
    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deactivateEnterpriseBillingInternal(Ljava/lang/String;)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1256
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- deactivateEnterpriseBilling - profile  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getActiveApnForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    move-result-object v0

    .line 1258
    .local v0, "apn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getDefaultApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, "defaultType":Ljava/lang/String;
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- deactivateeEnterpriseBilling - defaultApnType -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", eapn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    if-eqz v1, :cond_4a

    if-eqz v0, :cond_4a

    .line 1264
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;Ljava/lang/String;)I

    .line 1268
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_4a
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeProfileMapping(Ljava/lang/String;)I

    move-result v2

    .line 1269
    .local v2, "removedProfileMapping":I
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v3

    .line 1271
    .local v3, "isDone":Z
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- deactivateEnterpriseBilling - removed profile mapping  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- deactivateEnterpriseBilling - isDone  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    if-eqz v3, :cond_8f

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 1276
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_91

    .line 1278
    :cond_8f
    monitor-exit p0

    return-void

    .line 1255
    .end local v0    # "apn":Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    .end local v1    # "defaultType":Ljava/lang/String;
    .end local v2    # "removedProfileMapping":I
    .end local v3    # "isDone":Z
    .end local p1    # "profileName":Ljava/lang/String;
    :catchall_91
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

    .line 801
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableProfile - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "returnValue":Z
    if-eqz p1, :cond_4b

    .line 806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 808
    .local v1, "callerUid":I
    if-eqz p2, :cond_4a

    .line 809
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 810
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 812
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeProfileMapping(Ljava/lang/String;)I

    move-result v2

    .line 813
    .local v2, "rowsUpdated":I
    if-lez v2, :cond_4a

    .line 814
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 815
    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 816
    if-eqz v0, :cond_4a

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 817
    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 818
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V

    .line 822
    .end local v1    # "callerUid":I
    .end local v2    # "rowsUpdated":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_4a
    goto :goto_69

    .line 823
    :cond_4b
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 826
    :goto_69
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_1 .. :try_end_7f} :catchall_81

    .line 827
    monitor-exit p0

    return v0

    .line 800
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_81
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableProfileForApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 10
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

    .line 697
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableProfileForApps - start -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "returnValue":Z
    const/4 v1, 0x0

    .line 701
    .local v1, "isContainerKA":Z
    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 702
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 704
    .local v2, "containerId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 707
    .local v3, "callerUid":I
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 708
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 709
    invoke-virtual {v4, p1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isContainerOperationAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 711
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForAppsInternal(Ljava/util/List;II)Z

    move-result v4

    move v0, v4

    .line 713
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_42
    const/4 v1, 0x1

    goto :goto_49

    .line 715
    :cond_44
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForAppsInternal(Ljava/util/List;II)Z

    move-result v4

    move v0, v4

    .line 719
    .end local v2    # "containerId":I
    .end local v3    # "callerUid":I
    :goto_49
    goto :goto_68

    .line 720
    :cond_4a
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProfileForApps - Error invalid parameter - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :goto_68
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProfileForApps - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_101

    .line 726
    const/4 v2, 0x1

    if-ne v0, v2, :cond_fe

    .line 727
    const/4 v3, 0x0

    .line 728
    .local v3, "containerId":I
    :try_start_82
    new-instance v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_ENTERPRISE_BILLING"

    const-string v6, "API:unbindAppsFromProfile"

    invoke-direct {v4, v5, v2, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 729
    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 730
    if-ne v1, v2, :cond_96

    .line 731
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v3, v2

    .line 732
    :cond_96
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "cId"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 733
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 734
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 735
    .local v2, "pkgList":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_ad
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d0

    .line 736
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 735
    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    .line 738
    .end local v4    # "i":I
    :cond_d0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string/jumbo v5, "pkgLst"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_e1} :catch_e2
    .catchall {:try_start_82 .. :try_end_e1} :catchall_101

    goto :goto_fe

    .line 741
    .end local v2    # "pkgList":Ljava/lang/StringBuffer;
    .end local v3    # "containerId":I
    :catch_e2
    move-exception v2

    .line 742
    .local v2, "e":Ljava/lang/Exception;
    :try_start_e3
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_e3 .. :try_end_fd} :catchall_101

    goto :goto_ff

    .line 743
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_fe
    :goto_fe
    nop

    .line 745
    :goto_ff
    monitor-exit p0

    return v0

    .line 696
    .end local v0    # "returnValue":Z
    .end local v1    # "isContainerKA":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_101
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableProfileForContainer(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 615
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string v1, "disableProfileForContainer - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "returnValue":Z
    const/4 v1, 0x0

    .line 619
    .local v1, "isContainerKA":Z
    if-eqz p1, :cond_45

    .line 621
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 624
    .local v2, "containerId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 627
    .local v3, "callerUid":I
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableProfileForContainer -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 630
    invoke-virtual {v4, p1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isContainerOperationAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 632
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForContainerInternal(II)Z

    move-result v4

    move v0, v4

    .line 634
    const/4 v1, 0x1

    .line 636
    .end local v2    # "containerId":I
    .end local v3    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_44
    goto :goto_5b

    .line 637
    :cond_45
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProfileForContainer - Error Invalid parameter - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_5b
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProfileForContainer - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_b5

    .line 644
    const/4 v2, 0x1

    if-ne v0, v2, :cond_b2

    .line 645
    const/4 v3, 0x0

    .line 646
    .local v3, "containerId":I
    :try_start_75
    new-instance v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_ENTERPRISE_BILLING"

    const-string v6, "API:unbindAppsFromProfile"

    invoke-direct {v4, v5, v2, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 647
    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 648
    if-ne v1, v2, :cond_89

    .line 649
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v3, v2

    .line 650
    :cond_89
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "cId"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 651
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_95} :catch_96
    .catchall {:try_start_75 .. :try_end_95} :catchall_b5

    goto :goto_b2

    .line 653
    .end local v3    # "containerId":I
    :catch_96
    move-exception v2

    .line 654
    .local v2, "e":Ljava/lang/Exception;
    :try_start_97
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_b5

    goto :goto_b3

    .line 655
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b2
    :goto_b2
    nop

    .line 657
    :goto_b3
    monitor-exit p0

    return v0

    .line 614
    .end local v0    # "returnValue":Z
    .end local v1    # "isContainerKA":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_b5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableProfileForCurrentContainer()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1661
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string v1, "disableProfileForCurrentContainer - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v0, 0x0

    .line 1664
    .local v0, "returnValue":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1665
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1666
    .local v2, "containerId":I
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableProfileForCurrentContainer - containerID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1671
    .local v3, "identity":J
    const-string v5, "EnterpriseBillingPolicyInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableProfileForCurrentContainer - Binder.clearCallingIdentity(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const-string v5, "EnterpriseBillingPolicyInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableProfileForCurrentContainer - uid after : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid after"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1675
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_10e

    .line 1681
    :try_start_7e
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v5
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_109

    if-eqz v5, :cond_ed

    .line 1684
    :try_start_84
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1685
    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForContainer(I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v5

    .line 1687
    .local v5, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz v5, :cond_ed

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1689
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v7

    .line 1688
    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 1690
    const-string v6, "EnterpriseBillingPolicyInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableProfileForCurrentContainer - eprofile - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1694
    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeContainerFromProfile(I)I

    move-result v6

    .line 1695
    .local v6, "rowsUpdated":I
    const-string v7, "EnterpriseBillingPolicyInternal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disableProfileForCurrentContainer - rowsupdated - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    if-lez v6, :cond_ed

    if-eqz v5, :cond_ed

    .line 1699
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 1701
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    .line 1700
    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v7

    move v0, v7

    .line 1702
    if-eqz v0, :cond_ed

    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v7

    if-nez v7, :cond_ed

    .line 1703
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_84 .. :try_end_ea} :catchall_eb

    goto :goto_ed

    .line 1711
    .end local v5    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local v6    # "rowsUpdated":I
    :catchall_eb
    move-exception v5

    goto :goto_10a

    :cond_ed
    :goto_ed
    :try_start_ed
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1712
    nop

    .line 1714
    const-string v5, "EnterpriseBillingPolicyInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableProfileForCurrentContainer - end - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_ed .. :try_end_107} :catchall_10e

    .line 1715
    monitor-exit p0

    return v0

    .line 1711
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :catchall_109
    move-exception v5

    :goto_10a
    :try_start_10a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1712
    throw v5
    :try_end_10e
    .catchall {:try_start_10a .. :try_end_10e} :catchall_10e

    .line 1660
    .end local v0    # "returnValue":Z
    .end local v1    # "uid":I
    .end local v2    # "containerId":I
    .end local v3    # "identity":J
    :catchall_10e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableProfileForApps(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 11
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

    .line 492
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

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

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "returnValue":Z
    const/4 v1, 0x0

    .line 496
    .local v1, "isContainerKA":Z
    if-eqz p1, :cond_77

    if-eqz p2, :cond_77

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_77

    if-eqz p3, :cond_77

    .line 497
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_77

    .line 498
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 500
    .local v2, "containerId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 502
    .local v3, "callerUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 503
    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isSomeOtherProfileActive(Ljava/lang/String;)Z

    move-result v4

    .line 504
    .local v4, "activeProfile":Z
    if-nez v4, :cond_76

    .line 505
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 506
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_76

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 507
    invoke-virtual {v5, p1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isContainerOperationAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 510
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 511
    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 515
    .local v5, "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_6b

    .line 516
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    goto :goto_6b

    .line 521
    :cond_68
    const/4 v0, 0x1

    .line 522
    const/4 v1, 0x1

    goto :goto_70

    .line 517
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_6b
    :goto_6b
    invoke-direct {p0, p2, p3, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForAppsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v6

    move v0, v6

    .line 524
    .end local v5    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_70
    goto :goto_76

    .line 526
    :cond_71
    invoke-direct {p0, p2, p3, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForAppsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v5

    move v0, v5

    .line 530
    .end local v2    # "containerId":I
    .end local v3    # "callerUid":I
    .end local v4    # "activeProfile":Z
    :cond_76
    :goto_76
    goto :goto_9d

    .line 531
    :cond_77
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableProfileForApps - Invalid parameter - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_9d
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableProfileForApps - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_1 .. :try_end_b3} :catchall_135

    .line 537
    const/4 v2, 0x1

    if-ne v0, v2, :cond_132

    .line 538
    const/4 v3, 0x0

    .line 539
    .local v3, "containerId":I
    :try_start_b7
    new-instance v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_ENTERPRISE_BILLING"

    const-string v6, "API:bindAppsToProfile"

    invoke-direct {v4, v5, v2, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 540
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 541
    if-ne v1, v2, :cond_ca

    .line 542
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v3, v2

    .line 543
    :cond_ca
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "cId"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 544
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 545
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 546
    .local v2, "pkgList":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_e1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_104

    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    add-int/lit8 v4, v4, 0x1

    goto :goto_e1

    .line 549
    .end local v4    # "i":I
    :cond_104
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string/jumbo v5, "pkgLst"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_115} :catch_116
    .catchall {:try_start_b7 .. :try_end_115} :catchall_135

    goto :goto_132

    .line 552
    .end local v2    # "pkgList":Ljava/lang/StringBuffer;
    .end local v3    # "containerId":I
    :catch_116
    move-exception v2

    .line 553
    .local v2, "e":Ljava/lang/Exception;
    :try_start_117
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catchall {:try_start_117 .. :try_end_131} :catchall_135

    goto :goto_133

    .line 554
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_132
    :goto_132
    nop

    .line 556
    :goto_133
    monitor-exit p0

    return v0

    .line 491
    .end local v0    # "returnValue":Z
    .end local v1    # "isContainerKA":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    .end local p3    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_135
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableProfileForContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 362
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableProfileForContainer - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "returnValue":Z
    const/4 v1, 0x0

    .line 366
    .local v1, "isContainerKA":Z
    if-eqz p1, :cond_c7

    if-eqz p2, :cond_c7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c7

    .line 368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 372
    .local v2, "callerUid":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 373
    .local v3, "containerId":I
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableProfileForContainer - containerId -  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableProfileForContainer - callerUid -  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_c6

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 378
    invoke-virtual {v4, p1, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isContainerOperationAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 381
    const/4 v1, 0x1

    .line 384
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 385
    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 386
    .local v4, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v5, "EnterpriseBillingPolicyInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - enableProfileForContainer - appMap - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v5, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_b9

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b9

    .line 391
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v5, v6

    .line 392
    const-string v6, "EnterpriseBillingPolicyInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableProfileForContainer - disable perApp for Container -  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForAppsInternal(Ljava/util/List;II)Z

    .line 403
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_b9
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 404
    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isSomeOtherProfileActive(Ljava/lang/String;)Z

    move-result v6

    .line 405
    .local v6, "activeProfile":Z
    if-nez v6, :cond_c6

    .line 406
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForContainerInternal(Ljava/lang/String;II)Z

    move-result v7

    move v0, v7

    .line 410
    .end local v2    # "callerUid":I
    .end local v3    # "containerId":I
    .end local v4    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "activeProfile":Z
    :cond_c6
    goto :goto_e5

    .line 411
    :cond_c7
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableProfileForContainer - Invalid parameter - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_e5
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableProfileForContainer - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_1 .. :try_end_fb} :catchall_148

    .line 418
    const/4 v2, 0x1

    if-ne v0, v2, :cond_145

    .line 419
    const/4 v3, 0x0

    .line 420
    .restart local v3    # "containerId":I
    :try_start_ff
    new-instance v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_ENTERPRISE_BILLING"

    const-string v6, "API:bindAppsToProfile"

    invoke-direct {v4, v5, v2, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 421
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 422
    if-ne v1, v2, :cond_112

    .line 423
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v3, v2

    .line 424
    :cond_112
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "cId"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 426
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string/jumbo v4, "pkgLst"

    const-string v5, "Entire_Container"

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_128} :catch_129
    .catchall {:try_start_ff .. :try_end_128} :catchall_148

    goto :goto_145

    .line 429
    .end local v3    # "containerId":I
    :catch_129
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/Exception;
    :try_start_12a
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_12a .. :try_end_144} :catchall_148

    goto :goto_146

    .line 431
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_145
    :goto_145
    nop

    .line 433
    :goto_146
    monitor-exit p0

    return v0

    .line 361
    .end local v0    # "returnValue":Z
    .end local v1    # "isContainerKA":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_148
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableProfileForCurrentContainer(Ljava/lang/String;)Z
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1597
    const/4 v0, 0x0

    .line 1598
    .local v0, "returnValue":Z
    :try_start_2
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableProfileForCurrentContainer - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1600
    .local v1, "uid":I
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1603
    .local v2, "identity":J
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableProfileForCurrentContainer - Binder.clearCallingIdentity(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableProfileForCurrentContainer - uid after : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid after"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1607
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_2 .. :try_end_73} :catchall_148

    .line 1614
    :try_start_73
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getAdminUidForContainer(I)I

    move-result v4

    .line 1615
    .local v4, "adminUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1616
    .local v5, "containerId":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_143

    if-nez v6, :cond_127

    :try_start_81
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_127

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_127

    .line 1618
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1619
    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForContainer(I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v6

    .line 1620
    .local v6, "profileForSameContainer":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-nez v6, :cond_127

    .line 1622
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAvailable(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_127

    .line 1624
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v7, v5, p1, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addContainerToProfile(ILjava/lang/String;I)I

    move-result v7

    .line 1626
    .local v7, "rowsUpdated":I
    const-string v8, "EnterpriseBillingPolicyInternal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enableProfileForCurrentContainer - ebpHelper updated - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v8, -0x1

    if-le v7, v8, :cond_127

    .line 1630
    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->activateProfile(Ljava/lang/String;Z)Z

    move-result v8

    .line 1631
    .local v8, "activate":Z
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 1632
    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->enableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v9

    move v0, v9

    .line 1633
    const-string v9, "EnterpriseBillingPolicyInternal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enableProfileForCurrentContainer - some ERROR occurred - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    if-nez v0, :cond_10e

    .line 1637
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1638
    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeContainerFromProfile(I)I

    move-result v9

    move v7, v9

    .line 1639
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->activateProfile(Ljava/lang/String;Z)Z

    move-result v9

    .line 1640
    .local v9, "deactivate":Z
    const-string v10, "EnterpriseBillingPolicyInternal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enableProfileForCurrentContainer - reverted the entry - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    .end local v9    # "deactivate":Z
    :cond_10e
    const-string v9, "EnterpriseBillingPolicyInternal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enableProfileForCurrentContainer - ebEngine updated - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_81 .. :try_end_124} :catchall_125

    goto :goto_127

    .line 1652
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    .end local v6    # "profileForSameContainer":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local v7    # "rowsUpdated":I
    .end local v8    # "activate":Z
    :catchall_125
    move-exception v4

    goto :goto_144

    :cond_127
    :goto_127
    :try_start_127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1653
    nop

    .line 1655
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableProfileForCurrentContainer - end - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catchall {:try_start_127 .. :try_end_141} :catchall_148

    .line 1656
    monitor-exit p0

    return v0

    .line 1652
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :catchall_143
    move-exception v4

    :goto_144
    :try_start_144
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1653
    throw v4
    :try_end_148
    .catchall {:try_start_144 .. :try_end_148} :catchall_148

    .line 1596
    .end local v0    # "returnValue":Z
    .end local v1    # "uid":I
    .end local v2    # "identity":J
    .end local p1    # "profileName":Ljava/lang/String;
    :catchall_148
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAdminPackageName(I)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I

    .line 2150
    const/4 v0, 0x0

    .line 2152
    .local v0, "pacakageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAdminPackageName : pacakageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseBillingPolicyInternal"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    return-object v0
.end method

.method public declared-synchronized getApplicationsForConnectionInternal(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    monitor-enter p0

    .line 2089
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getApplicationsForConnectionInternal - start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2093
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v1, :cond_2a

    .line 2094
    const-string v1, "EnterpriseBillingPolicyInternal"

    const-string v2, " - EnterpriseBillingEngine not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_6a

    .line 2095
    monitor-exit p0

    return-object v0

    .line 2097
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_2a
    if-eqz p1, :cond_3a

    :try_start_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    .line 2098
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getApplicationsForConnection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    goto :goto_51

    .line 2100
    :cond_3a
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationsForConnectionInternal Invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :goto_51
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationsForConnectionInternal - end : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_2c .. :try_end_68} :catchall_6a

    .line 2105
    monitor-exit p0

    return-object v0

    .line 2088
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p1    # "eapnType":Ljava/lang/String;
    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getApplicationsUsingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 9
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

    .line 1056
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getApplicationsUsingProfile - start -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v0, 0x0

    .line 1061
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-eqz p1, :cond_72

    if-eqz p2, :cond_72

    .line 1063
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_72

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1065
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1064
    invoke-virtual {v2, p2, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1068
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1069
    .local v2, "containerId":I
    const/4 v3, 0x0

    .line 1070
    .local v3, "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1071
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1072
    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 1073
    if-eqz v3, :cond_57

    .line 1074
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1075
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 1076
    const-string v4, "*"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_57
    if-nez v0, :cond_72

    .line 1080
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 1081
    .local v4, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_72

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_72

    .line 1082
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v0, v5

    .line 1086
    .end local v2    # "containerId":I
    .end local v3    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_72
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getApplicationsUsingProfile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_cd

    .line 1089
    if-eqz v0, :cond_ca

    :try_start_8b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ca

    .line 1090
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1091
    .restart local v2    # "containerId":I
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_ENTERPRISE_BILLING"

    const-string v5, "API:getAppsBoundToProfile"

    invoke-direct {v3, v4, v1, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1092
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1093
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "cId"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1094
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_ad} :catch_ae
    .catchall {:try_start_8b .. :try_end_ad} :catchall_cd

    goto :goto_ca

    .line 1096
    .end local v2    # "containerId":I
    :catch_ae
    move-exception v1

    .line 1097
    .local v1, "e":Ljava/lang/Exception;
    :try_start_af
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_af .. :try_end_c9} :catchall_cd

    goto :goto_cb

    .line 1098
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ca
    :goto_ca
    nop

    .line 1100
    :goto_cb
    monitor-exit p0

    return-object v0

    .line 1055
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_cd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAvailableProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
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

    monitor-enter p0

    .line 1283
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string/jumbo v1, "getAvailableProfiles - start "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "availableProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_20

    .line 1288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1290
    .local v1, "callerUid":I
    const-string v2, "EnterpriseBillingPolicyInternal"

    const-string/jumbo v3, "getAvailableProfiles - start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAvailableProfiles(I)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 1292
    .end local v1    # "callerUid":I
    goto :goto_37

    .line 1293
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_20
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvailableProfiles - Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :goto_37
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvailableProfiles - end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_8b

    .line 1298
    if-eqz v0, :cond_88

    :try_start_50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_88

    .line 1299
    new-instance v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_ENTERPRISE_BILLING"

    const/4 v3, 0x1

    const-string v4, "API:getAvailableProfiles"

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1300
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1301
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6b} :catch_6c
    .catchall {:try_start_50 .. :try_end_6b} :catchall_8b

    goto :goto_88

    .line 1303
    :catch_6c
    move-exception v1

    .line 1304
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6d
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_6d .. :try_end_87} :catchall_8b

    goto :goto_89

    .line 1305
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_88
    :goto_88
    nop

    .line 1307
    :goto_89
    monitor-exit p0

    return-object v0

    .line 1282
    .end local v0    # "availableProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAvailableProfilesForCaller()Ljava/util/List;
    .registers 8
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

    monitor-enter p0

    .line 1779
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string/jumbo v1, "getAvailableProfilesForCaller - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/4 v0, 0x0

    .line 1781
    .local v0, "availableProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1782
    .local v1, "uid":I
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1784
    .local v2, "identity":J
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAvailableProfilesForCaller - Binder.clearCallingIdentity(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAvailableProfilesForCaller - uid after : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid after"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1788
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_90

    .line 1793
    :try_start_67
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAvailableProfiles(I)Ljava/util/List;

    move-result-object v4
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_8b

    move-object v0, v4

    .line 1797
    :try_start_6e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1798
    nop

    .line 1799
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAvailableProfilesForCaller - end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6e .. :try_end_89} :catchall_90

    .line 1800
    monitor-exit p0

    return-object v0

    .line 1797
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :catchall_8b
    move-exception v4

    :try_start_8c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1798
    throw v4
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_90

    .line 1778
    .end local v0    # "availableProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "uid":I
    .end local v2    # "identity":J
    :catchall_90
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContainersForConnectionInternal(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    monitor-enter p0

    .line 2073
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getContainersUsingProfileInternal - start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2d

    .line 2077
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getContainersForConnection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    goto :goto_44

    .line 2079
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_2d
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContainersUsingProfileInternal Invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :goto_44
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContainersUsingProfileInternal - end : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 2084
    monitor-exit p0

    return-object v0

    .line 2072
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p1    # "eapnType":Ljava/lang/String;
    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 1029
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string/jumbo v1, "getContainersUsingProfile - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v0, 0x0

    .line 1031
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_28

    .line 1034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1036
    .local v1, "callerUid":I
    if-eqz p2, :cond_27

    .line 1037
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1038
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1040
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 1042
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_27
    goto :goto_47

    .line 1043
    :cond_28
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 1046
    :goto_47
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContainersUsingProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_60

    .line 1047
    monitor-exit p0

    return-object v0

    .line 1028
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProfileDetails(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 326
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileDetails - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz p1, :cond_37

    .line 331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 334
    .local v1, "callerUid":I
    if-eqz p2, :cond_36

    .line 335
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_36

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 336
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 338
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v2

    move-object v0, v2

    .line 340
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_36
    goto :goto_56

    .line 341
    :cond_37
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 344
    :goto_56
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileDetails - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_a3

    .line 347
    if-eqz v0, :cond_a0

    .line 348
    :try_start_6f
    new-instance v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_ENTERPRISE_BILLING"

    const/4 v3, 0x1

    const-string v4, "API:getProfileDetails"

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 349
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_83} :catch_84
    .catchall {:try_start_6f .. :try_end_83} :catchall_a3

    goto :goto_a0

    .line 352
    :catch_84
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    :try_start_85
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_85 .. :try_end_9f} :catchall_a3

    goto :goto_a1

    .line 354
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a0
    :goto_a0
    nop

    .line 356
    :goto_a1
    monitor-exit p0

    return-object v0

    .line 325
    .end local v0    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_a3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProfileForApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 990
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileForApplication - start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x0

    .line 993
    .local v0, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz p1, :cond_2d

    .line 994
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1000
    .local v1, "containerId":I
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 1001
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForApplication(Ljava/lang/String;I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v2

    move-object v0, v2

    .line 1004
    .end local v1    # "containerId":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_2c
    goto :goto_4c

    .line 1005
    :cond_2d
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 1008
    :goto_4c
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForApplication - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_a2

    .line 1011
    if-eqz v0, :cond_9f

    .line 1012
    :try_start_65
    new-instance v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_ENTERPRISE_BILLING"

    const/4 v3, 0x1

    const-string v4, "API:getBoundedProfile"

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1013
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1014
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string/jumbo v2, "pkgLst"

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_82} :catch_83
    .catchall {:try_start_65 .. :try_end_82} :catchall_a2

    goto :goto_9f

    .line 1017
    :catch_83
    move-exception v1

    .line 1018
    .local v1, "e":Ljava/lang/Exception;
    :try_start_84
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_84 .. :try_end_9e} :catchall_a2

    goto :goto_a0

    .line 1019
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9f
    :goto_9f
    nop

    .line 1021
    :goto_a0
    monitor-exit p0

    return-object v0

    .line 989
    .end local v0    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_a2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProfileForContainer(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 951
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string/jumbo v1, "getProfileForContainer - start "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v0, 0x0

    .line 953
    .local v0, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz p1, :cond_24

    .line 957
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 959
    .local v1, "containerId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 960
    invoke-virtual {v2, p1, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isContainerOperationAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 962
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForContainer(I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v2

    move-object v0, v2

    .line 964
    .end local v1    # "containerId":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_23
    goto :goto_3b

    .line 965
    :cond_24
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForContainer - Error invalid parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_3b
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForContainer - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_92

    .line 971
    if-eqz v0, :cond_8f

    .line 972
    :try_start_54
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 973
    .restart local v1    # "containerId":I
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_ENTERPRISE_BILLING"

    const/4 v4, 0x1

    const-string v5, "API:getBoundedProfile"

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 974
    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "cId"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 976
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_72} :catch_73
    .catchall {:try_start_54 .. :try_end_72} :catchall_92

    goto :goto_8f

    .line 978
    .end local v1    # "containerId":I
    :catch_73
    move-exception v1

    .line 979
    .local v1, "e":Ljava/lang/Exception;
    :try_start_74
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_74 .. :try_end_8e} :catchall_92

    goto :goto_90

    .line 980
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8f
    :goto_8f
    nop

    .line 982
    :goto_90
    monitor-exit p0

    return-object v0

    .line 950
    .end local v0    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getVpnsBoundToProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
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

    .line 1434
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVpnProfilesforBillingProfile - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v0, 0x0

    .line 1437
    .local v0, "vpnProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    .line 1438
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getVpnProfilesforBillingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    goto :goto_4a

    .line 1440
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_2b
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 1442
    :goto_4a
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVpnProfilesforBillingProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    .line 1443
    monitor-exit p0

    return-object v0

    .line 1433
    .end local v0    # "vpnProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isDualSimSupported()Z
    .registers 2

    .line 133
    sget-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->dualSimSupport:Z

    return v0
.end method

.method public declared-synchronized isEnterpriseAPNInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    monitor-enter p0

    .line 2109
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnterpriseAPNInternal - Start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const/4 v0, 0x0

    .line 2111
    .local v0, "returnValue":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_8e

    .line 2113
    .local v1, "token":J
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2f} :catch_55
    .catchall {:try_start_2d .. :try_end_2f} :catchall_53

    if-eqz v3, :cond_4f

    :try_start_31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 2114
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 2115
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 2116
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isEnterpriseAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_4d
    .catchall {:try_start_31 .. :try_end_49} :catchall_4b

    move v0, v3

    goto :goto_4f

    .line 2121
    :catchall_4b
    move-exception v3

    goto :goto_8a

    .line 2118
    :catch_4d
    move-exception v3

    goto :goto_56

    .line 2121
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_8e

    .line 2122
    goto :goto_71

    .line 2121
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :catchall_53
    move-exception v3

    goto :goto_8a

    .line 2118
    :catch_55
    move-exception v3

    .line 2119
    .local v3, "e":Ljava/lang/Exception;
    :goto_56
    :try_start_56
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isEnterpriseAPN - failed -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_56 .. :try_end_6d} :catchall_53

    .line 2121
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_6d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2122
    nop

    .line 2123
    :goto_71
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEnterpriseAPN - End: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_6d .. :try_end_88} :catchall_8e

    .line 2124
    monitor-exit p0

    return v0

    .line 2121
    :goto_8a
    :try_start_8a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2122
    throw v3
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8e

    .line 2108
    .end local v0    # "returnValue":Z
    .end local v1    # "token":J
    .end local p1    # "apnName":Ljava/lang/String;
    .end local p2    # "mcc":Ljava/lang/String;
    .end local p3    # "mnc":Ljava/lang/String;
    :catchall_8e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isProfileActive(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1485
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActive - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const/4 v0, 0x0

    .line 1487
    .local v0, "returnValue":Z
    if-eqz p1, :cond_37

    if-eqz p2, :cond_37

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    .line 1490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1492
    .local v1, "callerUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1493
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 1495
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_36
    goto :goto_56

    .line 1496
    :cond_37
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 1498
    :goto_56
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActive - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_a3

    .line 1501
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a0

    .line 1502
    :try_start_70
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_ENTERPRISE_BILLING"

    const-string v4, "API:isProfileActive"

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1503
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1504
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_83} :catch_84
    .catchall {:try_start_70 .. :try_end_83} :catchall_a3

    goto :goto_a0

    .line 1506
    :catch_84
    move-exception v1

    .line 1507
    .local v1, "e":Ljava/lang/Exception;
    :try_start_85
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_85 .. :try_end_9f} :catchall_a3

    goto :goto_a1

    .line 1508
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a0
    :goto_a0
    nop

    .line 1510
    :goto_a1
    monitor-exit p0

    return v0

    .line 1484
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_a3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isProfileActiveByCaller(Ljava/lang/String;)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1753
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActiveByCaller - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/4 v0, 0x0

    .line 1755
    .local v0, "returnValue":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1756
    .local v1, "uid":I
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1758
    .local v2, "identity":J
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isProfileActiveByCaller - Binder.clearCallingIdentity(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isProfileActiveByCaller - uid after : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid after"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1762
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_1 .. :try_end_76} :catchall_b2

    .line 1768
    if-eqz p1, :cond_95

    :try_start_78
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_95

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileMapped(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 1769
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v4
    :try_end_8e
    .catchall {:try_start_78 .. :try_end_8e} :catchall_90

    move v0, v4

    goto :goto_95

    .line 1772
    :catchall_90
    move-exception v4

    :try_start_91
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1773
    throw v4

    .line 1772
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_95
    :goto_95
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1773
    nop

    .line 1774
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isProfileActiveByCaller - end - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_91 .. :try_end_b0} :catchall_b2

    .line 1775
    monitor-exit p0

    return v0

    .line 1752
    .end local v0    # "returnValue":Z
    .end local v1    # "uid":I
    .end local v2    # "identity":J
    .end local p1    # "profileName":Ljava/lang/String;
    :catchall_b2
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 835
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileEnabled - start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "returnValue":Z
    if-eqz p1, :cond_37

    .line 839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 841
    .local v1, "callerUid":I
    if-eqz p2, :cond_36

    .line 842
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_36

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 843
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 845
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->hasMappings(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 847
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_36
    goto :goto_56

    .line 848
    :cond_37
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 851
    :goto_56
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileEnabled - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6f

    .line 852
    monitor-exit p0

    return v0

    .line 834
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_6f
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

    .line 924
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileTurnedOn - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "returnValue":Z
    if-eqz p1, :cond_37

    .line 929
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 932
    .local v1, "callerUid":I
    if-eqz p2, :cond_36

    .line 933
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_36

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 934
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 936
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileTurnedOn(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 938
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_36
    goto :goto_56

    .line 939
    :cond_37
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 942
    :goto_56
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileTurnedOn - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6f

    .line 943
    monitor-exit p0

    return v0

    .line 923
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRoamingAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1202
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiRoamingAllowed - start -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, "returnValue":Z
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    if-nez v1, :cond_26

    .line 1205
    const-string v1, "EnterpriseBillingPolicyInternal"

    const-string v2, " - EnterpriseBillingStorageHelper not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_b0

    .line 1206
    monitor-exit p0

    return v0

    .line 1208
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_26
    if-eqz p1, :cond_44

    .line 1211
    :try_start_28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1213
    .local v1, "callerUid":I
    if-eqz p2, :cond_43

    .line 1214
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_43

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1215
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1217
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isRoamingAllowed(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 1219
    .end local v1    # "callerUid":I
    :cond_43
    goto :goto_63

    .line 1220
    :cond_44
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 1223
    :goto_63
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiRoamingAllowed - end -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_28 .. :try_end_7a} :catchall_b0

    .line 1226
    const/4 v1, 0x1

    if-ne v0, v1, :cond_ad

    .line 1227
    :try_start_7d
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_ENTERPRISE_BILLING"

    const-string v4, "API:isRoamingAllowed"

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1228
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1229
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_90} :catch_91
    .catchall {:try_start_7d .. :try_end_90} :catchall_b0

    goto :goto_ad

    .line 1231
    :catch_91
    move-exception v1

    .line 1232
    .local v1, "e":Ljava/lang/Exception;
    :try_start_92
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_92 .. :try_end_ac} :catchall_b0

    goto :goto_ae

    .line 1233
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ad
    :goto_ad
    nop

    .line 1235
    :goto_ae
    monitor-exit p0

    return v0

    .line 1201
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_b0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRoamingAllowedInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "eapnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 2015
    const/4 v0, 0x0

    .line 2016
    .local v0, "returnValue":Z
    :try_start_2
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRoamingAllowedInternal - start - eapn - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v1, :cond_26

    .line 2018
    const-string v1, "EnterpriseBillingPolicyInternal"

    const-string v2, " - EnterpriseBillingEngine not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_64

    .line 2019
    monitor-exit p0

    return v0

    .line 2021
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_26
    if-eqz p1, :cond_36

    :try_start_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_36

    .line 2022
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isRoamingAllowed(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_4c

    .line 2024
    :cond_36
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isRoamingAllowedInternal - Invalid eapnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :goto_4c
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isRoamingAllowed - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_28 .. :try_end_62} :catchall_64

    .line 2027
    monitor-exit p0

    return v0

    .line 2014
    .end local v0    # "returnValue":Z
    .end local p1    # "eapnType":Ljava/lang/String;
    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isSplitBillingEnabledInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "eapnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 2031
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - isSplitBillingEnabledInternal - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const/4 v0, 0x0

    .line 2033
    .local v0, "returnValue":Z
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v1, :cond_25

    .line 2034
    const-string v1, "EnterpriseBillingPolicyInternal"

    const-string v2, " - EnterpriseBillingEngine not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_79

    .line 2035
    monitor-exit p0

    return v0

    .line 2039
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_25
    if-eqz p1, :cond_4b

    :try_start_27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 2040
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isPrimarySimDataActive()Z

    move-result v1

    if-nez v1, :cond_43

    .line 2041
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isDualSimSupported()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2042
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isSplitBillingEnabled(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_61

    .line 2045
    :cond_43
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isSplitBillingEnabled(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_61

    .line 2048
    :cond_4b
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isSplitBillingEnabledInternal - Invalid eapnType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_61
    :goto_61
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isSplitBillingEnabledInternal - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_27 .. :try_end_77} :catchall_79

    .line 2051
    monitor-exit p0

    return v0

    .line 2030
    .end local v0    # "returnValue":Z
    .end local p1    # "eapnType":Ljava/lang/String;
    :catchall_79
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isTurnedOnInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "eapnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 2055
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - isTurnedOnInternal - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const/4 v0, 0x0

    .line 2057
    .local v0, "returnValue":Z
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v1, :cond_25

    .line 2058
    const-string v1, "EnterpriseBillingPolicyInternal"

    const-string v2, " - EnterpriseBillingEngine not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_63

    .line 2059
    monitor-exit p0

    return v0

    .line 2061
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_25
    if-eqz p1, :cond_35

    :try_start_27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_35

    .line 2062
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isTurnedOn(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_4b

    .line 2065
    :cond_35
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isTurnedOnInternal - Error Invalid eapnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :goto_4b
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isTurnedOnInternal - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_63

    .line 2068
    monitor-exit p0

    return v0

    .line 2054
    .end local v0    # "returnValue":Z
    .end local p1    # "eapnType":Ljava/lang/String;
    :catchall_63
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

    .line 1134
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiFallbackAllowed - start -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v0, 0x0

    .line 1136
    .local v0, "returnValue":Z
    if-eqz p1, :cond_37

    .line 1139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1142
    .local v1, "callerUid":I
    if-eqz p2, :cond_36

    .line 1143
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_36

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1144
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1146
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isWifiFallbackAllowed(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 1148
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_36
    goto :goto_56

    .line 1149
    :cond_37
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 1152
    :goto_56
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiFallbackAllowed - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6f

    .line 1153
    monitor-exit p0

    return v0

    .line 1133
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isWifiFallbackAllowedInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "eapnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 1997
    const/4 v0, 0x0

    .line 1998
    .local v0, "returnValue":Z
    :try_start_2
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiFallbackAllowedInternal - start - eapn - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v1, :cond_26

    .line 2000
    const-string v1, "EnterpriseBillingPolicyInternal"

    const-string v2, " - EnterpriseBillingEngine not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_65

    .line 2001
    monitor-exit p0

    return v0

    .line 2003
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_26
    if-eqz p1, :cond_36

    :try_start_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_36

    .line 2004
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isWifiFallbackAllowed(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_4d

    .line 2007
    :cond_36
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiFallbackAllowedInternal - Error Invalid eapnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :goto_4d
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - isWifiFallbackAllowedInternal - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_28 .. :try_end_63} :catchall_65

    .line 2011
    monitor-exit p0

    return v0

    .line 1996
    .end local v0    # "returnValue":Z
    .end local p1    # "eapnType":Ljava/lang/String;
    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onAPNChanged()V
    .registers 2

    monitor-enter p0

    .line 1880
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleAllprofiles()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1881
    monitor-exit p0

    return-void

    .line 1879
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBootCompleted(Landroid/content/Intent;)V
    .registers 5
    .param p1, "paramIntent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 1870
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootCompleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1874
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string v1, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleAllprofiles()V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 1877
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_34
    monitor-exit p0

    return-void

    .line 1869
    .end local p1    # "paramIntent":Landroid/content/Intent;
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onContainerAdminChanged(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 1924
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enterprise.container.admin.changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1925
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeContainerAdmin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1929
    .local v0, "uid":I
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeContainerOwnerReceiver - uid value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v1

    .line 1933
    .local v1, "profiles":[Ljava/lang/String;
    if-eqz v1, :cond_92

    .line 1934
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- changeContainerOwnerReceiver - profiles not null  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    array-length v2, v1

    const/4 v3, 0x0

    :goto_65
    if-ge v3, v2, :cond_92

    aget-object v4, v1, v3

    .line 1936
    .local v4, "profileName":Ljava/lang/String;
    const-string v5, "EnterpriseBillingPolicyInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- changeContainerOwnerReceiver - profileName  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForAnAdmin(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 1938
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateEnterpriseBillingInternal(Ljava/lang/String;)V

    .line 1939
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeProfile(Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_94

    .line 1935
    .end local v4    # "profileName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 1944
    .end local v0    # "uid":I
    .end local v1    # "profiles":[Ljava/lang/String;
    :cond_92
    monitor-exit p0

    return-void

    .line 1923
    .end local p1    # "intent":Landroid/content/Intent;
    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onContainerModification(Landroid/content/Intent;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 1947
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerModification - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1949
    .local v0, "mContainerId":I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_13f

    const/16 v1, 0x5f

    if-ge v0, v1, :cond_13f

    .line 1950
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerModificationReceiver - onreceive - containerId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForContainer(I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v1

    .line 1952
    .local v1, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    if-eqz v1, :cond_c1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->hasMappings(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 1953
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerModificationReceiver - onreceive - removing - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeContainerFromProfile(I)I

    move-result v2

    .line 1955
    .local v2, "value":I
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerModificationReceiver - onreceive - removed - ebphelper - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    if-lez v2, :cond_ba

    .line 1957
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v3

    .line 1958
    .local v3, "returnValue":Z
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerModificationReceiver - onreceive - removed - ebpengine- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    if-eqz v3, :cond_ba

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v4

    if-nez v4, :cond_ba

    .line 1960
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V

    .line 1963
    .end local v3    # "returnValue":Z
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_ba
    const-string v3, "EnterpriseBillingPolicyInternal"

    const-string v4, "containerModificationReceiver - onreceive - removed - "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    .end local v2    # "value":I
    :cond_c1
    const-string v2, "EnterpriseBillingPolicyInternal"

    const-string v3, "containerModificationReceiver - onreceive - perApp container check start - "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getPerAppsForContainer(I)Ljava/util/List;

    move-result-object v2

    .line 1967
    .local v2, "perAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_13f

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13f

    .line 1968
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerModificationReceiver - onreceive - perApp - removing container  - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1972
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1973
    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForApplication(Ljava/lang/String;I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v5

    .line 1975
    .local v5, "profile1":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, v4, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeApplicationFromProfile(Ljava/lang/String;I)I

    move-result v6

    .line 1977
    .local v6, "value":I
    if-lez v6, :cond_13e

    if-eqz v5, :cond_13e

    .line 1978
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 1980
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    .line 1979
    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v7

    .line 1981
    .local v7, "returnValue":Z
    const-string v8, "EnterpriseBillingPolicyInternal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerModificationReceiver - onreceive -perApp - removed - ebengine- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    if-eqz v7, :cond_13e

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1986
    invoke-virtual {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v8

    if-nez v8, :cond_13e

    .line 1987
    nop

    .line 1988
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    .line 1987
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V
    :try_end_13e
    .catchall {:try_start_1 .. :try_end_13e} :catchall_141

    .line 1991
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "profile1":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local v6    # "value":I
    .end local v7    # "returnValue":Z
    :cond_13e
    goto :goto_f0

    .line 1994
    .end local v1    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .end local v2    # "perAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13f
    monitor-exit p0

    return-void

    .line 1946
    .end local v0    # "mContainerId":I
    .end local p1    # "intent":Landroid/content/Intent;
    :catchall_141
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDataSimChange()V
    .registers 2

    monitor-enter p0

    .line 1884
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleAllprofiles()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1885
    monitor-exit p0

    return-void

    .line 1883
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPackageModified(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 1888
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageModification -  start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1890
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_d6

    .line 1891
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1892
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1893
    .local v1, "uID":I
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/4 v2, -0x1

    .line 1895
    .local v2, "userId":I
    if-lez v1, :cond_51

    .line 1896
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move v2, v3

    .line 1901
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_51
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed Packageuid is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForApplication(Ljava/lang/String;I)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v3

    .line 1911
    .local v3, "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageModificationReceiver - onreceive - personal application - profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    if-eqz v3, :cond_d6

    .line 1914
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 1915
    :cond_b6
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageModificationReceiver - onreceive - pacakage modified"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->informMappingChanged(Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_1 .. :try_end_d6} :catchall_d8

    .line 1921
    .end local v1    # "uID":I
    .end local v2    # "userId":I
    .end local v3    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    :cond_d6
    monitor-exit p0

    return-void

    .line 1887
    .end local v0    # "packageName":Ljava/lang/String;
    .end local p1    # "intent":Landroid/content/Intent;
    :catchall_d8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    monitor-enter p0

    .line 1863
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1864
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleAllprofiles()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 1866
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_c
    monitor-exit p0

    return-void

    .line 1862
    .end local p1    # "serviceState":Landroid/telephony/ServiceState;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "returnValue":I
    :try_start_2
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfile-start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz p1, :cond_3c

    .line 294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 296
    .local v1, "callerUid":I
    if-eqz p2, :cond_3b

    .line 297
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 298
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 300
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeProfile(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 302
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->informMappingChanged(Ljava/lang/String;)V

    .line 305
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_3b
    goto :goto_5b

    .line 306
    :cond_3c
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 309
    :goto_5b
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfile number of rows updated- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_2 .. :try_end_72} :catchall_ac

    .line 312
    const/4 v1, 0x1

    if-lez v0, :cond_a5

    .line 313
    :try_start_75
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_ENTERPRISE_BILLING"

    const-string v4, "API:removeProfile"

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 314
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_88} :catch_89
    .catchall {:try_start_75 .. :try_end_88} :catchall_ac

    goto :goto_a5

    .line 317
    :catch_89
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8a
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_8a .. :try_end_a4} :catchall_ac

    goto :goto_a6

    .line 319
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a5
    :goto_a5
    nop

    .line 321
    :goto_a6
    if-lez v0, :cond_a9

    goto :goto_aa

    :cond_a9
    const/4 v1, 0x0

    :goto_aa
    monitor-exit p0

    return v1

    .line 289
    .end local v0    # "returnValue":I
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_ac
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeProfileForCurrentContainer(Ljava/lang/String;)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1720
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeProfileForCurrentContainer - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1722
    .local v0, "uid":I
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1724
    .local v1, "identity":J
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeProfileForCurrentContainer - Binder.clearCallingIdentity(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeProfileForCurrentContainer - uid after : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid after"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1728
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_ba

    .line 1733
    const/4 v3, 0x0

    .line 1736
    .local v3, "returnValue":I
    if-eqz p1, :cond_98

    :try_start_78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_98

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 1737
    invoke-virtual {v4, p1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 1738
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeProfile(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 1741
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->informMappingChanged(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_78 .. :try_end_92} :catchall_93

    goto :goto_98

    .line 1744
    :catchall_93
    move-exception v4

    :try_start_94
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1745
    throw v4

    .line 1744
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_98
    :goto_98
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1745
    nop

    .line 1747
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeProfileForCurrentContainer - end - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_94 .. :try_end_b3} :catchall_ba

    .line 1748
    if-lez v3, :cond_b7

    const/4 v4, 0x1

    goto :goto_b8

    :cond_b7
    const/4 v4, 0x0

    :goto_b8
    monitor-exit p0

    return v4

    .line 1719
    .end local v0    # "uid":I
    .end local v1    # "identity":J
    .end local v3    # "returnValue":I
    .end local p1    # "profileName":Ljava/lang/String;
    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeVpnFromBillingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ebProfileName"    # Ljava/lang/String;
    .param p3, "vpnProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1369
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeVpnFromBillingProfile - start, profile names- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v0, 0x0

    .line 1371
    .local v0, "returnValue":Z
    if-eqz p1, :cond_6f

    .line 1373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1377
    .local v1, "callerUid":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 1379
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1381
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getBillingProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1382
    .local v2, "billingProfileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeVpnProfile(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 1383
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeVpnFromBillingProfile return value= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "billingprofilename"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    if-eqz v2, :cond_6e

    .line 1385
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->informMappingChanged(Ljava/lang/String;)V

    .line 1389
    .end local v1    # "callerUid":I
    .end local v2    # "billingProfileName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_6e
    goto :goto_86

    .line 1390
    :cond_6f
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnFromBillingProfile - Error invalid parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :goto_86
    const-string v1, "EnterpriseBillingPolicyInternal"

    const-string/jumbo v2, "removeVpnFromBillingProfile - end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_d0

    .line 1395
    const/4 v1, 0x1

    if-ne v0, v1, :cond_cd

    .line 1396
    :try_start_91
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_ENTERPRISE_BILLING"

    const-string v4, "API:unbindVpnFromProfile"

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1397
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 1398
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string/jumbo v2, "vpnPrfId"

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getVpnProfileId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1399
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b0} :catch_b1
    .catchall {:try_start_91 .. :try_end_b0} :catchall_d0

    goto :goto_cd

    .line 1401
    :catch_b1
    move-exception v1

    .line 1402
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b2
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_b2 .. :try_end_cc} :catchall_d0

    goto :goto_ce

    .line 1403
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_cd
    :goto_cd
    nop

    .line 1405
    :goto_ce
    monitor-exit p0

    return v0

    .line 1368
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "ebProfileName":Ljava/lang/String;
    .end local p3    # "vpnProfileName":Ljava/lang/String;
    :catchall_d0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeVpnFromBillingProfileForCurrentContainer(Ljava/lang/String;)Z
    .registers 9
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1837
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeVpnFromBillingProfile - start, vpn profile name- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const/4 v0, 0x0

    .line 1841
    .local v0, "returnValue":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_7b

    .line 1843
    .local v1, "identity":J
    :try_start_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_76

    if-nez v3, :cond_59

    .line 1844
    :try_start_23
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getBillingProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1845
    .local v3, "billingProfileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeVpnProfile(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    .line 1846
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeVpnFromBillingProfile return value= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "billingprofilename"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    if-eqz v3, :cond_59

    .line 1848
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->informMappingChanged(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_57

    goto :goto_59

    .line 1854
    .end local v3    # "billingProfileName":Ljava/lang/String;
    :catchall_57
    move-exception v3

    goto :goto_77

    :cond_59
    :goto_59
    :try_start_59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1855
    nop

    .line 1857
    const-string v3, "EnterpriseBillingPolicyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeVpnFromBillingProfile - end,returnValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_59 .. :try_end_74} :catchall_7b

    .line 1858
    monitor-exit p0

    return v0

    .line 1854
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :catchall_76
    move-exception v3

    :goto_77
    :try_start_77
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1855
    throw v3
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7b

    .line 1836
    .end local v0    # "returnValue":Z
    .end local v1    # "identity":J
    .end local p1    # "vpnProfileName":Ljava/lang/String;
    :catchall_7b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized turnOffProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 897
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    const-string/jumbo v1, "turnOffProfile - start  - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "returnValue":Z
    if-eqz p1, :cond_3e

    .line 902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 904
    .local v1, "callerUid":I
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turnOffProfile - start-  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    if-eqz p2, :cond_3d

    .line 906
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 907
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 909
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->turn(Ljava/lang/String;Z)Z

    move-result v2

    move v0, v2

    .line 911
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_3d
    goto :goto_5d

    .line 912
    :cond_3e
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 915
    :goto_5d
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOffProfile - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_76

    .line 916
    monitor-exit p0

    return v0

    .line 896
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_76
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

    .line 860
    :try_start_1
    const-string v0, "EnterpriseBillingPolicyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOnProfile - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, "returnValue":Z
    if-eqz p1, :cond_36

    .line 866
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 868
    .local v1, "callerUid":I
    if-eqz p2, :cond_35

    .line 869
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 870
    invoke-virtual {v2, p2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 872
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->turn(Ljava/lang/String;Z)Z

    move-result v2

    move v0, v2

    .line 874
    .end local v1    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_35
    goto :goto_55

    .line 875
    :cond_36
    const-string v1, "EnterpriseBillingPolicyInternal"

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

    .line 878
    :goto_55
    const-string v1, "EnterpriseBillingPolicyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOnProfile - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6e

    .line 879
    monitor-exit p0

    return v0

    .line 859
    .end local v0    # "returnValue":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profileName":Ljava/lang/String;
    :catchall_6e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "returnValue":I
    const/4 v1, 0x0

    .line 187
    .local v1, "isContainerKA":Z
    :try_start_3
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateProfile-start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz p1, :cond_128

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 193
    .local v2, "callerUid":I
    if-eqz p2, :cond_127

    .line 194
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->isProfileValid()Z

    move-result v3

    if-eqz v3, :cond_127

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 196
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 201
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "profileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 203
    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 205
    .local v4, "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 206
    .local v5, "containersAdded":Z
    const/4 v6, 0x0

    .line 208
    .local v6, "appsAdded":Z
    if-eqz v4, :cond_6b

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6b

    .line 210
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 211
    .local v8, "containerID":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 212
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForContainerInternal(II)Z

    .line 214
    const/4 v1, 0x1

    .line 216
    .end local v8    # "containerID":Ljava/lang/Integer;
    .end local p0    # "this":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :cond_6a
    goto :goto_4c

    .line 219
    :cond_6b
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 220
    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 221
    .local v7, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 223
    .local v8, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_a6

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a6

    .line 224
    nop

    .line 225
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 224
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_83
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 228
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v8, v11

    .line 230
    nop

    .line 231
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 230
    invoke-direct {p0, v8, v2, v11}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForAppsInternal(Ljava/util/List;II)Z

    .line 232
    nop

    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_83

    .line 235
    :cond_a6
    const-string v9, "EnterpriseBillingPolicyInternal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateProfile - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v9, p2, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->updateProfile(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;I)I

    move-result v9

    move v0, v9

    .line 241
    if-eqz v4, :cond_f3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f3

    .line 242
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 243
    .local v10, "containerID":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isContainerAvailable(I)Z

    move-result v11

    if-eqz v11, :cond_f2

    .line 244
    nop

    .line 245
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 244
    invoke-direct {p0, v3, v11, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForContainerInternal(Ljava/lang/String;II)Z

    .line 247
    .end local v10    # "containerID":Ljava/lang/Integer;
    :cond_f2
    goto :goto_d4

    .line 250
    :cond_f3
    if-eqz v7, :cond_127

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_127

    .line 251
    nop

    .line 252
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 251
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_104
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_127

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 254
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v8, v11

    .line 256
    nop

    .line 257
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 256
    invoke-direct {p0, v3, v8, v2, v11}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForAppsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    .line 258
    nop

    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_104

    .line 263
    .end local v2    # "callerUid":I
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "containersAdded":Z
    .end local v6    # "appsAdded":Z
    .end local v7    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_127
    goto :goto_147

    .line 264
    :cond_128
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateProfile - Error, invalid input parameter- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_147
    const-string v2, "EnterpriseBillingPolicyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateProfile number of rows updated- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catchall {:try_start_3 .. :try_end_15e} :catchall_1a9

    .line 270
    const/4 v2, 0x1

    if-lez v0, :cond_1a2

    .line 271
    const/4 v3, 0x0

    .line 272
    .local v3, "containerId":I
    :try_start_162
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "profileName":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v6, "KNOX_ENTERPRISE_BILLING"

    const-string v7, "API:updateProfile"

    invoke-direct {v5, v6, v2, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 274
    invoke-direct {p0, v5, p1, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->setProfileProperties(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 276
    if-ne v1, v2, :cond_179

    .line 277
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v3, v5

    .line 278
    :cond_179
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v6, "cId"

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 279
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->mData:Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-static {v5}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_185} :catch_186
    .catchall {:try_start_162 .. :try_end_185} :catchall_1a9

    goto :goto_1a2

    .line 281
    .end local v3    # "containerId":I
    .end local v4    # "profileName":Ljava/lang/String;
    :catch_186
    move-exception v3

    .line 282
    .local v3, "e":Ljava/lang/Exception;
    :try_start_187
    const-string v4, "EnterpriseBillingPolicyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a1
    .catchall {:try_start_187 .. :try_end_1a1} :catchall_1a9

    goto :goto_1a3

    .line 283
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1a2
    :goto_1a2
    nop

    .line 285
    :goto_1a3
    if-lez v0, :cond_1a6

    goto :goto_1a7

    :cond_1a6
    const/4 v2, 0x0

    :goto_1a7
    monitor-exit p0

    return v2

    .line 184
    .end local v0    # "returnValue":I
    .end local v1    # "isContainerKA":Z
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "profile":Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    :catchall_1a9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
