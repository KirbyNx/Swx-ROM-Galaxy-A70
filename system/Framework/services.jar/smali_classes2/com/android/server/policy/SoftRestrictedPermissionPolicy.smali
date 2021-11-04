.class public abstract Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.super Ljava/lang/Object;
.source "SoftRestrictedPermissionPolicy.java"


# static fields
.field private static final DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

.field private static final FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT:I = 0x3800

.field private static final sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    invoke-direct {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;-><init>()V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    .line 72
    invoke-static {}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getForcedScopedStorageAppWhitelist()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .registers 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "permission"    # Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x1833add0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_23

    const v5, 0x516a29a7

    if-eq v4, v5, :cond_19

    :cond_18
    goto :goto_2d

    :cond_19
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v7

    goto :goto_2e

    :cond_23
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v6

    goto :goto_2e

    :goto_2d
    const/4 v4, -0x1

    :goto_2e
    if-eqz v4, :cond_54

    if-eq v4, v7, :cond_35

    .line 252
    sget-object v4, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    return-object v4

    .line 234
    :cond_35
    if-eqz v1, :cond_4c

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    .line 237
    .local v4, "flags":I
    and-int/lit16 v5, v4, 0x3800

    if-eqz v5, :cond_46

    move v6, v7

    :cond_46
    move v5, v6

    .line 238
    .local v5, "isWhiteListed":Z
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v4

    .line 239
    .local v4, "targetSDK":I
    goto :goto_4e

    .line 240
    .end local v4    # "targetSDK":I
    .end local v5    # "isWhiteListed":Z
    :cond_4c
    const/4 v5, 0x0

    .line 241
    .restart local v5    # "isWhiteListed":Z
    const/4 v4, 0x0

    .line 244
    .restart local v4    # "targetSDK":I
    :goto_4e
    new-instance v6, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;

    invoke-direct {v6, v5, v4}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;-><init>(ZI)V

    return-object v6

    .line 136
    .end local v4    # "targetSDK":I
    .end local v5    # "isWhiteListed":Z
    :cond_54
    if-eqz v1, :cond_98

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 138
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-class v5, Landroid/os/storage/StorageManagerInternal;

    .line 139
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManagerInternal;

    .line 140
    .local v5, "smInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v8, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v8

    .line 141
    .local v8, "flags":I
    and-int/lit16 v9, v8, 0x3800

    if-eqz v9, :cond_6e

    move v9, v7

    goto :goto_6f

    :cond_6e
    move v9, v6

    .line 142
    .local v9, "isWhiteListed":Z
    :goto_6f
    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v10}, Landroid/os/storage/StorageManagerInternal;->hasLegacyExternalStorage(I)Z

    move-result v10

    .line 143
    .local v10, "hasLegacyExternalStorage":Z
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->hasUidRequestedLegacyExternalStorage(ILandroid/content/Context;)Z

    move-result v11

    .line 145
    .local v11, "hasRequestedLegacyExternalStorage":Z
    iget v12, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->hasWriteMediaStorageGrantedForUid(ILandroid/content/Context;)Z

    move-result v12

    .line 147
    .local v12, "hasWriteMediaStorageGrantedForUid":Z
    nop

    .line 148
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v13

    .line 149
    .local v13, "hasRequestedPreserveLegacyExternalStorage":Z
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v14

    .line 151
    .local v14, "targetSDK":I
    and-int/lit16 v15, v8, 0x4000

    if-eqz v15, :cond_8f

    move v6, v7

    .line 152
    .local v6, "shouldApplyRestriction":Z
    :cond_8f
    sget-object v7, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 153
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 154
    .end local v5    # "smInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v8    # "flags":I
    .local v4, "isForcedScopedStorage":Z
    goto :goto_a0

    .line 155
    .end local v4    # "isForcedScopedStorage":Z
    .end local v6    # "shouldApplyRestriction":Z
    .end local v9    # "isWhiteListed":Z
    .end local v10    # "hasLegacyExternalStorage":Z
    .end local v11    # "hasRequestedLegacyExternalStorage":Z
    .end local v12    # "hasWriteMediaStorageGrantedForUid":Z
    .end local v13    # "hasRequestedPreserveLegacyExternalStorage":Z
    .end local v14    # "targetSDK":I
    :cond_98
    const/4 v9, 0x0

    .line 156
    .restart local v9    # "isWhiteListed":Z
    const/4 v6, 0x0

    .line 157
    .restart local v6    # "shouldApplyRestriction":Z
    const/4 v14, 0x0

    .line 158
    .restart local v14    # "targetSDK":I
    const/4 v10, 0x0

    .line 159
    .restart local v10    # "hasLegacyExternalStorage":Z
    const/4 v11, 0x0

    .line 160
    .restart local v11    # "hasRequestedLegacyExternalStorage":Z
    const/4 v13, 0x0

    .line 161
    .restart local v13    # "hasRequestedPreserveLegacyExternalStorage":Z
    const/4 v12, 0x0

    .line 162
    .restart local v12    # "hasWriteMediaStorageGrantedForUid":Z
    const/4 v4, 0x0

    .line 169
    .restart local v4    # "isForcedScopedStorage":Z
    :goto_a0
    new-instance v5, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;

    move-object v15, v5

    move/from16 v16, v9

    move/from16 v17, v14

    move/from16 v18, v6

    move/from16 v19, v4

    move/from16 v20, v12

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v13

    invoke-direct/range {v15 .. v23}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;-><init>(ZIZZZZZZ)V

    return-object v5
