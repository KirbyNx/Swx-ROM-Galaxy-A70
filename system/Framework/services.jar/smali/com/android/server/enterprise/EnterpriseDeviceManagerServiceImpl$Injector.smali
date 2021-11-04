.class Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
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

    .line 2132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2133
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 2134
    return-void
.end method


# virtual methods
.method SecContentProviderNotifyPolicyChangesAsUser(Ljava/lang/String;I)V
    .registers 4
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 2241
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2242
    return-void
.end method

.method addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "policyService"    # Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 2233
    invoke-static {p1, p2}, Lcom/android/server/enterprise/EnterpriseService;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2234
    return-void
.end method

.method addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "policyService"    # Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 2169
    invoke-static {p1, p2}, Lcom/android/server/enterprise/EnterpriseService;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2170
    return-void
.end method

.method getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 3

    .line 2185
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getConstrainedState()Lcom/android/server/enterprise/utils/ConstrainedState;
    .registers 2

    .line 2237
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v0

    return-object v0
.end method

.method getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 3

    .line 2217
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method getDpmInstance()Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    .line 2141
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method getEnterpriseLicenseManager()Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .registers 2

    .line 2145
    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    return-object v0
.end method

.method getEnterpriseLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .registers 4

    .line 2181
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPackageManagerInstance()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    return-object v0
.end method

.method getHdmService()Lcom/android/server/enterprise/hdm/HdmService;
    .registers 3

    .line 2205
    new-instance v0, Lcom/android/server/enterprise/hdm/HdmService;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/hdm/HdmService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getPackageManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .registers 2

    .line 2153
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerInstance()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 2137
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPasswordPolicy()Lcom/android/server/enterprise/security/PasswordPolicy;
    .registers 3

    .line 2209
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getPersonaManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    .registers 2

    .line 2157
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method getPersonaManagerInstance()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 2161
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method getPhoneRestrictionPolicy()Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .registers 3

    .line 2193
    new-instance v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getRemoteInjectionService()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
    .registers 3

    .line 2197
    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getRestrictionPolicy()Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .registers 3

    .line 2201
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 3

    .line 2177
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getSystemUIAdapterInstance()Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    .registers 2

    .line 2149
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v0

    return-object v0
.end method

.method getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 2229
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method getWifiPolicy()Lcom/android/server/enterprise/wifi/WifiPolicy;
    .registers 3

    .line 2189
    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method hasDeviceOwner()Z
    .registers 2

    .line 2221
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->semGetDeviceOwner()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method invokeSystemReadyIfNeeded()V
    .registers 1

    .line 2245
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->invokeSystemReadyIfNeeded()V

    .line 2246
    return-void
.end method

.method invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V
    .registers 3
    .param p1, "policyService"    # Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 2251
    invoke-static {p1, p2}, Lcom/android/server/enterprise/EnterpriseService;->invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 2252
    return-void
.end method

.method isFirmwareChanged()Z
    .registers 2

    .line 2173
    # getter for: Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->access$700()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isFirmwareChanged()Z
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->access$800(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)Z

    move-result v0

    return v0
.end method

.method isOrganizationOwnedDeviceWithManagedProfile()Z
    .registers 2

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    return v0
.end method

.method serviceManagerAddService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "POLICY_SERVICE"    # Ljava/lang/String;
    .param p2, "policyService"    # Landroid/os/IBinder;

    .line 2165
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2166
    return-void
.end method

.method userHandleGetCallingUserId()I
    .registers 2

    .line 2213
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method
