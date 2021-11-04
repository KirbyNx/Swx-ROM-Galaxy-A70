.class public Lcom/android/server/locksettings/SyntheticPasswordCrypto;
.super Ljava/lang/Object;
.source "SyntheticPasswordCrypto.java"


# static fields
.field private static final AES_KEY_LENGTH:I = 0x20

.field private static final APPLICATION_ID_PERSONALIZATION:[B

.field private static final DEFAULT_TAG_LENGTH_BITS:I = 0x80

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordCrypto"

.field private static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordCrypto.SDP"

.field private static final USER_AUTHENTICATION_VALIDITY:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const-string v0, "application-id"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KBKDF([B[B[BI)[B
    .registers 6
    .param p0, "key"    # [B
    .param p1, "label"    # [B
    .param p2, "context"    # [B
    .param p3, "outLen"    # I

    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, "ret":[B
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeKBKDF([B[B[BI)[B

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    move-object v0, v1

    .line 524
    goto :goto_b

    .line 522
    :catchall_7
    move-exception v1

    .line 523
    .local v1, "error":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 525
    .end local v1    # "error":Ljava/lang/Throwable;
    :goto_b
    return-object v0
.end method

.method public static KDF([B[B[BI)[B
    .registers 6
    .param p0, "key"    # [B
    .param p1, "label"    # [B
    .param p2, "context"    # [B
    .param p3, "outLen"    # I

    .line 509
    const/4 v0, 0x0

    .line 511
    .local v0, "ret":[B
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeKDF([B[B[BI)[B

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    move-object v0, v1

    .line 514
    goto :goto_b

    .line 512
    :catchall_7
    move-exception v1

    .line 513
    .local v1, "error":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 515
    .end local v1    # "error":Ljava/lang/Throwable;
    :goto_b
    return-object v0
.end method

.method public static PBKDF2([B[BII)[B
    .registers 6
    .param p0, "password"    # [B
    .param p1, "salt"    # [B
    .param p2, "iteration"    # I
    .param p3, "outLen"    # I

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "ret":[B
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativePBKDF2([B[BII)[B

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    move-object v0, v1

    .line 504
    goto :goto_b

    .line 502
    :catchall_7
    move-exception v1

    .line 503
    .local v1, "error":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 505
    .end local v1    # "error":Ljava/lang/Throwable;
    :goto_b
    return-object v0
.end method

.method public static RBG(I)[B
    .registers 3
    .param p0, "outLen"    # I

    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "ret":[B
    :try_start_1
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeRBG(I)[B

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    move-object v0, v1

    .line 534
    goto :goto_b

    .line 532
    :catchall_7
    move-exception v1

    .line 533
    .local v1, "error":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 535
    .end local v1    # "error":Ljava/lang/Throwable;
    :goto_b
    return-object v0
.end method

.method public static varargs createBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[BJ[[B)[B
    .registers 11
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "data"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "sid"    # J
    .param p6, "additional"    # [[B

    .line 352
    :try_start_0
    invoke-static {p6}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 353
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v1, 0x20

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 355
    .local v0, "appIdKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p6}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v1

    .line 356
    .local v1, "aad":[B
    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2

    .line 357
    .local v2, "intermediate":[B
    invoke-static {p1, v2, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v3

    return-object v3

    .line 359
    .end local v0    # "appIdKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "aad":[B
    .end local v2    # "intermediate":[B
    :cond_26
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v0, p2, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B[[B)[B

    move-result-object v0

    .line 360
    .local v0, "intermediate":[B
    invoke-static {p1, v0, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object v1

    .line 362
    .end local v0    # "intermediate":[B
    :catch_31
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to encrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createBlob(Ljava/lang/String;[B[BJ)[B
    .registers 12
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "applicationId"    # [B
    .param p3, "sid"    # J

    .line 299
    const/4 v0, 0x1

    new-array v6, v0, [[B

    const/4 v0, 0x0

    check-cast v0, [B

    const/4 v1, 0x0

    aput-object v0, v6, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs createBlob(Ljava/lang/String;[B[BJ[[B)[B
    .registers 14
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "applicationId"    # [B
    .param p3, "sid"    # J
    .param p5, "additional"    # [[B

    .line 306
    const-string v0, "AES"

    :try_start_2
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 307
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v2, 0x100

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 308
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 309
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    const-string v3, "AndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 310
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 311
    new-instance v4, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v5, "GCM"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 312
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v4

    const-string v5, "NoPadding"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v4

    .line 314
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v4

    .line 315
    .local v4, "builder":Landroid/security/keystore/KeyProtection$Builder;
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_50

    .line 316
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    .line 317
    invoke-virtual {v6, p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    const/16 v7, 0xf

    .line 318
    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    .line 321
    :cond_50
    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 323
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    .line 321
    invoke-virtual {v3, p0, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 325
    if-eqz p5, :cond_82

    invoke-static {p5}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 326
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v7, 0x20

    invoke-static {p2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v6

    .line 328
    .local v0, "appIdKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p5}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v6

    .line 329
    .local v6, "aad":[B
    new-array v5, v5, [[B

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0, p1, v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v5

    .line 330
    .local v5, "intermediate":[B
    invoke-static {v2, v5, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v7

    return-object v7

    .line 334
    .end local v0    # "appIdKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "intermediate":[B
    .end local v6    # "aad":[B
    :cond_82
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    .line 335
    .local v0, "intermediate":[B
    invoke-static {v2, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v5
    :try_end_8c
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_8c} :catch_8d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8c} :catch_8d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_8c} :catch_8d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_8c} :catch_8d
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_8c} :catch_8d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_8c} :catch_8d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_8c} :catch_8d
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_8c} :catch_8d
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_8c} :catch_8d

    return-object v5

    .line 337
    .end local v0    # "intermediate":[B
    .end local v1    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v2    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    .end local v4    # "builder":Landroid/security/keystore/KeyProtection$Builder;
    :catch_8d
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SyntheticPasswordCrypto"

    const-string v2, "Failed to create blob"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to encrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 5
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    check-cast v1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static varargs decrypt(Ljavax/crypto/SecretKey;[B[[B)[B
    .registers 9
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "blob"    # [B
    .param p2, "additional"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 81
    if-nez p1, :cond_4

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 85
    .local v0, "iv":[B
    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 86
    .local v1, "ciphertext":[B
    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 88
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v2, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 91
    if-eqz p2, :cond_30

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 92
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 95
    :cond_30
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method public static decrypt([B[B[B)[B
    .registers 6
    .param p0, "keyBytes"    # [B
    .param p1, "personalisation"    # [B
    .param p2, "ciphertext"    # [B

    .line 171
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    check-cast v1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs decrypt([B[B[B[[B)[B
    .registers 10
    .param p0, "keyBytes"    # [B
    .param p1, "personalisation"    # [B
    .param p2, "ciphertext"    # [B
    .param p3, "additional"    # [[B

    .line 176
    const/4 v0, 0x0

    const-string v1, "AES"

    const/16 v2, 0x20

    if-eqz p3, :cond_21

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 177
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v1, v3

    .line 180
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_17
    invoke-static {v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v0
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object v0

    .line 181
    :catch_1c
    move-exception v2

    .line 184
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 185
    return-object v0

    .line 189
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_21
    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v3

    .line 190
    .local v3, "keyHash":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-direct {v4, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v1, v4

    .line 193
    .restart local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_35
    invoke-static {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v0
    :try_end_39
    .catch Ljava/security/InvalidKeyException; {:try_start_35 .. :try_end_39} :catch_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_35 .. :try_end_39} :catch_3a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_35 .. :try_end_39} :catch_3a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_35 .. :try_end_39} :catch_3a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_35 .. :try_end_39} :catch_3a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_35 .. :try_end_39} :catch_3a

    return-object v0

    .line 194
    :catch_3a
    move-exception v2

    .line 197
    .restart local v2    # "e":Ljava/security/GeneralSecurityException;
    const-string v4, "SyntheticPasswordCrypto"

    const-string v5, "Failed to decrypt"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    return-object v0
.end method

.method public static varargs decryptBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B[[B)[B
    .registers 9
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "decryptionKey"    # Ljavax/crypto/SecretKey;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "additional"    # [[B

    .line 281
    const-string v0, "Failed to decrypt blob"

    :try_start_2
    invoke-static {p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v1

    .line 282
    .local v1, "intermediate":[B
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v2, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v0
    :try_end_c
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_c} :catch_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return-object v0

    .line 290
    .end local v1    # "intermediate":[B
    :catch_d
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 283
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_17
    move-exception v1

    .line 284
    .local v1, "e":Ljavax/crypto/AEADBadTagException;
    const-string v2, "SyntheticPasswordCrypto"

    const-string v3, "Authentication failed before decrypt blob"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v1}, Ljavax/crypto/AEADBadTagException;->printStackTrace()V

    .line 286
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 287
    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_2a
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decryptBlob(Ljava/lang/String;[B[B)[B
    .registers 6
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "blob"    # [B
    .param p2, "applicationId"    # [B

    .line 221
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    check-cast v1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs decryptBlob(Ljava/lang/String;[B[B[[B)[B
    .registers 11
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "blob"    # [B
    .param p2, "applicationId"    # [B
    .param p3, "additional"    # [[B

    .line 228
    const-string v0, "Failed to decrypt blob"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 229
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 231
    invoke-virtual {v2, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    .line 232
    .local v3, "decryptionKey":Ljavax/crypto/SecretKey;
    if-eqz v3, :cond_2c

    .line 236
    if-eqz p3, :cond_21

    .line 237
    invoke-static {v3, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v4

    .line 238
    .local v4, "intermediate":[B
    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v5, v4, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v0

    return-object v0

    .line 242
    .end local v4    # "intermediate":[B
    :cond_21
    invoke-static {v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v4

    .line 243
    .restart local v4    # "intermediate":[B
    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v5, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 233
    .end local v4    # "intermediate":[B
    :cond_2c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SP key is missing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "keyAlias":Ljava/lang/String;
    .end local p1    # "blob":[B
    .end local p2    # "applicationId":[B
    .end local p3    # "additional":[[B
    throw v4
    :try_end_43
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_3 .. :try_end_43} :catch_4f
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_43} :catch_43
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_43} :catch_43
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_43} :catch_43
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_43} :catch_43
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_43} :catch_43
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_43} :catch_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_43} :catch_43
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_43} :catch_43
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_43} :catch_43
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_43} :catch_43

    .line 255
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "decryptionKey":Ljavax/crypto/SecretKey;
    .restart local p0    # "keyAlias":Ljava/lang/String;
    .restart local p1    # "blob":[B
    .restart local p2    # "applicationId":[B
    .restart local p3    # "additional":[[B
    :catch_43
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SyntheticPasswordCrypto"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 247
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v2

    .line 248
    .local v2, "e":Ljavax/crypto/AEADBadTagException;
    const-string v3, "SyntheticPasswordCrypto.SDP"

    const-string v4, "Authentication failed before decrypt blob"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v2}, Ljavax/crypto/AEADBadTagException;->printStackTrace()V

    .line 250
    if-eqz p3, :cond_63

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 251
    return-object v1

    .line 253
    :cond_63
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decryptBlobV1(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B)[B
    .registers 7
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "decryptionKey"    # Ljavax/crypto/SecretKey;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B

    .line 269
    :try_start_0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v0, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    .line 270
    .local v0, "intermediate":[B
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 271
    .end local v0    # "intermediate":[B
    :catch_b
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decryptBlobV1(Ljava/lang/String;[B[B)[B
    .registers 8
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "blob"    # [B
    .param p2, "applicationId"    # [B

    .line 204
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 205
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 207
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 208
    .local v1, "decryptionKey":Ljavax/crypto/SecretKey;
    if-eqz v1, :cond_1d

    .line 211
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v2

    .line 212
    .local v2, "intermediate":[B
    invoke-static {v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v3

    return-object v3

    .line 209
    .end local v2    # "intermediate":[B
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SP key is missing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "keyAlias":Ljava/lang/String;
    .end local p1    # "blob":[B
    .end local p2    # "applicationId":[B
    throw v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_34

    .line 213
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v1    # "decryptionKey":Ljavax/crypto/SecretKey;
    .restart local p0    # "keyAlias":Ljava/lang/String;
    .restart local p1    # "blob":[B
    .restart local p2    # "applicationId":[B
    :catch_34
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SyntheticPasswordCrypto"

    const-string v2, "Failed to decrypt V1 blob"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static destroyBlobKey(Ljava/lang/String;)V
    .registers 5
    .param p0, "keyAlias"    # Ljava/lang/String;

    .line 372
    const-string v0, "SyntheticPasswordCrypto"

    :try_start_2
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 373
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 374
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SP key deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_23} :catch_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_23} :catch_24
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_23} :catch_24

    .line 379
    goto :goto_2a

    .line 376
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :catch_24
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to destroy blob"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method private static encrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 5
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    check-cast v1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static varargs encrypt(Ljavax/crypto/SecretKey;[B[[B)[B
    .registers 10
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "blob"    # [B
    .param p2, "additional"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 111
    if-nez p1, :cond_4

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_4
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 117
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 120
    if-eqz p2, :cond_1d

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 121
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 125
    :cond_1d
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 126
    .local v1, "ciphertext":[B
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    .line 127
    .local v2, "iv":[B
    array-length v3, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_69

    .line 130
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v3

    const-class v4, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/GCMParameterSpec;

    .line 132
    .local v3, "spec":Ljavax/crypto/spec/GCMParameterSpec;
    invoke-virtual {v3}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_4e

    .line 135
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 138
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 133
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_4e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid tag length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    .end local v3    # "spec":Ljavax/crypto/spec/GCMParameterSpec;
    :cond_69
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid iv length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static encrypt([B[B[B)[B
    .registers 6
    .param p0, "keyBytes"    # [B
    .param p1, "personalisation"    # [B
    .param p2, "message"    # [B

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    check-cast v1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs encrypt([B[B[B[[B)[B
    .registers 9
    .param p0, "keyBytes"    # [B
    .param p1, "personalisation"    # [B
    .param p2, "message"    # [B
    .param p3, "additional"    # [[B

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 150
    .local v0, "keyHash":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 154
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    if-eqz p3, :cond_1e

    .line 155
    :try_start_19
    invoke-static {v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2

    return-object v2

    .line 159
    :cond_1e
    invoke-static {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2
    :try_end_22
    .catch Ljava/security/InvalidKeyException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljavax/crypto/BadPaddingException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_19 .. :try_end_22} :catch_23

    return-object v2

    .line 161
    :catch_23
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SyntheticPasswordCrypto"

    const-string v4, "Failed to encrypt"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    const/4 v3, 0x0

    return-object v3
.end method

.method public static existsBlobKey(Ljava/lang/String;)Z
    .registers 5
    .param p0, "keyAlias"    # Ljava/lang/String;

    .line 547
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 548
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 549
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 550
    const-string v1, "SyntheticPasswordCrypto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existsBlobKey keyAlias = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_29

    .line 551
    const/4 v1, 0x1

    return v1

    .line 555
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    :cond_28
    goto :goto_2d

    .line 553
    :catch_29
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public static installKnoxKey(Ljava/lang/String;)Z
    .registers 3
    .param p0, "keyAlias"    # Ljava/lang/String;

    .line 459
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->installKnoxKey(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static installKnoxKey(Ljava/lang/String;J)Z
    .registers 12
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "sid"    # J

    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, "result":Z
    :try_start_1
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 467
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v2, 0x100

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 468
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 470
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    const-string v3, "AndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 471
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 472
    new-instance v4, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v5, "GCM"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v4

    const-string v5, "NoPadding"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 474
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v4

    .line 475
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v4

    .line 477
    .local v4, "builder":Landroid/security/keystore/KeyProtection$Builder;
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-eqz v6, :cond_51

    .line 478
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    .line 479
    invoke-virtual {v6, p1, p2}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    const/16 v7, 0xf

    .line 480
    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    .line 483
    :cond_51
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v6

    .line 484
    .local v6, "keyProtection":Landroid/security/keystore/KeyProtection;
    new-instance v7, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;

    invoke-direct {v7}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;-><init>()V

    .line 485
    .local v7, "kSpec":Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    invoke-virtual {v7, v5}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->setKnoxObjectProtectionRequired(Z)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;

    .line 486
    invoke-virtual {v7, v6}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->setKeyProtection(Landroid/security/keystore/KeyProtection;)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;

    .line 488
    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 490
    invoke-virtual {v7}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->build()Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    move-result-object v8

    .line 488
    invoke-virtual {v3, p0, v5, v8}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 491
    invoke-virtual {v3, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v5
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_70} :catch_72

    move v0, v5

    .line 494
    .end local v1    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v2    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    .end local v4    # "builder":Landroid/security/keystore/KeyProtection$Builder;
    .end local v6    # "keyProtection":Landroid/security/keystore/KeyProtection;
    .end local v7    # "kSpec":Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    goto :goto_76

    .line 492
    :catch_72
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 495
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_76
    return v0
.end method

.method public static native nativeKBKDF([B[B[BI)[B
.end method

.method public static native nativeKDF([B[B[BI)[B
.end method

.method public static native nativePBKDF2([B[BII)[B
.end method

.method public static native nativeRBG(I)[B
.end method

.method protected static personalise([BILjava/lang/String;Ljava/lang/String;)[B
    .registers 10
    .param p0, "key"    # [B
    .param p1, "secureMode"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;

    .line 423
    if-eqz p0, :cond_58

    if-eqz p2, :cond_58

    if-eqz p3, :cond_58

    .line 426
    const/4 v0, 0x1

    if-lt p1, v0, :cond_50

    const/4 v1, 0x2

    if-gt p1, v1, :cond_50

    .line 429
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 430
    .local v1, "labelBytes":[B
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 431
    .local v2, "contextBytes":[B
    array-length v3, v1

    const/16 v4, 0x20

    if-gt v3, v4, :cond_48

    array-length v3, v2

    const/16 v5, 0x40

    if-gt v3, v5, :cond_48

    .line 435
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 436
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 439
    if-eq p1, v0, :cond_2d

    .line 444
    invoke-static {p0, v1, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->KBKDF([B[B[BI)[B

    move-result-object v0

    .local v0, "ret":[B
    goto :goto_32

    .line 441
    .end local v0    # "ret":[B
    :cond_2d
    invoke-static {p0, v1, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->KDF([B[B[BI)[B

    move-result-object v0

    .line 442
    .restart local v0    # "ret":[B
    nop

    .line 447
    :goto_32
    if-eqz v0, :cond_40

    .line 450
    array-length v3, v0

    if-le v3, v4, :cond_3f

    .line 451
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 452
    .local v3, "atomic":[B
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    move-object v0, v3

    .line 454
    .end local v3    # "atomic":[B
    :cond_3f
    return-object v0

    .line 448
    :cond_40
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected native error while personalization"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 433
    .end local v0    # "ret":[B
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Personalization too long"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    .end local v1    # "labelBytes":[B
    .end local v2    # "contextBytes":[B
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid secure mode for personalization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Make sure of input parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static varargs personalisedHash([B[[B)[B
    .registers 7
    .param p0, "personalisation"    # [B
    .param p1, "message"    # [[B

    .line 384
    const/16 v0, 0x80

    .line 385
    .local v0, "PADDING_LENGTH":I
    :try_start_2
    const-string v1, "SHA-512"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 386
    .local v1, "digest":Ljava/security/MessageDigest;
    array-length v2, p0

    const/16 v3, 0x80

    if-gt v2, v3, :cond_26

    .line 391
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object p0, v2

    .line 392
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 393
    array-length v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_21

    aget-object v4, p1, v3

    .line 394
    .local v4, "data":[B
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 393
    .end local v4    # "data":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 396
    :cond_21
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    .line 387
    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Personalisation too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "personalisation":[B
    .end local p1    # "message":[[B
    throw v2
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2e} :catch_2e

    .line 397
    .end local v0    # "PADDING_LENGTH":I
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .restart local p0    # "personalisation":[B
    .restart local p1    # "message":[[B
    :catch_2e
    move-exception v0

    .line 398
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static varargs personalizedHash([B[[B)[B
    .registers 7
    .param p0, "personalization"    # [B
    .param p1, "message"    # [[B

    .line 405
    const/16 v0, 0x40

    .line 406
    .local v0, "PADDING_LENGTH":I
    :try_start_2
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 407
    .local v1, "digest":Ljava/security/MessageDigest;
    array-length v2, p0

    const/16 v3, 0x40

    if-gt v2, v3, :cond_26

    .line 412
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object p0, v2

    .line 413
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 414
    array-length v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_21

    aget-object v4, p1, v3

    .line 415
    .local v4, "data":[B
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 414
    .end local v4    # "data":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 417
    :cond_21
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    .line 408
    :cond_26
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Personalization too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "personalization":[B
    .end local p1    # "message":[[B
    throw v2
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2e} :catch_2e

    .line 418
    .end local v0    # "PADDING_LENGTH":I
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .restart local p0    # "personalization":[B
    .restart local p1    # "message":[[B
    :catch_2e
    move-exception v0

    .line 419
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NoSuchAlgorithmException for SHA-256"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
