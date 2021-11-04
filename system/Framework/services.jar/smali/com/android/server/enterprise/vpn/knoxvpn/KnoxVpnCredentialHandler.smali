.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
.super Ljava/lang/Object;
.source "KnoxVpnCredentialHandler.java"


# static fields
.field private static final DBG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "KnoxVpnCredentialHandler"

.field public static final TIMA_DEPRECATED:I = 0x1

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String;

.field private static final USER_ID:I

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field private static mTimaService:Landroid/service/tima/ITimaService;

.field private static timaVersion20:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    .line 59
    const-string v0, "FipsTimaKeyStore"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    .line 60
    const-string v0, "/data/system/vpn/key"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 65
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 71
    return-void
.end method

.method public static clearKey(Ljava/lang/String;)V
    .registers 2
    .param p0, "alias"    # Ljava/lang/String;

    .line 378
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 379
    return-void
.end method

.method private deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    .registers 8
    .param p1, "in"    # Ljava/io/FileInputStream;
    .param p2, "ks"    # Ljava/security/KeyStore;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 573
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p1, v1

    .line 576
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 578
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 579
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 582
    :cond_20
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 583
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_39

    .line 584
    if-eqz p1, :cond_39

    .line 585
    const-string v2, "KnoxVpnCredentialHandler"

    const-string v3, "deleteing key store file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 587
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 590
    :cond_39
    return-void
.end method

