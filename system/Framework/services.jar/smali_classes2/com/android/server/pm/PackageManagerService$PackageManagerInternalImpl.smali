.class Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.super Landroid/content/pm/PackageManagerInternal;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerInternalImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 30078
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/pm/PackageManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 30078
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method private varargs filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .line 30280
    if-nez p1, :cond_b

    .line 30281
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 30284
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30286
    .local v0, "systemPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_68

    aget-object v4, p1, v3

    .line 30287
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 30288
    if-nez v4, :cond_21

    .line 30289
    :try_start_1f
    monitor-exit v5

    goto :goto_62

    .line 30292
    :cond_21
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 30293
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v6, :cond_3f

    .line 30294
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30295
    monitor-exit v5

    goto :goto_62

    .line 30298
    :cond_3f
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    if-nez v7, :cond_5d

    .line 30299
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not system"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30300
    monitor-exit v5

    goto :goto_62

    .line 30303
    :cond_5d
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30304
    nop

    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    monitor-exit v5

    .line 30286
    .end local v4    # "pkgName":Ljava/lang/String;
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 30304
    .restart local v4    # "pkgName":Ljava/lang/String;
    :catchall_65
    move-exception v1

    monitor-exit v5
    :try_end_67
    .catchall {:try_start_1f .. :try_end_67} :catchall_65

    throw v1

    .line 30307
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_68
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getKnownPackageNamesInternal(II)[Ljava/lang/String;
    .registers 7
    .param p1, "knownPackage"    # I
    .param p2, "userId"    # I

    .line 30316
    const/16 v0, 0xe

    if-eq p1, v0, :cond_e2

    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_c6

    const/16 v0, 0x64

    if-eq p1, v0, :cond_b9

    packed-switch p1, :pswitch_data_ee

    .line 30353
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 30341
    :pswitch_1a
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30339
    :pswitch_27
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30337
    :pswitch_34
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30335
    :pswitch_41
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDocumenterPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30333
    :pswitch_4e
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mWellbeingPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30331
    :pswitch_5b
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30328
    :pswitch_68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30318
    :pswitch_7c
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$9000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    .line 30326
    :pswitch_8b
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30320
    :pswitch_98
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30322
    :pswitch_a5
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30324
    :pswitch_b2
    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30350
    :cond_b9
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30345
    :cond_c6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 30346
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_e1

    .line 30347
    :cond_d9
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 30345
    :goto_e1
    return-object v0

    .line 30343
    :cond_e2
    const-string v0, "com.android.companiondevicemanager"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_a5
        :pswitch_98
        :pswitch_8b
        :pswitch_7c
        :pswitch_68
        :pswitch_5b
        :pswitch_4e
        :pswitch_41
        :pswitch_34
        :pswitch_27
        :pswitch_1a
    .end packed-switch
.end method

.method private getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 7
    .param p1, "uid"    # I

    .line 30150
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30151
    :try_start_5
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 30152
    .local v1, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 30153
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_2d

    .line 30154
    instance-of v3, v2, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_20

    .line 30155
    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object v3

    .line 30156
    :cond_20
    instance-of v3, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_2d

    .line 30157
    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 30158
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object v4

    .line 30161
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2d
    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object v3

    .line 30162
    .end local v1    # "appId":I
    .end local v2    # "obj":Ljava/lang/Object;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30140
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30141
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30142
    .local v1, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_14

    .line 30143
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 30145
    :cond_14
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 30146
    .end local v1    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method static synthetic lambda$removeAllNonSystemPackageSuspensions$0(Ljava/lang/String;)Z
    .registers 2
    .param p0, "suspendingPackage"    # Ljava/lang/String;

    .line 30459
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$removeNonSystemPackageSuspensions$1(Ljava/lang/String;)Z
    .registers 2
    .param p0, "suspendingPackage"    # Ljava/lang/String;

    .line 30467
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .registers 5
    .param p1, "isolatedUid"    # I
    .param p2, "ownerUid"    # I

    .line 30950
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30951
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30952
    monitor-exit v0

    .line 30953
    return-void

    .line 30952
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 30983
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30984
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 30985
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_26

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v7, p3

    # invokes: Lcom/android/server/pm/PackageManagerService;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$11500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    monitor-exit v0

    return v2

    .line 30987
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public canAccessInstantApps(II)Z
    .registers 4
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 30978
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->canViewInstantApps(II)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$11400(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v0

    return v0
.end method

.method public clearBlockUninstallForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 31287
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31288
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->clearBlockUninstallLPw(I)V

    .line 31289
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 31290
    monitor-exit v0

    .line 31291
    return-void

    .line 31290
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public compileLayouts(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 31109
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31110
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 31111
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_14

    .line 31112
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 31114
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1e

    .line 31115
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/dex/ArtManagerService;->compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    return v0

    .line 31114
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 30177
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30178
    :try_start_5
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 30179
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z
    invoke-static {v2, v1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 30181
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 30186
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30187
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 30188
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z
    invoke-static {v2, v1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 30190
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public finishPackageInstall(IZ)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "didLaunch"    # Z

    .line 31120
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->finishPackageInstall(IZ)V

    .line 31121
    return-void
.end method

.method public flushPackageRestrictions(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 30473
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30474
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;I)V

    .line 30475
    monitor-exit v0

    .line 30476
    return-void

    .line 30475
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 31061
    .local p1, "actionLocked":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 31062
    return-void
.end method

.method public forEachPackage(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 31046
    .local p1, "actionLocked":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 31047
    return-void
.end method

.method public forEachPackageSetting(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 31051
    .local p1, "actionLocked":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31052
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 31053
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 31052
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 31055
    .end local v1    # "index":I
    :cond_24
    monitor-exit v0

    .line 31056
    return-void

    .line 31055
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public freeStorage(Ljava/lang/String;JI)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "storageFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31041
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V

    .line 31042
    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 30557
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30558
    # invokes: Lcom/android/server/pm/PackageManagerService;->getActivityInfoInternal(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$9600(Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 30557
    return-object v0
.end method

.method public getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "apexPackageName"    # Ljava/lang/String;
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

    .line 31138
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$10500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationEnabledState(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 31089
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31090
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 31091
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_12

    .line 31092
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 31094
    :cond_12
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 31095
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 30550
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30551
    # invokes: Lcom/android/server/pm/PackageManagerService;->getApplicationInfoInternal(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$9500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 30550
    return-object v0
.end method

.method public getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31006
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31007
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getAppsWithSharedUserIdsLocked()Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$11700(Lcom/android/server/pm/PackageManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 31008
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getCeDataInode(Ljava/lang/String;I)J
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30413
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30414
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 30415
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_19

    .line 30416
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 30418
    :cond_19
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 30419
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 3
    .param p1, "userId"    # I

    .line 30600
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDefaultHomeActivity(I)Landroid/content/ComponentName;
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$9900(Lcom/android/server/pm/PackageManagerService;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31077
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31078
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 31079
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_16

    .line 31080
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object v2

    .line 31082
    :cond_16
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 31083
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30257
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30258
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 30259
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30265
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 30267
    .local v0, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v2, v1

    goto :goto_b

    :cond_9
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30268
    .local v2, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_b
    if-nez v2, :cond_e

    goto :goto_12

    :cond_e
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_12
    return-object v1
.end method

.method public getDistractingPackageRestrictions(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30529
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30530
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 30531
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_18

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getDistractionFlags(I)I

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    monitor-exit v0

    return v2

    .line 30532
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31066
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31067
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 31068
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_16

    .line 31069
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object v2

    .line 31071
    :cond_16
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 31072
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 30595
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplications(III)Ljava/util/List;
    .registers 5
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 30082
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getInstalledApplicationsListInternal(III)Ljava/util/List;
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$8300(Lcom/android/server/pm/PackageManagerService;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 30172
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getInstantAppPackageName(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$8400(Lcom/android/server/pm/PackageManagerService;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKnownPackageNames(II)[Ljava/lang/String;
    .registers 5
    .param p1, "knownPackage"    # I
    .param p2, "userId"    # I

    .line 30312
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getKnownPackageNamesInternal(II)[Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/pm/PackageManagerService;->dropNonSystemPackages([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$8900(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31264
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 30682
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayPackages(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 30775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30776
    .local v0, "overlayPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 30777
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30778
    .local v3, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 30779
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;
    invoke-static {v4, v5, v6, p1}, Lcom/android/server/pm/PackageManagerService;->access$10600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 30781
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_3c

    .line 30782
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30785
    .end local v3    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_3c
    goto :goto_16

    .line 30786
    :cond_3d
    monitor-exit v1

    .line 30787
    return-object v0

    .line 30786
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 9
    .param p1, "uid"    # I

    .line 30215
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30216
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v2, 0x3e8

    # invokes: Lcom/android/server/pm/PackageManagerService;->getPackagesForUidInternal(II)[Ljava/lang/String;
    invoke-static {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->access$8700(Lcom/android/server/pm/PackageManagerService;II)[Ljava/lang/String;

    move-result-object v1

    .line 30217
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 30218
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_12

    const/4 v3, 0x0

    goto :goto_13

    :cond_12
    array-length v3, v1

    .line 30219
    .local v3, "numPackages":I
    :goto_13
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-nez v2, :cond_28

    if-ge v4, v3, :cond_28

    .line 30220
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v2, v5

    .line 30219
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 30222
    .end local v4    # "i":I
    :cond_28
    monitor-exit v0

    return-object v2

    .line 30223
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "numPackages":I
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30195
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30196
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v2, -0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;
    invoke-static {v1, p1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$8600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 30198
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    monitor-exit v0

    return-object v1

    .line 30199
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filterCallingUid"    # I
    .param p4, "userId"    # I

    .line 30406
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30407
    const-wide/16 v2, -0x1

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    # invokes: Lcom/android/server/pm/PackageManagerService;->getPackageInfoInternal(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$9300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 30406
    return-object v0
.end method

.method public getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;
    .registers 7
    .param p1, "observer"    # Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 30234
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30235
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 30236
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30237
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_25

    .line 30238
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30237
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 30240
    .end local v3    # "i":I
    :cond_25
    new-instance v3, Lcom/android/server/pm/PackageList;

    invoke-direct {v3, v2, p1}, Lcom/android/server/pm/PackageList;-><init>(Ljava/util/List;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    .line 30241
    .local v3, "packageList":Lcom/android/server/pm/PackageList;
    if-eqz p1, :cond_35

    .line 30242
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPackageListObservers:Landroid/util/ArraySet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$8800(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30244
    :cond_35
    monitor-exit v0

    return-object v3

    .line 30245
    .end local v1    # "N":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "packageList":Lcom/android/server/pm/PackageList;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public getPackageMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 30204
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30229
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public getPackageTargetSdkVersion(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30971
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30972
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getPackageTargetSdkVersionLockedLPr(Ljava/lang/String;)I
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$11300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 30973
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getPackageUid(Ljava/lang/String;II)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 30537
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30538
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 30537
    return v0
.end method

.method public getPackageUidInternal(Ljava/lang/String;II)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 30543
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30544
    const/16 v1, 0x3e8

    # invokes: Lcom/android/server/pm/PackageManagerService;->getPackageUidInternal(Ljava/lang/String;III)I
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/pm/PackageManagerService;->access$9400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;III)I

    move-result v0

    .line 30543
    return v0
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 31028
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31029
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPermissionGidsLocked(Ljava/lang/String;I)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 31030
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getProcessesForUid(I)Landroid/util/ArrayMap;
    .registers 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 31021
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31022
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getProcessesForUidLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 31023
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getSamsungThemeTargetPackageNames(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31307
    .local v0, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 31308
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 31309
    .local v3, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSamsungThemeOverlay()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 31310
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31312
    .end local v3    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_35
    goto :goto_16

    .line 31313
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_3d

    .line 31314
    sget-object v1, Landroid/content/om/SamsungThemeConstants;->changeableApps:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31315
    return-object v0

    .line 31313
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public getSetupWizardPackageName()Ljava/lang/String;
    .registers 2

    .line 30756
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 31014
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31015
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getSharedUserPackagesForPackageLocked(Ljava/lang/String;I)[Ljava/lang/String;
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$11800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 31016
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getSuspendedDialogInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;
    .registers 9
    .param p1, "suspendedPackage"    # Ljava/lang/String;
    .param p2, "suspendingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 30513
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30514
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 30515
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 30516
    invoke-virtual {v1, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 30517
    .local v3, "pus":Landroid/content/pm/PackageUserState;
    iget-boolean v4, v3, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v4, :cond_2a

    .line 30518
    iget-object v4, v3, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 30519
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 30520
    .local v4, "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v4, :cond_28

    iget-object v2, v4, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    :cond_28
    monitor-exit v0

    return-object v2

    .line 30523
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "pus":Landroid/content/pm/PackageUserState;
    .end local v4    # "suspendParams":Landroid/content/pm/PackageUserState$SuspendParams;
    :cond_2a
    monitor-exit v0

    .line 30524
    return-object v2

    .line 30523
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30424
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30425
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 30426
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 30427
    .local v2, "allExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_3f

    .line 30428
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 30429
    .local v3, "pus":Landroid/content/pm/PackageUserState;
    iget-boolean v4, v3, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v4, :cond_3f

    .line 30430
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    iget-object v5, v3, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 30431
    iget-object v5, v3, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    .line 30432
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageUserState$SuspendParams;

    .line 30433
    .local v5, "params":Landroid/content/pm/PackageUserState$SuspendParams;
    if-eqz v5, :cond_3c

    iget-object v6, v5, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    if-eqz v6, :cond_3c

    .line 30434
    iget-object v6, v5, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 30430
    .end local v5    # "params":Landroid/content/pm/PackageUserState$SuspendParams;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 30440
    .end local v3    # "pus":Landroid/content/pm/PackageUserState;
    .end local v4    # "i":I
    :cond_3f
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_47

    move-object v3, v2

    goto :goto_48

    :cond_47
    const/4 v3, 0x0

    :goto_48
    monitor-exit v0

    return-object v3

    .line 30441
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "allExtras":Landroid/os/Bundle;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "suspendedPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30491
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30492
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 30493
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_3d

    .line 30494
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 30495
    .local v2, "pus":Landroid/content/pm/PackageUserState;
    iget-boolean v3, v2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v3, :cond_3d

    .line 30496
    const/4 v3, 0x0

    .line 30497
    .local v3, "suspendingPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    iget-object v5, v2, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3b

    .line 30498
    iget-object v5, v2, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 30499
    const-string v5, "android"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 30500
    monitor-exit v0

    return-object v3

    .line 30497
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 30503
    .end local v4    # "i":I
    :cond_3b
    monitor-exit v0

    return-object v3

    .line 30506
    .end local v2    # "pus":Landroid/content/pm/PackageUserState;
    .end local v3    # "suspendingPackage":Ljava/lang/String;
    :cond_3d
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 30507
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public getSystemUiServiceComponent()Landroid/content/ComponentName;
    .registers 3

    .line 30605
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104032a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPackageNames(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30793
    .local v0, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 30794
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30795
    .local v3, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2f

    .line 30796
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30798
    .end local v3    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_2f
    goto :goto_16

    .line 30799
    :cond_30
    monitor-exit v1

    .line 30800
    return-object v0

    .line 30799
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v2
.end method

.method public getUidTargetSdkVersion(I)I
    .registers 4
    .param p1, "uid"    # I

    .line 30964
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30965
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getUidTargetSdkVersionLockedLPr(I)I
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$11200(Lcom/android/server/pm/PackageManagerService;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 30966
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public grantImplicitAccess(ILandroid/content/Intent;IIZ)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "recipientAppId"    # I
    .param p4, "visibleUid"    # I
    .param p5, "direct"    # Z

    .line 30698
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30699
    :try_start_5
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 30700
    .local v1, "visiblePackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {p1, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 30701
    .local v2, "recipientUid":I
    if-eqz v1, :cond_3f

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_16

    goto :goto_3f

    .line 30705
    :cond_16
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30706
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/pm/PackageManagerService;->isInstantAppInternal(Ljava/lang/String;II)Z
    invoke-static {v3, v4, p1, p4}, Lcom/android/server/pm/PackageManagerService;->access$10200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v3

    .line 30707
    .local v3, "instantApp":Z
    if-eqz v3, :cond_34

    .line 30708
    if-nez p5, :cond_26

    .line 30712
    monitor-exit v0

    return-void

    .line 30714
    :cond_26
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v4

    .line 30715
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 30714
    invoke-virtual {v4, p1, p2, p3, v5}, Lcom/android/server/pm/InstantAppRegistry;->grantInstantAccessLPw(ILandroid/content/Intent;II)V

    goto :goto_3d

    .line 30717
    :cond_34
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilter;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$10300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilter;

    move-result-object v4

    invoke-virtual {v4, v2, p4}, Lcom/android/server/pm/AppsFilter;->grantImplicitAccess(II)V

    .line 30719
    .end local v1    # "visiblePackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "recipientUid":I
    .end local v3    # "instantApp":Z
    :goto_3d
    monitor-exit v0

    .line 30720
    return-void

    .line 30702
    .restart local v1    # "visiblePackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "recipientUid":I
    :cond_3f
    :goto_3f
    monitor-exit v0

    return-void

    .line 30719
    .end local v1    # "visiblePackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "recipientUid":I
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public hasInstantApplicationMetadata(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30992
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30993
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantApplicationMetadataLPr(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 30994
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public hasSignatureCapability(III)Z
    .registers 7
    .param p1, "serverUid"    # I
    .param p2, "clientUid"    # I
    .param p3, "capability"    # I

    .line 30132
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    .line 30133
    .local v0, "serverSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    .line 30134
    .local v1, "clientSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 30135
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v2, 0x1

    .line 30134
    :goto_18
    return v2
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 31133
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$10500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAppLockEnabled()Z
    .registers 2

    .line 31592
    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppLockEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 31220
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31221
    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 31222
    :try_start_8
    monitor-exit v0

    return v1

    .line 31224
    :cond_a
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 31225
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_16

    .line 31226
    monitor-exit v0

    return v1

    .line 31228
    :cond_16
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 31229
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 31230
    .local v3, "installerPackageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_32

    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 31231
    invoke-static {v4, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    nop

    :goto_33
    monitor-exit v0

    .line 31230
    return v1

    .line 31232
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "installerPackageSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 5
    .param p1, "restoringFromSig"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 30121
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    .line 30122
    .local v0, "sd":Landroid/content/pm/PackageParser$SigningDetails;
    if-nez v0, :cond_8

    .line 30123
    const/4 v1, 0x0

    return v1

    .line 30125
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result v1

    return v1
.end method

.method public isDataRestoreSafe([BLjava/lang/String;)Z
    .registers 5
    .param p1, "restoringFromSigHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .line 30111
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    .line 30112
    .local v0, "sd":Landroid/content/pm/PackageParser$SigningDetails;
    if-nez v0, :cond_8

    .line 30113
    const/4 v1, 0x0

    return v1

    .line 30115
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256Certificate([BI)Z

    move-result v1

    return v1
.end method

.method public isEnabledAndMatches(Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z
    .registers 7
    .param p1, "component"    # Landroid/content/pm/parsing/component/ParsedMainComponent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 30667
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30668
    :try_start_5
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 30669
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 30670
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isHiddenBySprotect(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 31588
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->isHiddenBySprotect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInstantApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30167
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 30724
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30725
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 30726
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    monitor-exit v0

    .line 30725
    return v1

    .line 30727
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public isOnlyCoreApps()Z
    .registers 2

    .line 31035
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v0

    return v0
.end method

.method public isPackageDataProtected(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 30635
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageEphemeral(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 30645
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30646
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 30647
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_18

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    monitor-exit v0

    return v2

    .line 30648
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isPackagePersistent(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30767
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30768
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30769
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    monitor-exit v0

    return v2

    .line 30770
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30640
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageSuspended(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30446
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30447
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 30448
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_18

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    monitor-exit v0

    return v2

    .line 30449
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 31237
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31238
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->isPermissionUpgradeNeededLPr(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 31239
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30393
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30394
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30395
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_14

    .line 30396
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 30399
    :cond_14
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$9000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 30400
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isPlatformSigned(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30095
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 30096
    .local v0, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 30097
    return v1

    .line 30099
    :cond_10
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30100
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_15

    .line 30102
    return v1

    .line 30104
    :cond_15
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30105
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v3

    if-eqz v3, :cond_3b

    :cond_3a
    const/4 v1, 0x1

    .line 30104
    :cond_3b
    return v1
.end method

.method public isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/pm/ComponentInfo;

    .line 30359
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 30360
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 30359
    :goto_1f
    return v0
.end method

.method public isSuspendingAnyPackages(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 31300
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->isSuspendingAnyPackages(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSystemPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 31281
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 31282
    # invokes: Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$12000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31281
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public migrateLegacyObbData()V
    .registers 3

    .line 31191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->migrateLegacyObbData()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 31194
    goto :goto_e

    .line 31192
    :catch_8
    move-exception v0

    .line 31193
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31195
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public notifyPackageUse(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 30999
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31000
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->notifyPackageUseLocked(Ljava/lang/String;I)V
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$11600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 31001
    monitor-exit v0

    .line 31002
    return-void

    .line 31001
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$OverlayManagerCallback;)V
    .registers 31
    .param p1, "dir"    # Ljava/io/File;
    .param p4, "userId"    # I
    .param p5, "overlayManagerCallback"    # Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;",
            ")V"
        }
    .end annotation

    .line 31322
    .local p2, "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v0, p3

    move/from16 v9, p4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/overlays/current_locale_apks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 31323
    .local v10, "isParsingLocaleOverlayDir":Z
    if-nez v10, :cond_15

    if-eqz v9, :cond_15

    .line 31325
    return-void

    .line 31328
    :cond_15
    if-nez p2, :cond_1e

    .line 31329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .end local p2    # "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_20

    .line 31328
    .end local v1    # "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    move-object/from16 v11, p2

    .line 31331
    .end local p2    # "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_20
    move-object v12, v11

    .line 31335
    .local v12, "invalidAndDisabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v13, 0xa01

    .line 31337
    .local v13, "scanFlags":I
    if-eqz p1, :cond_2b

    .line 31338
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move-object v14, v1

    .local v1, "files":[Ljava/io/File;
    goto :goto_2d

    .line 31340
    .end local v1    # "files":[Ljava/io/File;
    :cond_2b
    const/4 v1, 0x0

    move-object v14, v1

    .line 31342
    .local v14, "files":[Ljava/io/File;
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePackageNamesList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " disablePackageNamesList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31344
    if-nez v0, :cond_65

    .line 31345
    const-string v1, "PackageManager"

    const-string v2, "enablePackageNamesList is null, re-init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    move-object v15, v0

    .end local p3    # "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_66

    .line 31344
    .end local v0    # "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_65
    move-object v15, v0

    .line 31348
    .end local p3    # "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_66
    if-eqz v14, :cond_362

    array-length v0, v14

    if-nez v0, :cond_71

    move/from16 p2, v13

    move-object/from16 v21, v14

    goto/16 :goto_366

    .line 31357
    :cond_71
    new-instance v0, Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 31358
    # getter for: Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$10400(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v5

    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    move-object v7, v0

    .line 31359
    .local v7, "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    invoke-static {}, Lcom/android/server/pm/ParallelPackageParser;->makeExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 31360
    .local v6, "executorService":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser;

    invoke-direct {v0, v7, v6}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    move-object v4, v0

    .line 31364
    .local v4, "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    const/4 v0, 0x0

    .line 31365
    .local v0, "fileCount":I
    array-length v1, v14

    move v3, v0

    const/4 v0, 0x0

    .end local v0    # "fileCount":I
    .local v3, "fileCount":I
    :goto_9c
    if-ge v0, v1, :cond_fa

    aget-object v5, v14, v0

    .line 31366
    .local v5, "file":Ljava/io/File;
    invoke-static {v5}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v16

    if-nez v16, :cond_ac

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_b9

    .line 31367
    :cond_ac
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_b9

    const/16 v16, 0x1

    goto :goto_bb

    :cond_b9
    const/16 v16, 0x0

    .line 31368
    .local v16, "isPackage":Z
    :goto_bb
    if-nez v16, :cond_c5

    .line 31370
    move/from16 v17, v1

    move-object/from16 p3, v6

    move-object/from16 v18, v7

    const/4 v7, 0x0

    goto :goto_f1

    .line 31372
    :cond_c5
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    .line 31373
    .local v2, "fileNameLength":I
    move/from16 v17, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 p3, v6

    .end local v6    # "executorService":Ljava/util/concurrent/ExecutorService;
    .local p3, "executorService":Ljava/util/concurrent/ExecutorService;
    add-int/lit8 v6, v2, -0x4

    move-object/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .local v18, "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 31374
    .local v1, "packageNameFromFile":Ljava/lang/String;
    const/4 v6, 0x4

    if-lt v2, v6, :cond_f1

    .line 31375
    invoke-interface {v15, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e8

    .line 31377
    goto :goto_f1

    .line 31379
    :cond_e8
    iget-object v6, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;I)V

    .line 31380
    add-int/lit8 v3, v3, 0x1

    .line 31365
    .end local v1    # "packageNameFromFile":Ljava/lang/String;
    .end local v2    # "fileNameLength":I
    .end local v5    # "file":Ljava/io/File;
    .end local v16    # "isPackage":Z
    :cond_f1
    :goto_f1
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, p3

    move/from16 v1, v17

    move-object/from16 v7, v18

    goto :goto_9c

    .line 31383
    .end local v18    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v6    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v7    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_fa
    move-object/from16 p3, v6

    move-object/from16 v18, v7

    .end local v6    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v7    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v18    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 31384
    :try_start_103
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_108
    .catchall {:try_start_103 .. :try_end_108} :catchall_353

    move/from16 v16, v3

    .line 31386
    .end local v3    # "fileCount":I
    .local v16, "fileCount":I
    :goto_10a
    if-lez v16, :cond_33d

    .line 31387
    :try_start_10c
    invoke-virtual {v4}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v0

    move-object v5, v0

    .line 31388
    .local v5, "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    iget-object v0, v5, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    move-object v3, v0

    .line 31389
    .local v3, "throwable":Ljava/lang/Throwable;
    const/16 v17, 0x1

    .line 31391
    .local v17, "errorCode":I
    if-nez v3, :cond_27a

    .line 31394
    iget-object v0, v5, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v0
    :try_end_11e
    .catchall {:try_start_10c .. :try_end_11e} :catchall_32f

    if-eqz v0, :cond_135

    .line 31395
    :try_start_120
    iget-object v0, v5, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    # invokes: Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$12100(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    :try_end_125
    .catchall {:try_start_120 .. :try_end_125} :catchall_126

    goto :goto_135

    .line 31448
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .end local v5    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .end local v17    # "errorCode":I
    :catchall_126
    move-exception v0

    move-object/from16 v19, p3

    move-object/from16 v23, v4

    move-object/from16 v20, v6

    move-object/from16 v24, v7

    move/from16 p2, v13

    move-object/from16 v21, v14

    goto/16 :goto_351

    .line 31398
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v5    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local v17    # "errorCode":I
    :cond_135
    :goto_135
    :try_start_135
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v5, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v2, v2, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I
    :try_end_13d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_135 .. :try_end_13d} :catch_1b6
    .catchall {:try_start_135 .. :try_end_13d} :catchall_1a7

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v3

    .end local v3    # "throwable":Ljava/lang/Throwable;
    .local v22, "throwable":Ljava/lang/Throwable;
    move v3, v13

    move-object/from16 v23, v4

    move-object/from16 p2, v7

    move-object v7, v5

    .end local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v5    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .local v7, "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .local v23, "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    move-wide/from16 v4, v19

    move-object/from16 v19, p3

    move-object/from16 v20, v6

    .end local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .local v19, "executorService":Ljava/util/concurrent/ExecutorService;
    move-object/from16 v6, v21

    :try_start_151
    # invokes: Lcom/android/server/pm/PackageManagerService;->addForInitLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$12200(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 31400
    iget-object v0, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18e

    .line 31402
    new-instance v0, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;

    iget-object v1, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 31403
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 31404
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4
    :try_end_16c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_151 .. :try_end_16c} :catch_1a0
    .catchall {:try_start_151 .. :try_end_16c} :catchall_197

    const/16 v21, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move-object v9, v6

    move/from16 v6, p4

    move-object/from16 v24, p2

    move/from16 p2, v13

    move-object v13, v7

    .end local v7    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .local v13, "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .local p2, "scanFlags":I
    move/from16 v7, v21

    :try_start_17d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;IZ)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31405
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_186
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_17d .. :try_end_186} :catch_18c
    .catchall {:try_start_17d .. :try_end_186} :catchall_187

    goto :goto_193

    .line 31448
    .end local v13    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .end local v17    # "errorCode":I
    .end local v22    # "throwable":Ljava/lang/Throwable;
    :catchall_187
    move-exception v0

    move-object/from16 v21, v14

    goto/16 :goto_351

    .line 31408
    .restart local v13    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local v17    # "errorCode":I
    .restart local v22    # "throwable":Ljava/lang/Throwable;
    :catch_18c
    move-exception v0

    goto :goto_1c4

    .line 31400
    .end local p2    # "scanFlags":I
    .restart local v7    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .local v13, "scanFlags":I
    :cond_18e
    move-object/from16 v24, p2

    move/from16 p2, v13

    move-object v13, v7

    .line 31407
    .end local v7    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .local v13, "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local p2    # "scanFlags":I
    :goto_193
    move-object/from16 v21, v14

    goto/16 :goto_304

    .line 31448
    .end local v17    # "errorCode":I
    .end local v22    # "throwable":Ljava/lang/Throwable;
    .end local p2    # "scanFlags":I
    .local v13, "scanFlags":I
    :catchall_197
    move-exception v0

    move-object/from16 v24, p2

    move/from16 p2, v13

    move-object/from16 v21, v14

    .end local v13    # "scanFlags":I
    .restart local p2    # "scanFlags":I
    goto/16 :goto_351

    .line 31408
    .end local p2    # "scanFlags":I
    .restart local v7    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local v13    # "scanFlags":I
    .restart local v17    # "errorCode":I
    .restart local v22    # "throwable":Ljava/lang/Throwable;
    :catch_1a0
    move-exception v0

    move-object/from16 v24, p2

    move/from16 p2, v13

    move-object v13, v7

    .end local v7    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .local v13, "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local p2    # "scanFlags":I
    goto :goto_1c4

    .line 31448
    .end local v17    # "errorCode":I
    .end local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v22    # "throwable":Ljava/lang/Throwable;
    .end local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local p2    # "scanFlags":I
    .restart local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .local v13, "scanFlags":I
    .restart local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    :catchall_1a7
    move-exception v0

    move-object/from16 v19, p3

    move-object/from16 v23, v4

    move-object/from16 v20, v6

    move-object/from16 v24, v7

    move/from16 p2, v13

    move-object/from16 v21, v14

    .end local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v13    # "scanFlags":I
    .end local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local p2    # "scanFlags":I
    goto/16 :goto_351

    .line 31408
    .end local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local p2    # "scanFlags":I
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v5    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local v13    # "scanFlags":I
    .restart local v17    # "errorCode":I
    .restart local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    :catch_1b6
    move-exception v0

    move-object/from16 v19, p3

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v20, v6

    move-object/from16 v24, v7

    move/from16 p2, v13

    move-object v13, v5

    .line 31409
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .end local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v5    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .end local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    .local v13, "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v22    # "throwable":Ljava/lang/Throwable;
    .restart local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local p2    # "scanFlags":I
    :goto_1c4
    :try_start_1c4
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    move v9, v1

    .line 31410
    .end local v17    # "errorCode":I
    .local v9, "errorCode":I
    const/4 v1, -0x5

    if-ne v9, v1, :cond_248

    .line 31411
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate scan "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31412
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31411
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31415
    iget-object v1, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_221

    .line 31416
    new-instance v7, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;

    iget-object v1, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 31417
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 31418
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4
    :try_end_206
    .catchall {:try_start_1c4 .. :try_end_206} :catchall_275

    const/16 v17, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move/from16 p3, v9

    move-object v9, v6

    .end local v9    # "errorCode":I
    .local p3, "errorCode":I
    move/from16 v6, p4

    move-object/from16 v21, v14

    move-object v14, v7

    .end local v14    # "files":[Ljava/io/File;
    .local v21, "files":[Ljava/io/File;
    move/from16 v7, v17

    :try_start_217
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;IZ)V

    invoke-direct {v14, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31420
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    goto :goto_246

    .line 31422
    .end local v21    # "files":[Ljava/io/File;
    .end local p3    # "errorCode":I
    .restart local v9    # "errorCode":I
    .restart local v14    # "files":[Ljava/io/File;
    :cond_221
    move/from16 p3, v9

    move-object/from16 v21, v14

    .end local v9    # "errorCode":I
    .end local v14    # "files":[Ljava/io/File;
    .restart local v21    # "files":[Ljava/io/File;
    .restart local p3    # "errorCode":I
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 31423
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is being skipped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31422
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31425
    :goto_246
    goto/16 :goto_304

    .line 31427
    .end local v21    # "files":[Ljava/io/File;
    .end local p3    # "errorCode":I
    .restart local v9    # "errorCode":I
    .restart local v14    # "files":[Ljava/io/File;
    :cond_248
    move/from16 p3, v9

    move-object/from16 v21, v14

    .end local v9    # "errorCode":I
    .end local v14    # "files":[Ljava/io/File;
    .restart local v21    # "files":[Ljava/io/File;
    .restart local p3    # "errorCode":I
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to scan "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31428
    move/from16 v9, p3

    move-object/from16 v1, v22

    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    goto :goto_2ba

    .line 31448
    .end local v13    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .end local v21    # "files":[Ljava/io/File;
    .end local v22    # "throwable":Ljava/lang/Throwable;
    .end local p3    # "errorCode":I
    .restart local v14    # "files":[Ljava/io/File;
    :catchall_275
    move-exception v0

    move-object/from16 v21, v14

    .end local v14    # "files":[Ljava/io/File;
    .restart local v21    # "files":[Ljava/io/File;
    goto/16 :goto_351

    .line 31429
    .end local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v21    # "files":[Ljava/io/File;
    .end local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local p2    # "scanFlags":I
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v5    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .local v13, "scanFlags":I
    .restart local v14    # "files":[Ljava/io/File;
    .restart local v17    # "errorCode":I
    .local p3, "executorService":Ljava/util/concurrent/ExecutorService;
    :cond_27a
    move-object/from16 v19, p3

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v20, v6

    move-object/from16 v24, v7

    move/from16 p2, v13

    move-object/from16 v21, v14

    move-object v13, v5

    .end local v3    # "throwable":Ljava/lang/Throwable;
    .end local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v5    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .end local v14    # "files":[Ljava/io/File;
    .end local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .local v13, "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v21    # "files":[Ljava/io/File;
    .restart local v22    # "throwable":Ljava/lang/Throwable;
    .restart local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local p2    # "scanFlags":I
    move-object/from16 v1, v22

    .end local v22    # "throwable":Ljava/lang/Throwable;
    .local v1, "throwable":Ljava/lang/Throwable;
    instance-of v0, v1, Landroid/content/pm/PackageParser$PackageParserException;

    if-eqz v0, :cond_316

    .line 31430
    move-object v0, v1

    check-cast v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 31432
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    iget v2, v0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    move v9, v2

    .line 31433
    .end local v17    # "errorCode":I
    .restart local v9    # "errorCode":I
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31434
    nop

    .line 31440
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_2ba
    const/4 v0, -0x2

    if-ne v9, v0, :cond_2f3

    .line 31441
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting invalid package at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31442
    const/4 v0, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting invalid package at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 31444
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 31446
    :cond_2f3
    iget-object v0, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".apk"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31386
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v9    # "errorCode":I
    .end local v13    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    :goto_304
    add-int/lit8 v16, v16, -0x1

    move/from16 v13, p2

    move/from16 v9, p4

    move-object/from16 p3, v19

    move-object/from16 v6, v20

    move-object/from16 v14, v21

    move-object/from16 v4, v23

    move-object/from16 v7, v24

    goto/16 :goto_10a

    .line 31435
    .restart local v1    # "throwable":Ljava/lang/Throwable;
    .restart local v13    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local v17    # "errorCode":I
    :cond_316
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception occurred while parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v10    # "isParsingLocaleOverlayDir":Z
    .end local v11    # "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "invalidAndDisabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "fileCount":I
    .end local v18    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v21    # "files":[Ljava/io/File;
    .end local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
    .end local p1    # "dir":Ljava/io/File;
    .end local p2    # "scanFlags":I
    .end local p4    # "userId":I
    .end local p5    # "overlayManagerCallback":Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;
    throw v0

    .line 31448
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v17    # "errorCode":I
    .restart local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v10    # "isParsingLocaleOverlayDir":Z
    .restart local v11    # "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "invalidAndDisabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "scanFlags":I
    .restart local v14    # "files":[Ljava/io/File;
    .restart local v15    # "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "fileCount":I
    .restart local v18    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
    .restart local p1    # "dir":Ljava/io/File;
    .restart local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local p4    # "userId":I
    .restart local p5    # "overlayManagerCallback":Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;
    :catchall_32f
    move-exception v0

    move-object/from16 v19, p3

    move-object/from16 v23, v4

    move-object/from16 v20, v6

    move-object/from16 v24, v7

    move/from16 p2, v13

    move-object/from16 v21, v14

    .end local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v13    # "scanFlags":I
    .end local v14    # "files":[Ljava/io/File;
    .end local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v21    # "files":[Ljava/io/File;
    .restart local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local p2    # "scanFlags":I
    goto :goto_351

    .end local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v21    # "files":[Ljava/io/File;
    .end local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local p2    # "scanFlags":I
    .restart local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v13    # "scanFlags":I
    .restart local v14    # "files":[Ljava/io/File;
    .restart local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    :cond_33d
    move-object/from16 v19, p3

    move-object/from16 v23, v4

    move-object/from16 v20, v6

    move-object/from16 v24, v7

    move/from16 p2, v13

    move-object/from16 v21, v14

    .end local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v13    # "scanFlags":I
    .end local v14    # "files":[Ljava/io/File;
    .end local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v21    # "files":[Ljava/io/File;
    .restart local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local p2    # "scanFlags":I
    monitor-exit v20
    :try_end_34a
    .catchall {:try_start_217 .. :try_end_34a} :catchall_350

    .line 31449
    :try_start_34a
    monitor-exit v24
    :try_end_34b
    .catchall {:try_start_34a .. :try_end_34b} :catchall_34c

    goto :goto_373

    :catchall_34c
    move-exception v0

    move/from16 v3, v16

    goto :goto_35e

    .line 31448
    :catchall_350
    move-exception v0

    :goto_351
    :try_start_351
    monitor-exit v20
    :try_end_352
    .catchall {:try_start_351 .. :try_end_352} :catchall_350

    .end local v10    # "isParsingLocaleOverlayDir":Z
    .end local v11    # "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "invalidAndDisabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "fileCount":I
    .end local v18    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v21    # "files":[Ljava/io/File;
    .end local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
    .end local p1    # "dir":Ljava/io/File;
    .end local p2    # "scanFlags":I
    .end local p4    # "userId":I
    .end local p5    # "overlayManagerCallback":Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;
    :try_start_352
    throw v0
    :try_end_353
    .catchall {:try_start_352 .. :try_end_353} :catchall_34c

    .line 31449
    .local v3, "fileCount":I
    .restart local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v10    # "isParsingLocaleOverlayDir":Z
    .restart local v11    # "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "invalidAndDisabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "scanFlags":I
    .restart local v14    # "files":[Ljava/io/File;
    .restart local v15    # "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
    .restart local p1    # "dir":Ljava/io/File;
    .restart local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local p4    # "userId":I
    .restart local p5    # "overlayManagerCallback":Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;
    :catchall_353
    move-exception v0

    move-object/from16 v19, p3

    move-object/from16 v23, v4

    move-object/from16 v24, v7

    move/from16 p2, v13

    move-object/from16 v21, v14

    .end local v4    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v13    # "scanFlags":I
    .end local v14    # "files":[Ljava/io/File;
    .end local p3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v21    # "files":[Ljava/io/File;
    .restart local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local p2    # "scanFlags":I
    :goto_35e
    :try_start_35e
    monitor-exit v24
    :try_end_35f
    .catchall {:try_start_35e .. :try_end_35f} :catchall_360

    throw v0

    :catchall_360
    move-exception v0

    goto :goto_35e

    .line 31348
    .end local v3    # "fileCount":I
    .end local v18    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local v19    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v21    # "files":[Ljava/io/File;
    .end local v23    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local p2    # "scanFlags":I
    .restart local v13    # "scanFlags":I
    .restart local v14    # "files":[Ljava/io/File;
    :cond_362
    move/from16 p2, v13

    move-object/from16 v21, v14

    .line 31349
    .end local v13    # "scanFlags":I
    .end local v14    # "files":[Ljava/io/File;
    .restart local v21    # "files":[Ljava/io/File;
    .restart local p2    # "scanFlags":I
    :goto_366
    const-string v0, "PackageManager"

    const-string v1, "No files in overlay dir to parse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 31451
    :goto_373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseSamsungThemeOverlayPackages checking for enablePackageNamesList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseSamsungThemeOverlayPackages checking for disablePackageNamesList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31456
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackages()Ljava/util/Collection;

    move-result-object v0

    .line 31457
    .local v0, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3ab
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_496

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 31458
    .local v13, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseSamsungThemeOverlayPackages checking for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31459
    if-eqz v13, :cond_490

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSamsungThemeOverlay()Z

    move-result v1

    if-eqz v1, :cond_490

    .line 31460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseSamsungThemeOverlayPackages checking for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31461
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSamsungThemeOverlay()Z

    move-result v2

    if-eqz v2, :cond_3f3

    const-string v2, " open theme "

    goto :goto_3f5

    :cond_3f3
    const-string v2, " config res "

    :goto_3f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " overlay for target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31462
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31460
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31464
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_41b

    .line 31465
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31466
    goto :goto_3ab

    .line 31468
    :cond_41b
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_458

    if-nez v10, :cond_458

    .line 31470
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_458

    .line 31472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseSamsungThemeOverlayPackages: adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to invalidAndDisabledPackages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31473
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31475
    :cond_458
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48d

    .line 31476
    new-instance v14, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x1

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move/from16 v6, p4

    move-object/from16 p3, v0

    move-object v0, v7

    .end local v0    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local p3, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;IZ)V

    invoke-direct {v14, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31477
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 31478
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_492

    .line 31475
    .end local p3    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v0    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_48d
    move-object/from16 p3, v0

    .end local v0    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local p3    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    goto :goto_492

    .line 31459
    .end local p3    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v0    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_490
    move-object/from16 p3, v0

    .line 31481
    .end local v0    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v13    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p3    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_492
    move-object/from16 v0, p3

    goto/16 :goto_3ab

    .line 31483
    .end local p3    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v0    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_496
    move-object/from16 p3, v0

    .end local v0    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local p3    # "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 31484
    .local v9, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseSamsungThemeOverlayPackages disabling package  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31485
    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v5, p5

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;IZ)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31486
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 31487
    .end local v9    # "packageName":Ljava/lang/String;
    goto :goto_49c

    .line 31488
    :cond_4d8
    return-void
.end method

.method public performDexOptForADCP(Ljava/lang/String;Z)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .line 31598
    nop

    .line 31599
    if-eqz p2, :cond_5

    const/4 v0, 0x2

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x4

    .line 31601
    .local v0, "flags":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v8, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v3, 0x8

    const/4 v5, 0x0

    const-string/jumbo v4, "speed-profile"

    move-object v1, v8

    move-object v2, p1

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    # invokes: Lcom/android/server/pm/PackageManagerService;->performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->access$12400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v1

    return v1
.end method

.method public pruneCachedApksInApex(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 30737
    .local p1, "apexPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$10400(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    .line 30738
    return-void

    .line 30741
    :cond_9
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$10400(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    .line 30742
    .local v0, "cacher":Lcom/android/server/pm/parsing/PackageCacher;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 30743
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1e
    if-ge v2, v3, :cond_55

    .line 30744
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30745
    # getter for: Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$10500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 30746
    .local v4, "apkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "apksInApex":I
    :goto_37
    if-ge v5, v6, :cond_52

    .line 30747
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 30748
    .local v7, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    new-instance v8, Ljava/io/File;

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    .line 30746
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 30743
    .end local v4    # "apkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "j":I
    .end local v6    # "apksInApex":I
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 30751
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_55
    monitor-exit v1

    .line 30752
    return-void

    .line 30751
    :catchall_57
    move-exception v2

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_1a .. :try_end_59} :catchall_57

    throw v2
.end method

.method public pruneInstantApps()V
    .registers 2

    .line 30732
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps()V

    .line 30733
    return-void
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;III)Ljava/util/List;
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 30565
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30566
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    # invokes: Lcom/android/server/pm/PackageManagerService;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;
    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$9700(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;

    move-result-object v0

    .line 30568
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppLockEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3c

    if-eqz v0, :cond_3c

    if-nez p5, :cond_3c

    .line 30569
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 30570
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 30571
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 30572
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 30573
    .local v3, "pkgname":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isHiddenBySprotect(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 30575
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 30577
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "pkgname":Ljava/lang/String;
    :cond_3b
    goto :goto_20

    .line 30579
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_3c
    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 30586
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 30587
    .local v0, "resolvedType":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30588
    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p4

    move v6, p3

    # invokes: Lcom/android/server/pm/PackageManagerService;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$9800(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object v1

    .line 30587
    return-object v1
.end method

.method public removeAllDistractingPackageRestrictions(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 30486
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(I)V

    .line 30487
    return-void
.end method

.method public removeAllNonSystemPackageSuspensions(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 30455
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30456
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 30457
    .local v1, "allPackages":[Ljava/lang/String;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_26

    .line 30458
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$sQKOQTvoGzSf6LXboU0G7PAMRNA;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerService;->removeSuspensionsBySuspendingPackage([Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 30461
    return-void

    .line 30457
    .end local v1    # "allPackages":[Ljava/lang/String;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public removeDistractingPackageRestrictions(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30480
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/PackageManagerService;->removeDistractingPackageRestrictions([Ljava/lang/String;I)V

    .line 30482
    return-void
.end method

.method public removeIsolatedUid(I)V
    .registers 4
    .param p1, "isolatedUid"    # I

    .line 30957
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30958
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 30959
    monitor-exit v0

    .line 30960
    return-void

    .line 30959
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 31126
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31127
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 31128
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removeNonSystemPackageSuspensions(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30465
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$JycGJrzHIngCbGMk68UBYZqLVhg;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageManagerInternalImpl$JycGJrzHIngCbGMk68UBYZqLVhg;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->removeSuspensionsBySuspendingPackage([Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 30469
    return-void
.end method

.method public removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 30250
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30251
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPackageListObservers:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$8800(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 30252
    monitor-exit v0

    .line 30253
    return-void

    .line 30252
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 19
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "isRequesterInstantApp"    # Z
    .param p7, "verificationBundle"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .line 30690
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    # invokes: Lcom/android/server/pm/PackageManagerService;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$10100(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 30693
    return-void
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 30944
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->resolveContentProviderInternal(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$11100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIIZI)Landroid/content/pm/ResolveInfo;
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "privateResolveFlags"    # I
    .param p5, "userId"    # I
    .param p6, "resolveForStart"    # Z
    .param p7, "filterCallingUid"    # I

    .line 30931
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    # invokes: Lcom/android/server/pm/PackageManagerService;->resolveIntentInternal(Landroid/content/Intent;Ljava/lang/String;IIIZI)Landroid/content/pm/ResolveInfo;
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$10900(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 30939
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/server/pm/PackageManagerService;->resolveServiceInternal(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$11000(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 8
    .param p1, "deviceOwnerUserId"    # I
    .param p2, "deviceOwnerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30613
    .local p3, "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ProtectedPackages;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 30616
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 30617
    .local v0, "usersWithPoOrDo":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_15

    .line 30618
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30620
    :cond_15
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 30621
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_30

    .line 30622
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 30623
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30621
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 30626
    .end local v2    # "i":I
    :cond_30
    return-void
.end method

.method public setDeviceOwnerProtectedPackages(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30630
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ProtectedPackages;->setDeviceOwnerProtectedPackages(Ljava/util/List;)V

    .line 30631
    return-void
.end method

.method public setEnableRollbackCode(II)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "enableRollbackCode"    # I

    .line 31100
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->setEnableRollbackCode(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$11900(Lcom/android/server/pm/PackageManagerService;II)V

    .line 31101
    return-void
.end method

.method public setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;Ljava/util/Collection;)Z
    .registers 24
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 30807
    .local p3, "overlayPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "outUpdatedPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 30808
    :try_start_f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30809
    .local v0, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v7, 0x0

    if-eqz v3, :cond_260

    if-nez v0, :cond_22

    move-object/from16 v16, v0

    goto/16 :goto_262

    .line 30813
    :cond_22
    const/4 v8, 0x0

    .line 30814
    .local v8, "overlayPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_ab

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_ab

    .line 30815
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    .line 30816
    .local v9, "N":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v10

    .line 30817
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_36
    if-ge v10, v9, :cond_ab

    .line 30818
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 30819
    .local v11, "packageName":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30822
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v12, :cond_61

    .line 30823
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed to find package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30825
    goto :goto_a8

    .line 30827
    :cond_61
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSamsungThemeOverlay()Z

    move-result v13

    if-nez v13, :cond_71

    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/om/SemSamsungThemeUtils;->hasZippedLocaleOverlayMetaData(Landroid/os/Bundle;)Z

    move-result v13

    if-eqz v13, :cond_a1

    .line 30828
    :cond_71
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a1

    new-instance v13, Ljava/io/File;

    .line 30829
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_a1

    .line 30832
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Overlay applying error - package not found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30833
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 30832
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30837
    goto :goto_a8

    .line 30845
    :cond_a1
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30817
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_a8
    add-int/lit8 v10, v10, 0x1

    goto :goto_36

    .line 30849
    .end local v9    # "N":I
    .end local v10    # "i":I
    :cond_ab
    const/4 v9, 0x0

    .line 30850
    .local v9, "updatedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_11d

    .line 30852
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v10

    .line 30853
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 30854
    .local v11, "libName":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v13, -0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->getSharedLibraryInfoLPr(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    invoke-static {v12, v11, v13, v14}, Lcom/android/server/pm/PackageManagerService;->access$10700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v12

    .line 30856
    .local v12, "info":Landroid/content/pm/SharedLibraryInfo;
    if-nez v12, :cond_d7

    .line 30857
    goto :goto_c0

    .line 30859
    :cond_d7
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getPackagesUsingSharedLibraryLPr(Landroid/content/pm/SharedLibraryInfo;II)Ljava/util/List;
    invoke-static {v13, v12, v7, v2}, Lcom/android/server/pm/PackageManagerService;->access$10800(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/SharedLibraryInfo;II)Ljava/util/List;

    move-result-object v13

    .line 30861
    .local v13, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    if-nez v13, :cond_e0

    .line 30862
    goto :goto_c0

    .line 30864
    :cond_e0
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_e4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_116

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/VersionedPackage;

    .line 30865
    .local v15, "dependent":Landroid/content/pm/VersionedPackage;
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 30866
    move-object/from16 v16, v0

    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v16, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v15}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 30865
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 30867
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_108

    .line 30868
    move-object/from16 v0, v16

    const/4 v7, 0x0

    goto :goto_e4

    .line 30870
    :cond_108
    invoke-virtual {v0, v11, v8, v2}, Lcom/android/server/pm/PackageSetting;->setOverlayPathsForLibrary(Ljava/lang/String;Ljava/util/List;I)V

    .line 30871
    invoke-virtual {v15}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30872
    move-object/from16 v0, v16

    const/4 v7, 0x0

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "dependent":Landroid/content/pm/VersionedPackage;
    goto :goto_e4

    .line 30864
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v0, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_116
    move-object/from16 v16, v0

    .line 30873
    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v11    # "libName":Ljava/lang/String;
    .end local v12    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v13    # "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v7, 0x0

    goto :goto_c0

    .line 30853
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_11a
    move-object/from16 v16, v0

    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_11f

    .line 30850
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_11d
    move-object/from16 v16, v0

    .line 30876
    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_11f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 30878
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_14e

    .line 30880
    const-string v7, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to find ps, targetPackageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30882
    monitor-exit v6

    const/4 v6, 0x0

    return v6

    .line 30884
    :cond_14e
    invoke-virtual {v0, v8, v2}, Lcom/android/server/pm/PackageSetting;->setOverlayPaths(Ljava/util/List;I)V

    .line 30886
    sget-object v7, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    .line 30887
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_250

    .line 30888
    sget-object v7, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    .line 30889
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 30890
    .local v7, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_165
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_24b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 30891
    .local v11, "siblingTargetPkg":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 30892
    .local v12, "siblingOverlayPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_20d

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_20d

    .line 30893
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_182
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_208

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 30894
    .local v14, "packageName":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 30895
    .local v15, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v15, :cond_1e6

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSamsungThemeOverlay()Z

    move-result v17

    if-eqz v17, :cond_1e6

    move-object/from16 v17, v0

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v17, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v0, Ljava/io/File;

    .line 30896
    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b2

    goto :goto_1e8

    .line 30900
    :cond_1b2
    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 30901
    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e1

    .line 30903
    :cond_1c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30905
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1e1
    move-object/from16 v4, p3

    move-object/from16 v0, v17

    goto :goto_182

    .line 30895
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1e6
    move-object/from16 v17, v0

    .line 30897
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_1e8
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "failed to find package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30898
    move-object/from16 v4, p3

    move-object/from16 v0, v17

    move-object/from16 v7, v18

    goto/16 :goto_182

    .line 30893
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v18    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_208
    move-object/from16 v17, v0

    move-object/from16 v18, v7

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_211

    .line 30892
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v18    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_20d
    move-object/from16 v17, v0

    move-object/from16 v18, v7

    .line 30907
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_211
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 30908
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_240

    .line 30909
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to find pkgSetting, siblingTargetPkg = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", userId = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30911
    monitor-exit v6

    const/4 v4, 0x0

    return v4

    .line 30913
    :cond_240
    invoke-virtual {v0, v12, v2}, Lcom/android/server/pm/PackageSetting;->setOverlayPaths(Ljava/util/List;I)V

    .line 30914
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "siblingTargetPkg":Ljava/lang/String;
    .end local v12    # "siblingOverlayPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v4, p3

    move-object/from16 v0, v17

    move-object/from16 v7, v18

    goto/16 :goto_165

    .line 30890
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v18    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_24b
    move-object/from16 v17, v0

    move-object/from16 v18, v7

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_252

    .line 30887
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v18    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_250
    move-object/from16 v17, v0

    .line 30917
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_252
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 30918
    if-eqz v9, :cond_25a

    .line 30919
    invoke-interface {v5, v9}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 30921
    .end local v8    # "overlayPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "updatedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_25a
    monitor-exit v6
    :try_end_25b
    .catchall {:try_start_f .. :try_end_25b} :catchall_27b

    .line 30923
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 30924
    const/4 v0, 0x1

    return v0

    .line 30809
    .local v0, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_260
    move-object/from16 v16, v0

    .line 30810
    .end local v0    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_262
    :try_start_262
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to find package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30811
    monitor-exit v6

    const/4 v0, 0x0

    return v0

    .line 30921
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_27b
    move-exception v0

    monitor-exit v6
    :try_end_27d
    .catchall {:try_start_262 .. :try_end_27d} :catchall_27b

    throw v0
.end method

.method public setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
    .registers 3
    .param p1, "policy"    # Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 30760
    if-eqz p1, :cond_6

    .line 30761
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, v0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 30763
    :cond_6
    return-void
.end method

.method public setIntegrityVerificationResult(II)V
    .registers 5
    .param p1, "verificationId"    # I
    .param p2, "verificationResult"    # I

    .line 31256
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 31257
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 31258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31259
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31260
    return-void
.end method

.method public setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30365
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30366
    const/4 v0, 0x0

    .line 30367
    .local v0, "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 30368
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$9100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 30369
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$9100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 30370
    .local v2, "packagesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_41

    .line 30371
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$9100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 30372
    .local v4, "oldPackage":Ljava/lang/String;
    if-eqz p1, :cond_33

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 30373
    goto :goto_3e

    .line 30375
    :cond_33
    if-nez v0, :cond_3b

    .line 30376
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 30378
    :cond_3b
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30370
    .end local v4    # "oldPackage":Ljava/lang/String;
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 30381
    .end local v2    # "packagesCount":I
    .end local v3    # "i":I
    :cond_41
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$9102(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Ljava/util/List;

    .line 30382
    if-eqz v0, :cond_62

    .line 30383
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 30384
    .local v2, "removedCount":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_52
    if-ge v3, v2, :cond_62

    .line 30385
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->deletePackageIfUnusedLPr(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$9200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 30384
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 30388
    .end local v2    # "removedCount":I
    .end local v3    # "i":I
    :cond_62
    monitor-exit v1

    .line 30389
    return-void

    .line 30388
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_9 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public setReadExternalStorageEnforced(Z)V
    .registers 5
    .param p1, "enforced"    # Z

    .line 31244
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31245
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 31246
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 31247
    monitor-exit v0

    return-void

    .line 31249
    :cond_1b
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-eqz p1, :cond_24

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_26

    :cond_24
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_26
    iput-object v2, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 31250
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 31251
    monitor-exit v0

    .line 31252
    return-void

    .line 31251
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public setVisibilityLogging(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 31270
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31271
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 31272
    .local v1, "pkg":Lcom/android/server/pm/PackageSetting;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_37

    .line 31273
    if-eqz v1, :cond_20

    .line 31276
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilter;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$10300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/AppsFilter;->getFeatureConfig()Lcom/android/server/pm/AppsFilter$FeatureConfig;

    move-result-object v0

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-interface {v0, v2, p2}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->enableLogging(IZ)V

    .line 31277
    return-void

    .line 31274
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31272
    .end local v1    # "pkg":Lcom/android/server/pm/PackageSetting;
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I
    .param p5, "intentSender"    # Landroid/content/IntentSender;
    .param p6, "flags"    # I

    .line 31144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 31145
    .local v0, "callerUid":I
    if-eqz v0, :cond_13

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 31146
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Not allowed to uninstall apexes"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31148
    :cond_13
    :goto_13
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v5, p5

    move-object v6, p1

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 31152
    .local v1, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    and-int/lit8 v2, p6, 0x2

    const/4 v3, -0x5

    if-nez v2, :cond_2c

    .line 31153
    const-string v2, "Can\'t uninstall an apex for a single user"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 31155
    return-void

    .line 31157
    :cond_2c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$10500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v2

    .line 31158
    .local v2, "am":Lcom/android/server/pm/ApexManager;
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 31160
    .local v5, "activePackage":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_4e

    .line 31161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not an apex package"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 31163
    return-void

    .line 31165
    :cond_4e
    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_82

    .line 31166
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    cmp-long v6, v6, p2

    if-eqz v6, :cond_82

    .line 31167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31168
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " is not equal to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31167
    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 31170
    return-void

    .line 31172
    :cond_82
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/server/pm/ApexManager;->uninstallApex(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a1

    .line 31173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to uninstall apex "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a5

    .line 31176
    :cond_a1
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v4, v3}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 31179
    :goto_a5
    return-void
.end method

.method public unsuspendForSuspendingPackage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "affectedUser"    # I

    .line 31295
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Ljava/lang/String;I)V

    .line 31296
    return-void
.end method

.method public updateExternalMediaStatus(ZZ)V
    .registers 4
    .param p1, "mediaStatus"    # Z
    .param p2, "reportStatus"    # Z

    .line 30089
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;ZZ)V

    .line 30090
    return-void
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 31183
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31184
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->updateRuntimePermissionsFingerprintLPr(I)V

    .line 31185
    monitor-exit v0

    .line 31186
    return-void

    .line 31185
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public userNeedsBadging(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 30675
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30676
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->userNeedsBadging(I)Z
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$10000(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 30677
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public wasPackageEverLaunched(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30660
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30661
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 30662
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public wasPackageStopped(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 30653
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30654
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->wasPackageStoppedLPr(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 30655
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public writePermissionSettings([IZ)V
    .registers 10
    .param p1, "userIds"    # [I
    .param p2, "async"    # Z

    .line 31210
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31211
    :try_start_5
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_1b

    aget v4, p1, v3

    .line 31212
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-nez p2, :cond_14

    const/4 v6, 0x1

    goto :goto_15

    :cond_14
    move v6, v2

    :goto_15
    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 31211
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 31214
    :cond_1b
    monitor-exit v0

    .line 31215
    return-void

    .line 31214
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public writeRuntimePermissionsForUserLPrForMDM(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    .line 30209
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 30210
    return-void
.end method

.method public writeSettings(Z)V
    .registers 4
    .param p1, "async"    # Z

    .line 31199
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31200
    if-eqz p1, :cond_d

    .line 31201
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    goto :goto_14

    .line 31203
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 31205
    :goto_14
    monitor-exit v0

    .line 31206
    return-void

    .line 31205
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method