.end method

.method private static getForcedScopedStorageAppWhitelist()[Ljava/lang/String;
    .registers 3

    .line 294
    const-string/jumbo v0, "storage_native_boot"

    const-string v1, "forced_scoped_storage_whitelist"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "rawList":Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_1b

    .line 299
    :cond_14
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 297
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 88
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 90
    .local v1, "minimumTargetSDK":I
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "uidPkgs":[Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 92
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_2d

    aget-object v6, v2, v5

    .line 93
    .local v6, "uidPkg":Ljava/lang/String;
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 96
    :try_start_1d
    invoke-virtual {v0, v6, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_21} :catch_29

    .line 99
    .local v7, "uidPkgInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 101
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1, v8}, Ljava/lang/Integer;->min(II)I

    move-result v1

    goto :goto_2a

    .line 97
    .end local v7    # "uidPkgInfo":Landroid/content/pm/ApplicationInfo;
    :catch_29
    move-exception v7

    .line 92
    .end local v6    # "uidPkg":Ljava/lang/String;
    :cond_2a
    :goto_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 106
    :cond_2d
    return v1
.end method

.method private static hasUidRequestedLegacyExternalStorage(ILandroid/content/Context;)Z
    .registers 11
    .param p0, "uid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 258
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 260
    return v2

    .line 262
    :cond_c
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 263
    .local v3, "user":Landroid/os/UserHandle;
    array-length v4, v1

    move v5, v2

    :goto_12
    if-ge v5, v4, :cond_28

    aget-object v6, v1, v5

    .line 266
    .local v6, "packageName":Ljava/lang/String;
    :try_start_16
    invoke-virtual {v0, v6, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_23

    .line 269
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 270
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 271
    const/4 v2, 0x1

    return v2

    .line 267
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_23
    move-exception v7

    .line 268
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 263
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 274
    :cond_28
    return v2
.end method

.method private static hasWriteMediaStorageGrantedForUid(ILandroid/content/Context;)Z
    .registers 9
    .param p0, "uid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 279
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 281
    return v2

    .line 284
    :cond_c
    array-length v3, v1

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_1f

    aget-object v5, v1, v4

    .line 285
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1c

    .line 287
    const/4 v2, 0x1

    return v2

    .line 284
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 290
    :cond_1f
    return v2
.end method


# virtual methods
.method public getExtraAppOpCode()I
    .registers 2

    .line 312
    const/4 v0, -0x1

    return v0
.end method

.method public mayAllowExtraAppOp()Z
    .registers 2

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public mayDenyExtraAppOpIfGranted()Z
    .registers 2

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public abstract mayGrantPermission()Z
.end method
