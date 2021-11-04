.class public Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
.super Ljava/lang/Object;
.source "ExecSystemDataMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ExecSystemDataMgr"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static changeFilePermission(Ljava/io/File;)V
    .registers 6
    .param p0, "file"    # Ljava/io/File;

    .line 35
    const-string v0, "ExecSystemDataMgr"

    if-nez p0, :cond_5

    .line 36
    return-void

    .line 40
    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    if-nez v3, :cond_15

    .line 41
    const-string/jumbo v3, "setReadable() failed"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    :cond_15
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3

    if-nez v3, :cond_23

    .line 44
    const-string/jumbo v3, "setWritable() failed"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    :cond_23
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v1

    if-nez v1, :cond_31

    .line 47
    const-string/jumbo v1, "setExecutable() failed"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_31} :catch_32

    .line 52
    :cond_31
    goto :goto_54

    .line 49
    :catch_32
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to change a permission of file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 53
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_54
    return-void
.end method

.method private copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z
    .registers 20
    .param p1, "args"    # Landroid/os/Bundle;

    .line 151
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "ExecSystemDataMgr"

    const-string v5, "copyPackageAssetsToSysDir"

    invoke-static {v4, v5, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    if-nez v2, :cond_11

    .line 154
    return v3

    .line 157
    :cond_11
    const-string/jumbo v0, "paramStr0"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "paramList0"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 160
    .local v6, "assetsCopyInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d9

    if-eqz v6, :cond_d9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_30

    move v1, v3

    goto/16 :goto_da

    .line 165
    :cond_30
    iget-object v0, v1, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 166
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_40

    .line 167
    new-array v0, v3, [Ljava/lang/Object;

    const-string v8, "getPackageManager() failed"

    invoke-static {v4, v8, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    return v3

    .line 172
    :cond_40
    const/16 v0, 0x80

    :try_start_42
    invoke-virtual {v7, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v8, v0

    .line 173
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v8, :cond_51

    .line 174
    const-string v0, "getApplicationInfo() failed"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v9}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    return v3

    .line 178
    :cond_51
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 179
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v9, v0

    .line 180
    .local v9, "res":Landroid/content/res/Resources;
    if-nez v9, :cond_64

    .line 181
    const-string v0, "getResourcesForApplication() failed"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v10}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    return v3

    .line 185
    :cond_64
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    move-object v10, v0

    .line 186
    .local v10, "assetManager":Landroid/content/res/AssetManager;
    if-nez v10, :cond_73

    .line 187
    const-string v0, "getAssets() failed"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v11}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    return v3

    .line 191
    :cond_73
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_d2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 192
    .local v11, "info":Ljava/lang/String;
    const-string v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 193
    .local v13, "namePair":[Ljava/lang/String;
    aget-object v14, v13, v3

    .line 194
    .local v14, "scrAssetFile":Ljava/lang/String;
    aget-object v12, v13, v12

    .line 196
    .local v12, "destFilePath":Ljava/lang/String;
    new-array v15, v3, [Ljava/lang/Object;

    invoke-static {v4, v11, v15}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    invoke-virtual {v10, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15
    :try_end_97
    .catchall {:try_start_42 .. :try_end_97} :catchall_d3

    .line 199
    .local v15, "input":Ljava/io/InputStream;
    :try_start_97
    invoke-direct {v1, v15, v12}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->createFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_b7

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "Failed to create "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_b6
    .catchall {:try_start_97 .. :try_end_b6} :catchall_c4

    goto :goto_b9

    .line 199
    :cond_b7
    move-object/from16 v17, v0

    .line 202
    :goto_b9
    if-eqz v15, :cond_be

    :try_start_bb
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_d3

    .line 203
    .end local v11    # "info":Ljava/lang/String;
    .end local v12    # "destFilePath":Ljava/lang/String;
    .end local v13    # "namePair":[Ljava/lang/String;
    .end local v14    # "scrAssetFile":Ljava/lang/String;
    .end local v15    # "input":Ljava/io/InputStream;
    :cond_be
    move-object/from16 v1, p0

    move-object/from16 v0, v17

    const/4 v3, 0x0

    goto :goto_77

    .line 198
    .restart local v11    # "info":Ljava/lang/String;
    .restart local v12    # "destFilePath":Ljava/lang/String;
    .restart local v13    # "namePair":[Ljava/lang/String;
    .restart local v14    # "scrAssetFile":Ljava/lang/String;
    .restart local v15    # "input":Ljava/io/InputStream;
    :catchall_c4
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_d1

    :try_start_c8
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d1

    :catchall_cc
    move-exception v0

    move-object v3, v0

    :try_start_ce
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "assetsCopyInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
    .end local p1    # "args":Landroid/os/Bundle;
    :cond_d1
    :goto_d1
    throw v1
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_d3

    .line 205
    .end local v11    # "info":Ljava/lang/String;
    .end local v12    # "destFilePath":Ljava/lang/String;
    .end local v13    # "namePair":[Ljava/lang/String;
    .end local v14    # "scrAssetFile":Ljava/lang/String;
    .end local v15    # "input":Ljava/io/InputStream;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "assetsCopyInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
    .restart local p1    # "args":Landroid/os/Bundle;
    :cond_d2
    return v12

    .line 206
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    :catchall_d3
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 210
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1

    .line 160
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_d9
    move v1, v3

    .line 161
    :goto_da
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "arguments wrong!"

    invoke-static {v4, v3, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    return v1
.end method

.method private createFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 11
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "destFilePath"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExecSystemDataMgr"

    const-string v3, "createFile"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "ret":Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "newFile":Ljava/io/File;
    :try_start_10
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_41
    .catchall {:try_start_10 .. :try_end_15} :catchall_3f

    .line 91
    .local v3, "output":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    :try_start_17
    new-array v4, v4, [B

    .line 94
    .local v4, "buffer":[B
    :goto_19
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "bytesRead":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_25

    .line 95
    invoke-virtual {v3, v4, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_35

    goto :goto_19

    .line 97
    :cond_25
    const/4 v1, 0x1

    .line 99
    .end local v4    # "buffer":[B
    .end local v6    # "bytesRead":I
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_41
    .catchall {:try_start_26 .. :try_end_29} :catchall_3f

    .line 102
    .end local v3    # "output":Ljava/io/FileOutputStream;
    if-eqz v1, :cond_4e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 103
    :goto_31
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_4e

    .line 90
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :catchall_35
    move-exception v0

    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v4

    :try_start_3b
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ret":Z
    .end local v2    # "newFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
    .end local p1    # "input":Ljava/io/InputStream;
    .end local p2    # "destFilePath":Ljava/lang/String;
    :goto_3e
    throw v0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_41
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3f

    .line 102
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "ret":Z
    .restart local v2    # "newFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
    .restart local p1    # "input":Ljava/io/InputStream;
    .restart local p2    # "destFilePath":Ljava/lang/String;
    :catchall_3f
    move-exception v0

    goto :goto_4f

    .line 99
    :catch_41
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    :try_start_42
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_4e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 103
    goto :goto_31

    .line 107
    :cond_4e
    :goto_4e
    return v1

    .line 102
    :goto_4f
    if-eqz v1, :cond_5a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 103
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    .line 105
    :cond_5a
    throw v0
.end method

.method private deleteFiles(Landroid/os/Bundle;)Z
    .registers 14
    .param p1, "args"    # Landroid/os/Bundle;

    .line 113
    const-string/jumbo v0, "paramStrA0"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "paths":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, "deletedCnt":I
    if-eqz v0, :cond_c

    array-length v2, v0

    goto :goto_d

    :cond_c
    const/4 v2, -0x1

    .line 117
    .local v2, "reqCnt":I
    :goto_d
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "ExecSystemDataMgr"

    const-string v7, "deleteFiles %d"

    invoke-static {v5, v7, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    if-lez v2, :cond_ac

    .line 120
    array-length v4, v0

    move v7, v6

    :goto_22
    if-ge v7, v4, :cond_ac

    aget-object v8, v0, v7

    .line 121
    .local v8, "cur":Ljava/lang/String;
    if-eqz v8, :cond_a8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_a8

    const-string v9, "/data/system/friends"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_37

    .line 122
    goto :goto_a8

    .line 125
    :cond_37
    :try_start_37
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5e

    .line 127
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wrong filePath: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v5, v10, v11}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    goto :goto_a8

    .line 131
    :cond_5e
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_80

    .line 132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "is a directory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v5, v10, v11}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    goto :goto_a8

    .line 136
    :cond_80
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_a1

    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to delete: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v5, v10, v11}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a0
    .catchall {:try_start_37 .. :try_end_a0} :catchall_a4

    goto :goto_a3

    .line 139
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    .line 143
    .end local v9    # "file":Ljava/io/File;
    :goto_a3
    goto :goto_a8

    .line 141
    :catchall_a4
    move-exception v9

    .line 142
    .local v9, "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 120
    .end local v8    # "cur":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_a8
    :goto_a8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_22

    .line 147
    :cond_ac
    if-eqz v1, :cond_b1

    if-ne v1, v2, :cond_b1

    goto :goto_b2

    :cond_b1
    move v3, v6

    :goto_b2
    return v3
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;

    .line 216
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 218
    .local v0, "list":[Ljava/io/File;
    if-eqz v0, :cond_1f

    array-length v2, v0

    if-lez v2, :cond_1f

    .line 219
    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    .line 220
    .local v4, "childFile":Ljava/io/File;
    if-nez v4, :cond_19

    .line 221
    goto :goto_1c

    .line 223
    :cond_19
    invoke-direct {p0, v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V

    .line 219
    .end local v4    # "childFile":Ljava/io/File;
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 228
    .end local v0    # "list":[Ljava/io/File;
    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 229
    const-string v0, "ExecSystemDataMgr"

    const-string v2, "failed to delete a file or a directory!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 233
    :cond_2e
    goto :goto_33

    .line 231
    :catch_2f
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33
    return-void
.end method

.method private deleteSubDirs(Landroid/os/Bundle;)Z
    .registers 11
    .param p1, "args"    # Landroid/os/Bundle;

    .line 237
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExecSystemDataMgr"

    const-string v3, "deleteSubDirs"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    const-string/jumbo v1, "paramStr0"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "targetDirPath":Ljava/lang/String;
    const-string/jumbo v4, "paramStr1"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "exceptionDirName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 243
    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "data is wrong!"

    invoke-static {v2, v5, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    return v0

    .line 247
    :cond_27
    const/4 v4, 0x0

    .line 251
    .local v4, "ret":Z
    :try_start_28
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 253
    const-string/jumbo v6, "target is not a directory!"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    return v0

    .line 257
    :cond_3c
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 258
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_60

    array-length v6, v2

    if-lez v6, :cond_60

    .line 259
    array-length v6, v2

    :goto_46
    if-ge v0, v6, :cond_60

    aget-object v7, v2, v0

    .line 260
    .local v7, "child":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_5d

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5d

    .line 261
    invoke-direct {p0, v7}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V
    :try_end_5d
    .catchall {:try_start_28 .. :try_end_5d} :catchall_62

    .line 259
    .end local v7    # "child":Ljava/io/File;
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 266
    :cond_60
    const/4 v4, 0x1

    .line 269
    .end local v2    # "files":[Ljava/io/File;
    .end local v5    # "dir":Ljava/io/File;
    goto :goto_66

    .line 267
    :catchall_62
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 271
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_66
    return v4
.end method

.method private makeDir(Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;

    .line 275
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExecSystemDataMgr"

    const-string/jumbo v3, "makeDir"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    const-string/jumbo v1, "paramStr0"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "targetDir":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 281
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "data is wrong!"

    invoke-static {v2, v4, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    return v0

    .line 285
    :cond_21
    const/4 v3, 0x0

    .line 286
    .local v3, "ret":Z
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v4, "newDir":Ljava/io/File;
    :try_start_27
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5a

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to create a path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4d} :catch_69
    .catchall {:try_start_27 .. :try_end_4d} :catchall_67

    .line 290
    nop

    .line 297
    if-eqz v3, :cond_59

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 298
    invoke-static {v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    .line 290
    :cond_59
    return v0

    .line 293
    :cond_5a
    const/4 v3, 0x1

    .line 297
    if-eqz v3, :cond_76

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 298
    :goto_63
    invoke-static {v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_76

    .line 297
    :catchall_67
    move-exception v0

    goto :goto_77

    .line 294
    :catch_69
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6a
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_67

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_76

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 298
    goto :goto_63

    .line 302
    :cond_76
    :goto_76
    return v3

    .line 297
    :goto_77
    if-eqz v3, :cond_82

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 298
    invoke-static {v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    .line 300
    :cond_82
    throw v0
.end method

.method private readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "args"    # Landroid/os/Bundle;

    .line 334
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExecSystemDataMgr"

    const-string/jumbo v3, "readStringFromFile"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    const/4 v1, 0x0

    .line 338
    .local v1, "ret":Landroid/os/Bundle;
    const-string/jumbo v3, "paramStr0"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "targetFilePath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 340
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "data is wrong!"

    invoke-static {v2, v3, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 341
    return-object v4

    .line 344
    :cond_22
    :try_start_22
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_60

    .line 345
    .local v2, "reader":Ljava/io/InputStreamReader;
    const/16 v4, 0x400

    :try_start_2e
    new-array v4, v4, [C

    .line 347
    .local v4, "buffer":[C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_35
    invoke-virtual {v2, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    move v8, v7

    .local v8, "bytesRead":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_41

    .line 349
    invoke-virtual {v6, v4, v0, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 351
    :cond_41
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_56

    move-object v1, v0

    .line 353
    .end local v4    # "buffer":[C
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "bytesRead":I
    :try_start_52
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_60

    .line 355
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    goto :goto_64

    .line 344
    .restart local v2    # "reader":Ljava/io/InputStreamReader;
    :catchall_56
    move-exception v0

    :try_start_57
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v3

    :try_start_5c
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ret":Landroid/os/Bundle;
    .end local v5    # "targetFilePath":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
    .end local p1    # "args":Landroid/os/Bundle;
    :goto_5f
    throw v0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    .line 353
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "ret":Landroid/os/Bundle;
    .restart local v5    # "targetFilePath":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
    .restart local p1    # "args":Landroid/os/Bundle;
    :catchall_60
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 358
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_64
    return-object v1
.end method

.method private writeStringToFile(Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;

    .line 306
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExecSystemDataMgr"

    const-string/jumbo v3, "writeStringToFile"

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    const-string/jumbo v1, "paramStr0"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "targetFilePath":Ljava/lang/String;
    const-string/jumbo v4, "paramStr1"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_72

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_72

    .line 316
    :cond_27
    const/4 v0, 0x0

    .line 317
    .local v0, "ret":Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v2, "newFile":Ljava/io/File;
    :try_start_2d
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_57

    .line 319
    .local v4, "output":Ljava/io/OutputStreamWriter;
    :try_start_37
    invoke-virtual {v4, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_4d

    .line 321
    const/4 v0, 0x1

    .line 322
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_57

    .line 325
    .end local v4    # "output":Ljava/io/OutputStreamWriter;
    if-eqz v0, :cond_64

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 326
    :goto_49
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_64

    .line 318
    .restart local v4    # "output":Ljava/io/OutputStreamWriter;
    :catchall_4d
    move-exception v5

    :try_start_4e
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception v6

    :try_start_53
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ret":Z
    .end local v1    # "targetFilePath":Ljava/lang/String;
    .end local v2    # "newFile":Ljava/io/File;
    .end local v3    # "data":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
    .end local p1    # "args":Landroid/os/Bundle;
    :goto_56
    throw v5
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    .line 322
    .end local v4    # "output":Ljava/io/OutputStreamWriter;
    .restart local v0    # "ret":Z
    .restart local v1    # "targetFilePath":Ljava/lang/String;
    .restart local v2    # "newFile":Ljava/io/File;
    .restart local v3    # "data":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
    .restart local p1    # "args":Landroid/os/Bundle;
    :catchall_57
    move-exception v4

    .line 323
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_58
    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_65

    .line 325
    .end local v4    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_64

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 326
    goto :goto_49

    .line 330
    :cond_64
    :goto_64
    return v0

    .line 325
    :catchall_65
    move-exception v4

    if-eqz v0, :cond_71

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 326
    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    .line 328
    :cond_71
    throw v4

    .line 312
    .end local v0    # "ret":Z
    .end local v2    # "newFile":Ljava/io/File;
    :cond_72
    :goto_72
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string/jumbo v5, "wrong param %s %s"

    invoke-static {v2, v5, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 313
    return v0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "actionNo"    # I

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ExecSystemDataMgr"

    const-string v2, "ActionSystemDataMgr"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    if-eqz p1, :cond_47

    .line 60
    const v0, 0x120013

    if-eq p3, v0, :cond_3e

    packed-switch p3, :pswitch_data_4a

    goto :goto_47

    .line 74
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->writeStringToFile(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 65
    :pswitch_23
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteSubDirs(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_35
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->makeDir(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 77
    :cond_3e
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteFiles(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 81
    :cond_47
    :goto_47
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_4a
    .packed-switch 0x12000b
        :pswitch_35
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method
