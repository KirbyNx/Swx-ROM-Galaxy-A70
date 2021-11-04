.class Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    .line 595
    return-void
.end method


# virtual methods
.method getApplicationIconDb()Lcom/android/server/enterprise/application/ApplicationIconDb;
    .registers 3

    .line 622
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationIconDb;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getApplicationUsageInstance()Lcom/android/server/enterprise/application/ApplicationUsage;
    .registers 3

    .line 626
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 630
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;
    .registers 3

    .line 614
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getIPackageManagerInstance()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 598
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .registers 2

    .line 606
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerInstance()Landroid/content/pm/PackageManager;
    .registers 2

    .line 602
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPersonaManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 3

    .line 618
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method