.method private generateEcryptfsKey(Ljava/lang/String;)[B
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .line 446
    const-string v0, "HmacSHA256"

    if-nez p1, :cond_6

    .line 447
    const/4 v0, 0x0

    return-object v0

    .line 449
    :cond_6
    const/4 v1, 0x0

    .line 451
    .local v1, "ecryptfsKey":[B
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->generateSalt()[B

    move-result-object v2

    .line 452
    .local v2, "salt":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 453
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AndroidOpenSSL"

    invoke-static {v0, v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 454
    .local v0, "hmac":Ljavax/crypto/Mac;
    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_23

    move-object v1, v4

    .line 460
    .end local v0    # "hmac":Ljavax/crypto/Mac;
    .end local v2    # "salt":[B
    .end local v3    # "key":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_32

    .line 457
    :catch_23
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :cond_2b
    const-string v2, "KnoxVpnCredentialHandler"

    const-string v3, "Error inside generateCMK "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-object v1
.end method

.method private generateSalt()[B
    .registers 3

    .line 476
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 477
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 478
    .local v1, "salt":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 479
    return-object v1
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .registers 5
    .param p1, "personaId"    # I

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "password":Ljava/lang/String;
    const/4 v1, 0x0

    .line 467
    .local v1, "pwd":[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_22

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 469
    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v2

    .line 471
    :cond_22
    const/4 v2, 0x0

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v1, :cond_e

    .line 75
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 77
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 73
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "alias"    # Ljava/lang/String;

    .line 373
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 374
    .local v0, "value":[B
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_11

    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_11
    return-object v1
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 483
    const-string v0, "KnoxVpnCredentialHandler"

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string v2, "N/A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 484
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 485
    :cond_f
    const/4 v1, 0x0

    .line 486
    .local v1, "ks":Ljava/security/KeyStore;
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "tksName":Ljava/lang/String;
    :try_start_14
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    .line 489
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1d
    .catch Ljava/security/KeyStoreException; {:try_start_14 .. :try_end_1d} :catch_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1f

    .line 496
    nop

    .line 497
    return-object v1

    .line 493
    :catch_1f
    move-exception v3

    .line 494
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load TKS instance..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    throw v3

    .line 490
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_35
    move-exception v3

    .line 491
    .local v3, "e":Ljava/security/KeyStoreException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get TKS instance..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    throw v3
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .registers 6

    .line 344
    const-string v0, "N/A"

    .line 345
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7ec2e91

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1e

    const v3, 0xc535

    if-eq v2, v3, :cond_14

    :cond_13
    goto :goto_28

    :cond_14
    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    goto :goto_29

    :cond_1e
    const-string v2, "FIPS3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v4

    goto :goto_29

    :goto_28
    const/4 v1, -0x1

    :goto_29
    if-eqz v1, :cond_31

    if-eq v1, v4, :cond_2e

    goto :goto_34

    .line 350
    :cond_2e
    const-string v0, "FipsTimaKeyStore"

    goto :goto_34

    .line 347
    :cond_31
    const-string v0, "TIMAKeyStore"

    .line 348
    nop

    .line 353
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTimaKeyStoreName() - Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxVpnCredentialHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v0
.end method

.method private static getTimaService()Landroid/service/tima/ITimaService;
    .registers 1

    .line 81
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v0, :cond_11

    .line 82
    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    .line 84
    :cond_11
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    return-object v0
.end method

.method private getTimaStatus()I
    .registers 9

    .line 387
    const-string v0, "KnoxVpnCredentialHandler"

    const/4 v1, -0x1

    .line 388
    .local v1, "timaStatus":I
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string v3, "N/A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 389
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 391
    :cond_10
    :try_start_10
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 392
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7ec2e91

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_43

    const v5, 0xc174

    if-eq v4, v5, :cond_39

    const v5, 0xc535

    if-eq v4, v5, :cond_2f

    :cond_2e
    goto :goto_4c

    :cond_2f
    const-string v4, "3.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v3, v7

    goto :goto_4c

    :cond_39
    const-string v4, "2.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v3, 0x0

    goto :goto_4c

    :cond_43
    const-string v4, "FIPS3.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v3, v6

    :goto_4c
    if-eqz v3, :cond_6e

    if-eq v3, v7, :cond_6c

    if-eq v3, v6, :cond_6a

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 406
    :cond_6a
    const/4 v1, 0x1

    .line 410
    goto :goto_8e

    .line 399
    :cond_6c
    const/4 v1, 0x1

    .line 403
    goto :goto_8e

    .line 394
    :cond_6e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v2

    move v1, v2

    .line 395
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_7e} :catch_87
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_7e} :catch_7f

    .line 396
    goto :goto_8e

    .line 418
    :catch_7f
    move-exception v2

    .line 419
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 416
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_87
    move-exception v2

    .line 417
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_8e
    :goto_8e
    nop

    .line 421
    :goto_8f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaStatus() - Tima Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v1
.end method

.method private initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V
    .registers 5
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "in"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 558
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 560
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p2, v1

    .line 562
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 563
    if-eqz p2, :cond_1c

    .line 564
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 566
    :cond_1c
    return-void
.end method

.method public static isKeyinStore(Ljava/lang/String;[B)Z
    .registers 4
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "key"    # [B

    .line 382
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 383
    .local v0, "Alias":[B
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method private retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 504
    .local v1, "key":[B
    const/16 v2, 0x20

    new-array v3, v2, [B

    .line 505
    .local v3, "ecryptfsKey":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 506
    .local v4, "token":J
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    .line 507
    .local v6, "timaService":Landroid/service/tima/ITimaService;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    .line 508
    .local v7, "profileIndex":I
    if-eqz v6, :cond_5e

    .line 510
    :try_start_14
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v8

    .line 511
    .local v8, "error":I
    const-string v9, "KnoxVpnCredentialHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retrieveCredentialsFromTima20 errorCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-nez v8, :cond_49

    const/4 v9, -0x1

    if-eq v7, v9, :cond_49

    .line 513
    invoke-interface {v6, v7}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v9

    move-object v1, v9

    .line 514
    if-eqz v1, :cond_49

    const/4 v9, 0x0

    aget-byte v10, v1, v9

    if-nez v10, :cond_49

    .line 515
    const/4 v10, 0x1

    invoke-static {v1, v10, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    invoke-static {v3, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 519
    :cond_49
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4c} :catch_50
    .catchall {:try_start_14 .. :try_end_4c} :catchall_4e

    .line 523
    nop

    .end local v8    # "error":I
    goto :goto_55

    :catchall_4e
    move-exception v2

    goto :goto_5a

    .line 520
    :catch_50
    move-exception v2

    .line 521
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_51
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    .line 523
    .end local v2    # "ex":Landroid/os/RemoteException;
    nop

    :goto_55
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    nop

    .line 525
    return-object v0

    .line 523
    :goto_5a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    throw v2

    .line 527
    :cond_5e
    return-object v0
.end method

.method public static setKey(Ljava/lang/String;[B)Z
    .registers 6
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "key"    # [B

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "result":Z
    :try_start_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, p1, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    .line 364
    const/4 v0, 0x1

    .line 367
    goto :goto_15

    .line 365
    :catch_c
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "setKey Exception:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    return v0
.end method

.method private storeCredentials(Ljava/lang/String;[B)Z
    .registers 13
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .line 106
    const-string v0, "KnoxVpnCredentialHandler"

    const/4 v1, 0x0

    .line 107
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 108
    .local v2, "ks":Ljava/security/KeyStore;
    const/4 v3, 0x0

    .line 110
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_31

    if-eq v4, v5, :cond_2b

    packed-switch v4, :pswitch_data_ec

    .line 136
    const-string v4, "Tima status is unknown"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    move-object v2, v4

    .line 138
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    goto :goto_82

    .line 130
    :pswitch_23
    const-string v4, "TIMA Compromised"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    nop

    .line 182
    nop

    .line 131
    return v1

    .line 133
    :cond_2b
    const-string v4, "Tima have been deprecated"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    goto :goto_82

    .line 112
    :cond_31
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x7ec2e91

    const/4 v9, 0x2

    if-eq v7, v8, :cond_5d

    const v8, 0xc174

    if-eq v7, v8, :cond_53

    const v8, 0xc535

    if-eq v7, v8, :cond_49

    :cond_48
    goto :goto_66

    :cond_49
    const-string v7, "3.0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    move v6, v5

    goto :goto_66

    :cond_53
    const-string v7, "2.0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    const/4 v6, 0x0

    goto :goto_66

    :cond_5d
    const-string v7, "FIPS3.0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    move v6, v9

    :goto_66
    if-eqz v6, :cond_c4

    if-eq v6, v5, :cond_7b

    if-eq v6, v9, :cond_75

    .line 122
    const-string/jumbo v4, "unknown TIMA Version"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    nop

    .line 182
    nop

    .line 123
    return v1

    .line 119
    :cond_75
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    move-object v2, v4

    .line 120
    goto :goto_81

    .line 116
    :cond_7b
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    move-object v2, v4

    .line 117
    nop

    .line 125
    :goto_81
    nop

    .line 141
    :goto_82
    if-eqz p2, :cond_e7

    .line 146
    invoke-static {p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->isKeyinStore(Ljava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 147
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->clearKey(Ljava/lang/String;)V

    .line 148
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v4, :cond_a5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearkey storecredential AKS alias::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_a5
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v4, :cond_be

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setkey storecredential AKS alias::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_be
    invoke-static {p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->setKey(Ljava/lang/String;[B)Z

    move-result v0

    move v1, v0

    goto :goto_e7

    .line 114
    :cond_c4
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentialsForTima20(Ljava/lang/String;[B)Z

    move-result v0
    :try_end_c8
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_c8} :catch_da
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c8} :catch_cc
    .catchall {:try_start_5 .. :try_end_c8} :catchall_ca

    .line 182
    nop

    .line 114
    return v0

    .line 171
    :catchall_ca
    move-exception v0

    goto :goto_e9

    .line 167
    :catch_cc
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/Exception;
    :try_start_cd
    const-string v5, "Exception occured while trying to store the info inside keystore"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v0, :cond_e7

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e7

    .line 164
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_da
    move-exception v4

    .line 165
    .local v4, "e":Ljava/security/KeyStoreException;
    const-string v5, "KeyStoreException occured while trying to store the info inside keystore"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v0, :cond_e7

    invoke-virtual {v4}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_e7
    .catchall {:try_start_cd .. :try_end_e7} :catchall_ca

    .line 182
    .end local v4    # "e":Ljava/security/KeyStoreException;
    :cond_e7
    :goto_e7
    nop

    .line 184
    return v1

    .line 182
    :goto_e9
    nop

    .line 183
    throw v0

    nop

    :pswitch_data_ec
    .packed-switch 0x1000c
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private storeCredentialsForTima20(Ljava/lang/String;[B)Z
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 531
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 532
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 533
    .local v1, "profileIndex":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 534
    .local v2, "token":J
    const/4 v4, 0x0

    const-string v5, "KnoxVpnCredentialHandler"

    if-eqz v0, :cond_4f

    .line 536
    :try_start_11
    invoke-interface {v0}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v6

    .line 537
    .local v6, "error":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "storeCredentialsForTima20 errorCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    if-nez v6, :cond_32

    const/4 v5, -0x1

    if-eq v1, v5, :cond_32

    .line 539
    invoke-interface {v0, v1, p2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    .line 541
    :cond_32
    invoke-interface {v0}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_35} :catch_3e
    .catchall {:try_start_11 .. :try_end_35} :catchall_3c

    .line 547
    nop

    .end local v6    # "error":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    nop

    .line 549
    const/4 v4, 0x1

    return v4

    .line 547
    :catchall_3c
    move-exception v4

    goto :goto_4b

    .line 542
    :catch_3e
    move-exception v5

    .line 543
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_3f
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_46

    .line 544
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_3c

    .line 545
    :cond_46
    nop

    .line 547
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 545
    return v4

    .line 547
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_4b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    throw v4

    .line 551
    :cond_4f
    const-string/jumbo v6, "storeCredentialsForTima20 failed returning false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return v4
.end method

.method private updateTimaVersion()V
    .registers 4

    .line 426
    const-string v0, "KnoxVpnCredentialHandler"

    const-string v1, "2.0"

    const-string v2, "N/A"

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    .line 427
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 429
    :try_start_e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    .line 430
    if-eqz v2, :cond_21

    .line 431
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    goto :goto_30

    .line 433
    :cond_21
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 434
    const-string v1, "FIPS3.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    goto :goto_30

    .line 436
    :cond_2c
    const-string v1, "3.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_30} :catch_31

    .line 440
    :goto_30
    goto :goto_38

    .line 438
    :catch_31
    move-exception v1

    .line 439
    .local v1, "re":Ljava/lang/Exception;
    const-string/jumbo v2, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_4f
    return-void
.end method


# virtual methods
.method protected deleteCredentialsFromKeystore(Ljava/lang/String;)V
    .registers 13
    .param p1, "alias"    # Ljava/lang/String;

    .line 266
    const-string v0, "KnoxVpnCredentialHandler"

    const/4 v1, 0x0

    .line 267
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 268
    .local v2, "ks":Ljava/security/KeyStore;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 270
    .local v3, "token":J
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3a

    if-eq v5, v6, :cond_34

    packed-switch v5, :pswitch_data_104

    .line 296
    const-string v5, "Tima status is unknown"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    move-object v2, v5

    .line 298
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_25} :catch_ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_25} :catch_dd
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_25} :catch_ce
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_25} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_b0
    .catchall {:try_start_8 .. :try_end_25} :catchall_ae

    .line 338
    nop

    .line 339
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    return-void

    .line 290
    :pswitch_2a
    :try_start_2a
    const-string v5, "TIMA Compromised"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/security/KeyStoreException; {:try_start_2a .. :try_end_2f} :catch_ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_2f} :catch_dd
    .catch Ljava/security/cert/CertificateException; {:try_start_2a .. :try_end_2f} :catch_ce
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_b0
    .catchall {:try_start_2a .. :try_end_2f} :catchall_ae

    .line 338
    nop

    .line 339
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    return-void

    .line 293
    :cond_34
    :try_start_34
    const-string v5, "Tima have been deprecated"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    goto :goto_8d

    .line 272
    :cond_3a
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x7ec2e91

    const/4 v10, 0x2

    if-eq v8, v9, :cond_66

    const v9, 0xc174

    if-eq v8, v9, :cond_5c

    const v9, 0xc535

    if-eq v8, v9, :cond_52

    :cond_51
    goto :goto_6f

    :cond_52
    const-string v8, "3.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    move v7, v6

    goto :goto_6f

    :cond_5c
    const-string v8, "2.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    const/4 v7, 0x0

    goto :goto_6f

    :cond_66
    const-string v8, "FIPS3.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    move v7, v10

    :goto_6f
    if-eqz v7, :cond_a9

    if-eq v7, v6, :cond_86

    if-eq v7, v10, :cond_80

    .line 282
    const-string/jumbo v5, "unknown TIMA Version"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/security/KeyStoreException; {:try_start_34 .. :try_end_7b} :catch_ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_34 .. :try_end_7b} :catch_dd
    .catch Ljava/security/cert/CertificateException; {:try_start_34 .. :try_end_7b} :catch_ce
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_7b} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_7b} :catch_b0
    .catchall {:try_start_34 .. :try_end_7b} :catchall_ae

    .line 338
    nop

    .line 339
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    return-void

    .line 279
    :cond_80
    :try_start_80
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v5

    move-object v2, v5

    .line 280
    goto :goto_8c

    .line 276
    :cond_86
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v5

    move-object v2, v5

    .line 277
    nop

    .line 285
    :goto_8c
    nop

    .line 303
    :goto_8d
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_a5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deletecredential AKS alias::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_a5
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->clearKey(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/security/KeyStoreException; {:try_start_80 .. :try_end_a8} :catch_ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_80 .. :try_end_a8} :catch_dd
    .catch Ljava/security/cert/CertificateException; {:try_start_80 .. :try_end_a8} :catch_ce
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_a8} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_a8} :catch_b0
    .catchall {:try_start_80 .. :try_end_a8} :catchall_ae

    .line 338
    goto :goto_fa

    :cond_a9
    nop

    .line 339
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    return-void

    .line 327
    :catchall_ae
    move-exception v0

    goto :goto_ff

    .line 323
    :catch_b0
    move-exception v5

    .line 324
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b1
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_b8

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    :cond_b8
    const-string v6, "Exception occured while trying to delete the info from keystore"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_fa

    .line 320
    :catch_bf
    move-exception v5

    .line 321
    .local v5, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_c7

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 322
    :cond_c7
    const-string v6, "IOException occured while trying to delete the info from keystore"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    nop

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_fa

    .line 317
    :catch_ce
    move-exception v5

    .line 318
    .local v5, "e":Ljava/security/cert/CertificateException;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_d6

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 319
    :cond_d6
    const-string v6, "CertificateException occured while trying to delete the info from keystore"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    nop

    .end local v5    # "e":Ljava/security/cert/CertificateException;
    goto :goto_fa

    .line 314
    :catch_dd
    move-exception v5

    .line 315
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_e5

    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 316
    :cond_e5
    const-string v6, "NoSuchAlgorithmException occured while trying to delete the info from keystore"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    nop

    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_fa

    .line 311
    :catch_ec
    move-exception v5

    .line 312
    .local v5, "e":Ljava/security/KeyStoreException;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_f4

    invoke-virtual {v5}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 313
    :cond_f4
    const-string v6, "KeyStoreException occured while trying to delete the info from keystore"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_b1 .. :try_end_f9} :catchall_ae

    .line 338
    nop

    .line 339
    .end local v5    # "e":Ljava/security/KeyStoreException;
    :goto_fa
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    nop

    .line 341
    return-void

    .line 338
    :goto_ff
    nop

    .line 339
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    throw v0

    :pswitch_data_104
    .packed-switch 0x1000c
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method protected retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "alias"    # Ljava/lang/String;

    .line 188
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    const-string v1, "KnoxVpnCredentialHandler"

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrieveCredentialsFromKeystore alias retrieved is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1b
    const/4 v0, 0x0

    .line 190
    .local v0, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 191
    .local v2, "ks":Ljava/security/KeyStore;
    const/4 v3, 0x0

    .line 192
    .local v3, "in":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 194
    .local v4, "token":J
    :try_start_22
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_52

    if-eq v6, v7, :cond_4c

    packed-switch v6, :pswitch_data_f6

    .line 220
    const-string v6, "Tima status is unknown"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    move-object v2, v6

    .line 222
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    goto/16 :goto_a6

    .line 214
    :pswitch_41
    const-string v6, "TIMA Comprimised"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/security/KeyStoreException; {:try_start_22 .. :try_end_46} :catch_de
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_46} :catch_d0
    .catchall {:try_start_22 .. :try_end_46} :catchall_ce

    .line 215
    nop

    .line 259
    nop

    .line 260
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    return-object v0

    .line 217
    :cond_4c
    :try_start_4c
    const-string v6, "Tima have been deprecated"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    goto :goto_a6

    .line 196
    :cond_52
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x7ec2e91

    const/4 v11, 0x2

    if-eq v9, v10, :cond_7e

    const v10, 0xc174

    if-eq v9, v10, :cond_74

    const v10, 0xc535

    if-eq v9, v10, :cond_6a

    :cond_69
    goto :goto_87

    :cond_6a
    const-string v9, "3.0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    move v8, v7

    goto :goto_87

    :cond_74
    const-string v9, "2.0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v8, 0x0

    goto :goto_87

    :cond_7e
    const-string v9, "FIPS3.0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    move v8, v11

    :goto_87
    if-eqz v8, :cond_c5

    if-eq v8, v7, :cond_9f

    if-eq v8, v11, :cond_99

    .line 206
    const-string/jumbo v6, "unknown TIMA Version"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/security/KeyStoreException; {:try_start_4c .. :try_end_93} :catch_de
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_93} :catch_d0
    .catchall {:try_start_4c .. :try_end_93} :catchall_ce

    .line 207
    nop

    .line 259
    nop

    .line 260
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    return-object v0

    .line 203
    :cond_99
    :try_start_99
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v6

    move-object v2, v6

    .line 204
    goto :goto_a5

    .line 200
    :cond_9f
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v6

    move-object v2, v6

    .line 201
    nop

    .line 209
    :goto_a5
    nop

    .line 227
    :goto_a6
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_bf

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "retrivecredential AKS alias::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_bf
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_eb

    .line 198
    :cond_c5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c9
    .catch Ljava/security/KeyStoreException; {:try_start_99 .. :try_end_c9} :catch_de
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_c9} :catch_d0
    .catchall {:try_start_99 .. :try_end_c9} :catchall_ce

    .line 259
    nop

    .line 260
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    return-object v1

    .line 248
    :catchall_ce
    move-exception v1

    goto :goto_f1

    .line 244
    :catch_d0
    move-exception v6

    .line 245
    .local v6, "e":Ljava/lang/Exception;
    :try_start_d1
    const-string v7, "Exception occured while trying to retrieve the info from keystore"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v1, :cond_eb

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_eb

    .line 241
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_de
    move-exception v6

    .line 242
    .local v6, "e":Ljava/security/KeyStoreException;
    const-string v7, "KeyStoreException occured while trying to retrieve the info from keystore"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v1, :cond_eb

    invoke-virtual {v6}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_eb
    .catchall {:try_start_d1 .. :try_end_eb} :catchall_ce

    .line 259
    .end local v6    # "e":Ljava/security/KeyStoreException;
    :cond_eb
    :goto_eb
    nop

    .line 260
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    nop

    .line 262
    return-object v0

    .line 259
    :goto_f1
    nop

    .line 260
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    throw v1

    :pswitch_data_f6
    .packed-switch 0x1000c
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method protected storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "status":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 91
    .local v1, "token":J
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 92
    .local v3, "updatedKey":[B
    if-eqz v3, :cond_34

    .line 93
    const-string v4, "N/A"

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 94
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 96
    :cond_18
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentials(Ljava/lang/String;[B)Z

    move-result v4

    move v0, v4

    .line 97
    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeCredentialsInKeystore status key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_39

    .line 100
    .end local v3    # "updatedKey":[B
    :cond_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    nop

    .line 102
    return v0

    .line 100
    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw v3
.end method
