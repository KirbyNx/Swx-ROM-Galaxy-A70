.class public Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
.super Ljava/lang/Object;
.source "PersonaManagerAdapter.java"


# static fields
.field public static final MIN_PERSONA_ID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PersonaManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;


# instance fields
.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKeguardMgr:Landroid/app/KeyguardManager;

.field private mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRCPInterface:Landroid/content/IRCPInterface;

.field private mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private mUserMgr:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    .line 55
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 56
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 57
    return-void
.end method

.method public static getComContainerOrOwnerUserId()I
    .registers 2

    .line 73
    const-string v0, "PersonaManagerAdapter"

    const-string v1, "ContainerOnlyMode - EOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    if-nez v1, :cond_12

    if-eqz p0, :cond_12

    .line 47
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    .line 48
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 50
    :cond_12
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 45
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mKeguardMgr:Landroid/app/KeyguardManager;

    if-nez v0, :cond_11

    .line 100
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mKeguardMgr:Landroid/app/KeyguardManager;

    .line 102
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mKeguardMgr:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public static getKnoxContainerVersionString()Ljava/lang/String;
    .registers 1

    .line 160
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .registers 1

    .line 157
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager(Z)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 4
    .param p1, "isCurrent"    # Z

    .line 106
    if-eqz p1, :cond_10

    .line 107
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    .line 108
    return-object v0

    .line 110
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    return-object v0
.end method

.method public static isComContainerOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 63
    const-string v0, "PersonaManagerAdapter"

    const-string v1, "ContainerOnlyMode - EOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public static isDoEnabled(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 150
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isKnoxVersionSupported(I)Z
    .registers 2
    .param p0, "version"    # I

    .line 296
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    return v0
.end method

.method public static isLegacyContainer(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 308
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isOrganizationOwnedDeviceWithManagedProfile()Z
    .registers 2

    .line 153
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 154
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1

    return v1
.end method

.method public static isValidKnoxId(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 147
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public exists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 300
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v0

    return v0
.end method

.method public getActivePersonas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdminComponentName(I)Landroid/content/ComponentName;
    .registers 3
    .param p1, "userid"    # I

    .line 315
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCOMContainerOrOwnerUserId()I
    .registers 3

    .line 135
    const-string v0, "PersonaManagerAdapter"

    const-string v1, "ContainerOnlyMode - EOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "ret":I
    return v0
.end method

.method public getContainerIcon(I)[B
    .registers 3
    .param p1, "personaId"    # I

    .line 219
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    const-string v0, "custom-container-icon"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContainerName(I)Ljava/lang/String;
    .registers 4
    .param p1, "personaId"    # I

    .line 223
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 224
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v1

    .line 225
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFocusedUserWithActivityManager()I
    .registers 5

    .line 262
    const/4 v0, 0x0

    .line 264
    .local v0, "userId":I
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager(Z)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 265
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v1

    move v0, v1

    goto :goto_24

    .line 267
    :cond_12
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_25

    move v0, v1

    .line 271
    :goto_24
    goto :goto_2e

    .line 269
    :catch_25
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PersonaManagerAdapter"

    const-string/jumbo v3, "getFocusedUserWithActivityManager() failed. so return owner id"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    return v0
.end method

.method public getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .registers 3
    .param p1, "personaId"    # I

    .line 275
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxNameChangedAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentId(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 163
    move v0, p1

    .line 164
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 165
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_d

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    .line 166
    :cond_d
    return v0
.end method

.method public getPersonaIds()[I
    .registers 8

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 250
    .local v1, "ret":[I
    const/4 v2, 0x0

    .line 251
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 252
    .local v4, "e":Ljava/lang/Integer;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_34

    move v2, v5

    .end local v4    # "e":Ljava/lang/Integer;
    goto :goto_1c

    .line 254
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_32
    return-object v1

    .line 258
    .end local v0    # "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "ret":[I
    .end local v2    # "i":I
    :cond_33
    goto :goto_3d

    .line 256
    :catch_34
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PersonaManagerAdapter"

    const-string/jumbo v2, "getPersonaIds() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    .line 79
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    .line 81
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method public getPersonas(Z)Ljava/util/List;
    .registers 7
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 233
    .local v3, "i":I
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 234
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2f

    .line 235
    nop

    .end local v3    # "i":I
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_11

    .line 238
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2e
    goto :goto_38

    .line 236
    :catch_2f
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PersonaManagerAdapter"

    const-string/jumbo v3, "getPersonas() failed. so return empty list"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_38
    return-object v0
.end method

.method public getProfileGroupId(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 278
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    return v0
.end method

.method public getProfilesForOwner(I)Ljava/util/List;
    .registers 3
    .param p1, "ownerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPInterface:Landroid/content/IRCPInterface;

    if-nez v0, :cond_16

    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v0, :cond_e

    .line 116
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getRCPManager()Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 118
    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPInterface:Landroid/content/IRCPInterface;

    .line 120
    :cond_16
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPInterface:Landroid/content/IRCPInterface;

    return-object v0
.end method

.method public getRCPManager()Lcom/samsung/android/knox/SemRemoteContentManager;
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    if-nez v0, :cond_11

    .line 86
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 88
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mRCPMgr:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 93
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 95
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    return-object v0
.end method

.method public isActivePersona(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 180
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 181
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 182
    return v1

    .line 184
    :cond_14
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 185
    return v1

    .line 188
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public isBYODId(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public isComContainerExistOnDevice()Z
    .registers 3

    .line 131
    const-string v0, "PersonaManagerAdapter"

    const-string v1, "ContainerOnlyMode - EOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isComContainerId(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 127
    const-string v0, "PersonaManagerAdapter"

    const-string v1, "ContainerOnlyMode - EOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isDeletingPersona(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 213
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 214
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_16

    .line 215
    const/4 v1, 0x1

    return v1

    .line 216
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public isDeviceLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 207
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 208
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceSecure(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 200
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isManagedProfile(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 303
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method public isMyKnoxUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 169
    const/4 v0, 0x0

    .line 176
    .local v0, "ret":Z
    return v0
.end method

.method public isPersonaEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 192
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 193
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 194
    const/4 v1, 0x1

    return v1

    .line 195
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public isPersonaRunning()Z
    .registers 3

    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager(Z)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPremiumUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 319
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    return v0
.end method

.method public isSecureFolderId(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 142
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    return v0
.end method

.method public postPwdChangeNotificationForDeviceOwner(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 323
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->postPwdChangeNotificationForDeviceOwner(I)V

    .line 324
    return-void
.end method

.method public setIsFingerAsSupplement(IZ)Z
    .registers 4
    .param p1, "personaId"    # I
    .param p2, "isFingerprintAsSupplement"    # Z

    .line 281
    const/4 v0, 0x1

    .line 288
    .local v0, "ret":Z
    return v0
.end method
