.class Lcom/android/server/KeyProtector$KeyStore;
.super Ljava/lang/Object;
.source "KeyProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KeyProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyStore"
.end annotation


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    .line 338
    iput p1, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    .line 339
    return-void
.end method


# virtual methods
.method deleteSecretKey(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, "noError":Z
    :try_start_1
    # invokes: Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "entryAlias":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-static {v2, v1, v3}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v2

    move v0, v2

    .line 438
    if-eqz v0, :cond_11

    .line 443
    .end local v1    # "entryAlias":Ljava/lang/String;
    goto :goto_2c

    .line 439
    .restart local v1    # "entryAlias":Ljava/lang/String;
    :cond_11
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v0    # "noError":Z
    .end local p0    # "this":Lcom/android/server/KeyProtector$KeyStore;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_28

    .line 441
    .end local v1    # "entryAlias":Ljava/lang/String;
    .restart local v0    # "noError":Z
    .restart local p0    # "this":Lcom/android/server/KeyProtector$KeyStore;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_28
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2c
    return v0
.end method

.method exists(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 448
    # invokes: Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "entryAlias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/KeyProtector$KeyStore;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 419
    # invokes: Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "entryAlias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/KeyProtector$KeyStore;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 423
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "keyAliasInKeystore":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    .line 425
    invoke-static {v2, v1, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreKey;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_26

    .line 424
    return-object v2

    .line 426
    .end local v1    # "keyAliasInKeystore":Ljava/lang/String;
    :catch_26
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method isSecretKeyEntry(Ljava/lang/String;)Z
    .registers 5
    .param p1, "entryAlias"    # Ljava/lang/String;

    .line 453
    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 453
    :goto_20
    return v0
.end method

.method setSecretKey(Ljava/lang/String;I)Z
    .registers 27
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 342
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 345
    .local v2, "noError":Z
    :try_start_3
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 346
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 347
    new-instance v3, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 348
    .local v3, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v3}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 350
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v9

    .line 352
    .local v9, "keyMaterial":[B
    new-instance v5, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v6, "GCM"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 354
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v5

    const-string v6, "NoPadding"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 355
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v5

    .line 356
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v5

    move-object v13, v5

    .line 358
    .local v13, "params":Landroid/security/keystore/KeyProtection;
    new-instance v5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v14, v5

    .line 359
    .local v14, "args":Landroid/security/keymaster/KeymasterArguments;
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v5

    move v15, v5

    .line 360
    .local v15, "purposes":I
    nop

    .line 361
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v5

    move v12, v5

    .line 362
    .local v12, "keymasterAlgorithm":I
    const/4 v11, 0x0

    new-array v5, v11, [I

    move-object v10, v5

    .line 363
    .local v10, "keymasterDigests":[I
    invoke-static {v15}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v5

    move-object v8, v5

    .line 364
    .local v8, "keymasterPurposes":[I
    const v5, 0x10000002

    invoke-virtual {v14, v5, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 365
    const v5, 0x20000005

    invoke-virtual {v14, v5, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 366
    const v5, 0x20000001

    invoke-virtual {v14, v5, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 368
    nop

    .line 369
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    move-object v7, v5

    .line 370
    .local v7, "keymasterBlockModes":[I
    const v5, 0x20000004

    invoke-virtual {v14, v5, v7}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 371
    const v5, 0x20000006

    .line 372
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6

    .line 371
    invoke-virtual {v14, v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 373
    invoke-static {v14, v13}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V

    .line 374
    invoke-static {v14, v12, v7, v10}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    .line 379
    const v5, 0x60000190

    .line 380
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v6

    .line 379
    invoke-virtual {v14, v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 381
    const v5, 0x60000191

    .line 382
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v6

    .line 381
    invoke-virtual {v14, v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 383
    const v5, 0x60000192

    .line 384
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v6

    .line 383
    invoke-virtual {v14, v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 386
    and-int/lit8 v5, v15, 0x1

    if-eqz v5, :cond_c3

    .line 387
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v5

    if-nez v5, :cond_c3

    .line 388
    const v5, 0x70000007

    invoke-virtual {v14, v5}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 391
    :cond_c3
    # invokes: Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/android/server/KeyProtector;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "entryAlias":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iget v11, v1, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-static {v6, v5, v11}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRSKEY_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "keyAliasInKeystore":Ljava/lang/String;
    const/16 v17, 0x0

    .line 396
    .local v17, "flags":I
    iget-object v11, v1, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v18, 0x3

    move-object/from16 v19, v8

    .end local v8    # "keymasterPurposes":[I
    .local v19, "keymasterPurposes":[I
    iget v8, v1, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    new-instance v20, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v20 .. v20}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object/from16 v21, v5

    .end local v5    # "entryAlias":Ljava/lang/String;
    .local v21, "entryAlias":Ljava/lang/String;
    move-object v5, v11

    move-object/from16 v22, v7

    .end local v7    # "keymasterBlockModes":[I
    .local v22, "keymasterBlockModes":[I
    move-object v7, v14

    move v11, v8

    move/from16 v8, v18

    move-object/from16 v18, v10

    .end local v10    # "keymasterDigests":[I
    .local v18, "keymasterDigests":[I
    move v10, v11

    const/16 v16, 0x0

    move/from16 v11, v17

    move/from16 v23, v12

    .end local v12    # "keymasterAlgorithm":I
    .local v23, "keymasterAlgorithm":I
    move-object/from16 v12, v20

    invoke-virtual/range {v5 .. v12}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v5

    .line 404
    .local v5, "errorCode":I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_10a

    goto :goto_10c

    :cond_10a
    move/from16 v11, v16

    :goto_10c
    move v2, v11

    if-eqz v11, :cond_113

    .line 406
    # invokes: Lcom/android/server/KeyProtector;->clear([B)V
    invoke-static {v9}, Lcom/android/server/KeyProtector;->access$100([B)V

    .line 413
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v3    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "errorCode":I
    .end local v6    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v9    # "keyMaterial":[B
    .end local v13    # "params":Landroid/security/keystore/KeyProtection;
    .end local v14    # "args":Landroid/security/keymaster/KeymasterArguments;
    .end local v15    # "purposes":I
    .end local v17    # "flags":I
    .end local v18    # "keymasterDigests":[I
    .end local v19    # "keymasterPurposes":[I
    .end local v21    # "entryAlias":Ljava/lang/String;
    .end local v22    # "keymasterBlockModes":[I
    .end local v23    # "keymasterAlgorithm":I
    goto :goto_12e

    .line 408
    .restart local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .restart local v3    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .restart local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local v5    # "errorCode":I
    .restart local v6    # "keyAliasInKeystore":Ljava/lang/String;
    .restart local v9    # "keyMaterial":[B
    .restart local v13    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v14    # "args":Landroid/security/keymaster/KeymasterArguments;
    .restart local v15    # "purposes":I
    .restart local v17    # "flags":I
    .restart local v18    # "keymasterDigests":[I
    .restart local v19    # "keymasterPurposes":[I
    .restart local v21    # "entryAlias":Ljava/lang/String;
    .restart local v22    # "keymasterBlockModes":[I
    .restart local v23    # "keymasterAlgorithm":I
    :cond_113
    new-instance v7, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to import secret key. Keystore error code: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v2    # "noError":Z
    .end local p0    # "this":Lcom/android/server/KeyProtector$KeyStore;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v7
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12a} :catch_12a

    .line 411
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v3    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "errorCode":I
    .end local v6    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v9    # "keyMaterial":[B
    .end local v13    # "params":Landroid/security/keystore/KeyProtection;
    .end local v14    # "args":Landroid/security/keymaster/KeymasterArguments;
    .end local v15    # "purposes":I
    .end local v17    # "flags":I
    .end local v18    # "keymasterDigests":[I
    .end local v19    # "keymasterPurposes":[I
    .end local v21    # "entryAlias":Ljava/lang/String;
    .end local v22    # "keymasterBlockModes":[I
    .end local v23    # "keymasterAlgorithm":I
    .restart local v2    # "noError":Z
    .restart local p0    # "this":Lcom/android/server/KeyProtector$KeyStore;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_12a
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12e
    return v2
.end method
