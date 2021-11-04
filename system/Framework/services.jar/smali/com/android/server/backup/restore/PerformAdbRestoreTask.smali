.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mCurrentPassword:Ljava/lang/String;

.field private final mDecryptPassword:Ljava/lang/String;

.field private final mInputFile:Landroid/os/ParcelFileDescriptor;

.field private final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mPrivilegeApp:Z

.field private restorePass:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .registers 10
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "decryptPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p6, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p7, "privilegeApp"    # Z

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restorePass:Z

    .line 79
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 80
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 81
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 84
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 86
    iput-boolean p7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 87
    invoke-static {}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 88
    const-string v0, "BackupManagerService"

    const-string v1, "Backup Manager Yuva is Supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 91
    :cond_30
    return-void
.end method

.method private static attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 29
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "masterKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    .line 259
    move-object/from16 v1, p1

    move/from16 v2, p4

    const-string v0, "AES"

    const-string v3, "Incorrect password"

    const-string v4, "BackupManagerService"

    const/4 v5, 0x0

    .line 262
    .local v5, "result":Ljava/io/InputStream;
    :try_start_b
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6
    :try_end_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_11} :catch_12e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_11} :catch_121
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_11} :catch_112
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_11} :catch_103
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_11} :catch_f4
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_11} :catch_e5

    .line 263
    .local v6, "c":Ljavax/crypto/Cipher;
    nop

    .line 264
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    :try_start_16
    invoke-static {v1, v7, v8, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 266
    .local v9, "userKey":Ljavax/crypto/SecretKey;
    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 267
    .local v10, "IV":[B
    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 268
    .local v11, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    .line 269
    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 268
    const/4 v13, 0x2

    invoke-virtual {v6, v13, v12, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 271
    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 272
    .local v12, "mkCipher":[B
    invoke-virtual {v6, v12}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 275
    .local v14, "mkBlob":[B
    const/4 v15, 0x0

    .line 276
    .local v15, "offset":I
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "offset":I
    .local v13, "offset":I
    aget-byte v15, v14, v15
    :try_end_3d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_3d} :catch_e3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_16 .. :try_end_3d} :catch_e1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_16 .. :try_end_3d} :catch_df
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_3d} :catch_dd
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_16 .. :try_end_3d} :catch_db
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_3d} :catch_d9

    .line 277
    .local v15, "len":I
    move-object/from16 v16, v5

    .end local v5    # "result":Ljava/io/InputStream;
    .local v16, "result":Ljava/io/InputStream;
    add-int v5, v13, v15

    :try_start_41
    invoke-static {v14, v13, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 278
    .end local v10    # "IV":[B
    .local v5, "IV":[B
    add-int/2addr v13, v15

    .line 280
    add-int/lit8 v10, v13, 0x1

    .end local v13    # "offset":I
    .local v10, "offset":I
    aget-byte v13, v14, v13

    .line 281
    .end local v15    # "len":I
    .local v13, "len":I
    add-int v15, v10, v13

    invoke-static {v14, v10, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 283
    .local v15, "mk":[B
    add-int/2addr v10, v13

    .line 285
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "offset":I
    .local v7, "offset":I
    aget-byte v10, v14, v10

    .line 286
    .end local v13    # "len":I
    .local v10, "len":I
    add-int v13, v7, v10

    invoke-static {v14, v7, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13
    :try_end_5b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_41 .. :try_end_5b} :catch_d4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_41 .. :try_end_5b} :catch_cf
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_41 .. :try_end_5b} :catch_cb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_5b} :catch_c7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_41 .. :try_end_5b} :catch_c3
    .catch Ljava/security/InvalidKeyException; {:try_start_41 .. :try_end_5b} :catch_bf

    .line 290
    .local v13, "mkChecksum":[B
    move/from16 v17, v7

    move-object/from16 v7, p3

    .end local v7    # "offset":I
    .local v17, "offset":I
    :try_start_5f
    invoke-static {v1, v15, v7, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v18

    move-object/from16 v19, v18

    .line 292
    .local v19, "calculatedCk":[B
    move-object/from16 v1, v19

    .end local v19    # "calculatedCk":[B
    .local v1, "calculatedCk":[B
    invoke-static {v1, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18
    :try_end_6b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5f .. :try_end_6b} :catch_bc
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5f .. :try_end_6b} :catch_b9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5f .. :try_end_6b} :catch_b6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5f .. :try_end_6b} :catch_b3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5f .. :try_end_6b} :catch_b1
    .catch Ljava/security/InvalidKeyException; {:try_start_5f .. :try_end_6b} :catch_af

    if-eqz v18, :cond_a4

    .line 293
    move-object/from16 v18, v1

    .end local v1    # "calculatedCk":[B
    .local v18, "calculatedCk":[B
    :try_start_6f
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 294
    .end local v11    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v11, v15, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0, v11, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 298
    new-instance v0, Ljavax/crypto/CipherInputStream;
    :try_end_7f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6f .. :try_end_7f} :catch_9f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6f .. :try_end_7f} :catch_9a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6f .. :try_end_7f} :catch_95
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6f .. :try_end_7f} :catch_90
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6f .. :try_end_7f} :catch_8b
    .catch Ljava/security/InvalidKeyException; {:try_start_6f .. :try_end_7f} :catch_86

    move-object/from16 v11, p7

    :try_start_81
    invoke-direct {v0, v11, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v5, v0

    .end local v16    # "result":Ljava/io/InputStream;
    .local v0, "result":Ljava/io/InputStream;
    goto :goto_ad

    .line 326
    .end local v0    # "result":Ljava/io/InputStream;
    .end local v1    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v9    # "userKey":Ljavax/crypto/SecretKey;
    .end local v10    # "len":I
    .end local v12    # "mkCipher":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkBlob":[B
    .end local v15    # "mk":[B
    .end local v17    # "offset":I
    .end local v18    # "calculatedCk":[B
    .restart local v16    # "result":Ljava/io/InputStream;
    :catch_86
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_ec

    .line 322
    :catch_8b
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_fb

    .line 318
    :catch_90
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_10a

    .line 314
    :catch_95
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_119

    .line 306
    :catch_9a
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_128

    .line 302
    :catch_9f
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_135

    .line 299
    .local v1, "calculatedCk":[B
    .restart local v5    # "IV":[B
    .restart local v6    # "c":Ljavax/crypto/Cipher;
    .restart local v9    # "userKey":Ljavax/crypto/SecretKey;
    .restart local v10    # "len":I
    .restart local v11    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v12    # "mkCipher":[B
    .restart local v13    # "mkChecksum":[B
    .restart local v14    # "mkBlob":[B
    .restart local v15    # "mk":[B
    .restart local v17    # "offset":I
    :cond_a4
    move-object/from16 v18, v1

    .end local v1    # "calculatedCk":[B
    .restart local v18    # "calculatedCk":[B
    if-eqz p8, :cond_ab

    .line 300
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_81 .. :try_end_ab} :catch_bc
    .catch Ljavax/crypto/BadPaddingException; {:try_start_81 .. :try_end_ab} :catch_b9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_81 .. :try_end_ab} :catch_b6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_81 .. :try_end_ab} :catch_b3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_81 .. :try_end_ab} :catch_b1
    .catch Ljava/security/InvalidKeyException; {:try_start_81 .. :try_end_ab} :catch_af

    .line 330
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v9    # "userKey":Ljavax/crypto/SecretKey;
    .end local v10    # "len":I
    .end local v11    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v12    # "mkCipher":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkBlob":[B
    .end local v15    # "mk":[B
    .end local v17    # "offset":I
    .end local v18    # "calculatedCk":[B
    :cond_ab
    move-object/from16 v5, v16

    .end local v16    # "result":Ljava/io/InputStream;
    .local v5, "result":Ljava/io/InputStream;
    :goto_ad
    goto/16 :goto_13f

    .line 326
    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    :catch_af
    move-exception v0

    goto :goto_ec

    .line 322
    :catch_b1
    move-exception v0

    goto :goto_fb

    .line 318
    :catch_b3
    move-exception v0

    goto/16 :goto_10a

    .line 314
    :catch_b6
    move-exception v0

    goto/16 :goto_119

    .line 306
    :catch_b9
    move-exception v0

    goto/16 :goto_128

    .line 302
    :catch_bc
    move-exception v0

    goto/16 :goto_135

    .line 326
    :catch_bf
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_ec

    .line 322
    :catch_c3
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_fb

    .line 318
    :catch_c7
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_10a

    .line 314
    :catch_cb
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_119

    .line 306
    :catch_cf
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_128

    .line 302
    :catch_d4
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_135

    .line 326
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_d9
    move-exception v0

    goto :goto_e8

    .line 322
    :catch_db
    move-exception v0

    goto :goto_f7

    .line 318
    :catch_dd
    move-exception v0

    goto :goto_106

    .line 314
    :catch_df
    move-exception v0

    goto :goto_115

    .line 306
    :catch_e1
    move-exception v0

    goto :goto_124

    .line 302
    :catch_e3
    move-exception v0

    goto :goto_131

    .line 326
    :catch_e5
    move-exception v0

    move-object/from16 v8, p2

    :goto_e8
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 327
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidKeyException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_ec
    if-eqz p8, :cond_13d

    .line 328
    const-string v1, "Illegal password; aborting"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    .line 322
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_f4
    move-exception v0

    move-object/from16 v8, p2

    :goto_f7
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 323
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_fb
    if-eqz p8, :cond_13c

    .line 324
    const-string v1, "Needed padding mechanism unavailable!"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 318
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_103
    move-exception v0

    move-object/from16 v8, p2

    :goto_106
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 319
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_10a
    if-eqz p8, :cond_13c

    .line 320
    const-string v1, "Needed decryption algorithm unavailable!"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 314
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_112
    move-exception v0

    move-object/from16 v8, p2

    :goto_115
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 315
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_119
    if-eqz p8, :cond_13c

    .line 316
    const-string v1, "Invalid block size in master key"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 306
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_121
    move-exception v0

    move-object/from16 v8, p2

    :goto_124
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 311
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_128
    if-eqz p8, :cond_13c

    .line 312
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 302
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_12e
    move-exception v0

    move-object/from16 v8, p2

    :goto_131
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 303
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_135
    if-eqz p8, :cond_13c

    .line 304
    const-string v1, "Needed parameter spec unavailable!"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_13c
    :goto_13c
    nop

    .line 332
    :cond_13d
    :goto_13d
    move-object/from16 v5, v16

    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :goto_13f
    return-object v5
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 27
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    .line 339
    move-object/from16 v1, p1

    const-string v2, "BackupManagerService"

    const/4 v3, 0x0

    .line 341
    .local v3, "result":Ljava/io/InputStream;
    :try_start_5
    const-string v0, "AES-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 343
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "userSaltHex":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 346
    .local v6, "userSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .line 347
    .local v13, "ckSaltHex":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 349
    .local v7, "ckSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 350
    .local v8, "rounds":I
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 352
    .local v9, "userIvHex":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 355
    .local v10, "masterKeyBlobHex":Ljava/lang/String;
    const-string v5, "PBKDF2WithHmacSHA1"

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v11, p3

    invoke-static/range {v4 .. v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 357
    if-nez v3, :cond_55

    if-eqz p2, :cond_55

    .line 358
    const-string v15, "PBKDF2WithHmacSHA1And8bit"

    const/16 v22, 0x1

    move-object/from16 v14, p0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, p3

    invoke-static/range {v14 .. v22}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    .line 362
    .end local v0    # "userSaltHex":Ljava/lang/String;
    .end local v6    # "userSalt":[B
    .end local v7    # "ckSalt":[B
    .end local v8    # "rounds":I
    .end local v9    # "userIvHex":Ljava/lang/String;
    .end local v10    # "masterKeyBlobHex":Ljava/lang/String;
    .end local v13    # "ckSaltHex":Ljava/lang/String;
    :cond_55
    goto :goto_78

    .line 363
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encryption method: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_6a} :catch_72
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6a} :catch_6b

    goto :goto_78

    .line 367
    :catch_6b
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Can\'t read input header"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 365
    .end local v0    # "e":Ljava/io/IOException;
    :catch_72
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Can\'t parse restore data header"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_78
    nop

    .line 371
    :goto_79
    return-object v3
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 15
    .param p0, "rawInputStream"    # Ljava/io/InputStream;
    .param p1, "decryptPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "compressed":Z
    move-object v1, p0

    .line 193
    .local v1, "preCompressStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 194
    .local v2, "okay":Z
    const-string v3, "ANDROID BACKUP\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 195
    .local v4, "headerLen":I
    new-array v5, v4, [B

    .line 196
    .local v5, "streamHeader":[B
    invoke-static {p0, v5}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    .line 197
    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 199
    .local v3, "magicBytes":[B
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const-string v7, "BackupManagerService"

    if-eqz v6, :cond_74

    .line 201
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 203
    .local v8, "archiveVersion":I
    const/4 v9, 0x5

    if-gt v8, v9, :cond_5f

    .line 206
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2d

    move v11, v10

    goto :goto_2e

    :cond_2d
    move v11, v9

    .line 208
    .local v11, "pbkdf2Fallback":Z
    :goto_2e
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_39

    move v9, v10

    :cond_39
    move v0, v9

    .line 210
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 211
    const-string/jumbo v9, "none"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 213
    const/4 v2, 0x1

    goto :goto_5e

    .line 214
    :cond_49
    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_59

    .line 215
    invoke-static {p1, v6, v11, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_5e

    .line 219
    const/4 v2, 0x1

    goto :goto_5e

    .line 222
    :cond_59
    const-string v9, "Archive is encrypted but no password given"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v11    # "pbkdf2Fallback":Z
    :cond_5e
    :goto_5e
    goto :goto_73

    .line 225
    :cond_5f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong header version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "archiveVersion":I
    :goto_73
    goto :goto_79

    .line 228
    :cond_74
    const-string v6, "Didn\'t read the right header magic"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_79
    if-nez v2, :cond_89

    .line 232
    const-string v6, "Invalid restore data; aborting."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v6, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v6, :cond_87

    .line 234
    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    .line 236
    :cond_87
    const/4 v6, 0x0

    return-object v6

    .line 240
    :cond_89
    if-eqz v0, :cond_91

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_92

    :cond_91
    move-object v6, v1

    :goto_92
    return-object v6
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "offset":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 176
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 177
    .local v1, "bytesRead":I
    if-lez v1, :cond_e

    .line 180
    add-int/2addr v0, v1

    .line 181
    .end local v1    # "bytesRead":I
    goto :goto_1

    .line 178
    .restart local v1    # "bytesRead":I
    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Couldn\'t fully read data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    .end local v1    # "bytesRead":I
    :cond_16
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_18

    .line 247
    const/16 v1, 0xa

    if-ne v2, v1, :cond_13

    .line 248
    goto :goto_18

    .line 250
    :cond_13
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 252
    :cond_18
    :goto_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 95
    const-string v0, "BackupManagerService"

    const-string v1, "--- Performing full-dataset restore ---"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 97
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 99
    const/4 v0, 0x0

    .line 102
    .local v0, "rawInStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_17
    iget-boolean v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    if-nez v3, :cond_8f

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 104
    const-string v3, "BackupManagerService"

    const-string v4, "Backup password mismatch; aborting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v3, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_35

    .line 107
    sget-object v3, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_185
    .catchall {:try_start_17 .. :try_end_35} :catchall_183

    .line 146
    :cond_35
    if-eqz v0, :cond_3a

    .line 147
    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_3a
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3f} :catch_40

    .line 153
    goto :goto_48

    .line 150
    :catch_40
    move-exception v3

    .line 151
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    :goto_48
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 155
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 157
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_8c

    .line 158
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 159
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 160
    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_6a

    .line 161
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 163
    :cond_6a
    const-string v2, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 167
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 109
    :cond_8b
    return-void

    .line 157
    :catchall_8c
    move-exception v1

    :try_start_8d
    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v1

    .line 112
    :cond_8f
    :try_start_8f
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 114
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a1} :catch_185
    .catchall {:try_start_8f .. :try_end_a1} :catchall_183

    .line 116
    .local v3, "tarInputStream":Ljava/io/InputStream;
    if-nez v3, :cond_fc

    .line 146
    nop

    .line 147
    :try_start_a4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 149
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ac} :catch_ad

    .line 153
    goto :goto_b5

    .line 150
    :catch_ad
    move-exception v4

    .line 151
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v6, "Close of restore data pipe threw"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v4    # "e":Ljava/io/IOException;
    :goto_b5
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 155
    :try_start_b8
    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 157
    monitor-exit v4
    :try_end_c3
    .catchall {:try_start_b8 .. :try_end_c3} :catchall_f9

    .line 158
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 159
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 160
    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_d7

    .line 161
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 163
    :cond_d7
    const-string v2, "BackupManagerService"

    const-string v4, "Full restore pass complete."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 167
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 119
    :cond_f8
    return-void

    .line 157
    :catchall_f9
    move-exception v1

    :try_start_fa
    monitor-exit v4
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v1

    .line 122
    :cond_fc
    :try_start_fc
    new-instance v4, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZ)V

    .line 124
    .local v4, "mEngine":Lcom/android/server/backup/restore/FullRestoreEngine;
    iget-boolean v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    invoke-virtual {v4, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->setPrivilegeApp(Z)V

    .line 125
    new-instance v5, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-direct {v5, v4, v3}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Ljava/io/InputStream;)V

    .line 127
    .local v5, "mEngineThread":Lcom/android/server/backup/restore/FullRestoreEngineThread;
    invoke-virtual {v5}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->run()V

    .line 129
    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getRestorePass()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restorePass:Z

    .line 130
    if-nez v6, :cond_12a

    .line 131
    sget-object v6, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v6, :cond_12a

    .line 132
    sget-object v6, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_12a} :catch_185
    .catchall {:try_start_fc .. :try_end_12a} :catchall_183

    .line 146
    .end local v3    # "tarInputStream":Ljava/io/InputStream;
    .end local v4    # "mEngine":Lcom/android/server/backup/restore/FullRestoreEngine;
    .end local v5    # "mEngineThread":Lcom/android/server/backup/restore/FullRestoreEngineThread;
    :cond_12a
    nop

    .line 147
    :try_start_12b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 149
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_133} :catch_134

    .line 153
    goto :goto_13c

    .line 150
    :catch_134
    move-exception v3

    .line 151
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    :goto_13c
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 155
    :try_start_13f
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 157
    monitor-exit v3
    :try_end_14a
    .catchall {:try_start_13f .. :try_end_14a} :catchall_180

    .line 158
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 159
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 160
    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_15e

    .line 161
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 163
    :cond_15e
    const-string v2, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1e4

    .line 167
    :goto_176
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    goto :goto_1e4

    .line 157
    :catchall_180
    move-exception v1

    :try_start_181
    monitor-exit v3
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    throw v1

    .line 145
    :catchall_183
    move-exception v3

    goto :goto_1e8

    .line 139
    :catch_185
    move-exception v3

    .line 140
    .local v3, "e":Ljava/lang/Exception;
    :try_start_186
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to read restore input"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v4, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_196

    .line 142
    sget-object v4, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_196
    .catchall {:try_start_186 .. :try_end_196} :catchall_183

    .line 146
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_196
    if-eqz v0, :cond_19b

    .line 147
    :try_start_198
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_19b
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_1a0} :catch_1a1

    .line 153
    goto :goto_1a9

    .line 150
    :catch_1a1
    move-exception v3

    .line 151
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1a9
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 155
    :try_start_1ac
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 157
    monitor-exit v3
    :try_end_1b7
    .catchall {:try_start_1ac .. :try_end_1b7} :catchall_1e5

    .line 158
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 159
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 160
    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_1cb

    .line 161
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 163
    :cond_1cb
    const-string v2, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1e4

    .line 167
    goto :goto_176

    .line 171
    :cond_1e4
    :goto_1e4
    return-void

    .line 157
    :catchall_1e5
    move-exception v1

    :try_start_1e6
    monitor-exit v3
    :try_end_1e7
    .catchall {:try_start_1e6 .. :try_end_1e7} :catchall_1e5

    throw v1

    .line 146
    :goto_1e8
    if-eqz v0, :cond_1ed

    .line 147
    :try_start_1ea
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_1ed
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1f2} :catch_1f3

    .line 153
    goto :goto_1fb

    .line 150
    :catch_1f3
    move-exception v4

    .line 151
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v6, "Close of restore data pipe threw"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1fb
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 155
    :try_start_1fe
    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 157
    monitor-exit v4
    :try_end_209
    .catchall {:try_start_1fe .. :try_end_209} :catchall_23f

    .line 158
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 159
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 160
    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_21d

    .line 161
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 163
    :cond_21d
    const-string v2, "BackupManagerService"

    const-string v4, "Full restore pass complete."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_23e

    .line 167
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 170
    :cond_23e
    throw v3

    .line 157
    :catchall_23f
    move-exception v1

    :try_start_240
    monitor-exit v4
    :try_end_241
    .catchall {:try_start_240 .. :try_end_241} :catchall_23f

    throw v1
.end method
