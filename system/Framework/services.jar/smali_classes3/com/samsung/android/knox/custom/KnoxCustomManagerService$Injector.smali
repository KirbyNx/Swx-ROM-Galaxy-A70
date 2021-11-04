.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;
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

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    .line 428
    return-void
.end method


# virtual methods
.method final binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 470
    .local p1, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;, "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<TT;>;"
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 2
    .param p1, "action"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    .line 466
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 467
    return-void
.end method

.method getDexLaumcherConfiguration()Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;
    .registers 3

    .line 455
    new-instance v0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getKLM()Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object v0

    return-object v0
.end method

.method getPrivateKnoxCustom()Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    .registers 2

    .line 463
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    move-result-object v0

    return-object v0
.end method

.method getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 3

    .line 431
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method getlauncherConfiguration()Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;
    .registers 3

    .line 435
    new-instance v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public settingsGlobalPutInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 443
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    return-void
.end method

.method public settingsSecurePutInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 447
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    return-void
.end method

.method public settingsSecurePutString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 452
    return-void
.end method
