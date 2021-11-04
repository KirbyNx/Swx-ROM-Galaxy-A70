.class public Lcom/android/server/asks/PolicyConvert;
.super Ljava/lang/Object;
.source "PolicyConvert.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private pkgInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    .line 20
    const-string v0, "AASA_PolicyConvert "

    iput-object v0, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    return-void
.end method

.method private AASA()V
    .registers 19

    .line 175
    move-object/from16 v1, p0

    const-string v0, "<PM>"

    const-string v2, "<PKG>"

    const-string v3, "<AASA VERSION=\""

    const-string v4, ""

    const-string v5, "0"

    .line 176
    .local v5, "versionInfo":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v6, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 178
    .local v7, "isTarget":Z
    const/4 v8, 0x0

    .line 179
    .local v8, "file":Ljava/io/File;
    const/4 v9, 0x0

    .line 180
    .local v9, "filereader":Ljava/io/FileReader;
    const/4 v10, 0x0

    .line 183
    .local v10, "bufReader":Ljava/io/BufferedReader;
    :try_start_15
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/.aasa/AASApackages.xml"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v11

    .line 184
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e0

    .line 186
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v9, v11

    .line 187
    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v10, v11

    .line 189
    move-object v11, v4

    .line 190
    .local v11, "line":Ljava/lang/String;
    nop

    .line 191
    .local v4, "pkgname":Ljava/lang/String;
    const/4 v12, 0x0

    .line 193
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_32
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    if-eqz v13, :cond_e0

    .line 195
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6a

    .line 196
    invoke-direct {v1, v11, v3}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 198
    .local v13, "locVersion":Ljava/lang/String;
    const-string v15, "\""

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_49} :catch_fc
    .catchall {:try_start_15 .. :try_end_49} :catchall_f9

    .line 199
    .local v15, "a":I
    const/4 v14, -0x1

    if-ne v15, v14, :cond_63

    .line 246
    nop

    .line 248
    :try_start_4d
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 252
    goto :goto_57

    .line 249
    :catch_51
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 251
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :goto_57
    nop

    .line 256
    :try_start_58
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 260
    goto :goto_62

    .line 257
    :catch_5c
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 259
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :goto_62
    return-void

    .line 202
    :cond_63
    const/4 v14, 0x0

    :try_start_64
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v5, v16

    .line 205
    .end local v13    # "locVersion":Ljava/lang/String;
    .end local v15    # "a":I
    :cond_6a
    const-string v13, "<BlockBySPD>"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_74

    .line 206
    const/4 v7, 0x1

    goto :goto_7d

    .line 207
    :cond_74
    const-string v13, "</BlockBySPD>"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7d

    .line 209
    goto :goto_e0

    .line 211
    :cond_7d
    :goto_7d
    if-eqz v7, :cond_dc

    .line 212
    invoke-virtual {v11, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_83} :catch_fc
    .catchall {:try_start_64 .. :try_end_83} :catchall_f9

    const-string v14, "<"

    if-eqz v13, :cond_9a

    .line 214
    :try_start_87
    invoke-direct {v1, v11, v2}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 215
    .local v13, "locPkg":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 216
    .restart local v15    # "a":I
    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v2, v17

    move-object v4, v2

    .end local v4    # "pkgname":Ljava/lang/String;
    .local v2, "pkgname":Ljava/lang/String;
    goto :goto_9c

    .line 212
    .end local v2    # "pkgname":Ljava/lang/String;
    .end local v13    # "locPkg":Ljava/lang/String;
    .end local v15    # "a":I
    .restart local v4    # "pkgname":Ljava/lang/String;
    :cond_9a
    move-object/from16 v16, v2

    .line 219
    :goto_9c
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 221
    invoke-direct {v1, v11, v0}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "permissionName":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 224
    .local v13, "a":I
    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c3

    .line 226
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v12, v14

    .line 227
    const/4 v14, 0x0

    invoke-virtual {v2, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v6, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d4

    .line 231
    :cond_c3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v14

    .line 232
    const/4 v14, 0x0

    invoke-virtual {v2, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {v6, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_d4} :catch_fc
    .catchall {:try_start_87 .. :try_end_d4} :catchall_f9

    .line 235
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v13    # "a":I
    :goto_d4
    move-object/from16 v2, v16

    goto/16 :goto_32

    .line 219
    :cond_d8
    move-object/from16 v2, v16

    goto/16 :goto_32

    .line 211
    :cond_dc
    move-object/from16 v16, v2

    goto/16 :goto_32

    .line 246
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e0
    :goto_e0
    if-eqz v10, :cond_ec

    .line 248
    :try_start_e2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    .line 252
    goto :goto_ec

    .line 249
    :catch_e6
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 251
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :cond_ec
    :goto_ec
    if-eqz v9, :cond_114

    .line 256
    :try_start_ee
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    .line 260
    :goto_f1
    goto :goto_114

    .line 257
    :catch_f2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 259
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_f1

    .line 246
    :catchall_f9
    move-exception v0

    move-object v2, v0

    goto :goto_137

    .line 241
    :catch_fc
    move-exception v0

    .line 242
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_fd
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_102
    .catchall {:try_start_fd .. :try_end_102} :catchall_f9

    .line 246
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v10, :cond_10e

    .line 248
    :try_start_104
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_108

    .line 252
    goto :goto_10e

    .line 249
    :catch_108
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 251
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :cond_10e
    :goto_10e
    if-eqz v9, :cond_114

    .line 256
    :try_start_110
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_f2

    goto :goto_f1

    .line 264
    :cond_114
    :goto_114
    if-eqz v7, :cond_136

    .line 265
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 266
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_11e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_136

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 269
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 270
    .local v3, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 271
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_11e

    .line 273
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_136
    return-void

    .line 246
    :goto_137
    if-eqz v10, :cond_143

    .line 248
    :try_start_139
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_13d

    .line 252
    goto :goto_143

    .line 249
    :catch_13d
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 251
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :cond_143
    :goto_143
    if-eqz v9, :cond_14f

    .line 256
    :try_start_145
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_149

    .line 260
    goto :goto_14f

    .line 257
    :catch_149
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 259
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 262
    .end local v0    # "e":Ljava/io/IOException;
    :cond_14f
    :goto_14f
    throw v2
.end method

.method private EM()V
    .registers 13

    .line 393
    const-string v0, ""

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 395
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 396
    .local v3, "filereader":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 397
    .local v4, "bufReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 400
    .local v5, "isTarget":Z
    :try_start_b
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/.aasa/EMSupportPackages.xml"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 401
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 404
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 405
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v6

    .line 407
    move-object v6, v0

    .line 408
    .local v6, "line":Ljava/lang/String;
    move-object v7, v0

    .line 409
    .local v7, "pkgname":Ljava/lang/String;
    move-object v8, v0

    .line 411
    .local v8, "mode":Ljava/lang/String;
    :cond_28
    :goto_28
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    if-eqz v9, :cond_7a

    .line 413
    const-string v9, "<package value="

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 415
    const-string v9, "<package value=\""

    invoke-direct {p0, v6, v9}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, "locpac":Ljava/lang/String;
    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 418
    .local v10, "a":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_4d

    .line 419
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 425
    .end local v9    # "locpac":Ljava/lang/String;
    .end local v10    # "a":I
    goto :goto_28

    .line 421
    .restart local v9    # "locpac":Ljava/lang/String;
    .restart local v10    # "a":I
    :cond_4d
    const/4 v5, 0x0

    .line 422
    goto :goto_7a

    .line 426
    .end local v9    # "locpac":Ljava/lang/String;
    .end local v10    # "a":I
    :cond_4f
    const-string v9, "<mode value"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 428
    const-string v9, "<mode value=\""

    invoke-direct {p0, v6, v9}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    goto :goto_28

    .line 431
    :cond_5f
    const-string v9, "</package>"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 433
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_77

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_77

    .line 434
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_76} :catch_91
    .catchall {:try_start_b .. :try_end_76} :catchall_8f

    .line 435
    const/4 v5, 0x1

    .line 437
    :cond_77
    move-object v8, v0

    move-object v7, v0

    goto :goto_28

    .line 447
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "pkgname":Ljava/lang/String;
    .end local v8    # "mode":Ljava/lang/String;
    :cond_7a
    :goto_7a
    if-eqz v4, :cond_84

    .line 449
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 453
    goto :goto_84

    .line 450
    :catch_80
    move-exception v0

    .line 452
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    .end local v0    # "e":Ljava/io/IOException;
    :cond_84
    :goto_84
    if-eqz v3, :cond_a7

    .line 457
    :try_start_86
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 461
    :goto_89
    goto :goto_a7

    .line 458
    :catch_8a
    move-exception v0

    .line 460
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_89

    .line 447
    :catchall_8f
    move-exception v0

    goto :goto_ca

    .line 442
    :catch_91
    move-exception v0

    .line 443
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_92
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_8f

    .line 447
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_a1

    .line 449
    :try_start_99
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 453
    goto :goto_a1

    .line 450
    :catch_9d
    move-exception v0

    .line 452
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a1
    :goto_a1
    if-eqz v3, :cond_a7

    .line 457
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_8a

    goto :goto_89

    .line 465
    :cond_a7
    :goto_a7
    if-eqz v5, :cond_c9

    .line 466
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 467
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 468
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 469
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 470
    .local v7, "mode":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 471
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "mode":Ljava/lang/String;
    goto :goto_b1

    .line 474
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c9
    return-void

    .line 447
    :goto_ca
    if-eqz v4, :cond_d4

    .line 449
    :try_start_cc
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    .line 453
    goto :goto_d4

    .line 450
    :catch_d0
    move-exception v6

    .line 452
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    .end local v6    # "e":Ljava/io/IOException;
    :cond_d4
    :goto_d4
    if-eqz v3, :cond_de

    .line 457
    :try_start_d6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    .line 461
    goto :goto_de

    .line 458
    :catch_da
    move-exception v6

    .line 460
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 463
    .end local v6    # "e":Ljava/io/IOException;
    :cond_de
    :goto_de
    throw v0
.end method

.method private MakeString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 149
    .local p3, "targetData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 150
    .local v0, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_15

    .line 151
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 153
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        <emmode value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method private MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "expired"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 158
    .local p1, "sourceData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "targetData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_81

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_24

    .line 161
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 162
    :goto_24
    const-string v2, "DELETE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\" datelimit=\""

    if-eqz v2, :cond_4e

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        <delete version=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 166
    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        <restrict version=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" type=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" from=\"Token\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_75
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v1    # "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "ii":I
    :cond_81
    return-void
.end method

.method private MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 130
    .local p1, "sourceData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "targetData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 131
    .local v0, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_15

    .line 132
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 134
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        <restrict version=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" type=\"REVOKE\" datelimit=\"00000000\" from=\"Token\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v1, 0x0

    .local v1, "iii":I
    :goto_2f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "            <permission value=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 142
    .end local v1    # "iii":I
    :cond_57
    const-string v1, "        </restrict>"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method private RestrictPackages()V
    .registers 16

    .line 277
    const-string v0, ""

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v1, "deleteData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v2, "denyData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 281
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 282
    .local v4, "filereader":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 283
    .local v5, "bufReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 287
    .local v6, "isTarget":Z
    :try_start_10
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/.aasa/RestrictPackages.xml"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 288
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_db

    .line 291
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v4, v7

    .line 292
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v7

    .line 294
    move-object v7, v0

    .line 295
    .local v7, "line":Ljava/lang/String;
    move-object v8, v0

    .line 296
    .local v8, "dateLimit":Ljava/lang/String;
    const/4 v9, 0x0

    .line 297
    .local v9, "deletePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 300
    .local v10, "denyPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2e
    :goto_2e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    if-eqz v11, :cond_db

    .line 301
    const-string v11, "<DATELIMIT value="

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 302
    const-string v11, "<DATELIMIT value=\""

    invoke-direct {p0, v7, v11}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 303
    .local v11, "locDate":Ljava/lang/String;
    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 305
    .local v12, "a":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_59

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_59

    .line 306
    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 313
    .end local v11    # "locDate":Ljava/lang/String;
    .end local v12    # "a":I
    goto :goto_2e

    .line 309
    .restart local v11    # "locDate":Ljava/lang/String;
    .restart local v12    # "a":I
    :cond_59
    const/4 v6, 0x0

    .line 310
    goto/16 :goto_db

    .line 314
    .end local v11    # "locDate":Ljava/lang/String;
    .end local v12    # "a":I
    :cond_5c
    const-string v11, "<DELETE>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 315
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v11

    goto :goto_2e

    .line 316
    :cond_6b
    const-string v11, "<DENY>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 317
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v11

    goto :goto_2e

    .line 319
    :cond_7a
    const-string v11, "<PKG value="

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_97

    .line 320
    const-string v11, "<PKG value=\""

    invoke-direct {p0, v7, v11}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, "locPackge":Ljava/lang/String;
    if-eqz v9, :cond_8f

    if-nez v10, :cond_8f

    .line 322
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_8f
    if-eqz v10, :cond_96

    if-nez v9, :cond_96

    .line 325
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v11    # "locPackge":Ljava/lang/String;
    :cond_96
    goto :goto_2e

    .line 328
    :cond_97
    const-string v11, "</DELETE>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b3

    .line 330
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_b0

    if-eqz v9, :cond_b0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_b0

    .line 331
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_b0
    const/4 v9, 0x0

    goto/16 :goto_2e

    .line 336
    :cond_b3
    const-string v11, "</DENY>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_cf

    .line 338
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_cc

    if-eqz v10, :cond_cc

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_cc

    .line 339
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_cc
    const/4 v10, 0x0

    goto/16 :goto_2e

    .line 342
    :cond_cf
    const-string v11, "</DATELIMIT>"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_d5} :catch_f3
    .catchall {:try_start_10 .. :try_end_d5} :catchall_f0

    if-eqz v11, :cond_2e

    .line 343
    move-object v8, v0

    .line 344
    const/4 v6, 0x1

    goto/16 :goto_2e

    .line 352
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "dateLimit":Ljava/lang/String;
    .end local v9    # "deletePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "denyPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_db
    :goto_db
    if-eqz v5, :cond_e5

    .line 354
    :try_start_dd
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    .line 358
    goto :goto_e5

    .line 355
    :catch_e1
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e5
    :goto_e5
    if-eqz v4, :cond_109

    .line 362
    :try_start_e7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    .line 366
    :goto_ea
    goto :goto_109

    .line 363
    :catch_eb
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_ea

    .line 352
    :catchall_f0
    move-exception v0

    goto/16 :goto_168

    .line 348
    :catch_f3
    move-exception v0

    .line 349
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_f4
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_f9
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_f0

    .line 352
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_103

    .line 354
    :try_start_fb
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_ff

    .line 358
    goto :goto_103

    .line 355
    :catch_ff
    move-exception v0

    .line 357
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    .end local v0    # "e":Ljava/io/IOException;
    :cond_103
    :goto_103
    if-eqz v4, :cond_109

    .line 362
    :try_start_105
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_eb

    goto :goto_ea

    .line 370
    :cond_109
    :goto_109
    if-eqz v6, :cond_167

    .line 371
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_139

    .line 372
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 373
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_119
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_139

    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 375
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ljava/util/ArrayList;

    .line 376
    .local v14, "pkglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v13, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v10, "DELETE"

    const-string v12, "00000000"

    move-object v8, p0

    move-object v9, v14

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 377
    .end local v7    # "key":Ljava/lang/String;
    .end local v14    # "pkglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_119

    .line 379
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_139
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_167

    .line 380
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 381
    .restart local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_147
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_167

    .line 382
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 383
    .restart local v7    # "key":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ljava/util/ArrayList;

    .line 384
    .restart local v14    # "pkglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v13, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v10, "DENY"

    const-string v12, "00000000"

    move-object v8, p0

    move-object v9, v14

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 385
    .end local v7    # "key":Ljava/lang/String;
    .end local v14    # "pkglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_147

    .line 388
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_167
    return-void

    .line 352
    :goto_168
    if-eqz v5, :cond_172

    .line 354
    :try_start_16a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_16e

    .line 358
    goto :goto_172

    .line 355
    :catch_16e
    move-exception v7

    .line 357
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    .end local v7    # "e":Ljava/io/IOException;
    :cond_172
    :goto_172
    if-eqz v4, :cond_17c

    .line 362
    :try_start_174
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_178

    .line 366
    goto :goto_17c

    .line 363
    :catch_178
    move-exception v7

    .line 365
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 368
    .end local v7    # "e":Ljava/io/IOException;
    :cond_17c
    :goto_17c
    throw v0
