.class Lcom/android/server/DirEncryptPrefs;
.super Ljava/lang/Object;
.source "DirEncryptPrefs.java"


# static fields
.field private static final CRYPT_OLD_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "SDCardEncryption.Pref"

.field private static final LOCAL_LOGI:Z = true

.field private static final TAG:Ljava/lang/String; = "DirEncryptPrefs"

.field private static final UUID_LIST_MAX_SIZE:I = 0x32

.field private static sPreferences:Lcom/android/server/DirEncryptPrefs;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/DirEncryptPrefs;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private addUUIDPrefs(IILjava/lang/String;)Z
    .registers 24
    .param p1, "isPolicy"    # I
    .param p2, "encrypt_status"    # I
    .param p3, "uuid"    # Ljava/lang/String;

    .line 222
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "\n"

    const-string v5, "add complete"

    const/4 v6, 0x0

    .line 223
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 224
    .local v7, "writer":Ljava/io/FileWriter;
    const/4 v8, 0x0

    .line 225
    .local v8, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 226
    .local v9, "update_list":Z
    const/4 v10, 0x0

    .line 227
    .local v10, "update_list_number":I
    const/4 v11, 0x0

    .line 229
    .local v11, "result":Z
    if-nez v4, :cond_1a

    .line 230
    const-string v0, "SD card uuid field is null"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 231
    return v11

    .line 233
    :cond_1a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[Add UUID] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 235
    new-instance v12, Ljava/io/File;

    const-string v13, "/efs/sec_efs/"

    const-string v14, "SDCardEncryption.Pref"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v12

    .line 237
    :try_start_38
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3c} :catch_21f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_20e
    .catchall {:try_start_38 .. :try_end_3c} :catchall_207

    const-string v13, "chmod 644 "

    const-string v14, " "

    if-nez v12, :cond_88

    .line 238
    :try_start_42
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 239
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_51} :catch_83
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_51} :catch_7e
    .catchall {:try_start_42 .. :try_end_51} :catchall_78

    move-object/from16 v16, v6

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_53
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 240
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_66} :catch_73
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_66} :catch_6e
    .catchall {:try_start_53 .. :try_end_66} :catchall_68

    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_151

    .line 311
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_68
    move-exception v0

    move-object v1, v0

    move-object/from16 v6, v16

    goto/16 :goto_233

    .line 308
    :catch_6e
    move-exception v0

    move-object/from16 v6, v16

    goto/16 :goto_213

    .line 306
    :catch_73
    move-exception v0

    move-object/from16 v6, v16

    goto/16 :goto_224

    .line 311
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_78
    move-exception v0

    move-object/from16 v16, v6

    move-object v1, v0

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_233

    .line 308
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_7e
    move-exception v0

    move-object/from16 v16, v6

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_213

    .line 306
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_83
    move-exception v0

    move-object/from16 v16, v6

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_224

    .line 242
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_88
    move-object/from16 v16, v6

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_8a
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v6, "policy":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 244
    .local v12, "before_policy":I
    invoke-direct {v1, v6}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v15
    :try_end_94
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_94} :catch_201
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_94} :catch_1fb
    .catchall {:try_start_8a .. :try_end_94} :catchall_1f4

    .line 245
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v17, v9

    .end local v9    # "update_list":Z
    .local v17, "update_list":Z
    :try_start_96
    const-string/jumbo v9, "policy"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 248
    .end local v12    # "before_policy":I
    .local v9, "before_policy":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_a1} :catch_1ef
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a1} :catch_1ea
    .catchall {:try_start_96 .. :try_end_a1} :catchall_1e4

    if-eqz v12, :cond_14a

    .line 249
    const/4 v12, 0x0

    .line 250
    .local v12, "update":Z
    const/16 v16, 0x1

    .line 251
    .end local v17    # "update_list":Z
    .local v16, "update_list":Z
    :try_start_a6
    invoke-direct {v1, v4, v15}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v17

    move/from16 v10, v17

    .line 252
    const/4 v1, -0x1

    move-object/from16 v18, v6

    .end local v6    # "policy":Landroid/os/Bundle;
    .local v18, "policy":Landroid/os/Bundle;
    if-eq v10, v1, :cond_11d

    .line 253
    nop

    .line 254
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v6

    .line 256
    .local v6, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget v1, v6, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    move/from16 v19, v9

    .end local v9    # "before_policy":I
    .local v19, "before_policy":I
    if-ne v3, v1, :cond_c6

    const/4 v1, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v1, 0x0

    .line 257
    .end local v12    # "update":Z
    .local v1, "update":Z
    :goto_c7
    if-nez v3, :cond_d0

    iget v12, v6, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    const/4 v9, 0x2

    if-ne v12, v9, :cond_d0

    const/4 v9, 0x1

    goto :goto_d1

    :cond_d0
    const/4 v9, 0x0

    :goto_d1
    or-int/2addr v1, v9

    .line 258
    const/4 v9, 0x1

    if-ne v3, v9, :cond_dc

    iget v12, v6, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    const/4 v9, 0x3

    if-ne v12, v9, :cond_dc

    const/4 v9, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v9, 0x0

    :goto_dd
    or-int v12, v1, v9

    .line 260
    .end local v1    # "update":Z
    .restart local v12    # "update":Z
    if-eqz v12, :cond_116

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SD card status is same "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 262
    iget v0, v6, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    if-eq v2, v0, :cond_109

    .line 263
    const-string v0, "Only SD card policy update"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 264
    invoke-direct/range {p0 .. p1}, Lcom/android/server/DirEncryptPrefs;->updateMDMPolicyPrefs(I)Z
    :try_end_109
    .catch Ljava/io/FileNotFoundException; {:try_start_a6 .. :try_end_109} :catch_144
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_109} :catch_13e
    .catchall {:try_start_a6 .. :try_end_109} :catchall_137

    .line 266
    :cond_109
    const/4 v1, 0x1

    .line 267
    .end local v11    # "result":Z
    .local v1, "result":Z
    nop

    .line 311
    if-eqz v7, :cond_115

    .line 313
    :try_start_10d
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 314
    invoke-static {v5}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_113} :catch_114

    goto :goto_115

    .line 315
    :catch_114
    move-exception v0

    .line 267
    :cond_115
    :goto_115
    return v1

    .line 269
    .end local v1    # "result":Z
    .restart local v11    # "result":Z
    :cond_116
    :try_start_116
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 270
    invoke-interface {v15, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_11f

    .line 252
    .end local v6    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .end local v19    # "before_policy":I
    .restart local v9    # "before_policy":I
    :cond_11d
    move/from16 v19, v9

    .line 275
    .end local v9    # "before_policy":I
    .restart local v19    # "before_policy":I
    :goto_11f
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/16 v6, 0x32

    if-lt v1, v6, :cond_133

    const/4 v1, -0x1

    if-ne v10, v1, :cond_133

    .line 276
    const-string v1, "delete first UUID list"

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_133
    .catch Ljava/io/FileNotFoundException; {:try_start_116 .. :try_end_133} :catch_144
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_133} :catch_13e
    .catchall {:try_start_116 .. :try_end_133} :catchall_137

    .line 282
    .end local v12    # "update":Z
    .end local v18    # "policy":Landroid/os/Bundle;
    .end local v19    # "before_policy":I
    :cond_133
    move-object v6, v15

    move/from16 v9, v16

    goto :goto_151

    .line 311
    :catchall_137
    move-exception v0

    move-object v1, v0

    move-object v6, v15

    move/from16 v9, v16

    goto/16 :goto_233

    .line 308
    :catch_13e
    move-exception v0

    move-object v6, v15

    move/from16 v9, v16

    goto/16 :goto_213

    .line 306
    :catch_144
    move-exception v0

    move-object v6, v15

    move/from16 v9, v16

    goto/16 :goto_224

    .line 248
    .end local v16    # "update_list":Z
    .local v6, "policy":Landroid/os/Bundle;
    .restart local v9    # "before_policy":I
    .restart local v17    # "update_list":Z
    :cond_14a
    move-object/from16 v18, v6

    move/from16 v19, v9

    .end local v6    # "policy":Landroid/os/Bundle;
    .end local v9    # "before_policy":I
    .restart local v18    # "policy":Landroid/os/Bundle;
    .restart local v19    # "before_policy":I
    move-object v6, v15

    move/from16 v9, v17

    .line 282
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "update_list":Z
    .end local v18    # "policy":Landroid/os/Bundle;
    .end local v19    # "before_policy":I
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "update_list":Z
    :goto_151
    :try_start_151
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v7, v1

    .line 283
    nop

    .line 288
    if-eqz v9, :cond_177

    .line 289
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 290
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 293
    :cond_177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MDM "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v7, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 295
    if-eqz v9, :cond_1bc

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1a6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_1bb

    .line 298
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v7, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a6

    .end local v1    # "idx":I
    :cond_1bb
    goto :goto_1d4

    .line 302
    :cond_1bc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v7, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1d4
    .catch Ljava/io/FileNotFoundException; {:try_start_151 .. :try_end_1d4} :catch_1e2
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_1d4} :catch_1e0
    .catchall {:try_start_151 .. :try_end_1d4} :catchall_231

    .line 305
    :goto_1d4
    const/4 v11, 0x1

    .line 311
    nop

    .line 313
    :try_start_1d6
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 314
    invoke-static {v5}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1dc} :catch_1dd

    goto :goto_1de

    .line 315
    :catch_1dd
    move-exception v0

    :goto_1de
    goto/16 :goto_230

    .line 308
    :catch_1e0
    move-exception v0

    goto :goto_213

    .line 306
    :catch_1e2
    move-exception v0

    goto :goto_224

    .line 311
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "update_list":Z
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "update_list":Z
    :catchall_1e4
    move-exception v0

    move-object v1, v0

    move-object v6, v15

    move/from16 v9, v17

    goto :goto_233

    .line 308
    :catch_1ea
    move-exception v0

    move-object v6, v15

    move/from16 v9, v17

    goto :goto_213

    .line 306
    :catch_1ef
    move-exception v0

    move-object v6, v15

    move/from16 v9, v17

    goto :goto_224

    .line 311
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "update_list":Z
    .restart local v9    # "update_list":Z
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1f4
    move-exception v0

    move/from16 v17, v9

    move-object v1, v0

    move-object/from16 v6, v16

    .end local v9    # "update_list":Z
    .restart local v17    # "update_list":Z
    goto :goto_233

    .line 308
    .end local v17    # "update_list":Z
    .restart local v9    # "update_list":Z
    :catch_1fb
    move-exception v0

    move/from16 v17, v9

    move-object/from16 v6, v16

    .end local v9    # "update_list":Z
    .restart local v17    # "update_list":Z
    goto :goto_213

    .line 306
    .end local v17    # "update_list":Z
    .restart local v9    # "update_list":Z
    :catch_201
    move-exception v0

    move/from16 v17, v9

    move-object/from16 v6, v16

    .end local v9    # "update_list":Z
    .restart local v17    # "update_list":Z
    goto :goto_224

    .line 311
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "update_list":Z
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "update_list":Z
    :catchall_207
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v9

    move-object v1, v0

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "update_list":Z
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "update_list":Z
    goto :goto_233

    .line 308
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "update_list":Z
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "update_list":Z
    :catch_20e
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v9

    .line 309
    .local v0, "e":Ljava/io/IOException;
    :goto_213
    :try_start_213
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_216
    .catchall {:try_start_213 .. :try_end_216} :catchall_231

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_230

    .line 313
    :try_start_218
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 314
    invoke-static {v5}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_21e} :catch_1dd

    goto :goto_1de

    .line 306
    :catch_21f
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v9

    .line 307
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_224
    :try_start_224
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_227
    .catchall {:try_start_224 .. :try_end_227} :catchall_231

    .line 311
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v7, :cond_230

    .line 313
    :try_start_229
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 314
    invoke-static {v5}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_22f} :catch_1dd

    goto :goto_1de

    .line 319
    :cond_230
    :goto_230
    return v11

    .line 311
    :catchall_231
    move-exception v0

    move-object v1, v0

    :goto_233
    if-eqz v7, :cond_23d

    .line 313
    :try_start_235
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 314
    invoke-static {v5}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_23b
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_23b} :catch_23c

    goto :goto_23d

    .line 315
    :catch_23c
    move-exception v0

    .line 317
    :cond_23d
    :goto_23d
    throw v1
