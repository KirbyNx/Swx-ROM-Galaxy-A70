.class public Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;,
        Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final KEYGUARD_CONFIG_NAME:Ljava/lang/String; = "keyguardConfig"

.field private static final ODE_CONFIG_NAME:Ljava/lang/String; = "odeConfig"

.field public static final SCP_NONE:Ljava/lang/String; = "NONE"

.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final SCP_TYPE_A:Ljava/lang/String; = "SCP11a"

.field public static final SCP_TYPE_B:Ljava/lang/String; = "SCP11b"

.field public static final SCP_TYPE_CUSTOM:Ljava/lang/String; = "SCPCustom"

.field public static final STORAGE_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPE_ESE:I = 0x0

.field public static final STORAGE_TYPE_ESE_1:I = 0x3

.field public static final STORAGE_TYPE_ESE_1_NAME:Ljava/lang/String; = "eSE1"

.field public static final STORAGE_TYPE_ESE_2:I = 0x6

.field public static final STORAGE_TYPE_ESE_2_NAME:Ljava/lang/String; = "eSE2"

.field public static final STORAGE_TYPE_ESE_NAME:Ljava/lang/String; = "eSE"

.field public static final STORAGE_TYPE_ETC:I = 0x9

.field public static final STORAGE_TYPE_ETC_NAME:Ljava/lang/String; = "ETC"

.field public static final STORAGE_TYPE_MAX:I = 0xa

.field public static final STORAGE_TYPE_MICROSD:I = 0x2

.field public static final STORAGE_TYPE_MICROSD_1:I = 0x5

.field public static final STORAGE_TYPE_MICROSD_1_NAME:Ljava/lang/String; = "SD1"

.field public static final STORAGE_TYPE_MICROSD_2:I = 0x8

.field public static final STORAGE_TYPE_MICROSD_2_NAME:Ljava/lang/String; = "SD2"

.field public static final STORAGE_TYPE_MICROSD_NAME:Ljava/lang/String; = "SD"

.field public static final STORAGE_TYPE_NONE:I = -0x1

.field public static final STORAGE_TYPE_UICC:I = 0x1

.field public static final STORAGE_TYPE_UICC_1:I = 0x4

.field public static final STORAGE_TYPE_UICC_1_NAME:Ljava/lang/String; = "SIM1"

.field public static final STORAGE_TYPE_UICC_2:I = 0x7

.field public static final STORAGE_TYPE_UICC_2_NAME:Ljava/lang/String; = "SIM2"

.field public static final STORAGE_TYPE_UICC_NAME:Ljava/lang/String; = "SIM"

