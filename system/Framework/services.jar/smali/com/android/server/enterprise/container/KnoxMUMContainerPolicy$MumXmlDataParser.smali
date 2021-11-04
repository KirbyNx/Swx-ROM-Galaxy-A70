.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MumXmlDataParser"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final APPLICATIONONLY:Ljava/lang/String; = "applicationonly"

.field private static final ATTR_ALLOW:Ljava/lang/String; = "allow"

.field private static final ATTR_DISALLOW:Ljava/lang/String; = "disallow"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_REENABLE:Ljava/lang/String; = "reenable"

.field private static final ATTR_REMOVE:Ljava/lang/String; = "remove"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final BADGEPOLICY:Ljava/lang/String; = "BadgePolicy"

.field private static final CLONE_APPLICATION:Ljava/lang/String; = "cloneapplication"

.field private static final CLONE_DISABLE_PKG:Ljava/lang/String; = "clonedisablePkg"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final DISABLE_PKG:Ljava/lang/String; = "disablePkg"

.field private static final DISALLOW:Ljava/lang/String; = "disallow"

.field private static final FORBIDDEN_STRING:Ljava/lang/String; = "forbiddenString"

.field private static final FOTA_DISABLE_PKG:Ljava/lang/String; = "fotadisablePkg"

.field private static final GROUPPKG:Ljava/lang/String; = "groupPkg"

.field private static final GROUPPREFIX:Ljava/lang/String; = "group_"

.field private static final KNOXCORE:Ljava/lang/String; = "knoxCore"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PERSONA:Ljava/lang/String; = "persona"

.field private static final POLICY:Ljava/lang/String; = "policy"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROTECTED_PKG:Ljava/lang/String; = "protectedPkg"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"

.field private static final REPLACE:Ljava/lang/String; = "replace"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "MumXmlDataParser"


# instance fields
.field private final DEBUG:Z

.field private browserInstalled:Z

.field fotaCloneAppDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppReenableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAlreadyChecked:Z

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 4822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->DEBUG:Z

    .line 4814
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    .line 4815
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    .line 4816
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    .line 4817
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    .line 4820
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 5660
    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    .line 5661
    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    .line 4823
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 4824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 4825
    return-void
.end method

.method private containsProductName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 4860
    const/4 v0, 0x0

    if-eqz p2, :cond_26

    if-nez p1, :cond_6

    goto :goto_26

    .line 4863
    :cond_6
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4864
    .local v1, "target":[Ljava/lang/String;
    array-length v2, v1

    move v3, v0

    :goto_16
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 4865
    .local v4, "oper":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 4866
    const/4 v0, 0x1

    return v0

    .line 4864
    .end local v4    # "oper":Ljava/lang/String;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 4869
    :cond_25
    return v0

    .line 4861
    .end local v1    # "target":[Ljava/lang/String;
    :cond_26
    :goto_26
    return v0
.end method

.method private getCalendarPackageName()Ljava/lang/String;
    .registers 5

    .line 5616
    const-string v0, "com.android.calendar"

    .line 5617
    .local v0, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v3, "com.android.calendar"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5619
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 5621
    :try_start_14
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_20} :catch_21

    .line 5626
    goto :goto_23

    .line 5623
    :catch_21
    move-exception v2

    .line 5625
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    .line 5628
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_23
    :goto_23
    return-object v1
.end method

.method private getContactsPackageName()Ljava/lang/String;
    .registers 5

    .line 5633
    const-string v0, "com.android.contacts"

    .line 5634
    .local v0, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v3, "com.android.contacts"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5636
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5638
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5640
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 5642
    return-object v1

    .line 5645
    :cond_25
    return-object v0

    .line 5649
    :cond_26
    :try_start_26
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5650
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_32} :catch_34

    .line 5655
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_36

    .line 5652
    :catch_34
    move-exception v2

    .line 5654
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    .line 5656
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_36
    return-object v1
.end method

.method private isBrowserInstalled()Z
    .registers 8

    .line 5664
    iget-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    return v0

    .line 5665
    :cond_7
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 5666
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/pm/PackageManagerService;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 5668
    .local v1, "pInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 5669
    .local v3, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_45

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.sec.android.app.sbrowser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.browser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 5670
    :cond_42
    iput-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    .line 5671
    goto :goto_46

    .line 5673
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_45
    goto :goto_1d

    .line 5675
    :cond_46
    :goto_46
    iput-boolean v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isAlreadyChecked:Z

    .line 5676
    iget-boolean v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->browserInstalled:Z

    return v2
.end method

.method private isLwcContainerType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .registers 3
    .param p1, "configType"    # Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 5612
    instance-of v0, p1, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    return v0
.end method


# virtual methods
.method public getFotaCloneDisableApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4830
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneInstallApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4836
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneReenableApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4848
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneRemoveApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4842
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .line 4852
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-object v0
.end method

.method public isDefaultLWCModel()Z
    .registers 4

    .line 4873
    const/4 v0, 0x0

    .line 4875
    .local v0, "result":Z
    :try_start_1
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v1

    .line 4876
    .local v1, "version":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_14

    if-ltz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 4877
    .local v2, "isKnoxVersionPostZero":Z
    :goto_10
    if-eqz v2, :cond_15

    .line 4878
    const/4 v0, 0x1

    goto :goto_15

    .line 4881
    .end local v1    # "version":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .end local v2    # "isKnoxVersionPostZero":Z
    :catch_14
    move-exception v1

    :cond_15
    :goto_15
    nop

    .line 4883
    return v0
.end method

.method public mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .line 5817
    .local p1, "origTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/container/KnoxConfigurationType;>;"
    .local p2, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/container/KnoxConfigurationType;>;"
    const/4 v0, 0x0

    .line 5818
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5820
    .local v1, "customName":Ljava/lang/String;
    if-eqz p2, :cond_a5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_a5

    .line 5825
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 5826
    .local v3, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 5827
    .local v5, "custRow":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5828
    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5829
    if-eqz v0, :cond_20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 5830
    goto :goto_20

    .line 5832
    :cond_3d
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5e

    .line 5833
    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5e

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5e

    .line 5834
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5837
    :cond_5e
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7f

    .line 5838
    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7f

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7f

    .line 5839
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5842
    :cond_7f
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a0

    .line 5843
    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a0

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a0

    .line 5844
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5846
    .end local v5    # "custRow":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_a0
    goto/16 :goto_20

    .line 5847
    .end local v3    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_a2
    goto/16 :goto_10

    .line 5848
    :cond_a4
    return-object p1

    .line 5821
    :cond_a5
    :goto_a5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mergeKnoxConfigurationTypes: customTypeList == null or empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MumXmlDataParser"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5822
    return-object p1
.end method

