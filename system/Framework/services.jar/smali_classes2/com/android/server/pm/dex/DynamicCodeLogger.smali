.class public Lcom/android/server/pm/dex/DynamicCodeLogger;
.super Ljava/lang/Object;
.source "DynamicCodeLogger.java"


# static fields
.field private static final DCL_DEX_SUBTAG:Ljava/lang/String; = "dcl"

.field private static final DCL_NATIVE_SUBTAG:Ljava/lang/String; = "dcln"

.field private static final SNET_TAG:I = 0x534e4554

.field private static final TAG:Ljava/lang/String; = "DynamicCodeLogger"


# instance fields
.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;)V
    .registers 4
    .param p1, "pms"    # Landroid/content/pm/IPackageManager;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .line 66
    new-instance v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Lcom/android/server/pm/dex/PackageDynamicCodeLoading;)V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Lcom/android/server/pm/dex/PackageDynamicCodeLoading;)V
    .registers 4
    .param p1, "pms"    # Landroid/content/pm/IPackageManager;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "packageDynamicCodeLoading"    # Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 73
    iput-object p3, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 74
    iput-object p2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 75
    return-void
.end method

.method private fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "directoryPath"    # Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 190
    return v0

    .line 194
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v1, v2}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a} :catch_1b

    return v0

    .line 196
    :catch_1b
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->clear()V

    .line 246
    return-void
.end method

.method public getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object v0

    return-object v0
.end method