.end method

.method private deleteFiles()V
    .registers 4

    .line 478
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/AASApolicy/AASA.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 481
    :cond_10
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/AASApolicy/AASA-TEMP.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 484
    :cond_21
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/EMSupportPackages.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 485
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 487
    :cond_32
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/RestrictPackages.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 490
    :cond_43
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/AASApackages.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 491
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 492
    :cond_54
    return-void
.end method

.method private isASKSxml()Z
    .registers 3

    .line 45
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/asks.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 47
    const/4 v1, 0x1

    return v1

    .line 49
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private makeASKSxml(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 15
    .param p2, "g_Version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 54
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v0, "\">\n"

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 55
    .local v1, "temps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 57
    .local v2, "isCreated":Z
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 62
    .local v4, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "iii":I
    :goto_34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_57

    .line 64
    iget-object v7, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 66
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "iii":I
    :cond_57
    goto :goto_b

    .line 67
    :cond_58
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/.aasa/asks.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 69
    .local v4, "fileWriter":Ljava/io/FileWriter;
    const/4 v5, 0x0

    .line 72
    .local v5, "bufWriter":Ljava/io/BufferedWriter;
    :try_start_61
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_ed

    .line 73
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 74
    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v5, v6

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 76
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<asks version=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 77
    :goto_92
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 78
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 79
    .local v7, "key":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    <package name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 80
    iget-object v8, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 81
    .local v8, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "iii":I
    :goto_be
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_e1

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto :goto_be

    .line 84
    .end local v9    # "iii":I
    :cond_e1
    const-string v9, "    </package>\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 85
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_92

    .line 86
    :cond_e7
    const-string v0, "</asks>\n"

    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_ec} :catch_f8
    .catchall {:try_start_61 .. :try_end_ec} :catchall_f6

    .line 88
    const/4 v2, 0x1

    .line 101
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_ed
    if-eqz v5, :cond_f5

    .line 102
    :try_start_ef
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3

    goto :goto_f5

    .line 104
    :catch_f3
    move-exception v0

    .line 108
    goto :goto_116

    .line 107
    :cond_f5
    :goto_f5
    goto :goto_116

    .line 100
    :catchall_f6
    move-exception v0

    goto :goto_117

    .line 91
    :catch_f8
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 95
    :try_start_fa
    iget-object v6, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catchall {:try_start_fa .. :try_end_110} :catchall_f6

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_f5

    .line 102
    :try_start_112
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_f3

    goto :goto_f5

    .line 109
    :goto_116
    return v2

    .line 101
    :goto_117
    if-eqz v5, :cond_11f

    .line 102
    :try_start_119
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_11d

    goto :goto_11f

    .line 104
    :catch_11d
    move-exception v6

    goto :goto_120

    .line 107
    :cond_11f
    :goto_11f
    nop

    .line 108
    :goto_120
    throw v0
.end method

.method private parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "fullMsg"    # Ljava/lang/String;
    .param p2, "split"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "splitmsg1":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 116
    .local v2, "splitmsg2":[Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_1b

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    .line 119
    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_1b

    .line 121
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 125
    :cond_1b
    return-object v0
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Z
    .registers 5
    .param p1, "version"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "working.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0}, Lcom/android/server/asks/PolicyConvert;->AASA()V

    .line 29
    invoke-direct {p0}, Lcom/android/server/asks/PolicyConvert;->EM()V

    .line 30
    invoke-direct {p0}, Lcom/android/server/asks/PolicyConvert;->RestrictPackages()V

    .line 31
    iget-object v0, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/server/asks/PolicyConvert;->makeASKSxml(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    .line 33
    .local v0, "isCreated":Z
    if-eqz v0, :cond_1c

    .line 34
    invoke-direct {p0}, Lcom/android/server/asks/PolicyConvert;->deleteFiles()V

    .line 39
    :cond_1c
    iget-object v1, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    const-string v2, "end"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return v0
.end method
