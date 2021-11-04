.class public Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
.super Ljava/lang/Object;
.source "AppMetadataBackupWriter.java"


# instance fields
.field private final mOutput:Landroid/app/backup/FullBackupDataOutput;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p1, "output"    # Landroid/app/backup/FullBackupDataOutput;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 51
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 52
    return-void
.end method

.method private getManifestBytes(Landroid/content/pm/PackageInfo;Z)[B
    .registers 13
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "withApk"    # Z

    .line 128
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 129
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 130
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Landroid/util/StringBuilderPrinter;

    invoke-direct {v2, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 132
    .local v2, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 135
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "installerName":Ljava/lang/String;
    if-eqz v4, :cond_37

    move-object v5, v4

    goto :goto_39

    :cond_37
    const-string v5, ""

    :goto_39
    invoke-virtual {v2, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 140
    const-string v5, "0"

    if-eqz p2, :cond_43

    const-string v6, "1"

    goto :goto_44

    :cond_43
    move-object v6, v5

    :goto_44
    invoke-virtual {v2, v6}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 142
    sget-object v6, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v3, :cond_61

    .line 143
    if-eqz p2, :cond_5d

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz v3, :cond_5d

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5e

    :cond_5d
    move-object v3, v5

    :goto_5e
    invoke-virtual {v2, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 148
    :cond_61
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 149
    .local v3, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v3, :cond_69

    .line 150
    invoke-virtual {v2, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    goto :goto_85

    .line 154
    :cond_69
    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v5

    .line 155
    .local v5, "signatures":[Landroid/content/pm/Signature;
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 156
    array-length v6, v5

    const/4 v7, 0x0

    :goto_77
    if-ge v7, v6, :cond_85

    aget-object v8, v5, v7

    .line 157
    .local v8, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 156
    .end local v8    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v7, v7, 0x1

    goto :goto_77

    .line 160
    .end local v5    # "signatures":[Landroid/content/pm/Signature;
    :cond_85
    :goto_85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    return-object v5
.end method

.method private getMetadataBytes(Ljava/lang/String;)[B
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 216
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Landroid/util/StringBuilderPrinter;

    invoke-direct {v1, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 217
    .local v1, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, p1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method private writeWidgetData(Ljava/io/DataOutputStream;[B)V
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const v0, 0x1ffed01

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 236
    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 237
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 238
    return-void
.end method


# virtual methods
.method public backupApk(Landroid/content/pm/PackageInfo;)V
    .registers 14
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 247
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, "apkDir":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object v4, v8

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 258
    sget-object v1, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    .line 259
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "splitFiles":[Ljava/lang/String;
    if-eqz v1, :cond_42

    .line 261
    array-length v9, v1

    const/4 v2, 0x0

    move v10, v2

    :goto_2f
    if-ge v10, v9, :cond_42

    aget-object v11, v1, v10

    .line 263
    .local v11, "splitFile":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    const-string v3, "a"

    move-object v5, v8

    move-object v6, v11

    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 261
    .end local v11    # "splitFile":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    .line 270
    .end local v1    # "splitFiles":[Ljava/lang/String;
    :cond_42
    return-void
.end method

.method public backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 21
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "filesDir"    # Ljava/io/File;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "linkDomain"    # Ljava/lang/String;
    .param p6, "withApk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p6

    invoke-direct {p0, p1, v3}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->getManifestBytes(Landroid/content/pm/PackageInfo;Z)[B

    move-result-object v4

    .line 92
    .local v4, "manifestBytes":[B
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 94
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 100
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 102
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 106
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 102
    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v8 .. v13}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 109
    return-void
.end method

.method public backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Z)V
    .registers 12
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "filesDir"    # Ljava/io/File;
    .param p4, "withApk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public backupObb(ILandroid/content/pm/PackageInfo;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 280
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 282
    .local v0, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 283
    .local v1, "obbDir":Ljava/io/File;
    if-eqz v1, :cond_32

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 288
    .local v3, "obbFiles":[Ljava/io/File;
    if-eqz v3, :cond_32

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 290
    .local v10, "obbDirName":Ljava/lang/String;
    array-length v11, v3

    :goto_1b
    if-ge v2, v11, :cond_32

    aget-object v12, v3, v2

    .line 291
    .local v12, "obb":Ljava/io/File;
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 296
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 291
    const-string/jumbo v5, "obb"

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 290
    .end local v12    # "obb":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 301
    .end local v3    # "obbFiles":[Ljava/io/File;
    .end local v10    # "obbDirName":Ljava/lang/String;
    :cond_32
    return-void
.end method

.method public backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V
    .registers 16
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "metadataFile"    # Ljava/io/File;
    .param p3, "filesDir"    # Ljava/io/File;
    .param p4, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    array-length v0, p4

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const-string v1, "Can\'t backup widget with no data."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 180
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 181
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 182
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v2

    .line 183
    .local v8, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v2

    .line 185
    .local v9, "dataOutputStream":Ljava/io/DataOutputStream;
    invoke-direct {p0, v0}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->getMetadataBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 186
    .local v10, "metadata":[B
    invoke-virtual {v8, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 187
    invoke-direct {p0, v9, p4}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->writeWidgetData(Ljava/io/DataOutputStream;[B)V

    .line 188
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 189
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 193
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 195
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 199
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 195
    move-object v2, v0

    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 202
    return-void
.end method