.field private static final TAG:Ljava/lang/String; = "EFSProperties"


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 46
    const-string v0, "eSE"

    const-string v1, "SIM"

    const-string v2, "SD"

    const-string v3, "eSE1"

    const-string v4, "SIM1"

    const-string v5, "SD1"

    const-string v6, "eSE2"

    const-string v7, "SIM2"

    const-string v8, "SD2"

    const-string v9, "ETC"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    .line 47
    const-string v0, "NONE"

    const-string v1, "SCP11a"

    const-string v2, "SCP11b"

    const-string v3, "SCPCustom"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B

    .line 342
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_34

    .line 346
    .local v0, "DIGITS":[C
    if-nez p0, :cond_b

    .line 347
    const/4 v1, 0x0

    return-object v1

    .line 350
    :cond_b
    array-length v1, p0

    .line 351
    .local v1, "l":I
    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [C

    .line 354
    .local v2, "out":[C
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_12
    if-ge v3, v1, :cond_2d

    .line 355
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v0, v6

    aput-char v6, v2, v4

    .line 356
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v2, v5

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 359
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_2d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    nop

    :array_34
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .registers 2
    .param p0, "keyguard"    # Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    .line 513
    const/4 v0, 0x1

    return v0
.end method

.method public static deleteKeyguardConfig()Z
    .registers 4

    .line 432
    const/4 v0, 0x1

    .line 433
    .local v0, "deleteFile":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "keyguardConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v1, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 436
    .local v2, "existFile":Z
    if-eqz v2, :cond_1c

    .line 437
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 438
    if-nez v0, :cond_1c

    .line 439
    const-string v3, "failed to delete the existing keyguard config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    .line 443
    :cond_1c
    return v0
.end method

.method public static deleteODEConfig()Z
    .registers 4

    .line 190
    const/4 v0, 0x1

    .line 191
    .local v0, "deleteFile":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v1, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 194
    .local v2, "existFile":Z
    if-eqz v2, :cond_1c

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 196
    if-nez v0, :cond_1c

    .line 197
    const-string v3, "failed to delete the existing ODE config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 201
    :cond_1c
    return v0
.end method

.method public static loadKeyguardConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .registers 11

    .line 363
    const-string v0, "load Keyguard config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "keyguardConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .local v0, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 366
    .local v1, "existFile":Z
    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 367
    const-string v3, "Keyguard config file does not exist"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 368
    return-object v2

    .line 371
    :cond_1b
    const/4 v3, 0x0

    .line 372
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 374
    .local v4, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :try_start_1d
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 375
    new-instance v5, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    invoke-direct {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>()V

    move-object v4, v5

    .line 377
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v5
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2d} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_d8
    .catchall {:try_start_1d .. :try_end_2d} :catchall_d6

    .line 378
    .local v5, "lengthCSName":I
    const-string v6, "EFSProperties"

    if-lez v5, :cond_c6

    .line 379
    :try_start_31
    new-array v7, v5, [B

    .line 381
    .local v7, "csTemp":[B
    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    .line 382
    .local v9, "tempSize":I
    if-eq v9, v5, :cond_4a

    .line 383
    const-string v8, "csTemp length is not proper"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3f} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3f} :catch_d8
    .catchall {:try_start_31 .. :try_end_3f} :catchall_d6

    .line 384
    nop

    .line 419
    nop

    .line 421
    :try_start_41
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    .line 424
    goto :goto_49

    .line 422
    :catch_45
    move-exception v6

    .line 423
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 384
    .end local v6    # "e":Ljava/io/IOException;
    :goto_49
    return-object v2

    .line 386
    :cond_4a
    :try_start_4a
    iput-object v7, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 387
    .end local v7    # "csTemp":[B
    .end local v9    # "tempSize":I
    nop

    .line 391
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v7

    .line 392
    .local v7, "lengthAID":I
    if-lez v7, :cond_b6

    .line 393
    new-array v9, v7, [B

    iput-object v9, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    .line 394
    iget-object v9, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v3, v9, v8, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .line 395
    .local v8, "readByteSize":I
    if-eq v8, v7, :cond_86

    .line 396
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read side mismatched, lengthAID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", readByteSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_7b} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7b} :catch_d8
    .catchall {:try_start_4a .. :try_end_7b} :catchall_d6

    .line 397
    nop

    .line 419
    nop

    .line 421
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 424
    goto :goto_85

    .line 422
    :catch_81
    move-exception v6

    .line 423
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 397
    .end local v6    # "e":Ljava/io/IOException;
    :goto_85
    return-object v2

    .line 399
    .end local v8    # "readByteSize":I
    :cond_86
    nop

    .line 403
    :try_start_87
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v6

    .line 404
    .local v6, "storageType":I
    iput v6, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    .line 405
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 406
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 407
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 408
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 409
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v4, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_ab} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_ab} :catch_d8
    .catchall {:try_start_87 .. :try_end_ab} :catchall_d6

    .line 419
    .end local v5    # "lengthCSName":I
    .end local v6    # "storageType":I
    .end local v7    # "lengthAID":I
    nop

    .line 421
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    .line 424
    :goto_af
    goto :goto_b5

    .line 422
    :catch_b0
    move-exception v2

    .line 423
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_af

    .line 428
    :goto_b5
    return-object v4

    .line 400
    .restart local v5    # "lengthCSName":I
    .restart local v7    # "lengthAID":I
    :cond_b6
    :try_start_b6
    const-string v8, "AID length is not proper"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bb} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bb} :catch_d8
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_d6

    .line 401
    nop

    .line 419
    nop

    .line 421
    :try_start_bd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    .line 424
    goto :goto_c5

    .line 422
    :catch_c1
    move-exception v6

    .line 423
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 401
    .end local v6    # "e":Ljava/io/IOException;
    :goto_c5
    return-object v2

    .line 388
    .end local v7    # "lengthAID":I
    :cond_c6
    :try_start_c6
    const-string v7, "CS Name length is not proper"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_cb} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cb} :catch_d8
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_d6

    .line 389
    nop

    .line 419
    nop

    .line 421
    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    .line 424
    goto :goto_d5

    .line 422
    :catch_d1
    move-exception v6

    .line 423
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 389
    .end local v6    # "e":Ljava/io/IOException;
    :goto_d5
    return-object v2

    .line 419
    .end local v5    # "lengthCSName":I
    :catchall_d6
    move-exception v2

    goto :goto_102

    .line 414
    :catch_d8
    move-exception v5

    .line 415
    .local v5, "e":Ljava/lang/Exception;
    :try_start_d9
    const-string v6, "loadKeyguardConfig : Exception"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e1
    .catchall {:try_start_d9 .. :try_end_e1} :catchall_d6

    .line 417
    nop

    .line 419
    if-eqz v3, :cond_ec

    .line 421
    :try_start_e4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    .line 424
    goto :goto_ec

    .line 422
    :catch_e8
    move-exception v6

    .line 423
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 417
    .end local v6    # "e":Ljava/io/IOException;
    :cond_ec
    :goto_ec
    return-object v2

    .line 410
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_ed
    move-exception v5

    .line 411
    .local v5, "e":Ljava/io/IOException;
    :try_start_ee
    const-string v6, "loadKeyguardConfig : IOException"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f6
    .catchall {:try_start_ee .. :try_end_f6} :catchall_d6

    .line 413
    nop

    .line 419
    if-eqz v3, :cond_101

    .line 421
    :try_start_f9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    .line 424
    goto :goto_101

    .line 422
    :catch_fd
    move-exception v6

    .line 423
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 413
    .end local v6    # "e":Ljava/io/IOException;
    :cond_101
    :goto_101
    return-object v2

    .line 419
    .end local v5    # "e":Ljava/io/IOException;
    :goto_102
    if-eqz v3, :cond_10c

    .line 421
    :try_start_104
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_108

    .line 424
    goto :goto_10c

    .line 422
    :catch_108
    move-exception v5

    .line 423
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    .end local v5    # "e":Ljava/io/IOException;
    :cond_10c
    :goto_10c
    throw v2
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .registers 20

    .line 50
    const-string v0, "load ODE config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "odeConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 52
    .local v1, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 53
    .local v2, "existFile":Z
    if-nez v2, :cond_20

    .line 54
    const-string v0, "ODE config file does not exist"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    return-object v0

    .line 58
    :cond_20
    const/4 v3, 0x0

    .line 59
    .local v3, "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    const/4 v4, 0x0

    .line 61
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_22
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 63
    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    move-object v3, v0

    .line 64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0

    iput v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 65
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_38} :catch_25d

    .line 66
    .local v0, "lengthAID":I
    const-string v5, ", readByteSize : "

    const-string v6, "EFSProperties"

    const/4 v7, 0x0

    if-eqz v0, :cond_6b

    .line 67
    :try_start_3f
    new-array v8, v0, [B

    iput-object v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 68
    iget-object v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v4, v8, v7, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .line 69
    .local v8, "readByteSize":I
    if-eq v8, v0, :cond_6b

    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read side mismatched, lengthAID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_65} :catch_66

    goto :goto_6b

    .line 173
    .end local v0    # "lengthAID":I
    .end local v8    # "readByteSize":I
    :catch_66
    move-exception v0

    move-object/from16 v19, v1

    goto/16 :goto_260

    .line 73
    .restart local v0    # "lengthAID":I
    :cond_6b
    :goto_6b
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 74
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 75
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 76
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 77
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 78
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 79
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 80
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 81
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 83
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_a5} :catch_25d

    .line 84
    .local v8, "lengthCsName":I
    if-eqz v8, :cond_cd

    .line 85
    :try_start_a7
    new-array v9, v8, [B

    iput-object v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 86
    iget-object v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v4, v9, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    .line 87
    .local v9, "readByteSize":I
    if-eq v9, v8, :cond_cd

    .line 88
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read side mismatched, lengthCsName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_cd} :catch_66

    .line 92
    .end local v9    # "readByteSize":I
    :cond_cd
    :try_start_cd
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v9

    iput v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 93
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v9

    iput v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 94
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v9
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_dd} :catch_25d

    .line 95
    .local v9, "lenCertAlias":I
    if-eqz v9, :cond_105

    .line 96
    :try_start_df
    new-array v10, v9, [B

    iput-object v10, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 97
    iget-object v10, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v4, v10, v7, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    .line 98
    .local v10, "readByteSize":I
    if-eq v10, v9, :cond_105

    .line 99
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "read side mismatched, lenCertAlias : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_105} :catch_66

    .line 102
    .end local v10    # "readByteSize":I
    :cond_105
    :try_start_105
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v10
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_109} :catch_25d

    .line 103
    .local v10, "lenCertLocation":I
    if-eqz v10, :cond_131

    .line 104
    :try_start_10b
    new-array v11, v10, [B

    iput-object v11, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 105
    iget-object v11, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v4, v11, v7, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    .line 106
    .local v11, "readByteSize":I
    if-eq v11, v10, :cond_131

    .line 107
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "read side mismatched, lenCertLocation : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_131} :catch_66

    .line 111
    .end local v11    # "readByteSize":I
    :cond_131
    :try_start_131
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v11
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_135} :catch_25d

    .line 112
    .local v11, "lenConfiguratorPkgLen":I
    if-eqz v11, :cond_15d

    .line 113
    :try_start_137
    new-array v12, v11, [B

    iput-object v12, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 114
    iget-object v12, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v4, v12, v7, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v12

    .line 115
    .local v12, "readByteSize":I
    if-eq v12, v11, :cond_15d

    .line 116
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read side mismatched, lenConfiguratorPkgLen : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_15d} :catch_66

    .line 120
    .end local v12    # "readByteSize":I
    :cond_15d
    :try_start_15d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v12
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_161} :catch_25d

    .line 121
    .local v12, "lenConfiguratorDigestLen":I
    if-eqz v12, :cond_189

    .line 122
    :try_start_163
    new-array v13, v12, [B

    iput-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 123
    iget-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v4, v13, v7, v12}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    .line 124
    .local v13, "readByteSize":I
    if-eq v13, v12, :cond_189

    .line 125
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "read side mismatched, lenConfiguratorDigestLen : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_189} :catch_66

    .line 129
    .end local v13    # "readByteSize":I
    :cond_189
    const/4 v13, 0x2

    :try_start_18a
    new-array v14, v13, [B

    .line 130
    .local v14, "paramLen":[B
    invoke-virtual {v4, v14, v7, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15

    if-lt v15, v13, :cond_251

    .line 133
    const/4 v13, 0x0

    .line 134
    .local v13, "lenScpParamLen":I
    aget-byte v15, v14, v7

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v13, v15

    .line 135
    const/4 v15, 0x1

    aget-byte v7, v14, v15
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_19d} :catch_25d

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v13

    .line 137
    .end local v13    # "lenScpParamLen":I
    .local v7, "lenScpParamLen":I
    if-eqz v7, :cond_1cf

    .line 138
    :try_start_1a2
    new-array v13, v7, [B

    iput-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 139
    iget-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    const/4 v15, 0x0

    invoke-virtual {v4, v13, v15, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    .line 140
    .local v13, "readByteSize":I
    if-eq v13, v7, :cond_1cc

    .line 141
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "lengthAID":I
    .local v18, "lengthAID":I
    const-string v0, "read side mismatched, lenScpParamLen : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1cb} :catch_66

    goto :goto_1d1

    .line 140
    .end local v18    # "lengthAID":I
    .restart local v0    # "lengthAID":I
    :cond_1cc
    move/from16 v18, v0

    .end local v0    # "lengthAID":I
    .restart local v18    # "lengthAID":I
    goto :goto_1d1

    .line 137
    .end local v13    # "readByteSize":I
    .end local v18    # "lengthAID":I
    .restart local v0    # "lengthAID":I
    :cond_1cf
    move/from16 v18, v0

    .line 145
    .end local v0    # "lengthAID":I
    .restart local v18    # "lengthAID":I
    :goto_1d1
    :try_start_1d1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 146
    .local v0, "lenPluginSignatureHash":I
    if-lez v0, :cond_204

    .line 147
    new-array v13, v0, [B

    iput-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    .line 148
    iget-object v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const/4 v15, 0x0

    invoke-virtual {v4, v13, v15, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    .line 149
    .restart local v13    # "readByteSize":I
    if-eq v13, v0, :cond_201

    .line 150
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1e9} :catch_25d

    move-object/from16 v19, v1

    .end local v1    # "odeConfigFile":Ljava/io/File;
    .local v19, "odeConfigFile":Ljava/io/File;
    :try_start_1eb
    const-string v1, "read side mismatched, lenPluginSignatureHash : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_206

    .line 149
    .end local v19    # "odeConfigFile":Ljava/io/File;
    .restart local v1    # "odeConfigFile":Ljava/io/File;
    :cond_201
    move-object/from16 v19, v1

    .end local v1    # "odeConfigFile":Ljava/io/File;
    .restart local v19    # "odeConfigFile":Ljava/io/File;
    goto :goto_206

    .line 146
    .end local v13    # "readByteSize":I
    .end local v19    # "odeConfigFile":Ljava/io/File;
    .restart local v1    # "odeConfigFile":Ljava/io/File;
    :cond_204
    move-object/from16 v19, v1

    .line 154
    .end local v1    # "odeConfigFile":Ljava/io/File;
    .restart local v19    # "odeConfigFile":Ljava/io/File;
    :goto_206
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .line 155
    .local v1, "ver":I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_211

    .line 156
    const/4 v13, 0x1

    iput v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    goto :goto_250

    .line 159
    :cond_211
    const/4 v13, 0x1

    iput v1, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 160
    if-gt v1, v13, :cond_217

    .line 161
    goto :goto_250

    .line 163
    :cond_217
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v13

    .line 164
    .local v13, "lenDefaultLanguage":I
    if-lez v13, :cond_24c

    .line 165
    new-array v15, v13, [B

    iput-object v15, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 166
    iget-object v15, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    move/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "lenPluginSignatureHash":I
    .local v17, "lenPluginSignatureHash":I
    invoke-virtual {v4, v15, v0, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 167
    .local v0, "readByteSize":I
    if-eq v0, v13, :cond_249

    .line 168
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    .end local v1    # "ver":I
    .local v16, "ver":I
    const-string v1, "read side mismatched, lenDefaultLanguage : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_250

    .line 167
    .end local v16    # "ver":I
    .restart local v1    # "ver":I
    :cond_249
    move/from16 v16, v1

    .end local v1    # "ver":I
    .restart local v16    # "ver":I
    goto :goto_250

    .line 164
    .end local v16    # "ver":I
    .end local v17    # "lenPluginSignatureHash":I
    .local v0, "lenPluginSignatureHash":I
    .restart local v1    # "ver":I
    :cond_24c
    move/from16 v17, v0

    move/from16 v16, v1

    .line 176
    .end local v0    # "lenPluginSignatureHash":I
    .end local v1    # "ver":I
    .end local v7    # "lenScpParamLen":I
    .end local v8    # "lengthCsName":I
    .end local v9    # "lenCertAlias":I
    .end local v10    # "lenCertLocation":I
    .end local v11    # "lenConfiguratorPkgLen":I
    .end local v12    # "lenConfiguratorDigestLen":I
    .end local v13    # "lenDefaultLanguage":I
    .end local v14    # "paramLen":[B
    .end local v18    # "lengthAID":I
    :goto_250
    goto :goto_269

    .line 131
    .end local v19    # "odeConfigFile":Ljava/io/File;
    .local v0, "lengthAID":I
    .local v1, "odeConfigFile":Ljava/io/File;
    .restart local v8    # "lengthCsName":I
    .restart local v9    # "lenCertAlias":I
    .restart local v10    # "lenCertLocation":I
    .restart local v11    # "lenConfiguratorPkgLen":I
    .restart local v12    # "lenConfiguratorDigestLen":I
    .restart local v14    # "paramLen":[B
    :cond_251
    move/from16 v18, v0

    move-object/from16 v19, v1

    .end local v0    # "lengthAID":I
    .end local v1    # "odeConfigFile":Ljava/io/File;
    .restart local v18    # "lengthAID":I
    .restart local v19    # "odeConfigFile":Ljava/io/File;
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .end local v2    # "existFile":Z
    .end local v3    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v19    # "odeConfigFile":Ljava/io/File;
    throw v0
    :try_end_25b
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_25b} :catch_25b

    .line 173
    .end local v8    # "lengthCsName":I
    .end local v9    # "lenCertAlias":I
    .end local v10    # "lenCertLocation":I
    .end local v11    # "lenConfiguratorPkgLen":I
    .end local v12    # "lenConfiguratorDigestLen":I
    .end local v14    # "paramLen":[B
    .end local v18    # "lengthAID":I
    .restart local v2    # "existFile":Z
    .restart local v3    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "odeConfigFile":Ljava/io/File;
    :catch_25b
    move-exception v0

    goto :goto_260

    .end local v19    # "odeConfigFile":Ljava/io/File;
    .restart local v1    # "odeConfigFile":Ljava/io/File;
    :catch_25d
    move-exception v0

    move-object/from16 v19, v1

    .line 174
    .end local v1    # "odeConfigFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "odeConfigFile":Ljava/io/File;
    :goto_260
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    new-instance v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    move-object v3, v1

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :goto_269
    if-eqz v4, :cond_275

    .line 180
    :try_start_26b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_26e
    .catch Ljava/io/IOException; {:try_start_26b .. :try_end_26e} :catch_26f

    .line 183
    goto :goto_275

    .line 181
    :catch_26f
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 182
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    .end local v0    # "e":Ljava/io/IOException;
    :cond_275
    :goto_275
    return-object v3
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 675
    const-string v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void
.end method

.method public static saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .registers 9
    .param p0, "keyguard"    # Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    .line 447
    const-string v0, "save Keyguard config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "saveConfig":Z
    if-nez p0, :cond_e

    .line 451
    const-string v1, "KeyguardProperties is null"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 452
    return v0

    .line 455
    :cond_e
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 456
    const-string v1, "checkKeyguardProperty false"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 457
    return v0

    .line 460
    :cond_1a
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "keyguardConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .local v1, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 462
    .local v2, "existFile":Z
    if-eqz v2, :cond_35

    .line 463
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 464
    .local v3, "deleteFile":Z
    if-nez v3, :cond_35

    .line 465
    const-string v4, "failed to delete the existing Keyguard ODE config file"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 466
    return v0

    .line 470
    .end local v3    # "deleteFile":Z
    :cond_35
    const/4 v3, 0x0

    .line 472
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_36
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 474
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 475
    .local v4, "csName":[B
    array-length v5, v4

    .line 476
    .local v5, "lengthcsName":I
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 477
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 478
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    if-eqz v7, :cond_5b

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v7, v7

    if-lez v7, :cond_5b

    .line 479
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 480
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_5e

    .line 482
    :cond_5b
    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 484
    :goto_5e
    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 485
    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 486
    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 487
    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 488
    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 489
    iget v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_7c} :catch_93
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_7c} :catch_84
    .catchall {:try_start_36 .. :try_end_7c} :catchall_82

    .line 490
    const/4 v0, 0x1

    .line 498
    .end local v4    # "csName":[B
    .end local v5    # "lengthcsName":I
    nop

    .line 500
    :try_start_7e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_a2

    goto :goto_a7

    .line 498
    :catchall_82
    move-exception v4

    goto :goto_a9

    .line 494
    :catch_84
    move-exception v4

    .line 495
    .local v4, "e":Ljava/lang/Exception;
    :try_start_85
    const-string v5, "saveKeyguardConfig : Exception"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_82

    .line 498
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_a8

    .line 500
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_a2

    goto :goto_a7

    .line 491
    :catch_93
    move-exception v4

    .line 492
    .local v4, "e":Ljava/io/IOException;
    :try_start_94
    const-string v5, "saveKeyguardConfig : IOException"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_82

    .line 498
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_a8

    .line 500
    :try_start_9e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_a7

    .line 501
    :catch_a2
    move-exception v4

    .line 502
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 503
    const/4 v0, 0x0

    .line 504
    .end local v4    # "e":Ljava/io/IOException;
    :goto_a7
    nop

    .line 508
    :cond_a8
    return v0

    .line 498
    :goto_a9
    if-eqz v3, :cond_b4

    .line 500
    :try_start_ab
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 504
    goto :goto_b4

    .line 501
    :catch_af
    move-exception v5

    .line 502
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 503
    const/4 v0, 0x0

    .line 506
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b4
    :goto_b4
    throw v4
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .registers 9
    .param p0, "ode"    # Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .line 206
    const-string v0, "save ODE config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "saveConfig":Z
    if-nez p0, :cond_e

    .line 210
    const-string v1, "ODEProperties is null"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 211
    return v0

    .line 216
    :cond_e
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v1, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 218
    .local v2, "existFile":Z
    if-eqz v2, :cond_29

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 220
    .local v3, "deleteFile":Z
    if-nez v3, :cond_29

    .line 221
    const-string v4, "failed to delete the existing ODE config file"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 222
    return v0

    .line 231
    .end local v3    # "deleteFile":Z
    :cond_29
    const/4 v3, 0x0

    .line 233
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 235
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 237
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    const/4 v5, 0x0

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v4, v4

    if-lez v4, :cond_4b

    .line 238
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 239
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_4e

    .line 241
    :cond_4b
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 244
    :goto_4e
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 245
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 246
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 248
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 249
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 250
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 251
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 252
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 253
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 255
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v4, :cond_90

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v4, v4

    if-lez v4, :cond_90

    .line 256
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 257
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_93

    .line 259
    :cond_90
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 262
    :goto_93
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 263
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 264
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    if-eqz v4, :cond_b2

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v4, v4

    if-lez v4, :cond_b2

    .line 265
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 266
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_b5

    .line 268
    :cond_b2
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 270
    :goto_b5
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v4, :cond_ca

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v4, v4

    if-lez v4, :cond_ca

    .line 271
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 272
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_cd

    .line 274
    :cond_ca
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 277
    :goto_cd
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v4, :cond_e2

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v4, v4

    if-lez v4, :cond_e2

    .line 278
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 279
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_e5

    .line 281
    :cond_e2
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 284
    :goto_e5
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    if-eqz v4, :cond_fa

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v4, v4

    if-lez v4, :cond_fa

    .line 285
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 286
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_fd

    .line 288
    :cond_fa
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 291
    :goto_fd
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    if-eqz v4, :cond_127

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v4, v4

    if-lez v4, :cond_127

    .line 292
    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 293
    .local v4, "paramLength":[B
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v6, v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 294
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v7, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 295
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 296
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 297
    .end local v4    # "paramLength":[B
    goto :goto_12d

    .line 299
    :cond_127
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 300
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 303
    :goto_12d
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    if-eqz v4, :cond_142

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    array-length v4, v4

    if-lez v4, :cond_142

    .line 304
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 305
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_145

    .line 307
    :cond_142
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 310
    :goto_145
    iget v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 311
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    if-eqz v4, :cond_15e

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    array-length v4, v4

    if-lez v4, :cond_15e

    .line 312
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 313
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_15e
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_15e} :catch_169
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_15e} :catch_160

    .line 315
    :cond_15e
    const/4 v0, 0x1

    goto :goto_171

    .line 321
    :catch_160
    move-exception v4

    .line 323
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 324
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 325
    const/4 v0, 0x0

    goto :goto_172

    .line 316
    .end local v4    # "e":Ljava/io/IOException;
    :catch_169
    move-exception v4

    .line 318
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 319
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 320
    const/4 v0, 0x0

    .line 326
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_171
    nop

    .line 328
    :goto_172
    if-eqz v3, :cond_17d

    .line 330
    :try_start_174
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_178

    .line 335
    goto :goto_17d

    .line 331
    :catch_178
    move-exception v4

    .line 333
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 334
    const/4 v0, 0x0

    .line 338
    .end local v4    # "e":Ljava/io/IOException;
    :cond_17d
    :goto_17d
    return v0
.end method
