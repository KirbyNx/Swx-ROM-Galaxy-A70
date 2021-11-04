.class Lcom/android/server/pm/MultiUserInstallPolicy;
.super Ljava/lang/Object;
.source "MultiUserInstallPolicy.java"


# static fields
.field static final METADATA_MULTIUSER_DISABLE_SUB_USER:Ljava/lang/String; = "com.samsung.android.multiuser.disable_sub_user"

.field static final METADATA_MULTIUSER_INSTALL_ONLY_OWNER:Ljava/lang/String; = "com.samsung.android.multiuser.install_only_owner"

.field static final METADATA_MULTIUSER_UNINSTALL_FOR_GUEST:Ljava/lang/String; = "com.samsung.android.multiuser.disable_for_guest"

.field private static final TAG:Ljava/lang/String; = "MultiUserInstallPolicy"


# instance fields
.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/pm/MultiUserInstallPolicy;->mPackages:Landroid/util/ArrayMap;

    .line 47
    return-void
.end method

.method private applyInstallPolicyPackageAsUserLPw(Lcom/android/server/pm/PackageSetting;I)V
    .registers 5
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "targetUserId"    # I

    .line 63
    if-nez p1, :cond_3

    .line 64
    return-void

    .line 66
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "subUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/MultiUserInstallPolicy;->getSubUserIdsAndGuestUserId(Ljava/util/List;I)I

    move-result v1

    .line 68
    .local v1, "guestUserId":I
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    .line 69
    return-void
.end method

.method static findCurrentGuestUserId()I
    .registers 3

    .line 215
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 216
    .local v0, "um":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_f

    .line 217
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 218
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_f

    .line 219
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    return v2

    .line 222
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method private getComponentsHavingEnabledMetaDataLPr(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "metaDataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "MultiUserInstallPolicy"

    if-nez p1, :cond_11

    .line 164
    const-string/jumbo v3, "ps object is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object v1

    .line 167
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 168
    .local v3, "userState":Landroid/content/pm/PackageUserState;
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 169
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v4, :cond_36

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has not package object"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v1

    .line 174
    :cond_36
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 175
    .local v2, "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    nop

    .line 176
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    .line 175
    invoke-static {v5, p2}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 177
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 178
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v2    # "activity":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_66
    goto :goto_3e

    .line 182
    :cond_67
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedService;

    .line 183
    .local v2, "service":Landroid/content/pm/parsing/component/ParsedService;
    nop

    .line 184
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    .line 183
    invoke-static {v5, p2}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 185
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 186
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v2    # "service":Landroid/content/pm/parsing/component/ParsedService;
    :cond_97
    goto :goto_6f

    .line 190
    :cond_98
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 191
    .local v2, "receiver":Landroid/content/pm/parsing/component/ParsedActivity;
    nop

    .line 192
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    .line 191
    invoke-static {v5, p2}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 193
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c8

    .line 194
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v2    # "receiver":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_c8
    goto :goto_a0

    .line 198
    :cond_c9
    return-object v0
.end method

.method private getSubUserIdsAndGuestUserId(Ljava/util/List;I)I
    .registers 10
    .param p2, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 139
    .local p1, "outSubUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/MultiUserInstallPolicy;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, -0x1

    if-nez v0, :cond_d

    .line 141
    return v1

    .line 143
    :cond_d
    const/4 v2, -0x1

    .line 144
    .local v2, "guestUserId":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 145
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v5, :cond_23

    .line 146
    goto :goto_12

    .line 148
    :cond_23
    if-ne p2, v1, :cond_30

    .line 149
    new-instance v5, Ljava/lang/Integer;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 150
    :cond_30
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, p2, :cond_3e

    .line 151
    new-instance v5, Ljava/lang/Integer;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_3e
    :goto_3e
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 154
    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 156
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_46
    goto :goto_12

    .line 157
    :cond_47
    return v2
.end method

.method private static getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;
    .registers 5
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 205
    .local v0, "id":J
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_8} :catch_11
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 209
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    return-object v2

    .line 209
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    throw v2

    .line 206
    :catch_11
    move-exception v2

    .line 209
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    nop

    .line 211
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method applyInstallPolicyLPw()V
    .registers 5

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "subUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/MultiUserInstallPolicy;->getSubUserIdsAndGuestUserId(Ljava/util/List;I)I

    move-result v1

    .line 52
    .local v1, "guestUserId":I
    iget-object v2, p0, Lcom/android/server/pm/MultiUserInstallPolicy;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 53
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    .line 54
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_14

    .line 55
    :cond_24
    return-void
