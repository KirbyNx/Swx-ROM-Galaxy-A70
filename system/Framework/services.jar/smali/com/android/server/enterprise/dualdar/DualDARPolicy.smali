.class public Lcom/android/server/enterprise/dualdar/DualDARPolicy;
.super Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;
.source "DualDARPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;
    }
.end annotation


# static fields
.field private static final DATALOCK_TIMEOUT:Ljava/lang/String; = "datalock_timeout"

.field private static final DA_SCHEMA_VERSION:I = 0x1

.field private static final DE_ACCESS_RESTRICTION:Ljava/lang/String; = "de_access_restriction"

.field public static final DUAL_DAR_POLICY_SERVICE:Ljava/lang/String; = "DualDARPolicy"

.field public static final ERROR_FAILURE_IN_SETTING_DATA_LOCK_TIMEOUT:I = -0x1

.field public static final ERROR_FAILURE_IN_SETTING_DE_RESTRICTION:I = -0x3

.field public static final ERROR_FAILURE_IN_SETTING_WHITELIST_PACKAGES:I = -0x2

.field public static final ERROR_NONE:I = 0x0

.field private static final IS_USER_DEVICE:Z

.field public static final KEY_CONFIG_CLIENT_LOCATION:Ljava/lang/String; = "dualdar-config-client-location"

.field public static final KEY_CONFIG_CLIENT_PACKAGE:Ljava/lang/String; = "dualdar-config-client-package"

.field public static final KEY_CONFIG_CLIENT_SIGNATURE:Ljava/lang/String; = "dualdar-config-client-signature"

.field public static final KEY_CONFIG_DATA_LOCK_TIMEOUT:Ljava/lang/String; = "dualdar-config-datalock-timeout"

.field public static final KEY_CONFIG_DE_RESTRICTION:Ljava/lang/String; = "dualdar-config-de-restriction"

.field public static final KEY_CONFIG_WHITELISTED_DATA_LOCK_STATE_PACKAGES:Ljava/lang/String; = "dualdar-config-datalock-whitelistpackages"

.field public static final KEY_DUAL_DAR_CONFIG:Ljava/lang/String; = "dualdar-config"

.field private static final LOG_DUALDAR_KA_TAG:Ljava/lang/String; = "DualDARPolicy:DualDARAnalytics"

.field private static final MIN_DATA_LOCK_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "DualDARPolicy"

.field private static final WHITELISTED_APPS:Ljava/lang/String; = "whitelisted_apps"


# instance fields
.field private context:Landroid/content/Context;