.method public readFromCustomXml()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .line 5680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5683
    .local v0, "rowsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/container/KnoxConfigurationType;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 5684
    .local v1, "event":I
    const/4 v2, 0x0

    .line 5685
    .local v2, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    const/4 v3, 0x0

    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 5686
    .local v4, "nameAttribute":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 5688
    .local v8, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "ro.product.name"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1a2

    .line 5689
    .local v9, "productName":Ljava/lang/String;
    :goto_1b
    const/4 v10, 0x1

    if-eq v1, v10, :cond_1a1

    .line 5690
    const/4 v10, 0x2

    const-string/jumbo v11, "knoxCore"

    const-string/jumbo v12, "row"

    if-eq v1, v10, :cond_7e

    const/4 v10, 0x3

    if-eq v1, v10, :cond_2c

    goto/16 :goto_198

    .line 5778
    :cond_2c
    :try_start_2c
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 5779
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_66

    if-eqz v2, :cond_66

    .line 5781
    if-eqz v5, :cond_45

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_45

    .line 5782
    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 5784
    :cond_45
    if-eqz v6, :cond_50

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_50

    .line 5785
    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 5787
    :cond_50
    if-eqz v7, :cond_5b

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5b

    .line 5788
    invoke-virtual {v2, v7}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 5790
    :cond_5b
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    .line 5791
    const/4 v5, 0x0

    .line 5792
    const/4 v6, 0x0

    .line 5793
    const/4 v7, 0x0

    .line 5794
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_198

    .line 5796
    :cond_66
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_198

    .line 5798
    if-eqz v8, :cond_7b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7b

    .line 5799
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3200()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5801
    :cond_7b
    const/4 v8, 0x0

    goto/16 :goto_198

    .line 5692
    .end local v10    # "tag":Ljava/lang/String;
    :cond_7e
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 5693
    .restart local v10    # "tag":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_92

    .line 5696
    new-instance v11, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct {v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    move-object v2, v11

    goto/16 :goto_197

    .line 5698
    :cond_92
    const-string v12, "column"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_98} :catch_1a2

    const-string/jumbo v13, "name"

    const/4 v14, 0x0

    if-eqz v12, :cond_ee

    .line 5699
    :try_start_9e
    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v12, "value"

    invoke-interface {v11, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 5700
    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 5703
    const-string v11, "Name"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_be

    if-eqz v2, :cond_be

    .line 5705
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V

    goto/16 :goto_197

    .line 5707
    :cond_be
    const-string v11, "AppInstallList"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ce

    .line 5709
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v11

    goto/16 :goto_197

    .line 5711
    :cond_ce
    const-string v11, "ProtectedPkgList"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_de

    .line 5713
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v11

    goto/16 :goto_197

    .line 5715
    :cond_de
    const-string v11, "GoogleAppsPkgList"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_197

    .line 5717
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v11

    goto/16 :goto_197

    .line 5721
    :cond_ee
    const-string v12, "application"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11d

    .line 5722
    if-eqz v5, :cond_197

    .line 5723
    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 5727
    const-string v11, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_116

    const-string v11, "com.android.contacts"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_116

    .line 5728
    const-string v11, "com.samsung.contacts"

    move-object v3, v11

    .line 5730
    :cond_116
    if-eqz v3, :cond_197

    .line 5731
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_197

    .line 5734
    :cond_11d
    const-string/jumbo v12, "protectedPkg"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_135

    .line 5736
    if-eqz v6, :cond_197

    .line 5737
    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 5740
    if-eqz v3, :cond_197

    .line 5741
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_197

    .line 5744
    :cond_135
    const-string v12, "disablePkg"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14c

    .line 5746
    if-eqz v7, :cond_197

    .line 5747
    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 5750
    if-eqz v3, :cond_197

    .line 5751
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_197

    .line 5754
    :cond_14c
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_159

    .line 5756
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v11

    goto :goto_197

    .line 5758
    :cond_159
    const-string/jumbo v11, "package"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_197

    .line 5760
    if-eqz v8, :cond_197

    .line 5761
    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 5764
    if-eqz v3, :cond_197

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_197

    .line 5765
    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v12, "allow"

    invoke-interface {v11, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5766
    .local v11, "content":Ljava/lang/String;
    if-eqz v11, :cond_183

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_197

    .line 5767
    :cond_183
    iget-object v12, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v13, "disallow"

    invoke-interface {v12, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 5768
    if-eqz v11, :cond_194

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_197

    .line 5769
    :cond_194
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5776
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    :cond_197
    :goto_197
    nop

    .line 5807
    :cond_198
    :goto_198
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_19e} :catch_1a2

    move v1, v10

    goto/16 :goto_1b

    .line 5811
    .end local v1    # "event":I
    .end local v2    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "nameAttribute":Ljava/lang/String;
    .end local v5    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "productName":Ljava/lang/String;
    :cond_1a1
    goto :goto_1be

    .line 5809
    :catch_1a2
    move-exception v1

    .line 5810
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFromCustomXml EX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MumXmlDataParser"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5813
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1be
    return-object v0
.end method

.method public readFromXml()V
    .registers 39

    move-object/from16 v1, p0

    .line 4889
    :try_start_2
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 4890
    .local v2, "event":I
    const/4 v3, 0x0

    .line 4891
    .local v3, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    const/4 v4, 0x0

    .line 4892
    .local v4, "intVal":I
    const/4 v5, 0x0

    .line 4893
    .local v5, "booleanVal":Z
    const/4 v6, 0x0

    .line 4894
    .local v6, "isRCPDataSettings":Z
    const/4 v7, 0x0

    .local v7, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4895
    .local v8, "nameAttribute":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4896
    .local v9, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 4897
    .local v12, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 4898
    .local v16, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 4899
    .local v17, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .line 4900
    .local v18, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v19, 0x0

    .line 4901
    .local v19, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 4902
    .local v20, "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v21, v2

    .end local v2    # "event":I
    .local v21, "event":I
    const-string/jumbo v2, "ro.product.name"

    move-object/from16 v22, v3

    .end local v3    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .local v22, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_f21

    move/from16 v3, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    move/from16 v17, v5

    move-object v5, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v7

    move v7, v6

    move-object/from16 v6, v16

    move/from16 v16, v4

    move-object/from16 v4, v22

    .line 4903
    .end local v22    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "event":I
    .local v4, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "isRCPDataSettings":Z
    .local v8, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v10, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "intVal":I
    .local v17, "booleanVal":Z
    .local v18, "value":Ljava/lang/String;
    .local v19, "nameAttribute":Ljava/lang/String;
    .local v20, "productName":Ljava/lang/String;
    .local v21, "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4c
    move-object/from16 v22, v2

    .end local v2    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    if-eq v3, v2, :cond_f0c

    .line 4904
    const-string/jumbo v2, "knoxCore"

    move-object/from16 v25, v2

    const-string/jumbo v2, "package"

    move-object/from16 v26, v2

    const-string/jumbo v2, "provider"

    move/from16 v27, v7

    .end local v7    # "isRCPDataSettings":Z
    .local v27, "isRCPDataSettings":Z
    const-string/jumbo v7, "row"

    move-object/from16 v28, v9

    const/4 v9, 0x2

    .end local v9    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v28, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eq v3, v9, :cond_1ef

    const/4 v9, 0x3

    if-eq v3, v9, :cond_6f

    move/from16 v24, v3

    goto/16 :goto_1e7

    .line 5508
    :cond_6f
    :try_start_6f
    iget-object v9, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 5509
    .local v9, "tag":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11b

    if-eqz v4, :cond_11b

    .line 5510
    if-eqz v12, :cond_a2

    .line 5511
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_80
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_9f

    .line 5512
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move/from16 v24, v3

    .end local v3    # "event":I
    .local v24, "event":I
    const-string/jumbo v3, "group_"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 5514
    invoke-interface {v12, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5511
    :cond_9a
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v24

    goto :goto_80

    .end local v24    # "event":I
    .restart local v3    # "event":I
    :cond_9f
    move/from16 v24, v3

    .end local v3    # "event":I
    .restart local v24    # "event":I
    goto :goto_a4

    .line 5510
    .end local v2    # "i":I
    .end local v24    # "event":I
    .restart local v3    # "event":I
    :cond_a2
    move/from16 v24, v3

    .line 5518
    .end local v3    # "event":I
    .restart local v24    # "event":I
    :goto_a4
    if-eqz v10, :cond_af

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_af

    .line 5519
    invoke-virtual {v4, v10}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    .line 5521
    :cond_af
    if-eqz v11, :cond_ba

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 5522
    invoke-virtual {v4, v11}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    .line 5524
    :cond_ba
    if-eqz v12, :cond_c5

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c5

    .line 5525
    invoke-virtual {v4, v12}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 5528
    :cond_c5
    if-eqz v13, :cond_d0

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d0

    .line 5529
    invoke-virtual {v4, v13}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    .line 5532
    :cond_d0
    if-eqz v15, :cond_db

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_db

    .line 5533
    invoke-virtual {v4, v15}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 5534
    :cond_db
    if-eqz v5, :cond_e6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e6

    .line 5535
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 5537
    :cond_e6
    if-eqz v6, :cond_f1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f1

    .line 5538
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    .line 5542
    :cond_f1
    if-eqz v8, :cond_fc

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_fc

    .line 5543
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    .line 5548
    :cond_fc
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    .line 5549
    const/4 v2, 0x0

    .line 5550
    .end local v10    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 5551
    .end local v11    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 5553
    .end local v12    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 5555
    .end local v13    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 5556
    .end local v15    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 5557
    const/4 v6, 0x0

    .line 5558
    const/4 v8, 0x0

    .line 5559
    const/4 v12, 0x0

    .line 5560
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 5561
    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v13, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v14, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v15, v11

    move-object v14, v12

    move-object v9, v13

    move-object v11, v3

    move-object v12, v7

    move-object v13, v10

    move-object/from16 v7, v20

    move-object v10, v2

    move-object/from16 v2, v22

    goto/16 :goto_f00

    .line 5509
    .end local v2    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "event":I
    .local v3, "event":I
    .local v10, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_11b
    move/from16 v24, v3

    .line 5563
    .end local v3    # "event":I
    .restart local v24    # "event":I
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 5565
    if-eqz v14, :cond_1e7

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e7

    if-eqz v28, :cond_1e7

    .line 5566
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e7

    .line 5567
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_137
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_169

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 5568
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v27, :cond_153

    .line 5569
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v14, v7, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    .line 5571
    :cond_153
    move-object/from16 v23, v2

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 5572
    .end local v17    # "booleanVal":Z
    .local v2, "booleanVal":Z
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v14, v7, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V

    move/from16 v17, v2

    .line 5574
    .end local v2    # "booleanVal":Z
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "booleanVal":Z
    :goto_166
    move-object/from16 v2, v23

    goto :goto_137

    .line 5575
    :cond_169
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 5576
    const/4 v2, 0x0

    move-object v9, v2

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v2, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_f00

    .line 5579
    .end local v2    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_174
    move-object/from16 v3, v26

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 5581
    if-eqz v14, :cond_1e7

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e7

    if-eqz v28, :cond_1e7

    .line 5582
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e7

    .line 5583
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_190
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 5584
    .restart local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v14, v7, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 5585
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v2, v23

    goto :goto_190

    .line 5586
    :cond_1ac
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 5587
    const/4 v2, 0x0

    move-object v9, v2

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_f00

    .line 5590
    .end local v2    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1b7
    move-object/from16 v2, v25

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    .line 5592
    if-eqz v22, :cond_1ca

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1ca

    .line 5593
    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3202(Ljava/util/List;)Ljava/util/List;

    .line 5595
    :cond_1ca
    const/4 v2, 0x0

    move-object/from16 v7, v20

    move-object/from16 v9, v28

    .end local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f00

    .line 5597
    .end local v2    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d1
    const-string v2, "BadgePolicy"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e7

    .line 5598
    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3302(Ljava/util/List;)Ljava/util/List;

    .line 5599
    const/4 v2, 0x0

    move-object/from16 v21, v2

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    move-object/from16 v9, v28

    .end local v21    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_f00

    .line 5604
    .end local v2    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "tag":Ljava/lang/String;
    .end local v24    # "event":I
    .local v3, "event":I
    .restart local v21    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e7
    :goto_1e7
    move-object/from16 v7, v20

    move-object/from16 v2, v22

    move-object/from16 v9, v28

    .end local v3    # "event":I
    .restart local v24    # "event":I
    goto/16 :goto_f00

    .line 4906
    .end local v24    # "event":I
    .restart local v3    # "event":I
    :cond_1ef
    move/from16 v24, v3

    move-object/from16 v9, v25

    move-object/from16 v3, v26

    .end local v3    # "event":I
    .restart local v24    # "event":I
    iget-object v9, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 4907
    .restart local v9    # "tag":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_1ff} :catch_f21

    move-object/from16 v26, v8

    .end local v8    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v26, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v8, "type"

    move-object/from16 v29, v6

    .end local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v29, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    if-eqz v7, :cond_284

    .line 4910
    :try_start_209
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 4911
    .end local v18    # "value":Ljava/lang/String;
    .local v8, "value":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_230

    .line 4912
    new-instance v2, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-direct {v2}, Lcom/samsung/android/knox/container/LightweightConfigurationType;-><init>()V

    move-object v4, v2

    move-object/from16 v30, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 4913
    :cond_230
    sget-object v2, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_250

    .line 4914
    new-instance v2, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-direct {v2}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;-><init>()V

    move-object v4, v2

    move-object/from16 v30, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 4915
    :cond_250
    sget-object v2, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_270

    .line 4916
    new-instance v2, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    invoke-direct {v2}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;-><init>()V

    move-object v4, v2

    move-object/from16 v30, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 4918
    :cond_270
    new-instance v2, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    move-object v4, v2

    move-object/from16 v30, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 4920
    .end local v8    # "value":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_284
    const-string v7, "column"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_28a} :catch_f21

    const-string/jumbo v6, "value"

    move-object/from16 v30, v5

    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "name"

    if-eqz v7, :cond_92a

    .line 4921
    :try_start_294
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4922
    .end local v18    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 4925
    .end local v19    # "nameAttribute":Ljava/lang/String;
    .local v3, "nameAttribute":Ljava/lang/String;
    const-string v5, "Name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b1

    if-eqz v4, :cond_2b1

    .line 4927
    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V

    goto/16 :goto_91e

    .line 4929
    :cond_2b1
    const-string v5, "UID"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2ce

    .line 4931
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4932
    .end local v16    # "intVal":I
    .local v5, "intVal":I
    if-ltz v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 4933
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    :cond_2c4
    :goto_2c4
    move-object v8, v2

    move-object v9, v3

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 4935
    .end local v5    # "intVal":I
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v16    # "intVal":I
    :cond_2ce
    const-string v5, "UserID"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e3

    .line 4937
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4938
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    const/4 v6, -0x1

    if-lt v5, v6, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 4939
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setUserId(I)V

    goto :goto_2c4

    .line 4941
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_2e3
    const-string v5, "PersonaIDs"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2fd

    .line 4943
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v5

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 4945
    :cond_2fd
    const-string v5, "Version"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30c

    .line 4946
    if-eqz v4, :cond_91e

    .line 4947
    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_91e

    .line 4948
    :cond_30c
    const-string v5, "MaximumTimeToLock"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_320

    .line 4950
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4951
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 4952
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    goto :goto_2c4

    .line 4954
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_320
    const-string v5, "KeyguardDisabledFeatures"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_334

    .line 4955
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4956
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-ltz v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 4957
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setKeyguardDisabledFeatures(I)V

    goto :goto_2c4

    .line 4959
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_334
    const-string v5, "DefaultContainerLayout"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_349

    .line 4960
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4962
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 4963
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    goto/16 :goto_2c4

    .line 4965
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_349
    const-string v5, "LayoutSwitchingAllowed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_365

    .line 4966
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 4968
    .end local v17    # "booleanVal":Z
    .local v6, "booleanVal":Z
    if-eqz v4, :cond_35b

    .line 4969
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    :cond_35b
    :goto_35b
    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 4971
    .end local v6    # "booleanVal":Z
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v17    # "booleanVal":Z
    :cond_365
    const-string v5, "DefaultConfigType"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_378

    .line 4972
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 4974
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    if-eqz v4, :cond_35b

    .line 4975
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDefaultConfigType(Z)V

    goto :goto_35b

    .line 4978
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_378
    const-string v5, "PasswordMinimumLength"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38d

    .line 4980
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4981
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 4982
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    goto/16 :goto_2c4

    .line 4984
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_38d
    const-string v5, "PasswordMinimumNonLetters"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a2

    .line 4986
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4987
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 4988
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    goto/16 :goto_2c4

    .line 4990
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_3a2
    const-string v5, "PasswordMinimumLetters"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b7

    .line 4992
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4993
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 4994
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    goto/16 :goto_2c4

    .line 4996
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_3b7
    const-string v5, "PasswordMinimumNumeric"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3cc

    .line 4998
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4999
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 5000
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    goto/16 :goto_2c4

    .line 5002
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_3cc
    const-string v5, "PasswordMinimumUpperCase"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e1

    .line 5004
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5005
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 5006
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    goto/16 :goto_2c4

    .line 5008
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_3e1
    const-string v5, "PasswordMinimumLowerCase"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f6

    .line 5010
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5011
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 5012
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    goto/16 :goto_2c4

    .line 5014
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_3f6
    const-string v5, "PasswordMinimumSymbols"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40b

    .line 5016
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5017
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 5018
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    goto/16 :goto_2c4

    .line 5020
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_40b
    const-string v5, "PasswordQuality"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_420

    .line 5022
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5023
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-ltz v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 5024
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    goto/16 :goto_2c4

    .line 5026
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_420
    const-string v5, "MaximumFailedPasswordsForWipe"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_435

    .line 5028
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5029
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 5030
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    goto/16 :goto_2c4

    .line 5032
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_435
    const-string v5, "MaximumCharacterOccurences"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44a

    .line 5034
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5035
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 5036
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    goto/16 :goto_2c4

    .line 5038
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_44a
    const-string v5, "MaximumCharacterSequenceLength"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45f

    .line 5040
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5041
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 5042
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    goto/16 :goto_2c4

    .line 5044
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_45f
    const-string v5, "MaximumNumericSequenceLength"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_474

    .line 5046
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5047
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_2c4

    if-eqz v4, :cond_2c4

    .line 5048
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    goto/16 :goto_2c4

    .line 5050
    .end local v5    # "intVal":I
    .restart local v16    # "intVal":I
    :cond_474
    const-string v5, "SimplePasswordEnabled"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_490

    if-eqz v4, :cond_490

    .line 5052
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5053
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5055
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_490
    const-string v5, "MultifactorAuthEnabled"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4ac

    if-eqz v4, :cond_4ac

    .line 5057
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5058
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5060
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_4ac
    const-string v5, "UserManaged"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c8

    if-eqz v4, :cond_4c8

    .line 5062
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5063
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5065
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_4c8
    const-string v5, "ForbiddenStrings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e2

    .line 5067
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5069
    :cond_4e2
    const-string v5, "AppInstallList"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_502

    .line 5071
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v5

    .line 5073
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5076
    :cond_502
    const-string v5, "ProtectedPkgList"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51c

    .line 5078
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v5

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5080
    :cond_51c
    const-string v5, "GoogleAppsPkgList"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_537

    .line 5082
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    move-object v9, v3

    move-object/from16 v30, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    .end local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_ef0

    .line 5084
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_537
    const-string v5, "FOTADisableAppsPkgList"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55b

    .line 5086
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v5

    .line 5087
    .end local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v5

    move-object v9, v3

    move-object/from16 v29, v6

    move-object/from16 v26, v8

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object v8, v2

    move-object/from16 v2, v22

    .end local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_ef0

    .line 5089
    .end local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_55b
    const-string v5, "AppInstallListForFotaClone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_573

    .line 5092
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    .line 5093
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    goto/16 :goto_91e

    .line 5095
    :cond_573
    const-string v5, "AppDisableListForFotaClone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58b

    .line 5098
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    .line 5099
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    goto/16 :goto_91e

    .line 5101
    :cond_58b
    const-string v5, "PatternRestriction"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b0

    if-eqz v4, :cond_5b0

    .line 5103
    if-eqz v2, :cond_5a0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_59e

    goto :goto_5a0

    :cond_59e
    move-object v8, v2

    goto :goto_5a2

    .line 5104
    :cond_5a0
    :goto_5a0
    const/4 v2, 0x0

    move-object v8, v2

    .line 5106
    .end local v2    # "value":Ljava/lang/String;
    .local v8, "value":Ljava/lang/String;
    :goto_5a2
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5108
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_5b0
    const-string v5, "CustomBadgeIcon"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d5

    if-eqz v4, :cond_5d5

    .line 5110
    if-eqz v2, :cond_5c5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5c3

    goto :goto_5c5

    :cond_5c3
    move-object v8, v2

    goto :goto_5c7

    .line 5111
    :cond_5c5
    :goto_5c5
    const/4 v2, 0x0

    move-object v8, v2

    .line 5113
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_5c7
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5115
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_5d5
    const-string v5, "CustomHomeScreenWallpaper"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5fa

    if-eqz v4, :cond_5fa

    .line 5117
    if-eqz v2, :cond_5ea

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5e8

    goto :goto_5ea

    :cond_5e8
    move-object v8, v2

    goto :goto_5ec

    .line 5118
    :cond_5ea
    :goto_5ea
    const/4 v2, 0x0

    move-object v8, v2

    .line 5120
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_5ec
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5122
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_5fa
    const-string v5, "EC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_616

    if-eqz v4, :cond_616

    .line 5124
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5126
    .end local v17    # "booleanVal":Z
    .local v6, "booleanVal":Z
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerEnabled(Z)V

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5128
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_616
    const-string v5, "NameIcon"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63b

    if-eqz v4, :cond_63b

    .line 5130
    if-eqz v2, :cond_62b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_629

    goto :goto_62b

    :cond_629
    move-object v8, v2

    goto :goto_62d

    .line 5131
    :cond_62b
    :goto_62b
    const/4 v2, 0x0

    move-object v8, v2

    .line 5133
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_62d
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerNameIcon(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5135
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_63b
    const-string v5, "ECName"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_660

    if-eqz v4, :cond_660

    .line 5137
    if-eqz v2, :cond_650

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_64e

    goto :goto_650

    :cond_64e
    move-object v8, v2

    goto :goto_652

    .line 5138
    :cond_650
    :goto_650
    const/4 v2, 0x0

    move-object v8, v2

    .line 5140
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_652
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerName(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5142
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_660
    const-string v5, "ECIcon"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_685

    if-eqz v4, :cond_685

    .line 5144
    if-eqz v2, :cond_675

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_673

    goto :goto_675

    :cond_673
    move-object v8, v2

    goto :goto_677

    .line 5145
    :cond_675
    :goto_675
    const/4 v2, 0x0

    move-object v8, v2

    .line 5147
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_677
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5149
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_685
    const-string v5, "ECBadge"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6aa

    if-eqz v4, :cond_6aa

    .line 5151
    if-eqz v2, :cond_69a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_698

    goto :goto_69a

    :cond_698
    move-object v8, v2

    goto :goto_69c

    .line 5152
    :cond_69a
    :goto_69a
    const/4 v2, 0x0

    move-object v8, v2

    .line 5154
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_69c
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5156
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_6aa
    const-string v5, "CustomLockScreenWallpaper"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6cf

    if-eqz v4, :cond_6cf

    .line 5158
    if-eqz v2, :cond_6bf

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6bd

    goto :goto_6bf

    :cond_6bd
    move-object v8, v2

    goto :goto_6c1

    .line 5159
    :cond_6bf
    :goto_6bf
    const/4 v2, 0x0

    move-object v8, v2

    .line 5161
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_6c1
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5163
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_6cf
    const-string v5, "CustomStatusLabel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f4

    if-eqz v4, :cond_6f4

    .line 5165
    if-eqz v2, :cond_6e4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6e2

    goto :goto_6e4

    :cond_6e2
    move-object v8, v2

    goto :goto_6e6

    .line 5166
    :cond_6e4
    :goto_6e4
    const/4 v2, 0x0

    move-object v8, v2

    .line 5168
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_6e6
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5170
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_6f4
    const-string v5, "CustomStatusIcon"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_719

    if-eqz v4, :cond_719

    .line 5172
    if-eqz v2, :cond_709

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_707

    goto :goto_709

    :cond_707
    move-object v8, v2

    goto :goto_70b

    .line 5173
    :cond_709
    :goto_709
    const/4 v2, 0x0

    move-object v8, v2

    .line 5175
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_70b
    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5177
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_719
    const-string v5, "FolderHeaderTitle"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_745

    if-eqz v4, :cond_745

    .line 5179
    if-eqz v2, :cond_72e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_72c

    goto :goto_72e

    :cond_72c
    move-object v8, v2

    goto :goto_730

    .line 5180
    :cond_72e
    :goto_72e
    const/4 v2, 0x0

    move-object v8, v2

    .line 5182
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_730
    instance-of v2, v4, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v2, :cond_73a

    .line 5183
    move-object v2, v4

    check-cast v2, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    :cond_73a
    :goto_73a
    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5185
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    :cond_745
    const-string v5, "FolderHeaderIcon"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_767

    if-eqz v4, :cond_767

    .line 5187
    if-eqz v2, :cond_75a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_758

    goto :goto_75a

    :cond_758
    move-object v8, v2

    goto :goto_75c

    .line 5188
    :cond_75a
    :goto_75a
    const/4 v2, 0x0

    move-object v8, v2

    .line 5190
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_75c
    instance-of v2, v4, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v2, :cond_73a

    .line 5191
    move-object v2, v4

    check-cast v2, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    goto :goto_73a

    .line 5193
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_767
    const-string v5, "FolderDisabledChangeLayout"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_789

    if-eqz v4, :cond_789

    .line 5195
    if-eqz v2, :cond_77c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_77a

    goto :goto_77c

    :cond_77a
    move-object v8, v2

    goto :goto_77e

    .line 5196
    :cond_77c
    :goto_77c
    const/4 v2, 0x0

    move-object v8, v2

    .line 5198
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_77e
    instance-of v2, v4, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v2, :cond_73a

    .line 5199
    move-object v2, v4

    check-cast v2, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderDisabledChangeLayout(Ljava/lang/String;)V

    goto :goto_73a

    .line 5201
    .end local v8    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_789
    const-string v5, "RCPDataSettings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b6

    .line 5203
    const/4 v7, 0x1

    .line 5204
    .end local v27    # "isRCPDataSettings":Z
    .local v7, "isRCPDataSettings":Z
    if-nez v14, :cond_7a8

    .line 5205
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    move-object v8, v2

    move-object v9, v3

    move/from16 v27, v7

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5204
    :cond_7a8
    move-object v8, v2

    move-object v9, v3

    move/from16 v27, v7

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5208
    .end local v7    # "isRCPDataSettings":Z
    .restart local v27    # "isRCPDataSettings":Z
    :cond_7b6
    const-string v5, "RCPAllowChangeDataSettings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e3

    .line 5210
    const/4 v7, 0x0

    .line 5211
    .end local v27    # "isRCPDataSettings":Z
    .restart local v7    # "isRCPDataSettings":Z
    if-nez v14, :cond_7d5

    .line 5212
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    move-object v8, v2

    move-object v9, v3

    move/from16 v27, v7

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5211
    :cond_7d5
    move-object v8, v2

    move-object v9, v3

    move/from16 v27, v7

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5215
    .end local v7    # "isRCPDataSettings":Z
    .restart local v27    # "isRCPDataSettings":Z
    :cond_7e3
    const-string v5, "RCPNotifSettings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7ff

    .line 5217
    if-nez v14, :cond_91e

    .line 5218
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5221
    :cond_7ff
    const-string v5, "AllowMultiwindowMode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81b

    if-eqz v4, :cond_81b

    .line 5223
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5224
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5226
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_81b
    const-string v5, "AllowTaskManager"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_837

    if-eqz v4, :cond_837

    .line 5228
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5229
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5231
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_837
    const-string v5, "AllowSettingsChanges"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_852

    if-eqz v4, :cond_852

    .line 5233
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5234
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    instance-of v5, v4, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_35b

    .line 5235
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    goto/16 :goto_35b

    .line 5237
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_852
    const-string v5, "AllowStatusBarExpansion"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86d

    if-eqz v4, :cond_86d

    .line 5239
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5240
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    instance-of v5, v4, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_35b

    .line 5241
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    goto/16 :goto_35b

    .line 5243
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_86d
    const-string v5, "AllowHomeKey"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_888

    if-eqz v4, :cond_888

    .line 5245
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5246
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    instance-of v5, v4, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_35b

    .line 5247
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    goto/16 :goto_35b

    .line 5249
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_888
    const-string v5, "AllowClearAllNotification"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a3

    if-eqz v4, :cond_8a3

    .line 5251
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5252
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    instance-of v5, v4, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_35b

    .line 5253
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    goto/16 :goto_35b

    .line 5255
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_8a3
    const-string v5, "HideSystemBar"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8be

    if-eqz v4, :cond_8be

    .line 5257
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5258
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    instance-of v5, v4, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_35b

    .line 5259
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    goto/16 :goto_35b

    .line 5261
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_8be
    const-string v5, "WipeRecentTasks"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d9

    if-eqz v4, :cond_8d9

    .line 5263
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5264
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    instance-of v5, v4, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_35b

    .line 5265
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    goto/16 :goto_35b

    .line 5267
    .end local v6    # "booleanVal":Z
    .restart local v17    # "booleanVal":Z
    :cond_8d9
    const-string v5, "BiometricAuthEnabled"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_902

    if-eqz v4, :cond_902

    .line 5268
    iget-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5269
    .end local v16    # "intVal":I
    .local v5, "intVal":I
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 5270
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    if-eqz v6, :cond_8fa

    if-lez v5, :cond_8fa

    .line 5271
    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    :cond_8fa
    move-object v8, v2

    move-object v9, v3

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5273
    .end local v5    # "intVal":I
    .end local v6    # "booleanVal":Z
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v16    # "intVal":I
    .restart local v17    # "booleanVal":Z
    :cond_902
    const-string v5, "USBDebuggingAllowed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91e

    if-eqz v4, :cond_91e

    .line 5275
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v5

    .line 5276
    .end local v17    # "booleanVal":Z
    .restart local v6    # "booleanVal":Z
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowUSBDebugging(Z)V

    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5506
    .end local v6    # "booleanVal":Z
    .end local v9    # "tag":Ljava/lang/String;
    .restart local v17    # "booleanVal":Z
    :cond_91e
    :goto_91e
    move-object v8, v2

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5279
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "nameAttribute":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v19    # "nameAttribute":Ljava/lang/String;
    :cond_92a
    const-string/jumbo v7, "persona"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_96f

    .line 5281
    if-eqz v10, :cond_958

    .line 5282
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v3, "id"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 5284
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v5, v2

    .line 5285
    .end local v16    # "intVal":I
    .restart local v5    # "intVal":I
    if-lez v5, :cond_94e

    .line 5286
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    :cond_94e
    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5281
    .end local v5    # "intVal":I
    .end local v8    # "value":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v16    # "intVal":I
    .restart local v18    # "value":Ljava/lang/String;
    :cond_958
    move-object v2, v4

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object/from16 v35, v13

    move-object/from16 v37, v15

    move-object/from16 v7, v20

    move-object/from16 v3, v22

    move-object/from16 v5, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    goto/16 :goto_ed6

    .line 5289
    :cond_96f
    const-string v7, "forbiddenString"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9a9

    .line 5291
    if-eqz v11, :cond_992

    .line 5292
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 5294
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_986

    .line 5295
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    :cond_986
    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    goto/16 :goto_ef0

    .line 5291
    .end local v8    # "value":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_992
    move-object v2, v4

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object/from16 v35, v13

    move-object/from16 v37, v15

    move-object/from16 v7, v20

    move-object/from16 v3, v22

    move-object/from16 v5, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    goto/16 :goto_ed6

    .line 5297
    :cond_9a9
    const-string v7, "cloneapplication"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_9af
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_9af} :catch_f21

    const-string/jumbo v8, "remove"

    move-object/from16 v31, v10

    .end local v10    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v31, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v10, "true"

    if-eqz v7, :cond_a0a

    .line 5299
    :try_start_9b9
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    if-eqz v2, :cond_9f5

    .line 5300
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5303
    .end local v18    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_9e6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9e6

    .line 5304
    iget-object v3, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5305
    .local v3, "remove":Ljava/lang/String;
    if-eqz v3, :cond_9e1

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e1

    .line 5307
    iget-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9e6

    .line 5312
    :cond_9e1
    iget-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5506
    .end local v3    # "remove":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    :cond_9e6
    :goto_9e6
    move-object v8, v2

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    move-object/from16 v10, v31

    goto/16 :goto_ef0

    .line 5299
    .end local v2    # "value":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_9f5
    move-object v2, v4

    move-object/from16 v32, v11

    move-object/from16 v35, v13

    move-object/from16 v37, v15

    move-object/from16 v7, v20

    move-object/from16 v3, v22

    move-object/from16 v5, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    goto/16 :goto_ed6

    .line 5318
    :cond_a0a
    const-string v7, "clonedisablePkg"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_a10
    .catch Ljava/lang/Exception; {:try_start_9b9 .. :try_end_a10} :catch_f21

    move-object/from16 v32, v11

    .end local v11    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v32, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v11, "reenable"

    if-eqz v7, :cond_a68

    .line 5320
    :try_start_a17
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    if-eqz v2, :cond_a55

    .line 5321
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 5323
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_a45

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a45

    .line 5324
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5325
    .local v2, "re_enable_attr":Ljava/lang/String;
    if-eqz v2, :cond_a40

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a40

    .line 5327
    iget-object v3, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a45

    .line 5330
    :cond_a40
    iget-object v3, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5506
    .end local v2    # "re_enable_attr":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    :cond_a45
    :goto_a45
    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v22

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    goto/16 :goto_ef0

    .line 5320
    .end local v8    # "value":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_a55
    move-object v2, v4

    move-object/from16 v35, v13

    move-object/from16 v37, v15

    move-object/from16 v7, v20

    move-object/from16 v3, v22

    move-object/from16 v5, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    goto/16 :goto_ed6

    .line 5334
    :cond_a68
    const-string v7, "application"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_a6e
    .catch Ljava/lang/Exception; {:try_start_a17 .. :try_end_a6e} :catch_f21

    move-object/from16 v33, v11

    const-string v11, "disallow"

    move-object/from16 v34, v4

    .end local v4    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .local v34, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    const-string v4, "allow"

    if-eqz v7, :cond_b1a

    .line 5335
    if-eqz v12, :cond_b06

    .line 5336
    :try_start_a7a
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5339
    .end local v18    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8e

    .line 5340
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getContactsPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 5343
    :cond_a8e
    const-string v3, "com.android.calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9b

    .line 5344
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 5346
    :cond_a9b
    if-eqz v2, :cond_af3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_af3

    .line 5348
    iget-object v3, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5349
    .restart local v3    # "remove":Ljava/lang/String;
    if-eqz v3, :cond_ab8

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab8

    .line 5350
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v20

    goto :goto_af2

    .line 5352
    :cond_ab8
    iget-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5353
    .local v4, "content":Ljava/lang/String;
    if-eqz v4, :cond_add

    move-object/from16 v7, v20

    .end local v20    # "productName":Ljava/lang/String;
    .local v7, "productName":Ljava/lang/String;
    invoke-direct {v1, v7, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aca

    goto :goto_adf

    .line 5358
    :cond_aca
    const-string/jumbo v5, "systemAppOnly"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af2

    .line 5359
    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3000(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af2

    .line 5360
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_af2

    .line 5353
    .end local v7    # "productName":Ljava/lang/String;
    .restart local v20    # "productName":Ljava/lang/String;
    :cond_add
    move-object/from16 v7, v20

    .line 5354
    .end local v20    # "productName":Ljava/lang/String;
    .restart local v7    # "productName":Ljava/lang/String;
    :goto_adf
    iget-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 5355
    if-eqz v4, :cond_aef

    invoke-direct {v1, v7, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_af2

    .line 5356
    :cond_aef
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5365
    .end local v3    # "remove":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    :cond_af2
    :goto_af2
    goto :goto_af5

    .line 5346
    .end local v7    # "productName":Ljava/lang/String;
    .restart local v20    # "productName":Ljava/lang/String;
    :cond_af3
    move-object/from16 v7, v20

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    .end local v20    # "productName":Ljava/lang/String;
    .restart local v7    # "productName":Ljava/lang/String;
    :goto_af5
    move-object v8, v2

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v2, v22

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v34

    goto/16 :goto_ef0

    .line 5335
    .end local v2    # "value":Ljava/lang/String;
    .end local v7    # "productName":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v20    # "productName":Ljava/lang/String;
    :cond_b06
    move-object/from16 v7, v20

    .end local v20    # "productName":Ljava/lang/String;
    .restart local v7    # "productName":Ljava/lang/String;
    move-object/from16 v35, v13

    move-object/from16 v37, v15

    move-object/from16 v3, v22

    move-object/from16 v5, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    move-object/from16 v2, v34

    goto/16 :goto_ed6

    .line 5367
    .end local v7    # "productName":Ljava/lang/String;
    .restart local v20    # "productName":Ljava/lang/String;
    :cond_b1a
    move-object/from16 v7, v20

    .end local v20    # "productName":Ljava/lang/String;
    .restart local v7    # "productName":Ljava/lang/String;
    const-string/jumbo v8, "replace"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_b23
    .catch Ljava/lang/Exception; {:try_start_a7a .. :try_end_b23} :catch_f21

    const/16 v20, 0x0

    move-object/from16 v35, v13

    .end local v13    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v35, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, ","

    move-object/from16 v36, v10

    const-string v10, ""

    move-object/from16 v37, v15

    .end local v15    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v37, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, " "

    if-eqz v8, :cond_b8a

    .line 5368
    if-eqz v12, :cond_b7c

    .line 5370
    :try_start_b35
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5372
    .end local v18    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v2, v15, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5373
    .local v3, "target":[Ljava/lang/String;
    array-length v4, v3

    move-object v8, v2

    move/from16 v2, v20

    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :goto_b48
    if-ge v2, v4, :cond_b68

    aget-object v6, v3, v2

    .line 5374
    .local v6, "oper":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b64

    .line 5375
    iget-object v10, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 5377
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v12, v10, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b65

    .line 5374
    :cond_b64
    const/4 v11, 0x1

    .line 5373
    .end local v6    # "oper":Ljava/lang/String;
    :goto_b65
    add-int/lit8 v2, v2, 0x1

    goto :goto_b48

    .line 5380
    .end local v3    # "target":[Ljava/lang/String;
    :cond_b68
    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v2, v22

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    goto/16 :goto_ef0

    .line 5368
    .end local v8    # "value":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_b7c
    move-object/from16 v3, v22

    move-object/from16 v5, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    move-object/from16 v2, v34

    goto/16 :goto_ed6

    .line 5381
    :cond_b8a
    const-string/jumbo v8, "groupPkg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_be1

    .line 5382
    if-eqz v12, :cond_bd3

    .line 5383
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 5385
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ba1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bbf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5386
    .local v3, "installPkg":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bbe

    .line 5387
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5388
    goto :goto_bbf

    .line 5390
    .end local v3    # "installPkg":Ljava/lang/String;
    :cond_bbe
    goto :goto_ba1

    :cond_bbf
    :goto_bbf
    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v2, v22

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    goto/16 :goto_ef0

    .line 5382
    .end local v8    # "value":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_bd3
    move-object/from16 v3, v22

    move-object/from16 v5, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    move-object/from16 v2, v34

    goto/16 :goto_ed6

    .line 5392
    :cond_be1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c25

    .line 5394
    if-eqz v14, :cond_c17

    .line 5395
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 5397
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_bfc

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bfc

    .line 5398
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5399
    :cond_bfc
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v2

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v2, v22

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v2, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_ef0

    .line 5394
    .end local v2    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "value":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_c17
    move-object/from16 v3, v22

    move-object/from16 v5, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    move-object/from16 v2, v34

    goto/16 :goto_ed6

    .line 5402
    :cond_c25
    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cbc

    .line 5404
    if-eqz v22, :cond_c7f

    .line 5405
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 5407
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_c6a

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c6a

    .line 5408
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5409
    .local v2, "content":Ljava/lang/String;
    if-eqz v2, :cond_c50

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4d

    goto :goto_c50

    :cond_c4d
    move-object/from16 v3, v22

    goto :goto_c69

    .line 5410
    :cond_c50
    :goto_c50
    iget-object v3, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 5411
    if-eqz v2, :cond_c64

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c61

    goto :goto_c64

    :cond_c61
    move-object/from16 v3, v22

    goto :goto_c69

    .line 5412
    :cond_c64
    :goto_c64
    move-object/from16 v3, v22

    .end local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5415
    .end local v2    # "content":Ljava/lang/String;
    :goto_c69
    goto :goto_c6c

    .line 5407
    .end local v3    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c6a
    move-object/from16 v3, v22

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    .end local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_c6c
    move-object v2, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    goto/16 :goto_ef0

    .line 5416
    .end local v3    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "value":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c7f
    move-object/from16 v3, v22

    .end local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_cb0

    .line 5417
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 5419
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_c96

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c96

    .line 5420
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5421
    :cond_c96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v2

    move-object v2, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v2, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_ef0

    .line 5416
    .end local v2    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8    # "value":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_cb0
    move-object/from16 v5, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    move-object/from16 v2, v34

    goto/16 :goto_ed6

    .line 5423
    .end local v3    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_cbc
    move-object/from16 v3, v22

    .end local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "policy"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d17

    .line 5424
    if-nez v21, :cond_cd1

    .line 5425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v2

    goto :goto_cd3

    .line 5424
    :cond_cd1
    move-object/from16 v2, v21

    .line 5427
    .end local v21    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_cd3
    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    invoke-interface {v4, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 5428
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_d02

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d02

    .line 5429
    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5431
    .restart local v4    # "content":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5432
    nop

    .line 5506
    .end local v4    # "content":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    :cond_d02
    move-object/from16 v21, v2

    move-object v2, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    goto/16 :goto_ef0

    .line 5433
    .end local v2    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "value":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v21    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d17
    const-string/jumbo v2, "property"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d71

    .line 5434
    if-eqz v28, :cond_d65

    .line 5435
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5437
    .local v2, "property":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 5439
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v2, :cond_d4e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d4e

    if-eqz v8, :cond_d4e

    .line 5440
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d4b

    .line 5441
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v11, v28

    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v11, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d50

    .line 5440
    .end local v11    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_d4b
    move-object/from16 v11, v28

    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_d50

    .line 5439
    .end local v11    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_d4e
    move-object/from16 v11, v28

    .line 5443
    .end local v2    # "property":Ljava/lang/String;
    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_d50
    move-object v2, v3

    move-object/from16 v28, v11

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    goto/16 :goto_ef0

    .line 5434
    .end local v8    # "value":Ljava/lang/String;
    .end local v11    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_d65
    move-object/from16 v11, v28

    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v5, v26

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    move-object/from16 v2, v34

    goto/16 :goto_ed6

    .line 5445
    .end local v11    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_d71
    move-object/from16 v11, v28

    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v2, "protectedPkg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db0

    .line 5447
    if-eqz v37, :cond_da4

    .line 5448
    iget-object v2, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 5450
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_d8e

    .line 5451
    move-object/from16 v2, v37

    .end local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d90

    .line 5450
    .end local v2    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d8e
    move-object/from16 v2, v37

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    .end local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_d90
    move-object v15, v2

    move-object v2, v3

    move-object/from16 v28, v11

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v4, v34

    move-object/from16 v13, v35

    goto/16 :goto_ef0

    .line 5447
    .end local v2    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "value":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_da4
    move-object/from16 v2, v37

    .end local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v5, v26

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    move-object/from16 v2, v34

    goto/16 :goto_ed6

    .line 5454
    .end local v2    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_db0
    move-object/from16 v2, v37

    .end local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "disablePkg"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e43

    .line 5456
    if-eqz v30, :cond_e37

    .line 5457
    const/4 v4, 0x1

    .line 5460
    .local v4, "isDisabled":Z
    iget-object v8, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v37, v2

    const/4 v2, 0x0

    .end local v2    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 5461
    .end local v18    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_de2

    .line 5462
    invoke-virtual {v2, v15, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5463
    .local v6, "target":[Ljava/lang/String;
    array-length v8, v6

    move/from16 v10, v20

    :goto_dd4
    if-ge v10, v8, :cond_de2

    aget-object v13, v6, v10

    .line 5464
    .local v13, "oper":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_ddf

    .line 5465
    const/4 v4, 0x0

    .line 5463
    .end local v13    # "oper":Ljava/lang/String;
    :cond_ddf
    add-int/lit8 v10, v10, 0x1

    goto :goto_dd4

    .line 5469
    .end local v6    # "target":[Ljava/lang/String;
    :cond_de2
    iget-object v6, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    invoke-interface {v6, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .line 5471
    .end local v2    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_e1d

    .line 5472
    const-string v2, "com.android.chrome"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e10

    .line 5473
    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isNoteVzwProject()Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3100()Z

    move-result v2

    if-eqz v2, :cond_dfb

    const/4 v4, 0x1

    .line 5474
    :cond_dfb
    if-eqz v4, :cond_e0d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isBrowserInstalled()Z

    move-result v2

    if-nez v2, :cond_e0d

    move-object/from16 v2, v34

    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .local v2, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isLwcContainerType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result v5

    if-nez v5, :cond_e12

    .line 5475
    const/4 v4, 0x0

    goto :goto_e12

    .line 5474
    .end local v2    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_e0d
    move-object/from16 v2, v34

    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v2    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    goto :goto_e12

    .line 5472
    .end local v2    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_e10
    move-object/from16 v2, v34

    .line 5478
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v2    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_e12
    :goto_e12
    if-eqz v4, :cond_e1a

    .line 5479
    move-object/from16 v15, v30

    .end local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e21

    .line 5478
    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e1a
    move-object/from16 v15, v30

    .end local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_e21

    .line 5471
    .end local v2    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_e1d
    move-object/from16 v15, v30

    move-object/from16 v2, v34

    .line 5481
    .end local v4    # "isDisabled":Z
    .end local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v2    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e21
    move-object v4, v2

    move-object v2, v3

    move-object/from16 v28, v11

    move-object/from16 v30, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    goto/16 :goto_ef0

    .line 5456
    .end local v8    # "value":Ljava/lang/String;
    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_e37
    move-object/from16 v37, v2

    move-object/from16 v15, v30

    move-object/from16 v2, v34

    .end local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .local v2, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v5, v26

    move-object/from16 v6, v29

    goto/16 :goto_ed6

    .line 5482
    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_e43
    move-object/from16 v37, v2

    move-object/from16 v15, v30

    move-object/from16 v2, v34

    .end local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .local v2, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "fotadisablePkg"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ea9

    .line 5483
    if-eqz v29, :cond_ea4

    .line 5484
    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 5488
    .end local v18    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_e87

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e87

    .line 5490
    iget-object v4, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v5, v33

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5492
    .local v4, "re_enable_attr":Ljava/lang/String;
    if-eqz v4, :cond_e7f

    move-object/from16 v5, v36

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e7f

    .line 5493
    move-object/from16 v5, v26

    .end local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v29

    goto :goto_e86

    .line 5492
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e7f
    move-object/from16 v5, v26

    .line 5495
    .end local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, v29

    .end local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5497
    .end local v4    # "re_enable_attr":Ljava/lang/String;
    :goto_e86
    goto :goto_e8b

    .line 5488
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e87
    move-object/from16 v5, v26

    move-object/from16 v6, v29

    .line 5506
    .end local v9    # "tag":Ljava/lang/String;
    .end local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e8b
    move-object v4, v2

    move-object v2, v3

    move-object/from16 v26, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v11

    move-object/from16 v30, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    goto :goto_ef0

    .line 5483
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "value":Ljava/lang/String;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ea4
    move-object/from16 v5, v26

    move-object/from16 v6, v29

    .end local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_ed6

    .line 5500
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ea9
    move-object/from16 v5, v26

    move-object/from16 v6, v29

    .end local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v4, v25

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ed6

    .line 5502
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    move-object v4, v2

    move-object v2, v3

    move-object/from16 v26, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v11

    move-object/from16 v30, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    goto :goto_ef0

    .line 5506
    .end local v2    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v3    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "productName":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v31    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v32    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v10    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "productName":Ljava/lang/String;
    .restart local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ed6
    :goto_ed6
    move-object v4, v2

    move-object v2, v3

    move-object/from16 v26, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v11

    move-object/from16 v30, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v13, v35

    move-object/from16 v15, v37

    .end local v16    # "intVal":I
    .end local v17    # "booleanVal":Z
    .end local v18    # "value":Ljava/lang/String;
    .end local v19    # "nameAttribute":Ljava/lang/String;
    .end local v20    # "productName":Ljava/lang/String;
    .end local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "intVal":I
    .local v6, "booleanVal":Z
    .restart local v7    # "productName":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    .local v9, "nameAttribute":Ljava/lang/String;
    :goto_ef0
    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v8, v26

    move-object/from16 v9, v28

    move-object/from16 v6, v29

    move-object/from16 v5, v30

    .line 5604
    .end local v26    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v29    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v16    # "intVal":I
    .restart local v17    # "booleanVal":Z
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v19    # "nameAttribute":Ljava/lang/String;
    :goto_f00
    iget-object v3, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_f06
    .catch Ljava/lang/Exception; {:try_start_b35 .. :try_end_f06} :catch_f21

    move-object/from16 v20, v7

    move/from16 v7, v27

    .end local v24    # "event":I
    .local v3, "event":I
    goto/16 :goto_4c

    .line 4903
    .end local v2    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "isRCPDataSettings":Z
    .local v7, "isRCPDataSettings":Z
    .restart local v20    # "productName":Ljava/lang/String;
    .restart local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f0c
    move/from16 v24, v3

    move-object v2, v4

    move/from16 v27, v7

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object/from16 v35, v13

    move-object/from16 v37, v15

    move-object/from16 v7, v20

    move-object/from16 v3, v22

    move-object v15, v5

    move-object v5, v8

    move-object v11, v9

    .line 5608
    .end local v3    # "event":I
    .end local v4    # "row":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "isRCPDataSettings":Z
    .end local v8    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "intVal":I
    .end local v17    # "booleanVal":Z
    .end local v18    # "value":Ljava/lang/String;
    .end local v19    # "nameAttribute":Ljava/lang/String;
    .end local v20    # "productName":Ljava/lang/String;
    .end local v21    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_f3e

    .line 5606
    :catch_f21
    move-exception v0

    move-object v2, v0

    .line 5607
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFromXml EX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MumXmlDataParser"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5609
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_f3e
    return-void
.end method

.method public setTypeList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;)V"
        }
    .end annotation

    .line 4856
    .local p1, "type":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/container/KnoxConfigurationType;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 4857
    return-void
.end method

.method public writeToXml()V
    .registers 36

    .line 5852
    const-string v1, "disablePkg"

    const-string/jumbo v2, "protectedPkg"

    const-string v3, "forbiddenString"

    const-string/jumbo v4, "persona"

    const-string/jumbo v5, "policy"

    const-string v6, "BadgePolicy"

    const-string/jumbo v7, "knoxCore"

    const-string/jumbo v8, "row"

    const-string/jumbo v9, "table"

    const-string/jumbo v10, "name"

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3400()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "enterprisedata.xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5853
    .local v11, "file":Ljava/io/File;
    const/4 v12, 0x0

    .line 5855
    .local v12, "stream":Ljava/io/FileOutputStream;
    :try_start_36
    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v14, 0x0

    invoke-direct {v13, v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_ad7

    move-object v12, v13

    .line 5856
    :try_start_3d
    new-instance v13, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v13}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 5857
    .local v13, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v15, 0x0

    .line 5858
    .local v15, "intVal":I
    const/16 v16, 0x0

    .line 5859
    .local v16, "strVal":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 5860
    .local v17, "booleanVal":Ljava/lang/Boolean;
    const-string/jumbo v14, "utf-8"

    invoke-interface {v13, v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4f} :catch_ad0

    .line 5861
    const/4 v14, 0x1

    move-object/from16 v18, v11

    .end local v11    # "file":Ljava/io/File;
    .local v18, "file":Ljava/io/File;
    :try_start_52
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v14, 0x0

    invoke-interface {v13, v14, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5863
    invoke-interface {v13, v14, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5864
    const-string v11, "MUMContainerType"

    invoke-interface {v13, v14, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5865
    move-object/from16 v11, p0

    iget-object v14, v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_6e} :catch_acb

    const-string/jumbo v11, "package"

    move/from16 v20, v15

    .end local v15    # "intVal":I
    .local v20, "intVal":I
    const-string/jumbo v15, "value"

    if-eqz v19, :cond_a10

    :try_start_78
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-object/from16 v21, v19

    .line 5866
    .local v21, "type":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    move-object/from16 v19, v14

    const/4 v14, 0x0

    invoke-interface {v13, v14, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_86} :catch_acb

    .line 5867
    move-object/from16 v14, v21

    move-object/from16 v21, v12

    .end local v12    # "stream":Ljava/io/FileOutputStream;
    .local v14, "type":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .local v21, "stream":Ljava/io/FileOutputStream;
    :try_start_8a
    instance-of v12, v14, Lcom/samsung/android/knox/container/LightweightConfigurationType;
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8c} :catch_ac6

    move-object/from16 v22, v9

    const-string/jumbo v9, "type"

    if-eqz v12, :cond_a0

    .line 5868
    :try_start_93
    sget-object v12, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v12}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v23, v5

    const/4 v5, 0x0

    invoke-interface {v13, v5, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ca

    .line 5869
    :cond_a0
    move-object/from16 v23, v5

    instance-of v5, v14, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_b1

    .line 5870
    sget-object v5, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-interface {v13, v12, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ca

    .line 5871
    :cond_b1
    instance-of v5, v14, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    if-eqz v5, :cond_c0

    .line 5872
    sget-object v5, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-interface {v13, v12, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ca

    .line 5874
    :cond_c0
    sget-object v5, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-interface {v13, v12, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5877
    :goto_ca
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_ce} :catch_ac6

    .line 5878
    .end local v20    # "intVal":I
    .local v5, "intVal":I
    const-string v12, "column"

    if-ltz v5, :cond_eb

    .line 5879
    move-object/from16 v24, v6

    const/4 v6, 0x0

    :try_start_d5
    invoke-interface {v13, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5880
    const-string v6, "UID"

    move-object/from16 v25, v7

    const/4 v7, 0x0

    invoke-interface {v13, v7, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5881
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v7, v15, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5882
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ef

    .line 5878
    :cond_eb
    move-object/from16 v24, v6

    move-object/from16 v25, v7

    .line 5884
    :goto_ef
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v6

    move v5, v6

    .line 5885
    const/4 v6, -0x1

    if-lt v5, v6, :cond_10a

    .line 5886
    const/4 v6, 0x0

    invoke-interface {v13, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5887
    const-string v7, "UserID"

    invoke-interface {v13, v6, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5888
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v6, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5889
    invoke-interface {v13, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5891
    :cond_10a
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v6

    .line 5892
    .local v6, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_15a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_15a

    .line 5893
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5894
    const-string v7, "PersonaIDs"

    move/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "intVal":I
    .restart local v20    # "intVal":I
    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5895
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_126
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_153

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 5896
    .local v7, "personaId":Ljava/lang/Integer;
    move-object/from16 v26, v5

    const/4 v5, 0x0

    invoke-interface {v13, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5897
    const-string/jumbo v5, "id"

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v28, v6

    .end local v6    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v28, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v27, v7

    const/4 v7, 0x0

    .end local v7    # "personaId":Ljava/lang/Integer;
    .local v27, "personaId":Ljava/lang/Integer;
    invoke-interface {v13, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5898
    invoke-interface {v13, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5899
    move-object/from16 v5, v26

    move-object/from16 v6, v28

    .end local v27    # "personaId":Ljava/lang/Integer;
    goto :goto_126

    .line 5900
    .end local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_153
    move-object/from16 v28, v6

    .end local v6    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_15e

    .line 5892
    .end local v20    # "intVal":I
    .end local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "intVal":I
    .restart local v6    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_15a
    move/from16 v20, v5

    move-object/from16 v28, v6

    .line 5902
    .end local v5    # "intVal":I
    .end local v6    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "intVal":I
    .restart local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_15e
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v5

    .line 5903
    .end local v16    # "strVal":Ljava/lang/String;
    .local v5, "strVal":Ljava/lang/String;
    if-eqz v5, :cond_173

    .line 5904
    const/4 v6, 0x0

    invoke-interface {v13, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5905
    const-string v7, "Name"

    invoke-interface {v13, v6, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5906
    invoke-interface {v13, v6, v15, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5907
    invoke-interface {v13, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5911
    :cond_173
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isDefaultConfigType()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 5912
    .end local v17    # "booleanVal":Ljava/lang/Boolean;
    .local v6, "booleanVal":Ljava/lang/Boolean;
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5913
    const-string v7, "DefaultConfigType"

    move-object/from16 v26, v4

    const/4 v4, 0x0

    invoke-interface {v13, v4, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5914
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v4, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5915
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5917
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getContainerLayout()I

    move-result v4

    .line 5918
    .end local v20    # "intVal":I
    .local v4, "intVal":I
    if-ltz v4, :cond_1b2

    .line 5919
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5920
    const-string v7, "DefaultContainerLayout"

    move-object/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "strVal":Ljava/lang/String;
    .restart local v16    # "strVal":Ljava/lang/String;
    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5921
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5922
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1b4

    .line 5918
    .end local v16    # "strVal":Ljava/lang/String;
    .restart local v5    # "strVal":Ljava/lang/String;
    :cond_1b2
    move-object/from16 v16, v5

    .line 5925
    .end local v5    # "strVal":Ljava/lang/String;
    .restart local v16    # "strVal":Ljava/lang/String;
    :goto_1b4
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isLayoutSwitchingAllowed()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5926
    .end local v6    # "booleanVal":Ljava/lang/Boolean;
    .local v5, "booleanVal":Ljava/lang/Boolean;
    const/4 v6, 0x0

    invoke-interface {v13, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5927
    const-string v7, "LayoutSwitchingAllowed"

    invoke-interface {v13, v6, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5928
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v6, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5929
    invoke-interface {v13, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5932
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 5933
    .end local v16    # "strVal":Ljava/lang/String;
    .local v6, "strVal":Ljava/lang/String;
    if-eqz v6, :cond_1ec

    .line 5934
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5935
    const-string v7, "Version"

    move/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "intVal":I
    .local v16, "intVal":I
    invoke-interface {v13, v4, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5936
    invoke-interface {v13, v4, v15, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5937
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1ee

    .line 5933
    .end local v16    # "intVal":I
    .restart local v4    # "intVal":I
    :cond_1ec
    move/from16 v16, v4

    .line 5939
    .end local v4    # "intVal":I
    .restart local v16    # "intVal":I
    :goto_1ee
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v4

    .line 5940
    .end local v16    # "intVal":I
    .restart local v4    # "intVal":I
    if-eqz v4, :cond_20b

    .line 5941
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5942
    const-string v7, "MaximumTimeToLock"

    move-object/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "booleanVal":Ljava/lang/Boolean;
    .local v16, "booleanVal":Ljava/lang/Boolean;
    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5943
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5944
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_20d

    .line 5940
    .end local v16    # "booleanVal":Ljava/lang/Boolean;
    .restart local v5    # "booleanVal":Ljava/lang/Boolean;
    :cond_20b
    move-object/from16 v16, v5

    .line 5947
    .end local v5    # "booleanVal":Ljava/lang/Boolean;
    .restart local v16    # "booleanVal":Ljava/lang/Boolean;
    :goto_20d
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v5

    move v4, v5

    .line 5948
    if-eqz v4, :cond_227

    .line 5949
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5950
    const-string v7, "PasswordMinimumLength"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5951
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5952
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5954
    :cond_227
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v5

    move v4, v5

    .line 5955
    if-eqz v4, :cond_241

    .line 5956
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5957
    const-string v7, "PasswordMinimumNonLetters"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5958
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5959
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5961
    :cond_241
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v5

    move v4, v5

    .line 5962
    if-eqz v4, :cond_25b

    .line 5963
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5964
    const-string v7, "PasswordMinimumLetters"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5965
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5966
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5968
    :cond_25b
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v5

    move v4, v5

    .line 5969
    if-eqz v4, :cond_275

    .line 5970
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5971
    const-string v7, "PasswordMinimumNumeric"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5972
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5973
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5975
    :cond_275
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v5

    move v4, v5

    .line 5976
    if-eqz v4, :cond_28f

    .line 5977
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5978
    const-string v7, "PasswordMinimumUpperCase"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5979
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5980
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5982
    :cond_28f
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v5

    move v4, v5

    .line 5983
    if-eqz v4, :cond_2a9

    .line 5984
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5985
    const-string v7, "PasswordMinimumLowerCase"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5986
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5987
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5989
    :cond_2a9
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v5

    move v4, v5

    .line 5990
    if-eqz v4, :cond_2c3

    .line 5991
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5992
    const-string v7, "PasswordMinimumSymbols"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5993
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5994
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5996
    :cond_2c3
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v5

    move v4, v5

    .line 5997
    if-eqz v4, :cond_2dd

    .line 5998
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5999
    const-string v7, "PasswordQuality"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6000
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6001
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6003
    :cond_2dd
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v5

    move v4, v5

    .line 6004
    if-eqz v4, :cond_2f7

    .line 6005
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6006
    const-string v7, "MaximumFailedPasswordsForWipe"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6007
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6008
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6010
    :cond_2f7
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v5

    move v4, v5

    .line 6011
    if-eqz v4, :cond_311

    .line 6012
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6013
    const-string v7, "MaximumCharacterOccurences"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6014
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6015
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6017
    :cond_311
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v5

    move v4, v5

    .line 6018
    if-eqz v4, :cond_32b

    .line 6019
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6020
    const-string v7, "MaximumCharacterSequenceLength"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6021
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6022
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6024
    :cond_32b
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v5

    move v4, v5

    .line 6025
    if-eqz v4, :cond_345

    .line 6026
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6027
    const-string v7, "MaximumNumericSequenceLength"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6028
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6029
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6031
    :cond_345
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getKeyguardDisabledFeatures()I

    move-result v5

    move v4, v5

    .line 6032
    if-ltz v4, :cond_35f

    .line 6033
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6034
    const-string v7, "KeyguardDisabledFeatures"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6035
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6036
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6038
    :cond_35f
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6039
    .end local v16    # "booleanVal":Ljava/lang/Boolean;
    .restart local v5    # "booleanVal":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_388

    .line 6040
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6041
    const-string v7, "SimplePasswordEnabled"

    move/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "intVal":I
    .local v16, "intVal":I
    invoke-interface {v13, v4, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6042
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v4, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6043
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_38a

    .line 6039
    .end local v16    # "intVal":I
    .restart local v4    # "intVal":I
    :cond_388
    move/from16 v16, v4

    .line 6045
    .end local v4    # "intVal":I
    .restart local v16    # "intVal":I
    :goto_38a
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 6046
    .end local v5    # "booleanVal":Ljava/lang/Boolean;
    .local v4, "booleanVal":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3af

    .line 6047
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6048
    const-string v7, "MultifactorAuthEnabled"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6049
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6050
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6052
    :cond_3af
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v4, v5

    .line 6053
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3d5

    .line 6054
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6055
    const-string v7, "UserManaged"

    invoke-interface {v13, v5, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6056
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v5, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6057
    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6059
    :cond_3d5
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v4, v5

    .line 6060
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v5

    .line 6061
    .end local v16    # "intVal":I
    .local v5, "intVal":I
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_40c

    if-lez v5, :cond_40c

    .line 6062
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6063
    const-string v7, "BiometricAuthEnabled"

    move-object/from16 v16, v6

    const/4 v6, 0x0

    .end local v6    # "strVal":Ljava/lang/String;
    .local v16, "strVal":Ljava/lang/String;
    invoke-interface {v13, v6, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6064
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v6, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6065
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v6, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6066
    invoke-interface {v13, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_40e

    .line 6061
    .end local v16    # "strVal":Ljava/lang/String;
    .restart local v6    # "strVal":Ljava/lang/String;
    :cond_40c
    move-object/from16 v16, v6

    .line 6068
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v16    # "strVal":Ljava/lang/String;
    :goto_40e
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v6

    .line 6069
    .local v6, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_449

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_449

    .line 6070
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6071
    const-string v9, "ForbiddenStrings"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6072
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_427
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_442

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6073
    .local v9, "string":Ljava/lang/String;
    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "booleanVal":Ljava/lang/Boolean;
    .restart local v17    # "booleanVal":Ljava/lang/Boolean;
    invoke-interface {v13, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6074
    invoke-interface {v13, v4, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6075
    invoke-interface {v13, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6076
    move-object/from16 v4, v17

    .end local v9    # "string":Ljava/lang/String;
    goto :goto_427

    .line 6077
    .end local v17    # "booleanVal":Ljava/lang/Boolean;
    .restart local v4    # "booleanVal":Ljava/lang/Boolean;
    :cond_442
    move-object/from16 v17, v4

    .end local v4    # "booleanVal":Ljava/lang/Boolean;
    .restart local v17    # "booleanVal":Ljava/lang/Boolean;
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_44b

    .line 6069
    .end local v17    # "booleanVal":Ljava/lang/Boolean;
    .restart local v4    # "booleanVal":Ljava/lang/Boolean;
    :cond_449
    move-object/from16 v17, v4

    .line 6079
    .end local v4    # "booleanVal":Ljava/lang/Boolean;
    .restart local v17    # "booleanVal":Ljava/lang/Boolean;
    :goto_44b
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v4

    .line 6080
    .end local v16    # "strVal":Ljava/lang/String;
    .local v4, "strVal":Ljava/lang/String;
    if-eqz v4, :cond_460

    .line 6081
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6082
    const-string v9, "PatternRestriction"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6083
    invoke-interface {v13, v7, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6084
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6086
    :cond_460
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 6087
    if-eqz v4, :cond_476

    .line 6088
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6089
    const-string v9, "CustomBadgeIcon"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6090
    invoke-interface {v13, v7, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6091
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6093
    :cond_476
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 6094
    if-eqz v4, :cond_48c

    .line 6095
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6096
    const-string v9, "CustomHomeScreenWallpaper"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6097
    invoke-interface {v13, v7, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6098
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6101
    :cond_48c
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 6103
    .end local v17    # "booleanVal":Ljava/lang/Boolean;
    .local v7, "booleanVal":Ljava/lang/Boolean;
    const/4 v9, 0x0

    invoke-interface {v13, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6104
    const-string v9, "EC"

    move-object/from16 v27, v3

    const/4 v3, 0x0

    invoke-interface {v13, v3, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6105
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v3, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6106
    invoke-interface {v13, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6108
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerNameIcon()Ljava/lang/String;

    move-result-object v3

    .line 6109
    .end local v4    # "strVal":Ljava/lang/String;
    .local v3, "strVal":Ljava/lang/String;
    if-eqz v3, :cond_4c3

    .line 6110
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6111
    const-string v9, "NameIcon"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6112
    invoke-interface {v13, v4, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6113
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6115
    :cond_4c3
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 6116
    if-eqz v3, :cond_4d9

    .line 6117
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6118
    const-string v9, "ECName"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6119
    invoke-interface {v13, v4, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6120
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6122
    :cond_4d9
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerIcon()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 6123
    if-eqz v3, :cond_4ef

    .line 6124
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6125
    const-string v9, "ECIcon"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6126
    invoke-interface {v13, v4, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6127
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6129
    :cond_4ef
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerBadge()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 6130
    if-eqz v3, :cond_505

    .line 6131
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6132
    const-string v9, "ECBadge"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6133
    invoke-interface {v13, v4, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6134
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6137
    :cond_505
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 6138
    if-eqz v3, :cond_51b

    .line 6139
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6140
    const-string v9, "CustomLockScreenWallpaper"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6141
    invoke-interface {v13, v4, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6142
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6144
    :cond_51b
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 6145
    if-eqz v3, :cond_531

    .line 6146
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6147
    const-string v9, "CustomStatusLabel"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6148
    invoke-interface {v13, v4, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6149
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6151
    :cond_531
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 6152
    if-eqz v3, :cond_547

    .line 6153
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6154
    const-string v9, "CustomStatusIcon"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6155
    invoke-interface {v13, v4, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6156
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6158
    :cond_547
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 6159
    .end local v7    # "booleanVal":Ljava/lang/Boolean;
    .local v4, "booleanVal":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_56d

    .line 6160
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6161
    const-string v9, "AllowMultiwindowMode"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6162
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v7, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6163
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6165
    :cond_56d
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v4, v7

    .line 6166
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_594

    .line 6167
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6168
    const-string v9, "AllowTaskManager"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6169
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v7, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6170
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6173
    :cond_594
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isUSBDebuggingAllowed()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v4, v7

    .line 6174
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5ba

    .line 6175
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6176
    const-string v9, "USBDebuggingAllowed"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6177
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v7, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6178
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6181
    :cond_5ba
    instance-of v7, v14, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v7, :cond_6ae

    .line 6182
    move-object v7, v14

    check-cast v7, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    .line 6183
    .local v7, "kiosktype":Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
    invoke-virtual {v7}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v4, v9

    .line 6184
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5eb

    .line 6185
    const/4 v9, 0x0

    invoke-interface {v13, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6186
    const-string v9, "AllowSettingsChanges"

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "strVal":Ljava/lang/String;
    .restart local v16    # "strVal":Ljava/lang/String;
    invoke-interface {v13, v3, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6187
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v3, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6188
    invoke-interface {v13, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5ed

    .line 6184
    .end local v16    # "strVal":Ljava/lang/String;
    .restart local v3    # "strVal":Ljava/lang/String;
    :cond_5eb
    move-object/from16 v16, v3

    .line 6190
    .end local v3    # "strVal":Ljava/lang/String;
    .restart local v16    # "strVal":Ljava/lang/String;
    :goto_5ed
    invoke-virtual {v7}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 6191
    .end local v4    # "booleanVal":Ljava/lang/Boolean;
    .local v3, "booleanVal":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v9, 0x1

    if-eq v4, v9, :cond_613

    .line 6192
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6193
    const-string v9, "AllowStatusBarExpansion"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6194
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v4, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6195
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6197
    :cond_613
    invoke-virtual {v7}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v3, v4

    .line 6198
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_639

    .line 6199
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6200
    const-string v9, "AllowHomeKey"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6201
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v4, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6202
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6204
    :cond_639
    invoke-virtual {v7}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v3, v4

    .line 6205
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_65f

    .line 6206
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6207
    const-string v9, "AllowClearAllNotification"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6208
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v4, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6209
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6212
    :cond_65f
    invoke-virtual {v7}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v3, v4

    .line 6213
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_685

    .line 6214
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6215
    const-string v9, "HideSystemBar"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6216
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v4, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6217
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6219
    :cond_685
    invoke-virtual {v7}, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v3, v4

    .line 6220
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6ab

    .line 6221
    const/4 v4, 0x0

    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6222
    const-string v9, "WipeRecentTasks"

    invoke-interface {v13, v4, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6223
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v4, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6224
    invoke-interface {v13, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6227
    .end local v7    # "kiosktype":Lcom/samsung/android/knox/container/ContainerModeConfigurationType;
    :cond_6ab
    move-object/from16 v17, v3

    goto :goto_6b2

    .line 6181
    .end local v16    # "strVal":Ljava/lang/String;
    .local v3, "strVal":Ljava/lang/String;
    .restart local v4    # "booleanVal":Ljava/lang/Boolean;
    :cond_6ae
    move-object/from16 v16, v3

    .end local v3    # "strVal":Ljava/lang/String;
    .restart local v16    # "strVal":Ljava/lang/String;
    move-object/from16 v17, v4

    .line 6227
    .end local v4    # "booleanVal":Ljava/lang/Boolean;
    .restart local v17    # "booleanVal":Ljava/lang/Boolean;
    :goto_6b2
    instance-of v3, v14, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v3, :cond_6fc

    .line 6228
    move-object v3, v14

    check-cast v3, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    .line 6229
    .local v3, "lwctype":Lcom/samsung/android/knox/container/LightweightConfigurationType;
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderTitle()Ljava/lang/String;

    move-result-object v4

    .line 6230
    .end local v16    # "strVal":Ljava/lang/String;
    .local v4, "strVal":Ljava/lang/String;
    if-eqz v4, :cond_6ce

    .line 6231
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6232
    const-string v9, "FolderHeaderTitle"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6233
    invoke-interface {v13, v7, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6234
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6236
    :cond_6ce
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 6237
    if-eqz v4, :cond_6e4

    .line 6238
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6239
    const-string v9, "FolderHeaderIcon"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6240
    invoke-interface {v13, v7, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6241
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6244
    :cond_6e4
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderDisabledChangeLayout()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 6245
    if-eqz v4, :cond_6fa

    .line 6246
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6247
    const-string v9, "FolderDisabledChangeLayout"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6248
    invoke-interface {v13, v7, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6249
    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6252
    .end local v3    # "lwctype":Lcom/samsung/android/knox/container/LightweightConfigurationType;
    :cond_6fa
    move-object/from16 v16, v4

    .end local v4    # "strVal":Ljava/lang/String;
    .restart local v16    # "strVal":Ljava/lang/String;
    :cond_6fc
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v3
    :try_end_700
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_700} :catch_ac6

    .line 6253
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "true"

    if-eqz v3, :cond_77f

    :try_start_705
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_77f

    .line 6254
    const/4 v7, 0x0

    invoke-interface {v13, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6255
    const-string v9, "AppInstallList"

    invoke-interface {v13, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6256
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_718
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_71c
    .catch Ljava/io/IOException; {:try_start_705 .. :try_end_71c} :catch_ac6

    move-object/from16 v20, v3

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "application"

    if-eqz v9, :cond_739

    :try_start_722
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6257
    .local v9, "application":Ljava/lang/String;
    move/from16 v29, v5

    const/4 v5, 0x0

    .end local v5    # "intVal":I
    .local v29, "intVal":I
    invoke-interface {v13, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6258
    invoke-interface {v13, v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6259
    invoke-interface {v13, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6260
    move-object/from16 v3, v20

    move/from16 v5, v29

    .end local v9    # "application":Ljava/lang/String;
    goto :goto_718

    .line 6262
    .end local v29    # "intVal":I
    .restart local v5    # "intVal":I
    :cond_739
    move/from16 v29, v5

    .end local v5    # "intVal":I
    .restart local v29    # "intVal":I
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v5

    .line 6263
    .local v5, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_776

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_776

    .line 6264
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_74b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_771

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6265
    .restart local v9    # "application":Ljava/lang/String;
    move-object/from16 v30, v5

    const/4 v5, 0x0

    .end local v5    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6266
    invoke-interface {v13, v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6267
    const-string/jumbo v5, "remove"

    move-object/from16 v31, v6

    const/4 v6, 0x0

    .end local v6    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v31, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13, v6, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6268
    invoke-interface {v13, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6269
    move-object/from16 v5, v30

    move-object/from16 v6, v31

    .end local v9    # "application":Ljava/lang/String;
    goto :goto_74b

    .line 6264
    .end local v30    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_771
    move-object/from16 v30, v5

    move-object/from16 v31, v6

    .end local v5    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_77a

    .line 6263
    .end local v30    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_776
    move-object/from16 v30, v5

    move-object/from16 v31, v6

    .line 6272
    .end local v5    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_77a
    const/4 v3, 0x0

    invoke-interface {v13, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_785

    .line 6253
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "intVal":I
    .end local v30    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "intVal":I
    .restart local v6    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_77f
    move-object/from16 v20, v3

    move/from16 v29, v5

    move-object/from16 v31, v6

    .line 6274
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "intVal":I
    .end local v6    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "intVal":I
    .restart local v31    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_785
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v3

    .line 6275
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_7ba

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7ba

    .line 6276
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6277
    const-string v6, "ProtectedPkgList"

    invoke-interface {v13, v5, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6278
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_79e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6279
    .local v6, "protectedPkg":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v13, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6280
    invoke-interface {v13, v7, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6281
    invoke-interface {v13, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6282
    nop

    .end local v6    # "protectedPkg":Ljava/lang/String;
    goto :goto_79e

    .line 6283
    :cond_7b6
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6286
    :cond_7ba
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v5

    move-object v3, v5

    .line 6287
    if-eqz v3, :cond_7f0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7f0

    .line 6288
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6289
    const-string v6, "GoogleAppsPkgList"

    invoke-interface {v13, v5, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6290
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7d4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7ec

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6291
    .local v6, "disablePkg":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v13, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6292
    invoke-interface {v13, v7, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6293
    invoke-interface {v13, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6294
    nop

    .end local v6    # "disablePkg":Ljava/lang/String;
    goto :goto_7d4

    .line 6295
    :cond_7ec
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6298
    :cond_7f0
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v5

    move-object v3, v5

    .line 6299
    if-eqz v3, :cond_869

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_869

    .line 6300
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6301
    const-string v6, "FOTADisableAppsPkgList"

    invoke-interface {v13, v5, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6302
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_80a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_80e
    .catch Ljava/io/IOException; {:try_start_722 .. :try_end_80e} :catch_ac6

    const-string/jumbo v7, "fotadisablePkg"

    if-eqz v6, :cond_825

    :try_start_813
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6303
    .restart local v6    # "disablePkg":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-interface {v13, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6304
    invoke-interface {v13, v9, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6305
    invoke-interface {v13, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6306
    nop

    .end local v6    # "disablePkg":Ljava/lang/String;
    goto :goto_80a

    .line 6308
    :cond_825
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v5

    .line 6309
    .local v5, "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_860

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_860

    .line 6310
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_835
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_85b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6311
    .local v9, "reenablePkg":Ljava/lang/String;
    move-object/from16 v30, v1

    const/4 v1, 0x0

    invoke-interface {v13, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6312
    invoke-interface {v13, v1, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6313
    const-string/jumbo v1, "reenable"

    move-object/from16 v32, v2

    const/4 v2, 0x0

    invoke-interface {v13, v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6314
    invoke-interface {v13, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6315
    move-object/from16 v1, v30

    move-object/from16 v2, v32

    .end local v9    # "reenablePkg":Ljava/lang/String;
    goto :goto_835

    .line 6310
    :cond_85b
    move-object/from16 v30, v1

    move-object/from16 v32, v2

    goto :goto_864

    .line 6309
    :cond_860
    move-object/from16 v30, v1

    move-object/from16 v32, v2

    .line 6318
    :goto_864
    const/4 v1, 0x0

    invoke-interface {v13, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_86d

    .line 6299
    .end local v5    # "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_869
    move-object/from16 v30, v1

    move-object/from16 v32, v2

    .line 6322
    :goto_86d
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v1
    :try_end_871
    .catch Ljava/io/IOException; {:try_start_813 .. :try_end_871} :catch_ac6

    .line 6323
    .local v1, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const-string/jumbo v2, "provider"

    const-string/jumbo v4, "property"

    if-eqz v1, :cond_8fc

    :try_start_879
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8fc

    .line 6324
    const/4 v5, 0x0

    .line 6325
    .local v5, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    invoke-interface {v13, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6326
    const-string v7, "RCPDataSettings"

    invoke-interface {v13, v6, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6327
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_891
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8f3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6328
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move-object v5, v9

    .line 6329
    const/4 v9, 0x0

    invoke-interface {v13, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6330
    invoke-interface {v13, v9, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6331
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8af
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8e2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    move-object/from16 v33, v20

    .line 6332
    .local v33, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .local v20, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-interface {v13, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6333
    move-object/from16 v1, v33

    move-object/from16 v33, v3

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v33, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v34, v5

    const/4 v5, 0x0

    .end local v5    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v34, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v13, v5, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6334
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v13, v5, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6335
    invoke-interface {v13, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6336
    move-object/from16 v1, v20

    move-object/from16 v3, v33

    move-object/from16 v5, v34

    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8af

    .line 6337
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v33    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v1, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_8e2
    move-object/from16 v20, v1

    move-object/from16 v33, v3

    move-object/from16 v34, v5

    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v33    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    invoke-interface {v13, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6338
    move-object/from16 v1, v20

    move-object/from16 v3, v33

    move-object/from16 v5, v34

    .end local v7    # "key":Ljava/lang/String;
    goto :goto_891

    .line 6339
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v33    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_8f3
    move-object/from16 v20, v1

    move-object/from16 v33, v3

    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v33    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v13, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_900

    .line 6323
    .end local v5    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v33    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8fc
    move-object/from16 v20, v1

    move-object/from16 v33, v3

    .line 6341
    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v33    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_900
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v1

    .line 6342
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v1, :cond_97b

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_97b

    .line 6343
    const/4 v3, 0x0

    .line 6344
    .local v3, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    invoke-interface {v13, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6345
    const-string v6, "RCPAllowChangeDataSettings"

    invoke-interface {v13, v5, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6346
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_91e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_974

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6347
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v3, v7

    .line 6348
    const/4 v7, 0x0

    invoke-interface {v13, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6349
    invoke-interface {v13, v7, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6350
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_93c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_967

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 6351
    .local v9, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-interface {v13, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6352
    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v34, v3

    const/4 v3, 0x0

    .end local v3    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v34    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v13, v3, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6353
    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v13, v3, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6354
    invoke-interface {v13, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6355
    move-object/from16 v1, v20

    move-object/from16 v3, v34

    .end local v9    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_93c

    .line 6356
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v34    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v3    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_967
    move-object/from16 v20, v1

    move-object/from16 v34, v3

    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v3    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v34    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    invoke-interface {v13, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6357
    move-object/from16 v1, v20

    move-object/from16 v3, v34

    .end local v6    # "key":Ljava/lang/String;
    goto :goto_91e

    .line 6358
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v34    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v3    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_974
    move-object/from16 v20, v1

    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const/4 v1, 0x0

    invoke-interface {v13, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_97d

    .line 6342
    .end local v3    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_97b
    move-object/from16 v20, v1

    .line 6360
    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :goto_97d
    invoke-virtual {v14}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v1

    .line 6361
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v1, :cond_9f0

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9f0

    .line 6362
    const/4 v2, 0x0

    .line 6363
    .local v2, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    invoke-interface {v13, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6364
    const-string v5, "RCPNotifSettings"

    invoke-interface {v13, v3, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6365
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_99b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6366
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v2, v6

    .line 6367
    const/4 v6, 0x0

    invoke-interface {v13, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6368
    invoke-interface {v13, v6, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6369
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9b9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9e0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 6370
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    invoke-interface {v13, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6371
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    move-object/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-interface {v13, v1, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6372
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-interface {v13, v1, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6373
    invoke-interface {v13, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6374
    move-object/from16 v1, v20

    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_9b9

    .line 6375
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_9e0
    move-object/from16 v20, v1

    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const/4 v1, 0x0

    invoke-interface {v13, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6376
    move-object/from16 v1, v20

    .end local v5    # "key":Ljava/lang/String;
    goto :goto_99b

    .line 6377
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_9e9
    move-object/from16 v20, v1

    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const/4 v1, 0x0

    invoke-interface {v13, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9f2

    .line 6361
    .end local v2    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_9f0
    move-object/from16 v20, v1

    .line 6380
    .end local v1    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :goto_9f2
    const/4 v1, 0x0

    invoke-interface {v13, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6381
    move-object/from16 v11, p0

    move-object/from16 v14, v19

    move-object/from16 v12, v21

    move-object/from16 v9, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    move-object/from16 v4, v26

    move-object/from16 v3, v27

    move/from16 v15, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    .end local v14    # "type":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v20    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v31    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_6a

    .line 6382
    .end local v21    # "stream":Ljava/io/FileOutputStream;
    .end local v29    # "intVal":I
    .restart local v12    # "stream":Ljava/io/FileOutputStream;
    .local v20, "intVal":I
    :cond_a10
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v22, v9

    move-object/from16 v21, v12

    .end local v12    # "stream":Ljava/io/FileOutputStream;
    .restart local v21    # "stream":Ljava/io/FileOutputStream;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a4e

    .line 6383
    move-object/from16 v1, v25

    const/4 v2, 0x0

    invoke-interface {v13, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6384
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3200()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6385
    .local v3, "corePkg":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {v13, v4, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6386
    invoke-interface {v13, v4, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6387
    invoke-interface {v13, v4, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6388
    nop

    .end local v3    # "corePkg":Ljava/lang/String;
    goto :goto_a32

    .line 6389
    :cond_a4a
    const/4 v2, 0x0

    invoke-interface {v13, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6392
    :cond_a4e
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a94

    .line 6393
    move-object/from16 v1, v24

    const/4 v2, 0x0

    invoke-interface {v13, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6394
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$3300()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6395
    .local v3, "badgePolicylist":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6396
    .local v4, "temp":[Ljava/lang/String;
    move-object/from16 v5, v23

    const/4 v6, 0x0

    invoke-interface {v13, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6397
    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-interface {v13, v6, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6398
    const/4 v8, 0x1

    aget-object v9, v4, v8

    invoke-interface {v13, v6, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6399
    invoke-interface {v13, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6400
    move-object/from16 v23, v5

    .end local v3    # "badgePolicylist":Ljava/lang/String;
    .end local v4    # "temp":[Ljava/lang/String;
    goto :goto_a66

    .line 6401
    :cond_a90
    const/4 v2, 0x0

    invoke-interface {v13, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6403
    :cond_a94
    move-object/from16 v1, v22

    const/4 v2, 0x0

    invoke-interface {v13, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6405
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 6406
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V
    :try_end_aa0
    .catch Ljava/io/IOException; {:try_start_879 .. :try_end_aa0} :catch_ac6

    .line 6408
    :try_start_aa0
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_aa7
    .catch Ljava/io/IOException; {:try_start_aa0 .. :try_end_aa7} :catch_aa8

    .line 6411
    goto :goto_ac0

    .line 6409
    :catch_aa8
    move-exception v0

    move-object v1, v0

    .line 6410
    .local v1, "e":Ljava/io/IOException;
    :try_start_aaa
    const-string v2, "MumXmlDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in Write to XML sync FD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6412
    .end local v1    # "e":Ljava/io/IOException;
    :goto_ac0
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_ac3
    .catch Ljava/io/IOException; {:try_start_aaa .. :try_end_ac3} :catch_ac6

    .line 6421
    .end local v13    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16    # "strVal":Ljava/lang/String;
    .end local v17    # "booleanVal":Ljava/lang/Boolean;
    .end local v20    # "intVal":I
    move-object/from16 v12, v21

    goto :goto_ae4

    .line 6413
    :catch_ac6
    move-exception v0

    move-object v1, v0

    move-object/from16 v12, v21

    goto :goto_adb

    .end local v21    # "stream":Ljava/io/FileOutputStream;
    .restart local v12    # "stream":Ljava/io/FileOutputStream;
    :catch_acb
    move-exception v0

    move-object/from16 v21, v12

    move-object v1, v0

    .end local v12    # "stream":Ljava/io/FileOutputStream;
    .restart local v21    # "stream":Ljava/io/FileOutputStream;
    goto :goto_adb

    .end local v18    # "file":Ljava/io/File;
    .end local v21    # "stream":Ljava/io/FileOutputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "stream":Ljava/io/FileOutputStream;
    :catch_ad0
    move-exception v0

    move-object/from16 v18, v11

    move-object/from16 v21, v12

    move-object v1, v0

    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "stream":Ljava/io/FileOutputStream;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v21    # "stream":Ljava/io/FileOutputStream;
    goto :goto_adb

    .end local v18    # "file":Ljava/io/File;
    .end local v21    # "stream":Ljava/io/FileOutputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "stream":Ljava/io/FileOutputStream;
    :catch_ad7
    move-exception v0

    move-object/from16 v18, v11

    move-object v1, v0

    .line 6415
    .end local v11    # "file":Ljava/io/File;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v18    # "file":Ljava/io/File;
    :goto_adb
    if-eqz v12, :cond_ae3

    .line 6416
    :try_start_add
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae0
    .catch Ljava/io/IOException; {:try_start_add .. :try_end_ae0} :catch_ae1

    goto :goto_ae3

    .line 6418
    :catch_ae1
    move-exception v0

    goto :goto_ae4

    .line 6420
    :cond_ae3
    :goto_ae3
    nop

    .line 6422
    .end local v1    # "e":Ljava/io/IOException;
    :goto_ae4
    return-void
.end method
