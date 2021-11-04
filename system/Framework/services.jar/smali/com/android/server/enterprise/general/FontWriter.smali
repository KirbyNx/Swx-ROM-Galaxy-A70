.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final CHMOD_EXECUTE_COMMAND:Ljava/lang/String; = "chmod 711 "

.field public static final CHMOD_READ_COMMAND:Ljava/lang/String; = "chmod 744 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final NEW_FONT_DIRECTORY:Ljava/lang/String; = "/data/app_fonts/"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 71
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 73
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8
    .param p1, "FontDir"    # Ljava/io/File;
    .param p2, "folderName"    # Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .local v0, "newDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "tmp":[Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 273
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_1c

    .line 277
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 273
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 283
    .end local v2    # "i":I
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .local v2, "bRet":Z
    goto :goto_22

    .line 289
    .end local v2    # "bRet":Z
    :cond_21
    const/4 v2, 0x0

    .line 291
    .restart local v2    # "bRet":Z
    :goto_22
    return v2
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "fontPath"    # Ljava/lang/String;

    .line 307
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 309
    .local v0, "run":Ljava/lang/Runtime;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 744 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 311
    .local v1, "myProcess":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 313
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-nez v2, :cond_23

    .end local v0    # "run":Ljava/lang/Runtime;
    .end local v1    # "myProcess":Ljava/lang/Process;
    goto :goto_2e

    .line 315
    .restart local v0    # "run":Ljava/lang/Runtime;
    .restart local v1    # "myProcess":Ljava/lang/Process;
    :cond_23
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/enterprise/general/FontWriter;
    .end local p1    # "fontPath":Ljava/lang/String;
    throw v2
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2b} :catch_2b

    .line 327
    .end local v0    # "run":Ljava/lang/Runtime;
    .end local v1    # "myProcess":Ljava/lang/Process;
    .restart local p0    # "this":Lcom/android/server/enterprise/general/FontWriter;
    .restart local p1    # "fontPath":Ljava/lang/String;
    :catch_2b
    move-exception v0

    goto :goto_2f

    .line 321
    :catch_2d
    move-exception v0

    .line 331
    :goto_2e
    nop

    .line 333
    :goto_2f
    return-void
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 19
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .line 351
    move-object v1, p0

    const-string v2, "copyFontFile : bos.close() error"

    const-string v3, "copyFontFile : fOut.close() error"

    const-string v4, "copyFontFile : myInputStream.close() error"

    move-object/from16 v5, p2

    .line 353
    .local v5, "myInputStream":Ljava/io/InputStream;
    move-object/from16 v6, p1

    .line 355
    .local v6, "myDirectory":Ljava/io/File;
    move-object/from16 v7, p3

    .line 357
    .local v7, "myDestination":Ljava/lang/String;
    const-string v8, ""

    .line 363
    .local v8, "absolutePath":Ljava/lang/String;
    const-wide/16 v9, 0x0

    :try_start_11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 371
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v11, v1, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 373
    new-instance v11, Ljava/io/BufferedOutputStream;

    iget-object v12, v1, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v11, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 377
    const/16 v11, 0x400

    new-array v11, v11, [B

    .line 381
    .local v11, "b":[B
    const/4 v12, 0x0

    .line 383
    .local v12, "read":I
    :goto_33
    invoke-virtual {v5, v11}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move v12, v13

    if-lez v13, :cond_41

    .line 385
    iget-object v13, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_33

    .line 389
    :cond_41
    iget-object v13, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 391
    iget-object v13, v1, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 393
    iget-object v13, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_50} :catch_84
    .catchall {:try_start_11 .. :try_end_50} :catchall_81

    .line 419
    .end local v0    # "dest":Ljava/io/File;
    .end local v11    # "b":[B
    .end local v12    # "read":I
    if-eqz v5, :cond_5f

    .line 421
    :try_start_52
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5f

    .line 425
    :catch_56
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 427
    .local v0, "e":Ljava/io/IOException;
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    nop

    .line 433
    :goto_60
    :try_start_60
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_69

    .line 435
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_69} :catch_6a

    .line 443
    :cond_69
    goto :goto_70

    .line 439
    :catch_6a
    move-exception v0

    .line 441
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v0    # "e":Ljava/io/IOException;
    :goto_70
    :try_start_70
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_79

    .line 449
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_79} :catch_7a

    .line 457
    :cond_79
    :goto_79
    goto :goto_c2

    .line 453
    :catch_7a
    move-exception v0

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_c2

    .line 417
    :catchall_81
    move-exception v0

    move-object v9, v0

    goto :goto_d6

    .line 397
    :catch_84
    move-exception v0

    .line 401
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_85
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 405
    .local v12, "length":J
    cmp-long v14, v12, v9

    if-nez v14, :cond_95

    .line 407
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 411
    :cond_95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_85 .. :try_end_98} :catchall_81

    .line 419
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "length":J
    if-eqz v5, :cond_a7

    .line 421
    :try_start_9a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_a7

    .line 425
    :catch_9e
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 427
    .local v0, "e":Ljava/io/IOException;
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a7
    :goto_a7
    nop

    .line 433
    :goto_a8
    :try_start_a8
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_b1

    .line 435
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b1} :catch_b2

    .line 443
    :cond_b1
    goto :goto_b8

    .line 439
    :catch_b2
    move-exception v0

    .line 441
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v0    # "e":Ljava/io/IOException;
    :goto_b8
    :try_start_b8
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_79

    .line 449
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c1} :catch_7a

    goto :goto_79

    .line 461
    :goto_c2
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 471
    .local v2, "length":J
    cmp-long v4, v2, v9

    if-nez v4, :cond_d5

    .line 473
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 477
    :cond_d5
    return-void

    .line 419
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "length":J
    :goto_d6
    if-eqz v5, :cond_e5

    .line 421
    :try_start_d8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_e5

    .line 425
    :catch_dc
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 427
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e5
    :goto_e5
    nop

    .line 433
    :goto_e6
    :try_start_e6
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_ef

    .line 435
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ef} :catch_f0

    .line 443
    :cond_ef
    goto :goto_f6

    .line 439
    :catch_f0
    move-exception v0

    .line 441
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v0    # "e":Ljava/io/IOException;
    :goto_f6
    :try_start_f6
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_ff

    .line 449
    iget-object v0, v1, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_ff} :catch_100

    .line 457
    :cond_ff
    goto :goto_106

    .line 453
    :catch_100
    move-exception v0

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v0    # "e":Ljava/io/IOException;
    :goto_106
    throw v9
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 21
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .line 483
    const-string v1, "copyFontFile : bos.close() error"

    const-string v2, "copyFontFile : fOut.close() error"

    const-string v3, "copyFontFile : myInputStream.close() error"

    const/4 v4, 0x0

    .line 485
    .local v4, "fOut":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 487
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v6, p2

    .line 489
    .local v6, "myInputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 490
    .local v9, "filePath":Ljava/lang/String;
    move-object/from16 v10, p0

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 495
    const-wide/16 v11, 0x0

    :try_start_24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, "dest":Ljava/io/File;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v13

    .line 499
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v13

    .line 502
    const/16 v13, 0x400

    new-array v13, v13, [B

    .line 505
    .local v13, "b":[B
    const/4 v14, 0x0

    .line 507
    .local v14, "read":I
    :goto_3a
    invoke-virtual {v6, v13}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move v14, v15

    if-lez v15, :cond_46

    .line 509
    const/4 v15, 0x0

    invoke-virtual {v5, v13, v15, v14}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_3a

    .line 513
    :cond_46
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 515
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 517
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4f} :catch_7d
    .catchall {:try_start_24 .. :try_end_4f} :catchall_7a

    .line 543
    .end local v0    # "dest":Ljava/io/File;
    .end local v13    # "b":[B
    .end local v14    # "read":I
    if-eqz v6, :cond_5e

    .line 545
    :try_start_51
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_5e

    .line 549
    :catch_55
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 551
    .local v0, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 553
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5e
    :goto_5e
    nop

    .line 557
    :goto_5f
    nop

    .line 559
    :try_start_60
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 567
    goto :goto_6c

    .line 563
    :catch_64
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 565
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6c
    nop

    .line 573
    :try_start_6d
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    .line 581
    :cond_70
    :goto_70
    goto :goto_b7

    .line 577
    :catch_71
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 579
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_b7

    .line 541
    :catchall_7a
    move-exception v0

    move-object v11, v0

    goto :goto_c8

    .line 521
    :catch_7d
    move-exception v0

    .line 525
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_7e
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 529
    .local v14, "length":J
    cmp-long v16, v14, v11

    if-nez v16, :cond_8e

    .line 531
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 535
    :cond_8e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_7e .. :try_end_91} :catchall_7a

    .line 543
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "length":J
    if-eqz v6, :cond_a0

    .line 545
    :try_start_93
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_a0

    .line 549
    :catch_97
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 551
    .local v0, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 553
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a0
    :goto_a0
    nop

    .line 557
    :goto_a1
    if-eqz v4, :cond_b0

    .line 559
    :try_start_a3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_b0

    .line 563
    :catch_a7
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 565
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 567
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b0
    :goto_b0
    nop

    .line 571
    :goto_b1
    if-eqz v5, :cond_70

    .line 573
    :try_start_b3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_71

    goto :goto_70

    .line 591
    :goto_b7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 595
    .local v1, "length":J
    cmp-long v3, v1, v11

    if-nez v3, :cond_c7

    .line 597
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 601
    :cond_c7
    return-void

    .line 543
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "length":J
    :goto_c8
    if-eqz v6, :cond_d7

    .line 545
    :try_start_ca
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    goto :goto_d7

    .line 549
    :catch_ce
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 551
    .local v0, "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 553
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d7
    :goto_d7
    nop

    .line 557
    :goto_d8
    if-eqz v4, :cond_e7

    .line 559
    :try_start_da
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_e7

    .line 563
    :catch_de
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 565
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 567
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e7
    :goto_e7
    nop

    .line 571
    :goto_e8
    if-eqz v5, :cond_f7

    .line 573
    :try_start_ea
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee

    goto :goto_f7

    .line 577
    :catch_ee
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 579
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f8

    .line 581
    .end local v0    # "e":Ljava/io/IOException;
    :cond_f7
    :goto_f7
    nop

    .line 583
    :goto_f8
    throw v11
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontName"    # Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v1, "createFontDirectory : Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/app_fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "newFontDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 186
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 187
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 188
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 190
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v2, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "tmp":[Ljava/lang/String;
    if-nez v3, :cond_40

    .line 197
    const/4 v4, 0x0

    return-object v4

    .line 200
    :cond_40
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_41
    array-length v5, v3

    if-ge v4, v5, :cond_4c

    .line 204
    aget-object v5, v3, v4

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 212
    .end local v4    # "i":I
    :cond_4c
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 213
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "Font directory  : Created"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 215
    :cond_5a
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "Font directory  : Not Created"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_61
    :try_start_61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 223
    .local v4, "run":Ljava/lang/Runtime;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 711 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 227
    .local v6, "myProcess":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 229
    invoke-virtual {v6}, Ljava/lang/Process;->exitValue()I

    move-result v7

    if-nez v7, :cond_88

    .end local v4    # "run":Ljava/lang/Runtime;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "myProcess":Ljava/lang/Process;
    goto :goto_a1

    .line 231
    .restart local v4    # "run":Ljava/lang/Runtime;
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v6    # "myProcess":Ljava/lang/Process;
    :cond_88
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot chmod"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "newFontDir":Ljava/io/File;
    .end local v2    # "fontFile":Ljava/io/File;
    .end local v3    # "tmp":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/enterprise/general/FontWriter;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "fontName":Ljava/lang/String;
    throw v7
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_90} :catch_99
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_90} :catch_90

    .line 243
    .end local v4    # "run":Ljava/lang/Runtime;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "myProcess":Ljava/lang/Process;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "newFontDir":Ljava/io/File;
    .restart local v2    # "fontFile":Ljava/io/File;
    .restart local v3    # "tmp":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/enterprise/general/FontWriter;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "fontName":Ljava/lang/String;
    :catch_90
    move-exception v4

    .line 245
    .local v4, "iEx":Ljava/lang/InterruptedException;
    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "InterruptedException : "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    .line 237
    .end local v4    # "iEx":Ljava/lang/InterruptedException;
    :catch_99
    move-exception v4

    .line 239
    .local v4, "ioEx":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "IOException : "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v4    # "ioEx":Ljava/io/IOException;
    :goto_a1
    nop

    .line 249
    :goto_a2
    return-object v2
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "writeLoc : fOut.close() error"

    const-string/jumbo v1, "writeLoc : osw.close() error"

    const-string v2, ""

    .line 111
    .local v2, "absolutePath":Ljava/lang/String;
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/app_fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "sFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v4, "dest":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 116
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 118
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 120
    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 126
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5c} :catch_7f
    .catchall {:try_start_8 .. :try_end_5c} :catchall_7d

    .line 139
    .end local v3    # "sFile":Ljava/lang/String;
    .end local v4    # "dest":Ljava/io/File;
    :try_start_5c
    iget-object v3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_65

    .line 141
    iget-object v3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_65} :catch_66

    .line 149
    :cond_65
    goto :goto_6c

    .line 145
    :catch_66
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6c
    :try_start_6c
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_75

    .line 155
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_75} :catch_76

    .line 163
    :cond_75
    :goto_75
    goto :goto_9d

    .line 159
    :catch_76
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_9d

    .line 137
    :catchall_7d
    move-exception v3

    goto :goto_a9

    .line 129
    :catch_7f
    move-exception v3

    .line 131
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_80
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_7d

    .line 139
    .end local v3    # "ex":Ljava/lang/Exception;
    :try_start_83
    iget-object v3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_8c

    .line 141
    iget-object v3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8c} :catch_8d

    .line 149
    :cond_8c
    goto :goto_93

    .line 145
    :catch_8d
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v3    # "e":Ljava/io/IOException;
    :goto_93
    :try_start_93
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_75

    .line 155
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9c} :catch_76

    goto :goto_75

    .line 167
    :goto_9d
    const-string/jumbo v0, "persist.sys.flipfontpath"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 170
    return-void

    .line 139
    :goto_a9
    :try_start_a9
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_b2

    .line 141
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b2} :catch_b3

    .line 149
    :cond_b2
    goto :goto_b9

    .line 145
    :catch_b3
    move-exception v4

    .line 147
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v4    # "e":Ljava/io/IOException;
    :goto_b9
    :try_start_b9
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_c2

    .line 155
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c2} :catch_c3

    .line 163
    :cond_c2
    goto :goto_c9

    .line 159
    :catch_c3
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    :goto_c9
    throw v3
.end method