.field private dualDarConfigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field final mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 170
    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->IS_USER_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    new-instance v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;-><init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;)V
    .registers 3
    .param p1, "injector"    # Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 195
    iget-object v0, p1, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    .line 196
    invoke-virtual {p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    .line 199
    return-void
.end method

.method private clearPolicyInternal(II)Z
    .registers 8
    .param p1, "adminId"    # I
    .param p2, "userId"    # I

    .line 326
    const-string v0, "DualDARPolicy"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DUAL_DAR"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v2

    .line 327
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPolicy policy passed? : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2b

    .line 329
    return v2

    .line 330
    .end local v2    # "result":Z
    :catch_2b
    move-exception v2

    .line 331
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while clearing policy, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 332
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private doAuditLog(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .line 374
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 376
    .local v7, "userId":I
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v8

    .line 377
    .local v8, "isDoDualDar":Z
    invoke-static {v7}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARType(I)I

    move-result v9

    .line 378
    .local v9, "dualDarContainerType":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 380
    .local v10, "currWhtLstPkgString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin created DualDAR with configuration, Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-direct {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getDualDarVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  Lock Timeout :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v3, "dualdar-config-datalock-timeout"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",  Device Encryption storage access restriction: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v5, "dualdar-config-de-restriction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",  Whitelisted Packages: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    .line 380
    const-string v12, "DualDARPolicy:DualDARAnalytics"

    invoke-static {v12, v0, v11}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 386
    nop

    .line 390
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin created DualDAR with configuration,  Type : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-direct {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getDualDarVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "DualDARPolicy"

    move v3, v11

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 399
    return-void
.end method

.method private enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 733
    invoke-direct {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 733
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private flatten(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 679
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 683
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    add-int/lit8 v1, v1, 0x1

    .line 685
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2b

    .line 686
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .end local v3    # "str":Ljava/lang/String;
    :cond_2b
    goto :goto_f

    .line 689
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private flattenPackages(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 693
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_25

    .line 695
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    .line 696
    .local v2, "app":Lcom/samsung/android/knox/AppIdentity;
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_21

    .line 698
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 700
    :cond_21
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v2    # "app":Lcom/samsung/android/knox/AppIdentity;
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_b

    .line 703
    :cond_25
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private flattenSignatures(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 707
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v0, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_30

    .line 709
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    .line 710
    .local v2, "app":Lcom/samsung/android/knox/AppIdentity;
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, "signature":Ljava/lang/String;
    if-eqz v3, :cond_22

    .line 712
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    .line 714
    :cond_22
    const-string v3, ""

    .line 716
    :goto_24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2c

    .line 717
    const-string v3, "-"

    .line 719
    :cond_2c
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v2    # "app":Lcom/samsung/android/knox/AppIdentity;
    .end local v3    # "signature":Ljava/lang/String;
    goto :goto_b

    .line 722
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 554
    .local p2, "whitelistApps":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    .local p3, "whitelistPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "adminPackage":Ljava/lang/String;
    const-string v1, ""

    if-eqz v0, :cond_1b

    .line 556
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_1b
    const-string v2, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "permissions":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 563
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v4, 0x0

    :try_start_23
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 564
    invoke-interface {v5, v2, v4, v6}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_31} :catch_33

    move-object v3, v4

    .line 567
    goto :goto_50

    .line 565
    :catch_33
    move-exception v5

    .line 566
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException in getClientAndProfileOwnerApps while checking permissions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "DualDARPolicy"

    invoke-static {v7, v6, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 569
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_50
    if-eqz v3, :cond_72

    .line 570
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 571
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    new-instance v6, Lcom/samsung/android/knox/AppIdentity;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v7, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_56

    .line 577
    :cond_72
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigFromDb(II)Landroid/os/Bundle;

    move-result-object v1

    .line 578
    .local v1, "dualDARConfig":Landroid/os/Bundle;
    if-eqz v1, :cond_95

    .line 579
    const-string v4, "dualdar-config-client-package"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "clientPackage":Ljava/lang/String;
    const-string v5, "dualdar-config-client-signature"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, "clientSignature":Ljava/lang/String;
    if-eqz v4, :cond_95

    .line 582
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v6, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v6, v4, v5}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v4    # "clientPackage":Ljava/lang/String;
    .end local v5    # "clientSignature":Ljava/lang/String;
    :cond_95
    return-void
.end method

.method private getConfigFromDb(II)Landroid/os/Bundle;
    .registers 16
    .param p1, "adminId"    # I
    .param p2, "userId"    # I

    .line 219
    const-string v0, ""

    const-string v1, "DualDARPolicy"

    const-string v2, "DUAL_DAR"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_8
    iget-object v5, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "dataLockTimeOut"

    invoke-virtual {v5, p1, p2, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "datalockTimeoutStr":Ljava/lang/String;
    if-nez v5, :cond_2a

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfig : DualDAR not enabled for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 223
    return-object v3

    .line 226
    :cond_2a
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 227
    .local v6, "datalockTimeout":J
    iget-object v8, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "clientAppPackageName"

    invoke-virtual {v8, p1, p2, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "clientPackageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "clientAppSignature"

    invoke-virtual {v9, p1, p2, v2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3e} :catch_7d

    .line 229
    .local v9, "clientSignature":Ljava/lang/String;
    const/4 v10, 0x1

    .line 231
    .local v10, "deRestriction":I
    :try_start_3f
    iget-object v11, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "deRestriction"

    invoke-virtual {v11, p1, p2, v2, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_47
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_3f .. :try_end_47} :catch_49
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_7d

    move v10, v2

    .line 234
    goto :goto_51

    .line 232
    :catch_49
    move-exception v2

    .line 233
    .local v2, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :try_start_4a
    const-string v11, "Unable to read deRestriction field"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v1, v11, v12}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 236
    .end local v2    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :goto_51
    if-nez v8, :cond_55

    .line 238
    move-object v8, v0

    .line 239
    move-object v9, v0

    .line 242
    :cond_55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "dualdarConfig":Landroid/os/Bundle;
    const-string v2, "dualdar-config-client-package"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "dualdar-config-client-signature"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v2, "dualdar-config-de-restriction"

    if-lez v10, :cond_6a

    const/4 v11, 0x1

    goto :goto_6b

    :cond_6a
    move v11, v4

    :goto_6b
    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    const-string v2, "dualdar-config-datalock-timeout"

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 247
    const-string v2, "dualdar-config-datalock-whitelistpackages"

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7c} :catch_7d

    .line 248
    return-object v0

    .line 249
    .end local v0    # "dualdarConfig":Landroid/os/Bundle;
    .end local v5    # "datalockTimeoutStr":Ljava/lang/String;
    .end local v6    # "datalockTimeout":J
    .end local v8    # "clientPackageName":Ljava/lang/String;
    .end local v9    # "clientSignature":Ljava/lang/String;
    .end local v10    # "deRestriction":I
    :catch_7d
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getConfigFromDb has an exception: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v3
.end method

.method private getConfigInternal(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "userId"    # I

    .line 214
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method private getDualDarVersion()Ljava/lang/String;
    .registers 2

    .line 402
    invoke-static {}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getDualDARVersion()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "dualDARVersion":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 404
    const-string v0, ""

    .line 406
    :cond_8
    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 726
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 727
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 729
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7
    .param p1, "config"    # Landroid/os/Bundle;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, "currentWhitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 413
    .local v1, "parcelables":[Landroid/os/Parcelable;
    if-eqz v1, :cond_28

    array-length v2, v1

    if-lez v2, :cond_28

    .line 414
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_28

    .line 415
    aget-object v3, v1, v2

    check-cast v3, Lcom/samsung/android/knox/AppIdentity;

    .line 416
    .local v3, "app":Lcom/samsung/android/knox/AppIdentity;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->validPackageName(Lcom/samsung/android/knox/AppIdentity;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 417
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v3    # "app":Lcom/samsung/android/knox/AppIdentity;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 421
    .end local v2    # "i":I
    :cond_28
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;
    .registers 10
    .param p1, "adminId"    # I
    .param p2, "userId"    # I

    .line 257
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DUAL_DAR"

    const-string/jumbo v2, "whiteListPkgsForDataLockState"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->unFlattenPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, "whitelistedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "whiteListPkgSignaturesForDataLockState"

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->unFlattenSignatures(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 260
    .local v1, "whitelistedPackageSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v2, "whitelistedApps":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3f

    .line 262
    new-instance v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 265
    .end local v3    # "i":I
    :cond_3f
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/knox/AppIdentity;

    return-object v3
.end method

.method private logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;
    .param p3, "event"    # Ljava/lang/String;

    .line 597
    return-void
.end method

.method private refreshConfig(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 748
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 749
    .local v0, "adminId":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigFromDb(II)Landroid/os/Bundle;

    move-result-object v1

    .line 750
    .local v1, "dualDarConfig":Landroid/os/Bundle;
    if-eqz v1, :cond_15

    .line 751
    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_15
    return-void
.end method

.method private setDataLockTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .line 523
    const-string v0, "dualdar-config-datalock-timeout"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 525
    .local v0, "dataLockTimeout":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataLockTimeout called, dataLockTimeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "DualDARPolicy"

    invoke-static {v5, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 526
    const-wide/32 v6, 0xea60

    cmp-long v2, v0, v6

    const/4 v4, -0x1

    if-ltz v2, :cond_31

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v0, v6

    if-ltz v2, :cond_37

    :cond_31
    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_7a

    .line 527
    :cond_37
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v2, "cv":Landroid/content/ContentValues;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dataLockTimeOut"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v6, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v9, "DUAL_DAR"

    invoke-virtual {v6, v7, v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    .line 531
    .local v6, "result":Z
    if-eqz v6, :cond_6e

    .line 532
    new-array v7, v3, [Ljava/lang/Object;

    const-string/jumbo v8, "successfully changed datalock timeout"

    invoke-static {v5, v8, v7}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 533
    const-string v5, "datalock_timeout"

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_75

    .line 535
    :cond_6e
    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "failed to write new datalock timeout to persistent storage"

    invoke-static {v5, v8, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 537
    :goto_75
    if-eqz v6, :cond_78

    goto :goto_79

    :cond_78
    move v3, v4

    :goto_79
    return v3

    .line 539
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v6    # "result":Z
    :cond_7a
    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "setDataLockTimeout Invalid datalock timeout. It should be in range [60000, 9223372036854775807] ms"

    invoke-static {v5, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 541
    return v4
.end method

.method private setDeRestriction(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .line 426
    const-string v0, "dualdar-config-de-restriction"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 428
    .local v0, "deRestriction":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeRestriction called, deRestriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DualDARPolicy"

    invoke-static {v4, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 429
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 430
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "deRestriction"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    iget-object v3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v7, "DUAL_DAR"

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 433
    .local v3, "result":Z
    if-eqz v3, :cond_49

    .line 434
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Successfully changed DE restriction config"

    invoke-static {v4, v6, v5}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 436
    const-string v4, "de_access_restriction"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_50

    .line 438
    :cond_49
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Failed to write new DE restriction config"

    invoke-static {v4, v6, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 440
    :goto_50
    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    const/4 v2, -0x3

    :goto_54
    return v2
.end method

.method private setDefaultWhitelistedApps(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v0, "whitelistApps":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v1, "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultWhitelistedApps called, whitelistAppCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "DualDARPolicy"

    invoke-static {v5, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 449
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenPackages(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "whiteListPkgsForDataLockState"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenSignatures(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "whiteListPkgSignaturesForDataLockState"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v4, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v8, "DUAL_DAR"

    invoke-virtual {v4, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 454
    .local v4, "result":Z
    if-eqz v4, :cond_5b

    .line 455
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "successfully added whitelist packages"

    invoke-static {v5, v6, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_62

    .line 457
    :cond_5b
    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "failed to write new whitelist packages to persistent storage"

    invoke-static {v5, v6, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 459
    :goto_62
    return-void
.end method

.method private setWhitelistPackagesForDataLockedState(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .registers 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .line 462
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 463
    .local v4, "whitelistApps":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 464
    .local v5, "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 465
    .local v6, "clientAndPOApps":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 466
    .local v7, "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1, v2, v6, v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V

    .line 468
    const-string v0, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 469
    .local v8, "parcelables":[Landroid/os/Parcelable;
    if-eqz v8, :cond_51

    array-length v0, v8

    if-lez v0, :cond_51

    .line 470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    array-length v9, v8

    if-ge v0, v9, :cond_51

    .line 471
    aget-object v9, v8, v0

    check-cast v9, Lcom/samsung/android/knox/AppIdentity;

    .line 472
    .local v9, "app":Lcom/samsung/android/knox/AppIdentity;
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->validPackageName(Lcom/samsung/android/knox/AppIdentity;)Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4e

    .line 473
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v9    # "app":Lcom/samsung/android/knox/AppIdentity;
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 479
    .end local v0    # "i":I
    :cond_51
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {v1, v0, v9}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;

    move-result-object v9

    .line 480
    .local v9, "currentlyWhitelistedApps":[Lcom/samsung/android/knox/AppIdentity;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 481
    .local v10, "origId":J
    const-string v12, "DualDARPolicy"

    if-eqz v9, :cond_fe

    array-length v0, v9

    if-eqz v0, :cond_fe

    .line 482
    array-length v14, v9

    const/4 v15, 0x0

    :goto_66
    if-ge v15, v14, :cond_f7

    aget-object v16, v9, v15

    .line 483
    .local v16, "app":Lcom/samsung/android/knox/AppIdentity;
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/android/server/pm/PersonaServiceHelper;->isSystemApp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 485
    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    goto/16 :goto_ed

    .line 486
    :cond_7e
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 487
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 494
    :try_start_92
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9a} :catch_b0

    move-object/from16 v17, v5

    .end local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_9c
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9e} :catch_aa

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    .end local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "parcelables":[Landroid/os/Parcelable;
    .local v18, "parcelables":[Landroid/os/Parcelable;
    .local v19, "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_a4
    invoke-interface {v0, v13, v8, v7, v5}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_a8

    .line 498
    goto :goto_ed

    .line 495
    :catch_a8
    move-exception v0

    goto :goto_b7

    .end local v18    # "parcelables":[Landroid/os/Parcelable;
    .end local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "parcelables":[Landroid/os/Parcelable;
    :catch_aa
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    .end local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "parcelables":[Landroid/os/Parcelable;
    .restart local v18    # "parcelables":[Landroid/os/Parcelable;
    .restart local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_b7

    .end local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "parcelables":[Landroid/os/Parcelable;
    .end local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "parcelables":[Landroid/os/Parcelable;
    :catch_b0
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    .line 496
    .end local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "parcelables":[Landroid/os/Parcelable;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "parcelables":[Landroid/os/Parcelable;
    .restart local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in clearing user data for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " installed in: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v12, v5, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_ed

    .line 487
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "parcelables":[Landroid/os/Parcelable;
    .end local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "parcelables":[Landroid/os/Parcelable;
    :cond_e0
    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    .end local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "parcelables":[Landroid/os/Parcelable;
    .restart local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "parcelables":[Landroid/os/Parcelable;
    .restart local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_ed

    .line 486
    .end local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "parcelables":[Landroid/os/Parcelable;
    .end local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "parcelables":[Landroid/os/Parcelable;
    :cond_e7
    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    .line 482
    .end local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "parcelables":[Landroid/os/Parcelable;
    .end local v16    # "app":Lcom/samsung/android/knox/AppIdentity;
    .restart local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "parcelables":[Landroid/os/Parcelable;
    .restart local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_ed
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    goto/16 :goto_66

    .end local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "parcelables":[Landroid/os/Parcelable;
    .end local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "parcelables":[Landroid/os/Parcelable;
    :cond_f7
    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    .end local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "parcelables":[Landroid/os/Parcelable;
    .restart local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "parcelables":[Landroid/os/Parcelable;
    .restart local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_104

    .line 481
    .end local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "parcelables":[Landroid/os/Parcelable;
    .end local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "parcelables":[Landroid/os/Parcelable;
    :cond_fe
    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    .line 502
    .end local v5    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "parcelables":[Landroid/os/Parcelable;
    .restart local v17    # "whitelistPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "parcelables":[Landroid/os/Parcelable;
    .restart local v19    # "clientAndPOPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_104
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWhitelistPackagesForDataLockedState called, whitelistAppCount: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v12, v0, v7}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 508
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-direct {v1, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenPackages(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "whiteListPkgsForDataLockState"

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-direct {v1, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenSignatures(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "whiteListPkgSignaturesForDataLockState"

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v5, v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v13, "DUAL_DAR"

    invoke-virtual {v5, v7, v8, v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    .line 513
    .local v5, "result":Z
    if-eqz v5, :cond_15d

    .line 514
    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const-string/jumbo v13, "successfully changed whitelist packages for datalock state"

    invoke-static {v12, v13, v8}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 515
    const-string/jumbo v8, "whitelisted_apps"

    invoke-direct {v1, v2, v3, v8}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_165

    .line 517
    :cond_15d
    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const-string v13, "failed to write new whitelist packages to persistent storage"

    invoke-static {v12, v13, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 519
    :goto_165
    if-eqz v5, :cond_169

    move v13, v7

    goto :goto_16a

    :cond_169
    const/4 v13, -0x2

    :goto_16a
    return v13
.end method

.method private unFlattenPackages(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    .line 655
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ", "

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_14
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 657
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 660
    .end local v1    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_26
    return-object v0
.end method

.method private unFlattenSignatures(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "signatureStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v0, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 666
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ", "

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_14
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 668
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "signature":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2c

    .line 670
    const-string v2, ""

    .line 672
    :cond_2c
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    .end local v2    # "signature":Ljava/lang/String;
    goto :goto_14

    .line 675
    .end local v1    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_30
    return-object v0
.end method

.method private validPackageName(Lcom/samsung/android/knox/AppIdentity;)Z
    .registers 3
    .param p1, "app"    # Lcom/samsung/android/knox/AppIdentity;

    .line 546
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    .line 549
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 547
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clearPolicy(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 321
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->clearPolicyInternal(II)Z

    move-result v0

    return v0
.end method

.method public getClientInfo(I)Ljava/lang/String;
    .registers 5
    .param p1, "userID"    # I

    .line 309
    const-string v0, ""

    .line 310
    .local v0, "clientPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 311
    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "dualdar-config-client-package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_2c
    return-object v0
.end method

.method public getConfig(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "userId"    # I

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigInternal(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 202
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 203
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigInternal(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 773
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 758
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 768
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 778
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 787
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->clearPolicyInternal(II)Z

    .line 788
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 763
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 783
    return-void
.end method

.method public setClientInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "pkgSignature"    # Ljava/lang/String;
    .param p4, "clientversion"    # Ljava/lang/String;

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setClientInfo called, clientPkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "DualDARPolicy"

    invoke-static {v6, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 270
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v5, "clientAppPackageName"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v5, "clientAppSignature"

    move-object/from16 v6, p3

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v5, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v8, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v9, "DUAL_DAR"

    invoke-virtual {v5, v7, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    .line 276
    .local v5, "result":Z
    if-eqz v5, :cond_47

    .line 278
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setDefaultWhitelistedApps(Lcom/samsung/android/knox/ContextInfo;)V

    .line 280
    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(I)V

    .line 283
    :cond_47
    move-object/from16 v7, p2

    .line 284
    .local v7, "clientPkgNm":Ljava/lang/String;
    const-string v8, " "

    .line 285
    .local v8, "clientVersion":Ljava/lang/String;
    iget v9, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 286
    const-string v7, "Samsung"

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getDualDarVersion()Ljava/lang/String;

    move-result-object v8

    goto :goto_5e

    .line 289
    :cond_5a
    move-object/from16 v7, p2

    .line 290
    move-object/from16 v8, p4

    .line 293
    :goto_5e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Final Logging Crypto: pkg Name :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", clientVersion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    const-string v10, "DualDARPolicy:DualDARAnalytics"

    invoke-static {v10, v9, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x1

    .line 298
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin created DualDAR with Third Party Client Package: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", client library version: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 294
    const-string v15, "DualDARPolicy"

    move/from16 v17, v4

    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 303
    return-void
.end method

.method public setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 339
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 340
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConfig : callingUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DualDARPolicy"

    invoke-static {v4, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 342
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_43

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfig : DualDAR not enabled for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 344
    const/4 v1, -0x1

    return v1

    .line 347
    :cond_43
    const/4 v1, 0x0

    .line 348
    .local v1, "resDataLock":I
    const-string v3, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setWhitelistPackagesForDataLockedState(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v1

    .line 352
    :cond_50
    const/4 v3, 0x0

    .line 353
    .local v3, "resWhitelist":I
    const-string v4, "dualdar-config-datalock-timeout"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setDataLockTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v3

    .line 357
    :cond_5d
    const/4 v4, 0x0

    .line 358
    .local v4, "resDeRestriction":I
    const-string v5, "dualdar-config-de-restriction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setDeRestriction(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v4

    .line 362
    :cond_6a
    if-eqz v1, :cond_70

    if-eqz v3, :cond_70

    if-nez v4, :cond_75

    .line 363
    :cond_70
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(I)V

    .line 366
    :cond_75
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->doAuditLog(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V

    .line 368
    if-nez v1, :cond_7f

    if-nez v3, :cond_7f

    if-nez v4, :cond_7f

    goto :goto_88

    .line 369
    :cond_7f
    if-eqz v1, :cond_83

    move v2, v1

    goto :goto_88

    :cond_83
    if-eqz v3, :cond_87

    move v2, v3

    goto :goto_88

    :cond_87
    move v2, v4

    .line 368
    :goto_88
    return v2
.end method

.method public systemReady()V
    .registers 3

    .line 739
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v0

    .line 740
    .local v0, "dualDarUser":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 742
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(I)V

    .line 744
    :cond_a
    return-void
.end method