.end method

.method private checkUUIDPrefs(Ljava/lang/String;)I
    .registers 8
    .param p1, "uuid"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 123
    .local v1, "idx":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v2, "policy":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 126
    .local v3, "isPolicy":I
    if-nez p1, :cond_10

    .line 127
    const-string v4, "SD card uuid field is null"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 128
    return v1

    .line 131
    :cond_10
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 132
    const-string/jumbo v4, "policy"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_22

    .line 135
    return v1

    .line 138
    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4d

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exist list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 141
    return v1

    .line 138
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 145
    :cond_4d
    return v1
.end method

.method private checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 149
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 150
    .local v0, "idx":I
    if-nez p1, :cond_9

    .line 151
    const-string v1, "SD card uuid field is null"

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 152
    return v0

    .line 155
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 156
    return v0

    .line 159
    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 160
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exist SD card list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 162
    return v0

    .line 159
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 166
    :cond_3b
    const-string v1, "can\'t find SD card uuid"

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 167
    const/4 v0, -0x1

    .line 168
    return v0
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/DirEncryptPrefs;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    if-nez v1, :cond_e

    .line 49
    new-instance v1, Lcom/android/server/DirEncryptPrefs;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptPrefs;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    .line 52
    :cond_e
    sget-object v1, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 47
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 36
    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 40
    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method private removeUUIDPrefs(Ljava/lang/String;)Z
    .registers 14
    .param p1, "uuid"    # Ljava/lang/String;

    .line 371
    const-string v0, "\n"

    const/4 v1, 0x0

    .line 372
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 373
    .local v2, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 374
    .local v3, "canRemove":Z
    const/4 v4, 0x0

    .line 375
    .local v4, "result":Z
    const/4 v5, 0x0

    .line 376
    .local v5, "remove_list_number":I
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 377
    .local v6, "policy":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 378
    .local v7, "isPolicy":I
    const/4 v8, 0x0

    .line 380
    .local v8, "writer":Ljava/io/FileWriter;
    if-nez p1, :cond_16

    .line 381
    const-string v0, "SD card uuid field is null"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 382
    return v4

    .line 384
    :cond_16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remove uuid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, v6}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 387
    const-string/jumbo v9, "policy"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 388
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3d

    .line 389
    return v4

    .line 392
    :cond_3d
    new-instance v9, Ljava/io/File;

    const-string v10, "/efs/sec_efs/"

    const-string v11, "SDCardEncryption.Pref"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v9

    .line 394
    invoke-direct {p0, p1, v1}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v5

    .line 395
    const/4 v9, -0x1

    if-eq v5, v9, :cond_7b

    .line 396
    nop

    .line 397
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v9

    .line 399
    .local v9, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove the item : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 400
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 401
    const/4 v3, 0x1

    .line 403
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 404
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 408
    .end local v9    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_7b
    if-nez v3, :cond_83

    .line 409
    const-string v0, "can\'t find remove uuid"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 410
    return v4

    .line 414
    :cond_83
    :try_start_83
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 415
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod 644 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 417
    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v8, v9

    .line 418
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 420
    const/4 v9, 0x0

    .local v9, "idx":I
    :goto_c0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d5

    .line 421
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_d2} :catch_e9
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_d2} :catch_df
    .catchall {:try_start_83 .. :try_end_d2} :catchall_dd

    .line 420
    add-int/lit8 v9, v9, 0x1

    goto :goto_c0

    .line 424
    .end local v9    # "idx":I
    :cond_d5
    const/4 v4, 0x1

    .line 430
    nop

    .line 432
    :try_start_d7
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    .line 433
    :goto_da
    goto :goto_f3

    :catch_db
    move-exception v0

    goto :goto_da

    .line 430
    :catchall_dd
    move-exception v0

    goto :goto_f4

    .line 427
    :catch_df
    move-exception v0

    .line 428
    .local v0, "e":Ljava/io/IOException;
    :try_start_e0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_dd

    .line 430
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v8, :cond_f3

    .line 432
    :try_start_e5
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_db

    goto :goto_da

    .line 425
    :catch_e9
    move-exception v0

    .line 426
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_ea
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_dd

    .line 430
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v8, :cond_f3

    .line 432
    :try_start_ef
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_db

    goto :goto_da

    .line 437
    :cond_f3
    :goto_f3
    return v4

    .line 430
    :goto_f4
    if-eqz v8, :cond_fc

    .line 432
    :try_start_f6
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fa

    .line 433
    :goto_f9
    goto :goto_fc

    :catch_fa
    move-exception v9

    goto :goto_f9

    .line 435
    :cond_fc
    :goto_fc
    throw v0