.method public logDynamicCodeLoading(Ljava/lang/String;)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;

    .line 85
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object v9

    .line 86
    .local v9, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    if-nez v9, :cond_b

    .line 87
    return-void

    .line 90
    :cond_b
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v10, v0

    .line 91
    .local v10, "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 93
    .local v0, "needWrite":Z
    iget-object v2, v9, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v2, v0

    .end local v0    # "needWrite":Z
    .local v2, "needWrite":Z
    :goto_1d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/Map$Entry;

    .line 94
    .local v12, "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 95
    .local v13, "filePath":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 96
    .local v14, "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    iget v15, v14, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 98
    .local v15, "userId":I
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v16

    .line 100
    .local v16, "index":I
    const/4 v7, 0x0

    const-string v6, "DynamicCodeLogger"

    if-ltz v16, :cond_4d

    .line 101
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move/from16 v17, v2

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_8d

    .line 103
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4d
    const/4 v3, 0x0

    .line 106
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_4e
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 107
    invoke-interface {v0, v8, v7, v15}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 108
    .local v0, "ownerInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_58

    const/4 v4, 0x0

    goto :goto_5a

    :cond_58
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5a} :catch_5c

    :goto_5a
    move-object v0, v4

    .line 111
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_5e

    .line 109
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_5c
    move-exception v0

    move-object v0, v3

    .line 112
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_5e
    invoke-virtual {v10, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    if-nez v0, :cond_8a

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v3, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v3, v8, v15}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v2, v3

    move-object v5, v0

    move/from16 v17, v2

    goto :goto_8d

    .line 113
    :cond_8a
    move-object v5, v0

    move/from16 v17, v2

    .line 120
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "needWrite":Z
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v17, "needWrite":Z
    :goto_8d
    if-nez v5, :cond_92

    .line 121
    move/from16 v2, v17

    goto :goto_1d

    .line 126
    :cond_92
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-direct {v1, v13, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 127
    const/4 v0, 0x2

    move/from16 v18, v0

    .local v0, "storageFlags":I
    goto :goto_a9

    .line 128
    .end local v0    # "storageFlags":I
    :cond_9e
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-direct {v1, v13, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 129
    const/4 v0, 0x1

    move/from16 v18, v0

    .line 136
    .local v18, "storageFlags":I
    :goto_a9
    const/16 v19, 0x0

    .line 142
    .local v19, "hash":[B
    :try_start_ab
    iget-object v2, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;
    :try_end_b1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ab .. :try_end_b1} :catch_cf

    move-object v3, v13

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    move-object/from16 v21, v9

    move-object v9, v5

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v21, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    move v5, v0

    move-object/from16 v22, v10

    move-object v10, v6

    .end local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .local v22, "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v6, v20

    move-object/from16 v20, v11

    move v11, v7

    move/from16 v7, v18

    :try_start_c4
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_c8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c4 .. :try_end_c8} :catch_cd

    move-object/from16 v19, v0

    .line 147
    move-object/from16 v2, v19

    goto :goto_fb

    .line 144
    :catch_cd
    move-exception v0

    goto :goto_d9

    .end local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .end local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    :catch_cf
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v20, v11

    move-object v9, v5

    move-object v10, v6

    move v11, v7

    .line 145
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    :goto_d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got InstallerException when hashing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v19

    .line 149
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v19    # "hash":[B
    .local v2, "hash":[B
    :goto_fb
    iget-char v0, v14, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    const/16 v3, 0x44

    if-ne v0, v3, :cond_104

    .line 150
    const-string v0, "dcl"

    goto :goto_106

    .line 151
    :cond_104
    const-string v0, "dcln"

    :goto_106
    move-object v3, v0

    .line 152
    .local v3, "subtag":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "message":Ljava/lang/String;
    if-eqz v2, :cond_137

    array-length v5, v2

    const/16 v6, 0x20

    if-ne v5, v6, :cond_137

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_156

    .line 159
    :cond_137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got no hash for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v5, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v5, v8, v13, v15}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    or-int v5, v17, v5

    move/from16 v17, v5

    move-object v5, v0

    .line 164
    .end local v0    # "message":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    :goto_156
    iget-object v0, v14, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_183

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 165
    .local v7, "loadingPackageName":Ljava/lang/String;
    const/4 v10, -0x1

    .line 166
    .local v10, "loadingUid":I
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 167
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_17c

    .line 170
    :cond_173
    :try_start_173
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v7, v11, v15}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_179
    .catch Landroid/os/RemoteException; {:try_start_173 .. :try_end_179} :catch_17b

    move v10, v0

    .line 174
    goto :goto_17c

    .line 172
    :catch_17b
    move-exception v0

    .line 177
    :goto_17c
    const/4 v0, -0x1

    if-eq v10, v0, :cond_182

    .line 178
    invoke-virtual {v1, v3, v10, v5}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    .end local v7    # "loadingPackageName":Ljava/lang/String;
    .end local v10    # "loadingUid":I
    :cond_182
    goto :goto_15c

    .line 181
    .end local v2    # "hash":[B
    .end local v3    # "subtag":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v14    # "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    .end local v15    # "userId":I
    .end local v16    # "index":I
    .end local v18    # "storageFlags":I
    :cond_183
    move/from16 v2, v17

    move-object/from16 v11, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_1d

    .line 131
    .end local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .end local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .local v10, "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .restart local v13    # "filePath":Ljava/lang/String;
    .restart local v14    # "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    .restart local v15    # "userId":I
    .restart local v16    # "index":I
    :cond_18d
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v20, v11

    move-object v9, v5

    move-object v10, v6

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not infer CE/DE storage for path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v8, v13, v15}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    or-int v2, v17, v0

    .line 133
    .end local v17    # "needWrite":Z
    .local v2, "needWrite":Z
    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_1d

    .line 183
    .end local v12    # "fileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;>;"
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v14    # "fileInfo":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
    .end local v15    # "userId":I
    .end local v16    # "index":I
    .end local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .end local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .local v9, "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1b7
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v9    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .end local v10    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21    # "info":Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .restart local v22    # "appInfoByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_1c2

    .line 184
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 186
    :cond_1c2
    return-void
.end method

.method readAndSync(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 261
    .local p1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read()V

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->syncData(Ljava/util/Map;)V

    .line 263
    return-void
.end method

.method recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "loaderUserId"    # I
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "owningPackageName"    # Ljava/lang/String;
    .param p4, "loadingPackageName"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v3, 0x44

    move-object v1, p3

    move-object v2, p2

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 215
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 217
    :cond_13
    return-void
.end method

.method public recordNative(ILjava/lang/String;)V
    .registers 12
    .param p1, "loadingUid"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_28

    array-length v1, v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_29

    if-nez v1, :cond_c

    goto :goto_28

    .line 233
    :cond_c
    nop

    .line 235
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 236
    .local v1, "loadingPackageName":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 238
    .local v8, "loadingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v5, 0x4e

    move-object v3, v1

    move-object v4, p2

    move v6, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 240
    iget-object v2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 242
    :cond_27
    return-void

    .line 228
    .end local v1    # "loadingPackageName":Ljava/lang/String;
    .end local v8    # "loadingUserId":I
    :cond_28
    :goto_28
    return-void

    .line 230
    .end local v0    # "packages":[Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method removePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 250
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 252
    :cond_d
    return-void
.end method

.method removeUserPackage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 256
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 258
    :cond_d
    return-void
.end method

.method writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 209
    return-void
.end method

.method writeNow()V
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->writeNow()V

    .line 267
    return-void
.end method
