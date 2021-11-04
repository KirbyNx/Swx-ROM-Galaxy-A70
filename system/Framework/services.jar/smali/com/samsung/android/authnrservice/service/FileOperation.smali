.class final Lcom/samsung/android/authnrservice/service/FileOperation;
.super Ljava/lang/Object;
.source "FileOperation.java"


# static fields
.field private static final BASE_PATH:Ljava/lang/String; = "/data/.fido/"

.field private static final TAG:Ljava/lang/String; = "FO"

.field private static mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private declared-synchronized deleteFileRec(Ljava/lang/String;)Z
    .registers 13
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 97
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 100
    const-string v1, "FO"

    const-string v3, "file not exist"

    invoke-static {v1, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_ae

    .line 101
    monitor-exit p0

    return v2

    .line 104
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/FileOperation;
    :cond_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 108
    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "childrenPaths":[Ljava/lang/String;
    if-eqz v1, :cond_a8

    array-length v3, v1

    if-lez v3, :cond_a8

    .line 110
    array-length v3, v1

    move v4, v2

    :goto_39
    if-ge v4, v3, :cond_a8

    aget-object v5, v1, v4

    .line 111
    .local v5, "childPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v6, "childFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 114
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/authnrservice/service/FileOperation;->deleteFileRec(Ljava/lang/String;)Z

    move-result v7
    :try_end_5f
    .catchall {:try_start_16 .. :try_end_5f} :catchall_ae

    .line 115
    .local v7, "ret":Z
    if-nez v7, :cond_89

    .line 116
    monitor-exit p0

    return v2

    .line 121
    .end local v7    # "ret":Z
    :cond_63
    :try_start_63
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 122
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    .line 123
    .restart local v7    # "ret":Z
    if-nez v7, :cond_89

    .line 124
    const-string v8, "FO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleting file failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v5    # "childPath":Ljava/lang/String;
    .end local v6    # "childFile":Ljava/io/File;
    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 127
    .end local v7    # "ret":Z
    .restart local v5    # "childPath":Ljava/lang/String;
    .restart local v6    # "childFile":Ljava/io/File;
    :cond_8c
    const-string v3, "FO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting file failed : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_63 .. :try_end_a6} :catchall_ae

    .line 128
    monitor-exit p0

    return v2

    .line 133
    .end local v5    # "childPath":Ljava/lang/String;
    .end local v6    # "childFile":Ljava/io/File;
    :cond_a8
    :try_start_a8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_ae

    .line 135
    .local v2, "ret":Z
    monitor-exit p0

    return v2

    .line 96
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "childrenPaths":[Ljava/lang/String;
    .end local v2    # "ret":Z
    .end local p1    # "path":Ljava/lang/String;
    :catchall_ae
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getFilesPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "resultFileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "FO"

    if-nez v2, :cond_1c

    .line 270
    const-string v2, "file not exist"

    invoke-static {v3, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 274
    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v4, "/"

    if-nez v2, :cond_52

    .line 275
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 278
    :cond_35
    const-string v2, "/data/.fido/"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "matchedPath":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 280
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    :cond_4e
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-object v0

    .line 286
    .end local v2    # "matchedPath":Ljava/lang/String;
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "dirPath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "childrenPaths":[Ljava/lang/String;
    if-eqz v4, :cond_96

    array-length v5, v4

    if-nez v5, :cond_6b

    goto :goto_96

    .line 292
    :cond_6b
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 294
    array-length v3, v4

    const/4 v5, 0x0

    :goto_70
    if-ge v5, v3, :cond_95

    aget-object v6, v4, v5

    .line 295
    .local v6, "childPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, "newPath":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 297
    .local v8, "subFileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    .end local v6    # "childPath":Ljava/lang/String;
    .end local v7    # "newPath":Ljava/lang/String;
    .end local v8    # "subFileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 300
    :cond_95
    return-object v0

    .line 289
    :cond_96
    :goto_96
    const-string v5, "children paths not exist"

    invoke-static {v3, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-object v0
.end method

.method private getFilesRec(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 20
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    move-object/from16 v0, p1

    const-string v1, "IOE 2"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v2, "resultFileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "FO"

    if-nez v4, :cond_1c

    .line 151
    const-string v1, "file not exist"

    invoke-static {v5, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-object v2

    .line 155
    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_4a

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .end local p1    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "childrenPaths":[Ljava/lang/String;
    if-eqz v4, :cond_44

    array-length v7, v4

    if-nez v7, :cond_3e

    goto :goto_44

    .line 162
    :cond_3e
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move-object v7, v4

    move-object v4, v0

    goto :goto_51

    .line 159
    :cond_44
    :goto_44
    const-string v1, "children paths not exist"

    invoke-static {v5, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v2

    .line 164
    .end local v0    # "path":Ljava/lang/String;
    .end local v4    # "childrenPaths":[Ljava/lang/String;
    .restart local p1    # "path":Ljava/lang/String;
    :cond_4a
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 165
    .restart local v4    # "childrenPaths":[Ljava/lang/String;
    aput-object v0, v4, v6

    move-object v7, v4

    move-object v4, v0

    .line 168
    .end local p1    # "path":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    .local v7, "childrenPaths":[Ljava/lang/String;
    :goto_51
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 169
    .end local p2    # "filter":Ljava/lang/String;
    .local v8, "filter":Ljava/lang/String;
    array-length v9, v7

    move v10, v6

    :goto_57
    if-ge v10, v9, :cond_18f

    aget-object v11, v7, v10

    .line 170
    .local v11, "childPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 171
    .local v12, "childFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 172
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p0

    invoke-direct {v13, v0, v8}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesRec(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "subFileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_a2

    .line 174
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a2

    .line 179
    .end local v0    # "subFileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8c
    move-object/from16 v13, p0

    if-eqz v8, :cond_a6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a6

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 180
    const-string v0, "continue"

    invoke-static {v5, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    nop

    .line 169
    .end local v11    # "childPath":Ljava/lang/String;
    .end local v12    # "childFile":Ljava/io/File;
    :cond_a2
    :goto_a2
    move-object/from16 p1, v7

    goto/16 :goto_122

    .line 184
    .restart local v11    # "childPath":Ljava/lang/String;
    .restart local v12    # "childFile":Ljava/io/File;
    :cond_a6
    const/4 v14, 0x0

    .line 186
    .local v14, "fis":Ljava/io/FileInputStream;
    :try_start_a7
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 187
    new-instance v0, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_d0} :catch_130
    .catchall {:try_start_a7 .. :try_end_d0} :catchall_12b

    move-object v3, v0

    .line 188
    move-object/from16 p1, v7

    .end local v7    # "childrenPaths":[Ljava/lang/String;
    .local p1, "childrenPaths":[Ljava/lang/String;
    :try_start_d3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v0, v6

    .line 189
    .local v0, "readCount":I
    new-array v6, v0, [B

    .line 190
    .local v6, "buffer":[B
    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15

    .line 191
    .local v15, "ret":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "readCount":I
    .local v16, "readCount":I
    const-string v0, "file name:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, -0x1

    if-eq v15, v0, :cond_103

    .line 193
    invoke-static {v6}, Lcom/samsung/android/authnrservice/service/Encoding$Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_103} :catch_129
    .catchall {:try_start_d3 .. :try_end_103} :catchall_16d

    .line 198
    .end local v6    # "buffer":[B
    .end local v15    # "ret":I
    .end local v16    # "readCount":I
    :cond_103
    nop

    .line 200
    :try_start_104
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_108

    .line 203
    :goto_107
    goto :goto_122

    .line 201
    :catch_108
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_107

    .line 169
    .end local v11    # "childPath":Ljava/lang/String;
    .end local v12    # "childFile":Ljava/io/File;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    :goto_122
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p1

    const/4 v6, 0x0

    goto/16 :goto_57

    .line 194
    .restart local v11    # "childPath":Ljava/lang/String;
    .restart local v12    # "childFile":Ljava/io/File;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    :catch_129
    move-exception v0

    goto :goto_133

    .line 198
    .end local p1    # "childrenPaths":[Ljava/lang/String;
    .restart local v7    # "childrenPaths":[Ljava/lang/String;
    :catchall_12b
    move-exception v0

    move-object/from16 p1, v7

    move-object v6, v0

    .end local v7    # "childrenPaths":[Ljava/lang/String;
    .restart local p1    # "childrenPaths":[Ljava/lang/String;
    goto :goto_16f

    .line 194
    .end local p1    # "childrenPaths":[Ljava/lang/String;
    .restart local v7    # "childrenPaths":[Ljava/lang/String;
    :catch_130
    move-exception v0

    move-object/from16 p1, v7

    .end local v7    # "childrenPaths":[Ljava/lang/String;
    .restart local p1    # "childrenPaths":[Ljava/lang/String;
    :goto_133
    move-object v6, v0

    .line 195
    .local v6, "e":Ljava/io/IOException;
    :try_start_134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOE 1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14c
    .catchall {:try_start_134 .. :try_end_14c} :catchall_16d

    .line 196
    nop

    .line 198
    if-eqz v14, :cond_16c

    .line 200
    :try_start_14f
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_153

    .line 203
    goto :goto_16c

    .line 201
    :catch_153
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 202
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    :cond_16c
    :goto_16c
    return-object v2

    .line 198
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_16d
    move-exception v0

    move-object v6, v0

    :goto_16f
    if-eqz v14, :cond_18e

    .line 200
    :try_start_171
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_174} :catch_175

    .line 203
    goto :goto_18e

    .line 201
    :catch_175
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 202
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18e
    :goto_18e
    throw v6

    .line 208
    .end local v11    # "childPath":Ljava/lang/String;
    .end local v12    # "childFile":Ljava/io/File;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "childrenPaths":[Ljava/lang/String;
    .restart local v7    # "childrenPaths":[Ljava/lang/String;
    :cond_18f
    return-object v2
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/FileOperation;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Lcom/samsung/android/authnrservice/service/FileOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/FileOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;

    .line 47
    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized deleteFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 90
    :try_start_1
    const-string v0, "FO"

    const-string v1, "deleteFile"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/.fido/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->deleteFileRec(Ljava/lang/String;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return v0

    .line 89
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/FileOperation;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    const-string v0, "FO"

    const-string/jumbo v1, "getFiles"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/.fido/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesRec(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    const-string v0, "FO"

    const-string/jumbo v1, "getMatchedFilePaths"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, ""

    if-nez p1, :cond_e

    move-object v1, v0

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "targetPath":Ljava/lang/String;
    :goto_12
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 256
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 258
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/.fido/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    if-nez p2, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "targetFilter":Ljava/lang/String;
    :goto_3d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "path"    # Ljava/lang/String;

    .line 212
    const-string v0, "IOE 2"

    const-string v1, "FO"

    const-string/jumbo v2, "readFile"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/.fido/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "targetPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_2e

    .line 218
    const-string v0, "file not exist"

    invoke-static {v1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-object v5

    .line 222
    :cond_2e
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 223
    const-string v0, "file is a directory"

    invoke-static {v1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-object v5

    .line 227
    :cond_3a
    const-string v4, ""

    .line 228
    .local v4, "result":Ljava/lang/String;
    const/4 v5, 0x0

    .line 230
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_3d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 231
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    .line 232
    .local v6, "readCount":I
    new-array v7, v6, [B

    .line 233
    .local v7, "buffer":[B
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .line 234
    .local v8, "ret":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v9, -0x1

    if-eq v8, v9, :cond_6f

    .line 236
    invoke-static {v7}, Lcom/samsung/android/authnrservice/service/Encoding$Base64;->encode([B)Ljava/lang/String;

    move-result-object v9
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_6e} :catch_8e
    .catchall {:try_start_3d .. :try_end_6e} :catchall_8c

    move-object v4, v9

    .line 240
    .end local v6    # "readCount":I
    .end local v7    # "buffer":[B
    .end local v8    # "ret":I
    :cond_6f
    nop

    .line 242
    :try_start_70
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 245
    :goto_73
    goto :goto_b4

    .line 243
    :catch_74
    move-exception v6

    .line 244
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_73

    .line 240
    :catchall_8c
    move-exception v6

    goto :goto_b5

    .line 237
    :catch_8e
    move-exception v6

    .line 238
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_8f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOE 1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_8c

    .line 240
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_b4

    .line 242
    :try_start_a9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_73

    .line 243
    :catch_ad
    move-exception v6

    .line 244
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7a

    .line 249
    .end local v6    # "e":Ljava/io/IOException;
    :cond_b4
    :goto_b4
    return-object v4

    .line 240
    :goto_b5
    if-eqz v5, :cond_d2

    .line 242
    :try_start_b7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    .line 245
    goto :goto_d2

    .line 243
    :catch_bb
    move-exception v7

    .line 244
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v7    # "e":Ljava/io/IOException;
    :cond_d2
    :goto_d2
    throw v6
.end method

.method public declared-synchronized writeFile([BLjava/lang/String;)Z
    .registers 12
    .param p1, "data"    # [B
    .param p2, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 51
    :try_start_1
    const-string v0, "FO"

    const-string/jumbo v1, "writeFile"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/.fido/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 54
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 58
    const-string v3, "FO"

    const-string/jumbo v4, "invalid path"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_ec

    .line 59
    monitor-exit p0

    return v1

    .line 62
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/FileOperation;
    :cond_3b
    :try_start_3b
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_57

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_57

    .line 64
    const-string v3, "FO"

    const-string/jumbo v4, "mkdirs failed"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_ec

    .line 65
    monitor-exit p0

    return v1

    .line 68
    :cond_57
    const/4 v3, 0x0

    .line 70
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_58
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 71
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 72
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_64} :catch_8a
    .catchall {:try_start_58 .. :try_end_64} :catchall_88

    .line 77
    nop

    .line 79
    :try_start_65
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_ec

    .line 82
    :goto_68
    goto :goto_85

    .line 80
    :catch_69
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    :try_start_6a
    const-string v4, "FO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOE 2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_6a .. :try_end_84} :catchall_ec

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_68

    .line 86
    :goto_85
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 77
    :catchall_88
    move-exception v1

    goto :goto_ca

    .line 73
    :catch_8a
    move-exception v4

    .line 74
    .local v4, "e":Ljava/io/IOException;
    :try_start_8b
    const-string v5, "FO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOE 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_8b .. :try_end_a5} :catchall_c9

    .line 75
    nop

    .line 77
    if-eqz v3, :cond_c7

    .line 79
    :try_start_a8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ec

    .line 82
    goto :goto_c7

    .line 80
    :catch_ac
    move-exception v5

    .line 81
    .local v5, "e":Ljava/io/IOException;
    :try_start_ad
    const-string v6, "FO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOE 2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_ad .. :try_end_c7} :catchall_ec

    .line 75
    .end local v5    # "e":Ljava/io/IOException;
    :cond_c7
    :goto_c7
    monitor-exit p0

    return v1

    .line 77
    .end local v4    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/samsung/android/authnrservice/service/FileOperation;
    :catchall_c9
    move-exception v1

    :goto_ca
    if-eqz v3, :cond_eb

    .line 79
    :try_start_cc
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0
    .catchall {:try_start_cc .. :try_end_cf} :catchall_ec

    .line 82
    goto :goto_eb

    .line 80
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/FileOperation;
    :catch_d0
    move-exception v4

    .line 81
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_d1
    const-string v5, "FO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOE 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v4    # "e":Ljava/io/IOException;
    :cond_eb
    :goto_eb
    throw v1
    :try_end_ec
    .catchall {:try_start_d1 .. :try_end_ec} :catchall_ec

    .line 50
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local p1    # "data":[B
    .end local p2    # "path":Ljava/lang/String;
    :catchall_ec
    move-exception p1

    monitor-exit p0

    throw p1
.end method
