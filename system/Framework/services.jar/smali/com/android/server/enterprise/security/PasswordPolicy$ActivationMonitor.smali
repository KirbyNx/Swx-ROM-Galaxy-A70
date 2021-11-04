.class Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivationMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 3

    .line 3540
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3541
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->getLicenseService()V

    .line 3542
    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1000(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3543
    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1000(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V

    .line 3545
    :cond_15
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/android/server/enterprise/security/PasswordPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/security/PasswordPolicy$1;

    .line 3538
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    return-void
.end method

.method private getLicenseService()V
    .registers 3

    .line 3548
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1000(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-nez v0, :cond_15

    .line 3549
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const-string v1, "enterprise_license_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    # setter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1002(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/android/server/enterprise/license/EnterpriseLicenseService;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 3551
    :cond_15
    return-void
.end method

.method private isDeviceOwnerPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3554
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1100(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 3555
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz p1, :cond_1a

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method


# virtual methods
.method public onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "licenseResult"    # Lcom/samsung/android/knox/license/LicenseResult;

    .line 3580
    const-string v0, "PasswordPolicy"

    const-string/jumbo v1, "onUpdateElm is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3583
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-ne v2, v3, :cond_63

    .line 3584
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1000(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->isDeviceOwnerPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3585
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1000(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3586
    .local v2, "isServiceAvailable":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpdateElm - isServiceAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    if-eqz v2, :cond_63

    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1200(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v3

    if-nez v3, :cond_63

    .line 3588
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V
    invoke-static {v3, v1, v1, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1300(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_63} :catch_64

    .line 3595
    .end local v2    # "isServiceAvailable":Z
    :cond_63
    goto :goto_6b

    .line 3593
    :catch_64
    move-exception v1

    .line 3594
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "onUpdateElm() failed "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3596
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_6b
    return-void
.end method

.method public onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "licenseResult"    # Lcom/samsung/android/knox/license/LicenseResult;

    .line 3560
    const-string v0, "PasswordPolicy"

    const-string/jumbo v1, "onUpdateKlm is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3563
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-ne v2, v3, :cond_63

    .line 3564
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1000(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->isDeviceOwnerPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3565
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1000(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3566
    .local v2, "isServiceAvailable":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpdateKlm - isServiceAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    if-eqz v2, :cond_63

    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1200(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v3

    if-nez v3, :cond_63

    .line 3568
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V
    invoke-static {v3, v1, v1, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$1300(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_63} :catch_64

    .line 3575
    .end local v2    # "isServiceAvailable":Z
    :cond_63
    goto :goto_6b

    .line 3573
    :catch_64
    move-exception v1

    .line 3574
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "onUpdateKlm() failed "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3576
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_6b
    return-void
.end method