.end method

.method private restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;
    .registers 11
    .param p1, "policy"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 325
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 327
    .local v2, "read_data":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sec_efs/"

    const-string v5, "SDCardEncryption.Pref"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_be

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_be

    .line 334
    :cond_1e
    :try_start_1e
    const-string/jumbo v4, "restoreUUIDPrefs"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 335
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 337
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 338
    if-nez v2, :cond_45

    .line 339
    const-string/jumbo v4, "read data is null from file"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_3c} :catch_76
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3c} :catch_6c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_6a

    .line 340
    nop

    .line 353
    nop

    .line 355
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 356
    :goto_41
    goto :goto_44

    :catch_42
    move-exception v4

    goto :goto_41

    .line 340
    :goto_44
    return-object v0

    .line 342
    :cond_45
    :try_start_45
    const-string/jumbo v4, "policy"

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    :goto_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v4, :cond_63

    .line 346
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_62} :catch_76
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_62} :catch_6c
    .catchall {:try_start_45 .. :try_end_62} :catchall_6a

    goto :goto_58

    .line 353
    :cond_63
    nop

    .line 355
    :try_start_64
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    .line 356
    :goto_67
    goto :goto_80

    :catch_68
    move-exception v4

    goto :goto_67

    .line 353
    :catchall_6a
    move-exception v4

    goto :goto_b5

    .line 350
    :catch_6c
    move-exception v4

    .line 351
    .local v4, "e":Ljava/io/IOException;
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6a

    .line 353
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_80

    .line 355
    :try_start_72
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_68

    goto :goto_67

    .line 348
    :catch_76
    move-exception v4

    .line 349
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_77
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_6a

    .line 353
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-eqz v1, :cond_80

    .line 355
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_68

    goto :goto_67

    .line 360
    :cond_80
    :goto_80
    const-string v4, "#########################################"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 361
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b1

    .line 362
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 363
    .local v6, "test":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[List "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 361
    .end local v6    # "test":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    .line 365
    .end local v5    # "idx":I
    :cond_b1
    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 367
    return-object v0

    .line 353
    :goto_b5
    if-eqz v1, :cond_bd

    .line 355
    :try_start_b7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bb

    .line 356
    :goto_ba
    goto :goto_bd

    :catch_bb
    move-exception v5

    goto :goto_ba

    .line 358
    :cond_bd
    :goto_bd
    throw v4

    .line 329
    :cond_be
    :goto_be
    const-string v4, "Can\'t read or open pref file"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 330
    return-object v0
.end method

.method private updateMDMPolicyPrefs(I)Z
    .registers 12
    .param p1, "isPolicy"    # I

    .line 172
    const-string v0, "\n"

    const/4 v1, 0x0

    .line 173
    .local v1, "writer":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 174
    .local v2, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 176
    .local v3, "result":Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v4, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v4}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v5

    .line 178
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "policy"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 180
    .local v6, "before_policy":I
    if-ne p1, v6, :cond_1e

    .line 181
    const-string/jumbo v0, "policy is same"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 182
    return v3

    .line 185
    :cond_1e
    new-instance v7, Ljava/io/File;

    const-string v8, "/efs/sec_efs/"

    const-string v9, "SDCardEncryption.Pref"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 191
    :cond_31
    :try_start_31
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v1, v7

    .line 192
    nop

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 197
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chmod 644 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MDM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 201
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_6f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_84

    .line 202
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_81} :catch_98
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_81} :catch_8e
    .catchall {:try_start_31 .. :try_end_81} :catchall_8c

    .line 201
    add-int/lit8 v7, v7, 0x1

    goto :goto_6f

    .line 205
    .end local v7    # "idx":I
    :cond_84
    const/4 v3, 0x1

    .line 211
    nop

    .line 213
    :try_start_86
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    .line 214
    :goto_89
    goto :goto_a2

    :catch_8a
    move-exception v0

    goto :goto_89

    .line 211
    :catchall_8c
    move-exception v0

    goto :goto_a3

    .line 208
    :catch_8e
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    :try_start_8f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_8c

    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_a2

    .line 213
    :try_start_94
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_8a

    goto :goto_89

    .line 206
    :catch_98
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_99
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_8c

    .line 211
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_a2

    .line 213
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_8a

    goto :goto_89

    .line 218
    :cond_a2
    :goto_a2
    return v3

    .line 211
    :goto_a3
    if-eqz v1, :cond_ab

    .line 213
    :try_start_a5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9

    .line 214
    :goto_a8
    goto :goto_ab

    :catch_a9
    move-exception v7

    goto :goto_a8

    .line 216
    :cond_ab
    :goto_ab
    throw v0
