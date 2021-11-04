.class Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveInstallSession"
.end annotation


# instance fields
.field private final mInstallSource:Lcom/android/server/pm/InstallSource;

.field private final mInstallerUid:I

.field private final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field private final mPackageName:Ljava/lang/String;

.field private final mSessionId:I

.field private final mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field private final mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private final mStageCid:Ljava/lang/String;

.field private final mStagedDir:Ljava/io/File;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILandroid/content/pm/PackageInstaller$SessionParams;ILcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stagedDir"    # Ljava/io/File;
    .param p3, "stagedCid"    # Ljava/lang/String;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "sessionId"    # I
    .param p6, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p7, "installerUid"    # I
    .param p8, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 32420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32421
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    .line 32422
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    .line 32423
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStageCid:Ljava/lang/String;

    .line 32424
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 32425
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionId:I

    .line 32426
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 32427
    iput p7, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    .line 32428
    invoke-static {p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 32429
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    .line 32430
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 32431
    return-void
.end method


# virtual methods
.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 2

    .line 32465
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    return-object v0
.end method

.method public getInstallerUid()I
    .registers 2

    .line 32460
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    return v0
.end method

.method public getObserver()Landroid/content/pm/IPackageInstallObserver2;
    .registers 2

    .line 32448
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 32434
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .registers 2

    .line 32452
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionId:I

    return v0
.end method

.method public getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 2

    .line 32456
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .registers 2

    .line 32473
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method public getStagedCid()Ljava/lang/String;
    .registers 2

    .line 32443
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStageCid:Ljava/lang/String;

    return-object v0
.end method

.method public getStagedDir()Ljava/io/File;
    .registers 2

    .line 32438
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    .line 32469
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method
