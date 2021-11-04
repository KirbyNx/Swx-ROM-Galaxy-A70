.class public Lcom/samsung/android/knox/analytics/util/UserManagerHelper;
.super Ljava/lang/Object;
.source "UserManagerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USER_TYPE_BBC:I = 0x6

.field private static final USER_TYPE_COM:I = 0x5

.field private static final USER_TYPE_COWP:I = 0x9

.field private static final USER_TYPE_COWPP:I = 0xa

.field private static final USER_TYPE_DO:I = 0x2

.field private static final USER_TYPE_DO_PREMIUM:I = 0x3

.field private static final USER_TYPE_LEGACY_CL:I = 0x4

.field private static final USER_TYPE_PO:I = 0x0

.field private static final USER_TYPE_PO_PREMIUM:I = 0x1

.field private static final USER_TYPE_REGULAR:I = 0x7

.field private static final USER_TYPE_SECURE_FOLDER:I = 0x8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_17

    .line 204
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    .line 205
    if-nez v0, :cond_17

    .line 206
    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v1, "getDevicePolicyManagerService(): could not get DevicePolicyManager!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"    # I

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 218
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    .line 220
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private isCOWP()Z
    .registers 6

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 191
    .local v0, "devicePolicyManager":Landroid/app/admin/IDevicePolicyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 192
    return v1

    .line 195
    :cond_8
    :try_start_8
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 196
    :catch_d
    move-exception v2

    .line 197
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "isDoActive(): Exception in DPMS.hasDeviceOwner - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method


# virtual methods
.method public getDoPackageName()Ljava/lang/String;
    .registers 6

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 115
    .local v0, "dpms":Landroid/app/admin/IDevicePolicyManager;
    if-nez v0, :cond_8

    .line 116
    const/4 v1, 0x0

    return-object v1

    .line 118
    :cond_8
    const-string v1, ""

    .line 120
    .local v1, "doPackageName":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_b
    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 121
    .local v2, "ownerComponent":Landroid/content/ComponentName;
    if-eqz v2, :cond_16

    .line 122
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_17

    move-object v1, v3

    .line 126
    .end local v2    # "ownerComponent":Landroid/content/ComponentName;
    :cond_16
    goto :goto_1f

    .line 124
    :catch_17
    move-exception v2

    .line 125
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "isDoActive(): Exception in DPMS.getDeviceOwnerComponent - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1f
    sget-object v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoPackageName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v1
.end method

.method public getPoPackageName()Ljava/lang/String;
    .registers 10

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    .line 85
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 86
    .local v1, "devicePolicyManager":Landroid/app/admin/IDevicePolicyManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    if-nez v0, :cond_e

    goto :goto_5f

    .line 91
    :cond_e
    const/4 v3, 0x1

    :try_start_f
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_13} :catch_56

    .line 95
    .local v2, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    nop

    .line 96
    const-string v3, ""

    .line 97
    .local v3, "poPackageName":Ljava/lang/String;
    if-eqz v2, :cond_3f

    .line 98
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 100
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_28
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v6}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    .line 101
    .local v6, "profileComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_35

    .line 102
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_34} :catch_36

    move-object v3, v7

    .line 106
    .end local v6    # "profileComponent":Landroid/content/ComponentName;
    :cond_35
    goto :goto_3e

    .line 104
    :catch_36
    move-exception v6

    .line 105
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v8, "getPoPackageName() - Remote exception: "

    invoke-static {v7, v8, v6}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3e
    goto :goto_1c

    .line 109
    :cond_3f
    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPoPackageName(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-object v3

    .line 92
    .end local v2    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "poPackageName":Ljava/lang/String;
    :catch_56
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "getPoPackageName() - Runtime exception: "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return-object v2

    .line 87
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_5f
    :goto_5f
    return-object v2
.end method

.method public getPoPackageName(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 67
    .local v0, "devicePolicyManager":Landroid/app/admin/IDevicePolicyManager;
    if-nez v0, :cond_8

    .line 68
    const/4 v1, 0x0

    return-object v1

    .line 70
    :cond_8
    const-string v1, ""

    .line 72
    .local v1, "poPackageName":Ljava/lang/String;
    :try_start_a
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 73
    .local v2, "profileComponent":Landroid/content/ComponentName;
    if-eqz v2, :cond_15

    .line 74
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    move-object v1, v3

    .line 78
    .end local v2    # "profileComponent":Landroid/content/ComponentName;
    :cond_15
    goto :goto_1e

    .line 76
    :catch_16
    move-exception v2

    .line 77
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "getPoPackageName() - Remote exception: "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1e
    sget-object v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPoPackageName(int userId): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-object v1
.end method

.method public getUserType(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 147
    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 149
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_2a

    .line 150
    sget-object v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "getUserType(): UserInfo is null!"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v1, -0x1

    return v1

    .line 154
    :cond_2a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 155
    const/16 v1, 0x8

    return v1

    .line 158
    :cond_33
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 159
    const/4 v1, 0x5

    return v1

    .line 162
    :cond_3b
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 163
    const/4 v1, 0x4

    return v1

    .line 166
    :cond_43
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 167
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 168
    const/4 v1, 0x3

    return v1

    .line 170
    :cond_51
    const/4 v1, 0x2

    return v1

    .line 173
    :cond_53
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 174
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isCOWP()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 176
    const/16 v1, 0xa

    return v1

    .line 178
    :cond_68
    const/4 v1, 0x1

    return v1

    .line 180
    :cond_6a
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isCOWP()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 181
    const/16 v1, 0x9

    return v1

    .line 183
    :cond_73
    const/4 v1, 0x0

    return v1

    .line 186
    :cond_75
    const/4 v1, 0x7

    return v1
.end method

.method public isAnyPOActive()Z
    .registers 10

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    .line 40
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 41
    .local v1, "devicePolicyManager":Landroid/app/admin/IDevicePolicyManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 42
    return v2

    .line 46
    :cond_c
    const/4 v3, 0x1

    :try_start_d
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_11} :catch_51

    .line 50
    .local v2, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    nop

    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, "hasAnyPo":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 54
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_23
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v6}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_2d

    if-eqz v6, :cond_2c

    .line 55
    const/4 v3, 0x1

    .line 59
    :cond_2c
    goto :goto_35

    .line 57
    :catch_2d
    move-exception v6

    .line 58
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v8, "isAnyPOActive() - Remote exception: "

    invoke-static {v7, v8, v6}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_35
    goto :goto_17

    .line 61
    :cond_36
    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnyPOActive(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return v3

    .line 47
    .end local v2    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "hasAnyPo":Z
    :catch_51
    move-exception v3

    .line 48
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "isAnyPOActive() - Runtime exception: "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return v2
.end method

.method public isDoActive()Z
    .registers 6

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 133
    .local v0, "dpms":Landroid/app/admin/IDevicePolicyManager;
    if-nez v0, :cond_8

    .line 134
    const/4 v1, 0x0

    return v1

    .line 136
    :cond_8
    const/4 v1, 0x0

    .line 138
    .local v1, "res":Z
    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    move-result v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_f

    move v1, v2

    .line 141
    goto :goto_17

    .line 139
    :catch_f
    move-exception v2

    .line 140
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "isDoActive(): Exception in DPMS.hasDeviceOwner - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_17
    sget-object v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDoActive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return v1
.end method