.end method


# virtual methods
.method public clearPrefs(Ljava/lang/String;)V
    .registers 8
    .param p1, "uuid"    # Ljava/lang/String;

    .line 63
    const-string v0, "clearPrefs()"

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/DirEncryptPrefs;->removeUUIDPrefs(Ljava/lang/String;)Z

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "policy"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "isPolicy":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID list size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_64

    if-nez v2, :cond_64

    .line 73
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sec_efs/"

    const-string v5, "SDCardEncryption.Pref"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 75
    const-string v4, "There is no list, so delete internal meta file !!!"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 79
    .end local v3    # "f":Ljava/io/File;
    :cond_64
    return-void
.end method

.method public haveEncPrefs()Z
    .registers 4

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/"

    const-string v2, "SDCardEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .registers 10
    .param p1, "uuid"    # Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 86
    .local v0, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    const/4 v1, 0x0

    .line 87
    .local v1, "update_list":Z
    const/4 v2, 0x0

    .line 89
    .local v2, "update_list_number":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v3, "policy":Landroid/os/Bundle;
    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v4

    .line 91
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "policy"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 93
    .local v5, "isPolicy":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restorePrefs() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 95
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_a5

    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0, p1, v4}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "list number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 99
    const/4 v6, -0x1

    if-eq v2, v6, :cond_5a

    .line 100
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    goto :goto_62

    .line 102
    :cond_5a
    iput v5, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 103
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    .line 104
    const/4 v6, 0x3

    iput v6, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    .line 107
    :goto_62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy        : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current UUID  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encrypt state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    .line 112
    :cond_a5
    return-object v0
.end method

.method public savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z
    .registers 5
    .param p1, "policies"    # Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 117
    iget v0, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v1, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget-object v2, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/DirEncryptPrefs;->addUUIDPrefs(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
