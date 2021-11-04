.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final autoRevokePermissionsMode:I

.field final forceQueryableOverride:Z

.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installSource:Lcom/android/server/pm/InstallSource;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final mDataLoaderType:I

.field private mEnableRollbackCompleted:Z

.field private mIntegrityVerificationCompleted:Z

.field mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

.field mRet:I

.field final mSessionId:I

.field private mVerificationCompleted:Z

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final requiredInstalledVersionCode:J

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;

.field final whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "activeInstallSession"    # Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    .line 17599
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17600
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 17601
    nop

    .line 17602
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    .line 17603
    .local v0, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3400()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 17604
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_34

    .line 17606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ephemeral install of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17609
    :cond_34
    new-instance v1, Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 17613
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 17615
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getStagedDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 17616
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getStagedDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    goto :goto_60

    .line 17618
    :cond_56
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getStagedCid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedContainer(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 17621
    :goto_60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 17622
    nop

    .line 17623
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 17624
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 17622
    # invokes: Lcom/android/server/pm/PackageManagerService;->fixUpInstallReason(Ljava/lang/String;II)I
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 17626
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getObserver()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 17627
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17628
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    .line 17629
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 17630
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 17631
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 17632
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 17633
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    .line 17634
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 17635
    iget-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 17636
    iget-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    .line 17637
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v1, :cond_b3

    .line 17638
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v1

    goto :goto_b4

    :cond_b3
    const/4 v1, 0x0

    :goto_b4
    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    .line 17639
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionId()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mSessionId:I

    .line 17640
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILandroid/content/pm/PackageParser$SigningDetails;IJI)V
    .registers 35
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationInfo"    # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;
    .param p13, "autoRevokePermissionsMode"    # I
    .param p14, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p15, "installReason"    # I
    .param p16, "requiredInstalledVersionCode"    # J
    .param p18, "dataLoaderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$OriginInfo;",
            "Lcom/android/server/pm/PackageManagerService$MoveInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            "I",
            "Lcom/android/server/pm/InstallSource;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$VerificationInfo;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "IJI)V"
        }
    .end annotation

    .line 17578
    .local p12, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17579
    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 17580
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 17581
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 17582
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 17583
    move/from16 v6, p5

    iput v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17584
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/InstallSource;

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    .line 17585
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 17586
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 17587
    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 17588
    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 17589
    move-object/from16 v11, p12

    iput-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 17590
    move/from16 v12, p13

    iput v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    .line 17591
    move-object/from16 v13, p14

    iput-object v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 17592
    move/from16 v14, p15

    iput v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 17593
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 17594
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    .line 17595
    move/from16 v15, p18

    iput v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    .line 17596
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mSessionId:I

    .line 17597
    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 17544
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .registers 12
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 17649
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 17650
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 17652
    .local v1, "installLocation":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 17655
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 17660
    .local v3, "installedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move-object v4, v3

    .line 17661
    .local v4, "dataOwnerPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v4, :cond_27

    .line 17662
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 17663
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_27

    .line 17664
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v4, v6

    .line 17668
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_27
    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_81

    .line 17669
    const/4 v5, -0x8

    if-nez v4, :cond_51

    .line 17670
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required installed version code was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " but package is not installed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17673
    monitor-exit v2

    return v5

    .line 17676
    :cond_51
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_81

    .line 17677
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required installed version code was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " but actual installed version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17680
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 17677
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17681
    monitor-exit v2

    return v5

    .line 17685
    :cond_81
    if-eqz v4, :cond_b1

    .line 17686
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17687
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v6

    .line 17686
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result v5
    :try_end_8d
    .catchall {:try_start_9 .. :try_end_8d} :catchall_da

    if-nez v5, :cond_b1

    .line 17689
    :try_start_8f
    # invokes: Lcom/android/server/pm/PackageManagerService;->checkDowngrade(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    :try_end_92
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8f .. :try_end_92} :catch_93
    .catchall {:try_start_8f .. :try_end_92} :catchall_da

    .line 17693
    goto :goto_b1

    .line 17690
    :catch_93
    move-exception v5

    .line 17691
    .local v5, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_94
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrade detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17692
    const/4 v6, -0x7

    monitor-exit v2

    return v6

    .line 17697
    .end local v5    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_b1
    :goto_b1
    if-eqz v3, :cond_d6

    .line 17698
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_d3

    .line 17700
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_c2

    .line 17701
    monitor-exit v2

    return v7

    .line 17704
    :cond_c2
    if-ne v1, v7, :cond_c6

    .line 17706
    monitor-exit v2

    return v7

    .line 17707
    :cond_c6
    if-ne v1, v6, :cond_c9

    goto :goto_d6

    .line 17711
    :cond_c9
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 17712
    monitor-exit v2

    return v6

    .line 17714
    :cond_d1
    monitor-exit v2

    return v7

    .line 17719
    :cond_d3
    const/4 v5, -0x4

    monitor-exit v2

    return v5

    .line 17722
    .end local v3    # "installedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "dataOwnerPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_d6
    :goto_d6
    monitor-exit v2
    :try_end_d7
    .catchall {:try_start_94 .. :try_end_d7} :catchall_da

    .line 17723
    iget v2, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v2

    .line 17722
    :catchall_da
    move-exception v3

    :try_start_db
    monitor-exit v2
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw v3
.end method


