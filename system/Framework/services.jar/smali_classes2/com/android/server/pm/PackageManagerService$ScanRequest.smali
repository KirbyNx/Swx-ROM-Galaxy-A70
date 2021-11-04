.class Lcom/android/server/pm/PackageManagerService$ScanRequest;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScanRequest"
.end annotation


# instance fields
.field public final cpuAbiOverride:Ljava/lang/String;

.field public final disabledPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final isPlatformPackage:Z

.field public final oldPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final oldPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final originalPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final parseFlags:I

.field public final parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

.field public final pkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final realPkgName:Ljava/lang/String;

.field public final scanFlags:I

.field public final sharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V
    .registers 14
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "sharedUserSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p3, "oldPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p5, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "originalPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p7, "realPkgName"    # Ljava/lang/String;
    .param p8, "parseFlags"    # I
    .param p9, "scanFlags"    # I
    .param p10, "isPlatformPackage"    # Z
    .param p11, "user"    # Landroid/os/UserHandle;
    .param p12, "cpuAbiOverride"    # Ljava/lang/String;

    .line 12814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12815
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 12816
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->oldPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 12817
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->pkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 12818
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->sharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 12819
    if-nez p4, :cond_f

    const/4 v0, 0x0

    goto :goto_14

    :cond_f
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v0, p4}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    :goto_14
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->oldPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 12820
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->disabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 12821
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->originalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 12822
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->realPkgName:Ljava/lang/String;

    .line 12823
    iput p8, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->parseFlags:I

    .line 12824
    iput p9, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->scanFlags:I

    .line 12825
    iput-boolean p10, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->isPlatformPackage:Z

    .line 12826
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->user:Landroid/os/UserHandle;

    .line 12827
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->cpuAbiOverride:Ljava/lang/String;

    .line 12828
    return-void
.end method
