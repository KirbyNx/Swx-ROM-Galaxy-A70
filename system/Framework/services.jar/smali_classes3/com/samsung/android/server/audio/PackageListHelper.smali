.class public Lcom/samsung/android/server/audio/PackageListHelper;
.super Ljava/lang/Object;
.source "PackageListHelper.java"


# static fields
.field private static final MULTISOUND_ALLOWED_PACKAGE_LIST:Ljava/lang/String; = "/system/etc/multisound_allowed_package_list"

.field private static final MULTISOUND_RESTRICTED_PACKAGE_LIST:Ljava/lang/String; = "/system/etc/multisound_restricted_package_list"

.field private static final TAG:Ljava/lang/String; = "PackageListHelper"

.field private static sAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field private static sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

.field private static sInstance:Lcom/samsung/android/server/audio/PackageListHelper;


# instance fields
.field private mAllowedPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictedPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mRestrictedPackageList:Ljava/util/List;

    .line 54
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 55
    new-instance v1, Lcom/samsung/android/server/audio/AppCategorizer;

    invoke-direct {v1, v0}, Lcom/samsung/android/server/audio/AppCategorizer;-><init>(Lcom/samsung/android/server/audio/AudioSettingsHelper;)V

    sput-object v1, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    .line 56
    return-void
.end method

.method public static destroy()V
    .registers 1

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 68
    invoke-static {}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->destroy()V

    .line 69
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/PackageListHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    sget-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/samsung/android/server/audio/PackageListHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/PackageListHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 62
    :cond_b
    sget-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sInstance:Lcom/samsung/android/server/audio/PackageListHelper;

    return-object v0
.end method


# virtual methods
.method public addPackage(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 160
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODIFY_PHONE_STATE Permission Denial from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v1, "PackageListHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 169
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 171
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v1, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/audio/AppCategorizer;->putPackage(ILjava/lang/String;)V
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_42} :catch_43

    .line 174
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_44

    .line 172
    :catch_43
    move-exception v0

    .line 175
    :goto_44
    return-void
.end method

.method checkAudioSettingsPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # Ljava/lang/String;

    .line 178
    const-string v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 180
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "PackageListHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x0

    return v1
.end method

.method public getSelectedAppList()[Ljava/lang/String;
    .registers 2

    .line 156
    sget-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/AppCategorizer;->getSelectedPackages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initPackageList(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const-string v0, "IOException"

    const-string v1, "PackageListHelper"

    const-string v2, "initPackageList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "restrictedPackageListReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 76
    .local v3, "allowedPackageListReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 79
    .local v4, "packageName":Ljava/lang/String;
    :try_start_c
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/system/etc/multisound_restricted_package_list"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 81
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/system/etc/multisound_allowed_package_list"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 86
    :cond_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 87
    if-eqz v4, :cond_32

    .line 88
    iget-object v5, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mRestrictedPackageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_32
    if-nez v4, :cond_26

    .line 94
    :cond_34
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 95
    if-eqz v4, :cond_40

    .line 96
    iget-object v5, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_40} :catch_5f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_40} :catch_50
    .catchall {:try_start_c .. :try_end_40} :catchall_4e

    .line 98
    :cond_40
    if-nez v4, :cond_34

    .line 106
    :try_start_42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 107
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_48} :catch_49

    .line 110
    :cond_48
    :goto_48
    goto :goto_70

    .line 108
    :catch_49
    move-exception v5

    .line 109
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_70

    .line 105
    :catchall_4e
    move-exception v5

    goto :goto_98

    .line 102
    :catch_50
    move-exception v5

    .line 103
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_51
    invoke-static {v1, v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    .line 106
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_59

    :try_start_56
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 107
    :cond_59
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_49

    goto :goto_48

    .line 100
    :catch_5f
    move-exception v5

    .line 101
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_60
    const-string v6, "file does not exists"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_4e

    .line 106
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_6a

    :try_start_67
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 107
    :cond_6a
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6f} :catch_49

    goto :goto_48

    .line 113
    :goto_70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_71
    iget-object v1, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_97

    .line 114
    iget-object v1, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/server/audio/AudioHelper;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, "tempUid":I
    if-eqz v1, :cond_94

    .line 116
    sget-object v5, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    iget-object v6, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/samsung/android/server/audio/AppCategorizer;->putPackage(ILjava/lang/String;)V

    .line 113
    .end local v1    # "tempUid":I
    :cond_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 119
    .end local v0    # "i":I
    :cond_97
    return-void

    .line 106
    :goto_98
    if-eqz v2, :cond_a0

    :try_start_9a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_a0

    .line 108
    :catch_9e
    move-exception v6

    goto :goto_a6

    .line 107
    :cond_a0
    :goto_a0
    if-eqz v3, :cond_aa

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a5} :catch_9e

    goto :goto_aa

    .line 109
    .local v6, "e":Ljava/io/IOException;
    :goto_a6
    invoke-static {v1, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ab

    .line 110
    .end local v6    # "e":Ljava/io/IOException;
    :cond_aa
    :goto_aa
    nop

    .line 111
    :goto_ab
    throw v5
.end method

.method public isAlreadyInDB(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->isRestrictedPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 132
    :cond_8
    sget-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/audio/AppCategorizer;->checkExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 134
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isInAllowedList(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 139
    iget-object v1, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mAllowedPackageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 140
    const/4 v1, 0x1

    return v1

    .line 138
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isRestrictedPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mRestrictedPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 148
    iget-object v1, p0, Lcom/samsung/android/server/audio/PackageListHelper;->mRestrictedPackageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 149
    const/4 v1, 0x1

    return v1

    .line 147
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public removePackageForName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 123
    const-string v0, "removePackageForName"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/audio/PackageListHelper;->checkAudioSettingsPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 124
    return-void

    .line 126
    :cond_9
    sget-object v0, Lcom/samsung/android/server/audio/PackageListHelper;->sCategorizer:Lcom/samsung/android/server/audio/AppCategorizer;

    invoke-static {p1, p2}, Lcom/samsung/android/server/audio/AudioHelper;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/AppCategorizer;->removePackage(I)V

    .line 127
    return-void
.end method