# virtual methods
.method handleIntegrityVerificationFinished()V
    .registers 2

    .line 18243
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    if-nez v0, :cond_e

    .line 18244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    .line 18245
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-eqz v0, :cond_e

    .line 18246
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 18250
    :cond_e
    return-void
.end method

.method handleReturnCode()V
    .registers 8

    .line 18262
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-eqz v0, :cond_89

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    if-eqz v0, :cond_89

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    if-eqz v0, :cond_89

    .line 18264
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_73

    .line 18265
    const-string v0, ""

    .line 18266
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/pm/parsing/result/ParseTypeImpl;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InstallParams$4lBKoJrqMGZeOT3xLNbomU0eAmc;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InstallParams$4lBKoJrqMGZeOT3xLNbomU0eAmc;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    invoke-direct {v1, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    .line 18274
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    const/4 v3, 0x0

    .line 18266
    invoke-static {v1, v2, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 18276
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$PackageLite;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    const-string v3, "PackageManager"

    if-eqz v2, :cond_55

    .line 18277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse package at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18278
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    .line 18277
    invoke-static {v3, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .line 18280
    :cond_55
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v0, v2, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 18283
    :goto_5d
    :try_start_5d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const-string v5, "Dry run"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v0, v4, v5, v6}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_6b} :catch_6c

    .line 18286
    goto :goto_72

    .line 18284
    :catch_6c
    move-exception v2

    .line 18285
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18287
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_72
    return-void

    .line 18289
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$PackageLite;>;"
    :cond_73
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    .line 18290
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 18292
    :cond_80
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 18294
    :cond_89
    return-void
.end method

.method handleRollbackEnabled()V
    .registers 2

    .line 18256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 18257
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 18258
    return-void
.end method

.method public handleStartCopy()V
    .registers 29

    .line 17733
    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 17736
    .local v0, "ret":I
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v2, :cond_33

    .line 17737
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v2, :cond_1a

    .line 17738
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17740
    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_33

    .line 17742
    :cond_1a
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 17743
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17744
    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_33

    .line 17746
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 17751
    :cond_33
    :goto_33
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    .line 17753
    .local v2, "onSd":Z
    :goto_3c
    iget v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_44

    const/4 v5, 0x1

    goto :goto_45

    :cond_44
    const/4 v5, 0x0

    .line 17754
    .local v5, "onInt":Z
    :goto_45
    iget v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_4d

    const/4 v6, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    .line 17755
    .local v6, "ephemeral":Z
    :goto_4e
    const/4 v7, 0x0

    .line 17758
    .local v7, "pkgLite":Landroid/content/pm/PackageInfoLite;
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v7

    .line 17761
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3400()Z

    move-result v8

    const-string v9, "PackageManager"

    if-eqz v8, :cond_7e

    if-eqz v6, :cond_7e

    .line 17762
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkgLite for install: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17766
    :cond_7e
    if-eqz v5, :cond_8b

    if-eqz v2, :cond_8b

    .line 17768
    const-string v8, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17769
    const/16 v0, -0x13

    move v8, v0

    goto :goto_99

    .line 17770
    :cond_8b
    if-eqz v2, :cond_98

    if-eqz v6, :cond_98

    .line 17771
    const-string v8, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17772
    const/16 v0, -0x13

    move v8, v0

    goto :goto_99

    .line 17780
    :cond_98
    move v8, v0

    .end local v0    # "ret":I
    .local v8, "ret":I
    :goto_99
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v10, -0x6

    const/4 v11, -0x1

    if-nez v0, :cond_f6

    iget v0, v7, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v11, :cond_f6

    .line 17783
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v12

    .line 17784
    .local v12, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 17785
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 17784
    invoke-virtual {v12, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v13

    .line 17787
    .local v13, "lowThreshold":J
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v15}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v15

    .line 17789
    .local v15, "sizeBytes":J
    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    if-ltz v0, :cond_ef

    .line 17791
    :try_start_c6
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v18, 0x0

    add-long v19, v15, v13

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    .line 17792
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v3, v4, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_e7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c6 .. :try_end_e7} :catch_e9

    .line 17796
    .end local v7    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-object v7, v0

    goto :goto_ef

    .line 17794
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v7    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catch_e9
    move-exception v0

    .line 17795
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "Failed to free cache"

    invoke-static {v9, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17804
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_ef
    :goto_ef
    iget v0, v7, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v10, :cond_f6

    .line 17806
    const/4 v3, -0x1

    iput v3, v7, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 17812
    .end local v12    # "storage":Landroid/os/storage/StorageManager;
    .end local v13    # "lowThreshold":J
    .end local v15    # "sizeBytes":J
    :cond_f6
    const/4 v3, 0x1

    if-ne v8, v3, :cond_15f

    .line 17813
    iget v0, v7, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 17814
    .local v0, "loc":I
    const/4 v3, -0x3

    if-ne v0, v3, :cond_101

    .line 17815
    const/16 v8, -0x13

    goto :goto_15f

    .line 17816
    :cond_101
    const/4 v3, -0x4

    if-ne v0, v3, :cond_106

    .line 17817
    const/4 v8, -0x1

    goto :goto_15f

    .line 17818
    :cond_106
    const/4 v3, -0x1

    if-ne v0, v3, :cond_10b

    .line 17819
    const/4 v8, -0x4

    goto :goto_15f

    .line 17820
    :cond_10b
    const/4 v3, -0x2

    if-ne v0, v3, :cond_110

    .line 17821
    const/4 v8, -0x2

    goto :goto_15f

    .line 17822
    :cond_110
    if-ne v0, v10, :cond_114

    .line 17823
    const/4 v8, -0x3

    goto :goto_15f

    .line 17824
    :cond_114
    const/4 v3, -0x5

    if-ne v0, v3, :cond_11a

    .line 17825
    const/16 v8, -0x14

    goto :goto_15f

    .line 17828
    :cond_11a
    invoke-direct {v1, v7}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v0

    .line 17829
    const/4 v3, -0x7

    if-ne v0, v3, :cond_124

    .line 17830
    const/16 v8, -0x19

    goto :goto_15f

    .line 17831
    :cond_124
    const/4 v3, -0x8

    if-ne v0, v3, :cond_12a

    .line 17832
    const/16 v8, -0x79

    goto :goto_15f

    .line 17833
    :cond_12a
    if-nez v5, :cond_15f

    if-nez v2, :cond_15f

    .line 17835
    const/4 v3, 0x2

    if-ne v0, v3, :cond_13c

    .line 17838
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17840
    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_15f

    .line 17841
    :cond_13c
    const/4 v3, 0x3

    if-ne v0, v3, :cond_155

    .line 17842
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3400()Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 17843
    const-string v3, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17845
    :cond_14a
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17846
    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_15f

    .line 17850
    :cond_155
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17852
    and-int/lit8 v3, v3, -0x9

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 17859
    .end local v0    # "loc":I
    :cond_15f
    :goto_15f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$3700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    .line 17860
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    .line 17861
    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    .line 17862
    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 17863
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 17865
    if-ne v8, v4, :cond_246

    .line 17866
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$3808(Lcom/android/server/pm/PackageManagerService;)I

    move-result v4

    .line 17867
    .local v4, "verificationId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 17868
    .local v0, "verifierUser":Landroid/os/UserHandle;
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v10, :cond_182

    .line 17869
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v10, v0

    goto :goto_183

    .line 17868
    :cond_182
    move-object v10, v0

    .line 17873
    .end local v0    # "verifierUser":Landroid/os/UserHandle;
    .local v10, "verifierUser":Landroid/os/UserHandle;
    :goto_183
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v0, :cond_1b6

    .line 17874
    new-instance v0, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    .line 17877
    .local v0, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    # invokes: Lcom/android/server/pm/PackageManagerService;->getRequiredVerifierPackages(I)Ljava/util/ArrayList;
    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;I)Ljava/util/ArrayList;

    move-result-object v11

    .line 17878
    .local v11, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    invoke-virtual {v0, v11, v4}, Lcom/android/server/pm/PackageVerificationState;->initialize(Ljava/util/ArrayList;I)V

    .line 17880
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v12, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 17882
    invoke-virtual {v1, v4, v7, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    .line 17883
    invoke-virtual {v1, v4, v7, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I

    move-result v8

    .line 17887
    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v12

    if-eqz v12, :cond_1b6

    .line 17888
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 17894
    .end local v0    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v11    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    :cond_1b6
    :try_start_1b6
    new-instance v0, Landroid/content/Intent;

    const-string v11, "com.samsung.android.intent.action.PACKAGE_INSTALL_STARTED"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17895
    .local v0, "installIntent":Landroid/content/Intent;
    const-string/jumbo v11, "packageName"

    iget-object v12, v7, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17896
    const-string/jumbo v11, "userID"

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17897
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v13, "android.permission.HARDWARE_TEST"

    invoke-virtual {v11, v0, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 17898
    const-string/jumbo v11, "sendBroadcastAsUser. PACKAGE_INSTALL_STARTED"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e0
    .catch Ljava/lang/IllegalStateException; {:try_start_1b6 .. :try_end_1e0} :catch_1e2

    .line 17901
    nop

    .end local v0    # "installIntent":Landroid/content/Intent;
    goto :goto_1e8

    .line 17899
    :catch_1e2
    move-exception v0

    .line 17900
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v11, "Failed to send Broadcast intent for PACKAGE_INSTALL_STARTED: "

    invoke-static {v9, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17904
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :goto_1e8
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v9, 0x40000

    and-int/2addr v0, v9

    if-eqz v0, :cond_246

    .line 17906
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4008(Lcom/android/server/pm/PackageManagerService;)I

    move-result v0

    .line 17907
    .local v0, "enableRollbackToken":I
    const-wide/32 v11, 0x40000

    const-string v9, "enable_rollback"

    invoke-static {v11, v12, v9, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 17909
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 17911
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17912
    .local v9, "enableRollbackIntent":Landroid/content/Intent;
    const-string v11, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v9, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17915
    iget v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mSessionId:I

    const-string v12, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17918
    const-string v11, "application/vnd.android.package-archive"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 17919
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17926
    const/high16 v11, 0x4000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17928
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v21, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    invoke-direct {v12, v1, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v22, "android.permission.PACKAGE_ROLLBACK_AGENT"

    move-object/from16 v19, v11

    move-object/from16 v20, v9

    move-object/from16 v23, v12

    invoke-virtual/range {v19 .. v27}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 17949
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 17953
    .end local v0    # "enableRollbackToken":I
    .end local v4    # "verificationId":I
    .end local v9    # "enableRollbackIntent":Landroid/content/Intent;
    .end local v10    # "verifierUser":Landroid/os/UserHandle;
    :cond_246
    iput v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 17954
    return-void
.end method

.method handleVerificationFinished()V
    .registers 2

    .line 18233
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-nez v0, :cond_e

    .line 18234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    .line 18235
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    if-eqz v0, :cond_e

    .line 18236
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 18240
    :cond_e
    return-void
.end method

.method public synthetic lambda$handleReturnCode$0$PackageManagerService$InstallParams(JLjava/lang/String;I)Z
    .registers 7
    .param p1, "changeId"    # J
    .param p3, "packageName1"    # Ljava/lang/String;
    .param p4, "targetSdkVersion"    # I

    .line 18269
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 18270
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 18271
    iput p4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 18272
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    return v1
.end method

.method populateInstallerExtras(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 18201
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18204
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v0, :cond_47

    .line 18205
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_1a

    .line 18206
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18209
    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v0, :cond_29

    .line 18210
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18213
    :cond_29
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v0, :cond_38

    .line 18214
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18217
    :cond_38
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v0, :cond_47

    .line 18218
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18222
    :cond_47
    return-void
.end method

.method sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .registers 28
    .param p1, "verificationId"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;

    .line 17963
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isIntegrityVerificationEnabled()Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 17965
    const/4 v3, 0x1

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    .line 17967
    return-void

    .line 17970
    :cond_15
    move-object/from16 v4, p3

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17973
    .local v3, "integrityVerification":Landroid/content/Intent;
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 17976
    const v5, 0x50000001

    .line 17979
    .local v5, "flags":I
    const v6, 0x50000001

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17981
    const-string v6, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17982
    iget-object v6, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v7, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17983
    iget v6, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v7, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17984
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v6

    const-string v8, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v3, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 17985
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 17988
    const-string v6, "android"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17990
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17991
    # getter for: Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalDeviceIdleController()Lcom/android/server/DeviceIdleInternal;

    move-result-object v17

    .line 17992
    .local v17, "idleController":Lcom/android/server/DeviceIdleInternal;
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v14

    .line 17994
    .local v14, "idleDuration":J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v11, 0x0

    const-string/jumbo v12, "integrity component"

    move-object/from16 v7, v17

    move-wide v9, v14

    invoke-interface/range {v7 .. v12}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V

    .line 17997
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v13

    .line 17998
    .local v13, "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v13, v14, v15}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 18000
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 18003
    invoke-virtual {v13}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$2;

    invoke-direct {v12, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 18000
    move-object v7, v3

    move-object/from16 v21, v13

    .end local v13    # "options":Landroid/app/BroadcastOptions;
    .local v21, "options":Landroid/app/BroadcastOptions;
    move-object/from16 v13, v16

    move-wide/from16 v22, v14

    .end local v14    # "idleDuration":J
    .local v22, "idleDuration":J
    move/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 18017
    const-wide/32 v6, 0x40000

    const-string/jumbo v8, "integrity_verification"

    invoke-static {v6, v7, v8, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 18021
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mIntegrityVerificationCompleted:Z

    .line 18022
    return-void
.end method

.method sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I
    .registers 42
    .param p1, "verificationId"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;

    .line 18032
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v0, 0x1

    .line 18036
    .local v0, "ret":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 18037
    .local v5, "verifierUser":Landroid/os/UserHandle;
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v5, v6, :cond_13

    .line 18038
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 18045
    :cond_13
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/4 v7, -0x1

    const/high16 v8, 0x10000000

    if-nez v6, :cond_1e

    move v6, v7

    goto :goto_2a

    .line 18046
    :cond_1e
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 18047
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 18046
    invoke-virtual {v6, v9, v8, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    :goto_2a
    move v15, v6

    .line 18048
    .local v15, "requiredUid":I
    invoke-virtual {v4, v15}, Lcom/android/server/pm/PackageVerificationState;->setRequiredVerifierUid(I)V

    .line 18050
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v6, :cond_33

    goto :goto_35

    :cond_33
    iget v7, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_35
    move v14, v7

    .line 18051
    .local v14, "installerUid":I
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18052
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 18051
    # invokes: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled(Landroid/content/pm/PackageInfoLite;III)Z
    invoke-static {v6, v3, v7, v9, v14}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;III)Z

    move-result v24

    .line 18053
    .local v24, "isVerificationEnabled":Z
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v6, v6, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    const/4 v7, 0x4

    const/4 v9, 0x1

    if-ne v6, v7, :cond_4e

    move v6, v9

    goto :goto_4f

    :cond_4e
    const/4 v6, 0x0

    :goto_4f
    move/from16 v25, v6

    .line 18055
    .local v25, "isV4Signed":Z
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5a

    move v6, v9

    goto :goto_5b

    :cond_5a
    const/4 v6, 0x0

    :goto_5b
    move/from16 v26, v6

    .line 18058
    .local v26, "isIncrementalInstall":Z
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstallLogger:Lcom/android/server/pm/PackageInstallTimeLogger;

    if-eqz v6, :cond_90

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v6, :cond_90

    .line 18060
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstallLogger:Lcom/android/server/pm/PackageInstallTimeLogger;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    iget-object v10, v3, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    new-instance v11, Ljava/lang/Integer;

    iget v12, v3, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 18061
    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 18060
    invoke-virtual {v6, v7, v10, v11}, Lcom/android/server/pm/PackageInstallTimeLogger;->updateInstallTimeInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 18062
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstallLogger:Lcom/android/server/pm/PackageInstallTimeLogger;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const-string v10, "Init"

    invoke-virtual {v6, v7, v10}, Lcom/android/server/pm/PackageInstallTimeLogger;->updateInstallTimeInfo(ILjava/lang/String;)V

    .line 18067
    :cond_90
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v6, :cond_266

    if-eqz v24, :cond_266

    if-eqz v26, :cond_a5

    if-nez v25, :cond_9d

    goto :goto_a5

    :cond_9d
    move/from16 v30, v0

    move/from16 v28, v14

    move/from16 v37, v15

    goto/16 :goto_26c

    .line 18072
    :cond_a5
    :goto_a5
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_c4

    goto :goto_cc

    :cond_c4
    move/from16 v30, v0

    move/from16 v28, v14

    move/from16 v37, v15

    goto/16 :goto_26c

    .line 18075
    :cond_cc
    :goto_cc
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v6

    .line 18077
    .local v11, "verification":Landroid/content/Intent;
    invoke-virtual {v11, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18078
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v11, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 18080
    invoke-virtual {v11, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18083
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v19, 0x0

    .line 18084
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    const/16 v21, 0x0

    .line 18083
    const-string v18, "application/vnd.android.package-archive"

    move-object/from16 v16, v6

    move-object/from16 v17, v11

    # invokes: Lcom/android/server/pm/PackageManagerService;->queryIntentReceiversInternal(Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;
    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v10

    .line 18093
    .local v10, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v6, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v11, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18095
    iget v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const-string v7, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v11, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18098
    iget-object v6, v3, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v7, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v11, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18101
    iget v6, v3, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v7, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v11, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18104
    nop

    .line 18106
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v6

    .line 18104
    const-string v8, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v11, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 18108
    invoke-virtual {v1, v11}, Lcom/android/server/pm/PackageManagerService$InstallParams;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 18111
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageVerificationState;->setVerificationIntent(Landroid/content/Intent;)V

    .line 18114
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v6, v3, v10, v4}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v8

    .line 18117
    .local v8, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18118
    # getter for: Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalDeviceIdleController()Lcom/android/server/DeviceIdleInternal;

    move-result-object v27

    .line 18119
    .local v27, "idleController":Lcom/android/server/DeviceIdleInternal;
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v6

    .line 18120
    .local v6, "idleDuration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v12

    .line 18121
    .local v12, "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v12, v6, v7}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 18127
    if-eqz v8, :cond_1aa

    .line 18128
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    .line 18129
    .local v13, "n":I
    if-nez v13, :cond_15f

    .line 18130
    const-string v9, "PackageManager"

    move/from16 v30, v0

    .end local v0    # "ret":I
    .local v30, "ret":I
    const-string v0, "Additional verifiers required, but none installed."

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18131
    const/16 v0, -0x16

    move/from16 v30, v0

    move-object/from16 v31, v8

    .end local v30    # "ret":I
    .restart local v0    # "ret":I
    goto :goto_1ae

    .line 18133
    :cond_15f
    move/from16 v30, v0

    .end local v0    # "ret":I
    .restart local v30    # "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_162
    if-ge v0, v13, :cond_1a5

    .line 18134
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 18135
    .local v9, "verifierComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    .line 18136
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 18137
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    .line 18135
    const-string/jumbo v23, "package verifier"

    move-object/from16 v16, v27

    move-wide/from16 v19, v6

    invoke-interface/range {v16 .. v23}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 18139
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 18140
    .local v3, "sufficientIntent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 18141
    move-object/from16 v31, v8

    .end local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v31, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v9

    .end local v9    # "verifierComponent":Landroid/content/ComponentName;
    .local v16, "verifierComponent":Landroid/content/ComponentName;
    const/4 v9, 0x0

    .line 18143
    move/from16 v17, v13

    .end local v13    # "n":I
    .local v17, "n":I
    invoke-virtual {v12}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 18141
    invoke-virtual {v8, v3, v5, v9, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18133
    .end local v3    # "sufficientIntent":Landroid/content/Intent;
    .end local v16    # "verifierComponent":Landroid/content/ComponentName;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    move/from16 v13, v17

    move-object/from16 v8, v31

    goto :goto_162

    .end local v17    # "n":I
    .end local v31    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v13    # "n":I
    :cond_1a5
    move-object/from16 v31, v8

    move/from16 v17, v13

    .end local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v13    # "n":I
    .restart local v17    # "n":I
    .restart local v31    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_1ae

    .line 18127
    .end local v17    # "n":I
    .end local v30    # "ret":I
    .end local v31    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v0, "ret":I
    .restart local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_1aa
    move/from16 v30, v0

    move-object/from16 v31, v8

    .line 18148
    .end local v0    # "ret":I
    .end local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v30    # "ret":I
    .restart local v31    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_1ae
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v0, :cond_256

    .line 18149
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    invoke-static {v0, v3, v10}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 18156
    .local v3, "requiredVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v11, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 18157
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 18159
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    .line 18157
    const-string/jumbo v23, "package verifier"

    move-object/from16 v16, v27

    move-object/from16 v18, v0

    move-wide/from16 v19, v6

    invoke-interface/range {v16 .. v23}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 18162
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackage()Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    move-result-object v32

    .line 18163
    .local v32, "verifierPackage":Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v9, 0x1

    invoke-direct {v0, v8, v4, v15, v9}, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;IZ)V

    move-object/from16 v29, v12

    .end local v12    # "options":Landroid/app/BroadcastOptions;
    .local v29, "options":Landroid/app/BroadcastOptions;
    move-object v12, v0

    .line 18167
    .local v12, "receiver":Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;
    :try_start_1e8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const/4 v13, -0x1

    .line 18170
    invoke-virtual/range {v29 .. v29}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16
    :try_end_1f3
    .catch Ljava/lang/IllegalStateException; {:try_start_1e8 .. :try_end_1f3} :catch_21c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 18167
    move-wide/from16 v33, v6

    .end local v6    # "idleDuration":J
    .local v33, "idleDuration":J
    move-object v6, v0

    move-object v7, v11

    move-object v8, v5

    move-object/from16 v35, v10

    .end local v10    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v35, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move v10, v13

    move-object v13, v11

    .end local v11    # "verification":Landroid/content/Intent;
    .local v13, "verification":Landroid/content/Intent;
    move-object/from16 v11, v16

    move-object/from16 v36, v13

    .end local v13    # "verification":Landroid/content/Intent;
    .local v36, "verification":Landroid/content/Intent;
    move-object/from16 v13, v17

    move/from16 v28, v14

    .end local v14    # "installerUid":I
    .local v28, "installerUid":I
    move/from16 v14, v18

    move/from16 v37, v15

    .end local v15    # "requiredUid":I
    .local v37, "requiredUid":I
    move-object/from16 v15, v19

    move-object/from16 v16, v20

    :try_start_214
    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_217
    .catch Ljava/lang/IllegalStateException; {:try_start_214 .. :try_end_217} :catch_21a

    .line 18181
    move-object/from16 v7, v36

    goto :goto_249

    .line 18173
    :catch_21a
    move-exception v0

    goto :goto_227

    .end local v28    # "installerUid":I
    .end local v33    # "idleDuration":J
    .end local v35    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v36    # "verification":Landroid/content/Intent;
    .end local v37    # "requiredUid":I
    .restart local v6    # "idleDuration":J
    .restart local v10    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "verification":Landroid/content/Intent;
    .restart local v14    # "installerUid":I
    .restart local v15    # "requiredUid":I
    :catch_21c
    move-exception v0

    move-wide/from16 v33, v6

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    move/from16 v28, v14

    move/from16 v37, v15

    .line 18174
    .end local v6    # "idleDuration":J
    .end local v10    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "verification":Landroid/content/Intent;
    .end local v14    # "installerUid":I
    .end local v15    # "requiredUid":I
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v28    # "installerUid":I
    .restart local v33    # "idleDuration":J
    .restart local v35    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v36    # "verification":Landroid/content/Intent;
    .restart local v37    # "requiredUid":I
    :goto_227
    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v7, v36

    .end local v36    # "verification":Landroid/content/Intent;
    .local v7, "verification":Landroid/content/Intent;
    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18175
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/16 v17, -0x1

    .line 18178
    invoke-virtual/range {v29 .. v29}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 18175
    const-string v16, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object v14, v7

    move-object v15, v5

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v23}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 18184
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_249
    const-wide/32 v8, 0x40000

    const-string/jumbo v0, "verification"

    invoke-static {v8, v9, v0, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 18191
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    goto :goto_261

    .line 18148
    .end local v3    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v7    # "verification":Landroid/content/Intent;
    .end local v28    # "installerUid":I
    .end local v29    # "options":Landroid/app/BroadcastOptions;
    .end local v32    # "verifierPackage":Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    .end local v33    # "idleDuration":J
    .end local v35    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v37    # "requiredUid":I
    .restart local v6    # "idleDuration":J
    .restart local v10    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "verification":Landroid/content/Intent;
    .local v12, "options":Landroid/app/BroadcastOptions;
    .restart local v14    # "installerUid":I
    .restart local v15    # "requiredUid":I
    :cond_256
    move-wide/from16 v33, v6

    move-object/from16 v35, v10

    move-object v7, v11

    move-object/from16 v29, v12

    move/from16 v28, v14

    move/from16 v37, v15

    .line 18193
    .end local v6    # "idleDuration":J
    .end local v10    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "verification":Landroid/content/Intent;
    .end local v12    # "options":Landroid/app/BroadcastOptions;
    .end local v14    # "installerUid":I
    .end local v15    # "requiredUid":I
    .end local v27    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v31    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v28    # "installerUid":I
    .restart local v37    # "requiredUid":I
    :goto_261
    move/from16 v0, v30

    move/from16 v3, v37

    goto :goto_274

    .line 18067
    .end local v28    # "installerUid":I
    .end local v30    # "ret":I
    .end local v37    # "requiredUid":I
    .local v0, "ret":I
    .restart local v14    # "installerUid":I
    .restart local v15    # "requiredUid":I
    :cond_266
    move/from16 v30, v0

    move/from16 v28, v14

    move/from16 v37, v15

    .line 18194
    .end local v0    # "ret":I
    .end local v14    # "installerUid":I
    .end local v15    # "requiredUid":I
    .restart local v28    # "installerUid":I
    .restart local v30    # "ret":I
    .restart local v37    # "requiredUid":I
    :goto_26c
    move/from16 v3, v37

    const/4 v0, 0x1

    .end local v37    # "requiredUid":I
    .local v3, "requiredUid":I
    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move/from16 v0, v30

    .line 18197
    .end local v30    # "ret":I
    .restart local v0    # "ret":I
    :goto_274
    return v0
.end method

.method setReturnCode(I)V
    .registers 4
    .param p1, "ret"    # I

    .line 18225
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 18228
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 18230
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 17644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
