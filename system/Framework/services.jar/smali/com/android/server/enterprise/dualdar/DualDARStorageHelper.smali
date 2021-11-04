.class public Lcom/android/server/enterprise/dualdar/DualDARStorageHelper;
.super Ljava/lang/Object;
.source "DualDARStorageHelper.java"


# static fields
.field private static final KNOX_DUALDAR_INTERNAL_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_DAR_INTERNAL"

.field private static final TAG:Ljava/lang/String; = "DualDARStorageHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    const-string v0, "DualDARStorageHelper"

    const-string/jumbo v1, "getDualDARProfile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {p0}, Lcom/android/server/enterprise/dualdar/DualDARStorageHelper;->isCallerValidPlatformApp(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 66
    const-string v1, "Error ! caller not a valid platform app"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-object v2

    .line 70
    :cond_15
    const-string v1, "configValue"

    const-string v3, "clientAppPackageName"

    const-string v4, "clientAppSignature"

    const-string v5, "clientAppLocation"

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "columns":[Ljava/lang/String;
    new-instance v7, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 78
    .local v7, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string v8, "DUAL_DAR_CONFIG"

    invoke-virtual {v7, v8, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 81
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_9e

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_35

    goto :goto_9e

    .line 85
    :cond_35
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 87
    .local v9, "cv":Landroid/content/ContentValues;
    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    .local v1, "configValue":Ljava/lang/Integer;
    const/4 v10, 0x1

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v10, :cond_4a

    move v2, v10

    .line 89
    .local v2, "isEnableDualDAR":Z
    :cond_4a
    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "packageSignature":Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "packageLocation":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDualDARProfile() - isEnableDualDAR "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "package Name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " signature "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " packageLocation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "dualdar-config"

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string v10, "dualdar-config-client-package"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v10, "dualdar-config-client-signature"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v10, "dualdar-config-client-location"

    invoke-virtual {v0, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v0

    .line 82
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "configValue":Ljava/lang/Integer;
    .end local v2    # "isEnableDualDAR":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageSignature":Ljava/lang/String;
    .end local v5    # "packageLocation":Ljava/lang/String;
    .end local v9    # "cv":Landroid/content/ContentValues;
    :cond_9e
    :goto_9e
    return-object v2
.end method

.method private static isCallerValidPlatformApp(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 110
    .local v0, "uid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "callingPackage":Ljava/lang/String;
    if-nez v1, :cond_10

    .line 112
    const/4 v2, 0x0

    return v2

    .line 115
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCallerValidPlatformApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DualDARStorageHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p0, v1}, Lcom/android/server/enterprise/dualdar/DualDARStorageHelper;->isPlatformSigned(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static isPlatformSigned(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 125
    :catch_f
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static setDualDARProfile(Landroid/content/Context;Landroid/os/Bundle;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/os/Bundle;

    .line 25
    const-string v0, "DualDARStorageHelper"

    const-string/jumbo v1, "setDualDARProfile called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v1, "com.samsung.android.knox.permission.KNOX_DUAL_DAR_INTERNAL"

    const-string v2, "dualdar storage denied"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    if-nez p1, :cond_13

    .line 30
    const/4 v0, -0x1

    return v0

    .line 33
    :cond_13
    const-string v1, "dualdar-config-client-package"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "default"

    if-eqz v2, :cond_23

    .line 34
    move-object v1, v3

    goto :goto_27

    :cond_23
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "packageName":Ljava/lang/String;
    :goto_27
    const-string v2, "dualdar-config-client-signature"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 36
    move-object v2, v3

    goto :goto_39

    :cond_35
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "packageSignature":Ljava/lang/String;
    :goto_39
    const-string v4, "dualdar-config-client-location"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 38
    goto :goto_4a

    :cond_46
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "packageLocation":Ljava/lang/String;
    :goto_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDualDARProfile() - package Name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " signature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " location "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 43
    .local v4, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "configValue"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    const-string v5, "clientAppPackageName"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v5, "clientAppSignature"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v5, "clientAppLocation"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v5, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 49
    .local v5, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string v6, "DUAL_DAR_CONFIG"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    .line 51
    .local v6, "result":Z
    if-eqz v6, :cond_a1

    .line 52
    const-string/jumbo v7, "setEnableDualDAR triggered successfully"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 54
    :cond_a1
    const-string/jumbo v7, "setEnableDualDAR trigger failed"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_a7
    const/4 v0, 0x0

    return v0
.end method