.end method

.method applyInstallPolicyPackageAsUserLPw(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetUserId"    # I

    .line 58
    iget-object v0, p0, Lcom/android/server/pm/MultiUserInstallPolicy;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 59
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/MultiUserInstallPolicy;->applyInstallPolicyPackageAsUserLPw(Lcom/android/server/pm/PackageSetting;I)V

    .line 60
    return-void
.end method

.method applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V
    .registers 20
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "guestUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 73
    .local p2, "subUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyInstallPolicyPackageInternalLPw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiUserInstallPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v0, :cond_14f

    if-nez p2, :cond_24

    move-object/from16 v10, p0

    goto/16 :goto_151

    .line 78
    :cond_24
    const/4 v2, 0x0

    .line 79
    .local v2, "uninstallOnSubUser":Z
    const/4 v4, 0x0

    .line 80
    .local v4, "uninstallOnGuestUser":Z
    const/4 v5, 0x0

    .line 81
    .local v5, "disableOnSubUser":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v6

    .line 82
    .local v6, "appMetaData":Landroid/os/Bundle;
    const-string v7, "com.samsung.android.multiuser.install_only_owner"

    const/4 v8, 0x0

    const-string v9, " for userId: "

    if-eqz v6, :cond_d3

    .line 83
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    .line 85
    const-string v10, "com.samsung.android.multiuser.disable_for_guest"

    invoke-static {v6, v10}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    .line 87
    const-string v10, "Set package state as uninstalled: "

    if-eqz v2, :cond_74

    if-eqz p2, :cond_74

    .line 88
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_46
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_74

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 89
    .local v12, "userId":Ljava/lang/Integer;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v8, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 92
    .end local v12    # "userId":Ljava/lang/Integer;
    goto :goto_46

    .line 94
    :cond_74
    if-eqz v4, :cond_95

    .line 95
    if-lez v1, :cond_95

    .line 96
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 102
    :cond_95
    const-string v10, "com.samsung.android.multiuser.disable_sub_user"

    invoke-static {v6, v10}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    .line 104
    if-eqz v5, :cond_d3

    .line 105
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 106
    .local v11, "userId":Ljava/lang/Integer;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Set package state as disabled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v12, 0x2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 109
    .end local v11    # "userId":Ljava/lang/Integer;
    goto :goto_a1

    .line 113
    :cond_d3
    if-nez v2, :cond_da

    if-nez v4, :cond_da

    if-nez v5, :cond_da

    const/4 v8, 0x1

    .line 115
    .local v8, "installedOrEnabledPackage":Z
    :cond_da
    if-eqz v8, :cond_14c

    .line 116
    move-object/from16 v10, p0

    invoke-direct {v10, v0, v7}, Lcom/android/server/pm/MultiUserInstallPolicy;->getComponentsHavingEnabledMetaDataLPr(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 118
    .local v7, "componentsOnlyForOwnerUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "installedOrEnabledPackage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v7, :cond_14e

    .line 120
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_ff
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 121
    .restart local v12    # "userId":Ljava/lang/Integer;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_149

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 122
    .local v14, "cmp":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set component state as disabled: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in pkg: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v14, v1}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    .line 125
    .end local v14    # "cmp":Ljava/lang/String;
    move/from16 v1, p3

    goto :goto_10f

    .line 126
    .end local v12    # "userId":Ljava/lang/Integer;
    :cond_149
    move/from16 v1, p3

    goto :goto_ff

    .line 115
    .end local v7    # "componentsOnlyForOwnerUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14c
    move-object/from16 v10, p0

    .line 129
    :cond_14e
    return-void

    .line 74
    .end local v2    # "uninstallOnSubUser":Z
    .end local v4    # "uninstallOnGuestUser":Z
    .end local v5    # "disableOnSubUser":Z
    .end local v6    # "appMetaData":Landroid/os/Bundle;
    .end local v8    # "installedOrEnabledPackage":Z
    :cond_14f
    move-object/from16 v10, p0

    .line 75
    :goto_151
    const-string v1, "Subuser id is null"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
