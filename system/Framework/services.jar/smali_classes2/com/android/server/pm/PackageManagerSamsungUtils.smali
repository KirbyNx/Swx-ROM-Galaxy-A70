.class public Lcom/android/server/pm/PackageManagerSamsungUtils;
.super Ljava/lang/Object;
.source "PackageManagerSamsungUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;
    .registers 7
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 59
    const-string v0, "PackageManager"

    .line 60
    .local v0, "TAG":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p0, :cond_6

    .line 61
    return-object v1

    .line 63
    :cond_6
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 64
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_b

    .line 65
    return-object v1

    .line 67
    :cond_b
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    .line 68
    .local v4, "userState":Landroid/content/pm/PackageUserState;
    const/16 v5, 0x80

    invoke-static {v2, v5, v4, v3, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 70
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_19

    .line 71
    return-object v1

    .line 73
    :cond_19
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static getPermissionApexFile(ILjava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "userId"    # I
    .param p1, "fileName"    # Ljava/lang/String;

    .line 149
    const-string v0, "com.android.permission"

    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v0

    .line 150
    .local v0, "apexEnvironment":Landroid/content/ApexEnvironment;
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v1

    .line 151
    .local v1, "dataDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method static getProcessNameForPid(I)Ljava/lang/String;
    .registers 7
    .param p0, "pid"    # I

    .line 33
    const-string v0, ""

    .line 34
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 35
    .local v1, "activityManagerNative":Landroid/app/IActivityManager;
    if-eqz v1, :cond_40

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_40

    .line 41
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 42
    .local v2, "runingList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_32

    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 44
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p0, :cond_31

    .line 45
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2f} :catch_33

    move-object v0, v3

    .line 46
    goto :goto_32

    .line 48
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_31
    goto :goto_1d

    .line 52
    .end local v2    # "runingList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_32
    :goto_32
    goto :goto_36

    .line 50
    :catch_33
    move-exception v2

    .line 51
    .local v2, "e":Landroid/os/RemoteException;
    const-string v0, "couldn\'t find"

    .line 53
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_36
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "splitted":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 55
    return-object v0

    .line 36
    .end local v2    # "splitted":[Ljava/lang/String;
    :cond_40
    :goto_40
    const-string v0, "am is not ready yet"

    .line 37
    return-object v0
.end method

.method static hasHighPriorityComponent(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 137
    .local p0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 138
    return v0

    .line 140
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 141
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget v3, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-lez v3, :cond_1a

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1a
    goto :goto_8

    .line 145
    :cond_1b
    return v0
.end method

.method public static installedOnSdcardAsUser(Lcom/android/server/pm/PackageSetting;II)Z
    .registers 6
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 116
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 117
    return v0

    .line 119
    :cond_4
    iget v1, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-nez v1, :cond_c

    .line 121
    return v0

    .line 124
    :cond_c
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_19

    .line 125
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v0

    return v0

    .line 126
    :cond_19
    const/high16 v1, 0x400000

    and-int/2addr v1, p1

    if-eqz v1, :cond_20

    .line 128
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_20
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_2d

    .line 131
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v0

    return v0

    .line 133
    :cond_2d
    return v0
.end method

.method static isMetaDataInAppInfo(Lcom/android/server/pm/PackageSetting;ILjava/lang/String;)Z
    .registers 8
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "userId"    # I
    .param p2, "metaDataName"    # Ljava/lang/String;

    .line 77
    const-string v0, "PackageManager"

    .line 78
    .local v0, "TAG":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p0, :cond_c

    .line 79
    const-string/jumbo v2, "hasPackageOnlyForOwnerUser needs PackageSetting Object"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v1

    .line 82
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 83
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_11

    .line 84
    return v1

    .line 86
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 87
    .local v3, "userState":Landroid/content/pm/PackageUserState;
    const/16 v4, 0x80

    invoke-static {v2, v4, v3, p1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 89
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_1e

    .line 90
    return v1

    .line 92
    :cond_1e
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {v1, p2}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "metaDataName"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "enabled":Z
    if-eqz p0, :cond_8

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    :cond_8
    return v0
.end method

.method public static systemPolicyFixedFlagsChanged(III)Z
    .registers 7
    .param p0, "oldFlags"    # I
    .param p1, "newFlags"    # I
    .param p2, "flagMask"    # I

    .line 104
    const/16 v0, 0x14

    .line 106
    .local v0, "fixedFlags":I
    and-int/lit8 v1, p2, 0x14

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 107
    return v2

    .line 110
    :cond_8
    and-int/lit8 v1, p0, 0x14

    .line 111
    .local v1, "oldFixedFlags":I
    and-int/lit8 v3, p1, 0x14

    .line 112
    .local v3, "newFixedFlags":I
    if-eq v1, v3, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method
