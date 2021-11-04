.class public Lcom/android/server/emailksproxy/EmailKeystoreService;
.super Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;
.source "EmailKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreStatus;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreErrors;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "EmailKeystoreService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scepuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 390
    if-eqz p0, :cond_70

    .line 393
    invoke-static {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 394
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 395
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v2, Lcom/android/server/emailksproxy/EmailKeystoreService$1;

    invoke-direct {v2, v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 422
    .local v2, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/security/IKeyChainService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v4

    .line 424
    .local v4, "comp":Landroid/content/ComponentName;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 426
    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_45

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyChainConnection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EmailKeystoreService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_45
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 431
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 432
    .local v6, "backupUID":J
    invoke-virtual {p0, v3, v2, v1, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 433
    .local v1, "isBound":Z
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    if-eqz v1, :cond_68

    .line 437
    new-instance v8, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/security/IKeyChainService;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v2, v9, v10}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/emailksproxy/EmailKeystoreService$1;)V

    return-object v8

    .line 435
    :cond_68
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Could not bind to KeyChainService"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 391
    .end local v0    # "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    .end local v1    # "isBound":Z
    .end local v2    # "keyChainServiceConnection":Landroid/content/ServiceConnection;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "comp":Landroid/content/ComponentName;
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "backupUID":J
    :cond_70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private broadcastStorageChange()V
    .registers 3

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method private checkCEPCaller()Z
    .registers 4

    .line 448
    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "actualForSCEP":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 450
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_16

    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 451
    const/4 v2, 0x1

    return v2

    .line 453
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method private checkCaller()Ljava/lang/String;
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "actualPackage":Ljava/lang/String;
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 441
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 442
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_15

    .line 443
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_15
    :goto_15
    return-void
.end method

.method private installCaCertificate([B)V
    .registers 7
    .param p1, "caCertificate"    # [B

    .line 339
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 341
    .local v0, "mTrustedCertificateStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :try_start_5
    monitor-enter v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_6} :catch_36

    .line 342
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 343
    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_19

    .line 344
    sget-boolean v2, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v2, :cond_17

    .line 345
    const-string v2, "EmailKeystoreService"

    const-string v3, "CA Certificate parse error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_17
    monitor-exit v0

    return-void

    .line 349
    :cond_19
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 353
    .local v2, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 354
    sget-boolean v3, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v3, :cond_31

    .line 355
    const-string v3, "EmailKeystoreService"

    const-string v4, "CA Certificate successfully installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v2    # "c":Ljava/security/cert/X509Certificate;
    :cond_31
    monitor-exit v0

    goto :goto_55

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    .end local v0    # "mTrustedCertificateStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local p0    # "this":Lcom/android/server/emailksproxy/EmailKeystoreService;
    .end local p1    # "caCertificate":[B
    :try_start_35
    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_35 .. :try_end_36} :catch_36

    .line 364
    .restart local v0    # "mTrustedCertificateStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .restart local p0    # "this":Lcom/android/server/emailksproxy/EmailKeystoreService;
    .restart local p1    # "caCertificate":[B
    :catch_36
    move-exception v1

    .line 365
    .local v1, "e":Ljava/security/cert/CertificateException;
    sget-boolean v2, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v2, :cond_42

    .line 366
    const-string v2, "EmailKeystoreService"

    const-string v3, "CertificateException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_42
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_56

    .line 359
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_46
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v2, :cond_52

    .line 361
    const-string v2, "EmailKeystoreService"

    const-string v3, "IOException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_52
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 369
    .end local v1    # "e":Ljava/io/IOException;
    :goto_55
    nop

    .line 370
    :goto_56
    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->broadcastStorageChange()V

    .line 371
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .registers 8
    .param p1, "keyData"    # [B

    .line 485
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 486
    .local v1, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v2

    .line 487
    .local v2, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    if-nez v2, :cond_16

    .line 488
    return v0

    .line 490
    :cond_16
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, "algId":Ljava/lang/String;
    if-nez v3, :cond_25

    .line 492
    return v0

    .line 494
    :cond_25
    new-instance v4, Lsun/security/x509/AlgorithmId;

    new-instance v5, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v5, v3}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v4}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "algName":Ljava/lang/String;
    if-nez v4, :cond_36

    .line 496
    return v0

    .line 498
    :cond_36
    invoke-static {v4}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3b

    return v0

    .line 500
    .end local v1    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v3    # "algId":Ljava/lang/String;
    .end local v4    # "algName":Ljava/lang/String;
    :catch_3b
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    const-string v2, "System Service"

    const-string v3, "Failed to parse key data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v0
.end method

.method private makeUidWithUserID(II)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 508
    if-gez p1, :cond_3

    .line 509
    return p2

    .line 512
    :cond_3
    const v0, 0x186a0

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private parseCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 374
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 375
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public getKeystoreStatus()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "status":I
    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 305
    return v2

    .line 308
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_50

    .line 309
    .local v1, "keystoreService":Landroid/security/KeyStore;
    const-string v3, "EmailKeystoreService"

    if-nez v1, :cond_18

    .line 310
    :try_start_11
    const-string/jumbo v4, "getKeystoreStatus() - Failed to get KeyStore Instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v2

    .line 314
    :cond_18
    sget-object v4, Lcom/android/server/emailksproxy/EmailKeystoreService$2;->$SwitchMap$android$security$KeyStore$State:[I

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v5

    aget v2, v4, v5
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_50

    const/4 v4, 0x1

    if-eq v2, v4, :cond_33

    const/4 v4, 0x2

    if-eq v2, v4, :cond_31

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2f

    .line 325
    const/4 v0, 0x0

    goto :goto_35

    .line 322
    :cond_2f
    const/4 v0, 0x3

    .line 323
    goto :goto_35

    .line 319
    :cond_31
    const/4 v0, 0x2

    .line 320
    goto :goto_35

    .line 316
    :cond_33
    const/4 v0, 0x1

    .line 317
    nop

    .line 331
    .end local v1    # "keystoreService":Landroid/security/KeyStore;
    :goto_35
    nop

    .line 332
    sget-boolean v1, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v1, :cond_4f

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getKeystoreStatus returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_4f
    return v0

    .line 328
    :catch_50
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    return v2
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .registers 11
    .param p1, "uidscep"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_7

    .line 237
    return-void

    .line 239
    :cond_7
    if-eqz p2, :cond_93

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    goto/16 :goto_93

    .line 243
    :cond_e
    const/4 v0, 0x0

    .line 244
    .local v0, "keyChainConnection":Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    const/4 v1, 0x0

    .line 247
    .local v1, "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :try_start_10
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v2
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_14} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_88
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_83
    .catch Ljava/lang/AssertionError; {:try_start_10 .. :try_end_14} :catch_7e

    const-string v3, " alias = "

    const-string v4, "EmailKeystoreService"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_47

    .line 248
    :try_start_1b
    const-string/jumbo v2, "knox_ccm_policy"

    .line 249
    .local v2, "KNOX_CCM_POLICY_SERVICE":Ljava/lang/String;
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v6

    move-object v1, v6

    .line 250
    if-eqz v1, :cond_47

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "grantAccessforCCM call setGrant : uidscep = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-interface {v1, p1, p2, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->setGrant(ILjava/lang/String;Z)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_47} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_47} :catch_88
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_47} :catch_83
    .catch Ljava/lang/AssertionError; {:try_start_1b .. :try_end_47} :catch_7e

    .line 257
    .end local v2    # "KNOX_CCM_POLICY_SERVICE":Ljava/lang/String;
    :cond_47
    :try_start_47
    iget-object v2, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    move-result-object v2

    move-object v0, v2

    .line 258
    invoke-virtual {v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 259
    .local v2, "keyChainService":Landroid/security/IKeyChainService;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "grantAccessforAKS call setGrant : uidscep = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-interface {v2, p1, p2, v5}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_70
    .catchall {:try_start_47 .. :try_end_70} :catchall_76

    .line 262
    .end local v2    # "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v0, :cond_91

    .line 263
    :try_start_72
    invoke-virtual {v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_91

    .line 262
    :catchall_76
    move-exception v2

    if-eqz v0, :cond_7c

    .line 263
    invoke-virtual {v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    .line 265
    :cond_7c
    nop

    .end local v0    # "keyChainConnection":Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    .end local v1    # "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .end local p0    # "this":Lcom/android/server/emailksproxy/EmailKeystoreService;
    .end local p1    # "uidscep":I
    .end local p2    # "alias":Ljava/lang/String;
    throw v2
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_7e} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7e} :catch_88
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7e} :catch_83
    .catch Ljava/lang/AssertionError; {:try_start_72 .. :try_end_7e} :catch_7e

    .line 274
    .restart local v0    # "keyChainConnection":Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    .restart local v1    # "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .restart local p0    # "this":Lcom/android/server/emailksproxy/EmailKeystoreService;
    .restart local p1    # "uidscep":I
    .restart local p2    # "alias":Ljava/lang/String;
    :catch_7e
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/AssertionError;
    invoke-virtual {v2}, Ljava/lang/AssertionError;->printStackTrace()V

    goto :goto_92

    .line 272
    .end local v2    # "e":Ljava/lang/AssertionError;
    :catch_83
    move-exception v2

    .line 273
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_91

    .line 269
    :catch_88
    move-exception v2

    .line 271
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_91

    .line 266
    :catch_8d
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 276
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_91
    :goto_91
    nop

    .line 277
    :goto_92
    return-void

    .line 240
    .end local v0    # "keyChainConnection":Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    .end local v1    # "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :cond_93
    :goto_93
    return-void
.end method

.method public installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I
    .registers 5
    .param p1, "caCert"    # Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_8

    .line 282
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_8
    if-nez p1, :cond_c

    .line 285
    const/4 v0, -0x2

    return v0

    .line 289
    :cond_c
    :try_start_c
    iget-object v0, p1, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->certs:[Ljava/security/cert/Certificate;

    .line 291
    .local v0, "mCertArray":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 292
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->installCaCertificate([B)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_21

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 298
    .end local v0    # "mCertArray":[Ljava/security/cert/Certificate;
    .end local v1    # "i":I
    :cond_1e
    nop

    .line 299
    const/4 v0, 0x0

    return v0

    .line 294
    :catch_21
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    const/4 v1, -0x1

    return v1
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CZI)I
    .registers 27
    .param p1, "certificate"    # Lcom/samsung/android/knox/util/SemCertByte;
    .param p2, "aliasName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "installWithWIFI"    # Z
    .param p5, "scepUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_10

    .line 123
    return v6

    .line 125
    :cond_10
    if-nez v2, :cond_13

    .line 126
    return v6

    .line 129
    :cond_13
    const-wide/16 v7, 0x0

    .line 131
    .local v7, "id":J
    :try_start_15
    const-string v10, "PKCS12"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 132
    .local v10, "mJavaKey":Ljava/security/KeyStore;
    iget v11, v2, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    new-array v11, v11, [B

    .line 133
    .local v11, "mCertficate":[B
    iget-object v12, v2, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    move-object v11, v12

    .line 134
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v10, v12, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 135
    invoke-virtual {v10, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 136
    .local v12, "mcert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v10, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v13

    .line 137
    .local v13, "mPriv":Ljava/security/Key;
    new-array v14, v6, [Ljava/security/cert/Certificate;

    .line 138
    .local v14, "certchain":[Ljava/security/cert/Certificate;
    const/4 v15, 0x0

    aput-object v12, v14, v15

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-wide/from16 v7, v16

    .line 141
    sget-boolean v16, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z
    :try_end_41
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_41} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_41} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_41} :catch_26b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_41} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_15 .. :try_end_41} :catch_255
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_41} :catch_24a
    .catchall {:try_start_15 .. :try_end_41} :catchall_247

    const-string v9, "EmailKeystoreService"

    if-eqz v16, :cond_5e

    .line 142
    :try_start_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/security/KeyStoreException; {:try_start_45 .. :try_end_5e} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_45 .. :try_end_5e} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_45 .. :try_end_5e} :catch_26b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_5e} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_45 .. :try_end_5e} :catch_255
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5e} :catch_24a
    .catchall {:try_start_45 .. :try_end_5e} :catchall_247

    .line 145
    :cond_5e
    const-string v5, "CACERT_"

    const-string v15, "USRCERT_"

    const-string v6, "USRPKEY_"

    if-eqz p4, :cond_104

    .line 146
    :try_start_66
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v9

    .line 148
    .local v9, "keystoreService":Landroid/security/KeyStore;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v10

    const/4 v15, 0x1

    .end local v10    # "mJavaKey":Ljava/security/KeyStore;
    .local v18, "mJavaKey":Ljava/security/KeyStore;
    new-array v10, v15, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    aput-object v12, v10, v15

    invoke-static {v10}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v10

    move-object/from16 v19, v11

    .end local v11    # "mCertficate":[B
    .local v19, "mCertficate":[B
    const/16 v11, 0x3f2

    invoke-virtual {v9, v4, v10, v11, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v4
    :try_end_8d
    .catch Ljava/security/KeyStoreException; {:try_start_66 .. :try_end_8d} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_66 .. :try_end_8d} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_66 .. :try_end_8d} :catch_26b
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_8d} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_66 .. :try_end_8d} :catch_255
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_8d} :catch_24a
    .catchall {:try_start_66 .. :try_end_8d} :catchall_247

    if-nez v4, :cond_95

    .line 150
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    const/4 v4, 0x1

    return v4

    .line 152
    :cond_95
    :try_start_95
    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isHardwareBackedKey([B)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v6, v11, v10}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v4
    :try_end_b7
    .catch Ljava/security/KeyStoreException; {:try_start_95 .. :try_end_b7} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_95 .. :try_end_b7} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_95 .. :try_end_b7} :catch_26b
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_b7} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_95 .. :try_end_b7} :catch_255
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b7} :catch_24a
    .catchall {:try_start_95 .. :try_end_b7} :catchall_247

    if-nez v4, :cond_de

    .line 155
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    const/4 v4, 0x1

    return v4

    .line 158
    :cond_bf
    :try_start_bf
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v9, v4, v6, v11, v10}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v4
    :try_end_d7
    .catch Ljava/security/KeyStoreException; {:try_start_bf .. :try_end_d7} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bf .. :try_end_d7} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_bf .. :try_end_d7} :catch_26b
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d7} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_bf .. :try_end_d7} :catch_255
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_d7} :catch_24a
    .catchall {:try_start_bf .. :try_end_d7} :catchall_247

    if-nez v4, :cond_de

    .line 160
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    return v10

    .line 163
    :cond_de
    :try_start_de
    iget v4, v2, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    if-lez v4, :cond_100

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v5, v11, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v4
    :try_end_f8
    .catch Ljava/security/KeyStoreException; {:try_start_de .. :try_end_f8} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_de .. :try_end_f8} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_de .. :try_end_f8} :catch_26b
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_f8} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_de .. :try_end_f8} :catch_255
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f8} :catch_24a
    .catchall {:try_start_de .. :try_end_f8} :catchall_247

    if-nez v4, :cond_100

    .line 166
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    const/4 v4, 0x1

    return v4

    .line 169
    .end local v9    # "keystoreService":Landroid/security/KeyStore;
    :cond_100
    move-object/from16 v20, v12

    goto/16 :goto_241

    .line 170
    .end local v18    # "mJavaKey":Ljava/security/KeyStore;
    .end local v19    # "mCertficate":[B
    .restart local v10    # "mJavaKey":Ljava/security/KeyStore;
    .restart local v11    # "mCertficate":[B
    :cond_104
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .end local v10    # "mJavaKey":Ljava/security/KeyStore;
    .end local v11    # "mCertficate":[B
    .restart local v18    # "mJavaKey":Ljava/security/KeyStore;
    .restart local v19    # "mCertficate":[B
    :try_start_108
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 172
    .local v4, "keystoreService":Landroid/security/KeyStore;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    aput-object v12, v15, v11

    invoke-static {v15}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v11

    .line 173
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    move-object/from16 v20, v12

    .end local v12    # "mcert":Ljava/security/cert/X509Certificate;
    .local v20, "mcert":Ljava/security/cert/X509Certificate;
    const/16 v12, 0x3e8

    invoke-direct {v1, v15, v12}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v15

    .line 172
    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v15, v12}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10
    :try_end_136
    .catch Ljava/security/KeyStoreException; {:try_start_108 .. :try_end_136} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_108 .. :try_end_136} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_108 .. :try_end_136} :catch_26b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_136} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_108 .. :try_end_136} :catch_255
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_136} :catch_24a
    .catchall {:try_start_108 .. :try_end_136} :catchall_247

    const-string v11, "Uid : "

    if-nez v10, :cond_179

    .line 174
    :try_start_13a
    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_173

    .line 175
    const-string v5, "USER_CERTIFICATE keystoreService.put is failed"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alias : USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v10, 0x3e8

    invoke-direct {v1, v6, v10}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catch Ljava/security/KeyStoreException; {:try_start_13a .. :try_end_173} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13a .. :try_end_173} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_13a .. :try_end_173} :catch_26b
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_173} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_13a .. :try_end_173} :catch_255
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_173} :catch_24a
    .catchall {:try_start_13a .. :try_end_173} :catchall_247

    .line 180
    :cond_173
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    const/4 v5, 0x1

    return v5

    .line 182
    :cond_179
    :try_start_179
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    .line 183
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const/16 v15, 0x3e8

    invoke-direct {v1, v12, v15}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v12

    .line 182
    const/4 v15, 0x1

    invoke-virtual {v4, v6, v10, v12, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v6

    if-nez v6, :cond_1dc

    .line 185
    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_1d6

    .line 186
    const-string v5, "USER_PRIVATE_KEY keystoreService.importKey is failed"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alias : USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v10, 0x3e8

    invoke-direct {v1, v6, v10}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d6
    .catch Ljava/security/KeyStoreException; {:try_start_179 .. :try_end_1d6} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_179 .. :try_end_1d6} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_179 .. :try_end_1d6} :catch_26b
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_1d6} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_179 .. :try_end_1d6} :catch_255
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1d6} :catch_24a
    .catchall {:try_start_179 .. :try_end_1d6} :catchall_247

    .line 190
    :cond_1d6
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    const/4 v5, 0x1

    return v5

    .line 192
    :cond_1dc
    :try_start_1dc
    iget v6, v2, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    if-lez v6, :cond_241

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    .line 194
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/16 v12, 0x3e8

    invoke-direct {v1, v10, v12}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v10

    .line 193
    const/4 v12, 0x1

    invoke-virtual {v4, v5, v6, v10, v12}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_241

    .line 195
    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_23b

    .line 196
    const-string v5, "CA_CERTIFICATE keystoreService.put is failed"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alias : CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v10, 0x3e8

    invoke-direct {v1, v6, v10}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23b
    .catch Ljava/security/KeyStoreException; {:try_start_1dc .. :try_end_23b} :catch_280
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1dc .. :try_end_23b} :catch_275
    .catch Ljava/security/cert/CertificateException; {:try_start_1dc .. :try_end_23b} :catch_26b
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_23b} :catch_260
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1dc .. :try_end_23b} :catch_255
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_23b} :catch_24a
    .catchall {:try_start_1dc .. :try_end_23b} :catchall_247

    .line 200
    :cond_23b
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    const/4 v5, 0x1

    return v5

    .line 204
    .end local v4    # "keystoreService":Landroid/security/KeyStore;
    :cond_241
    :goto_241
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    const/4 v4, 0x0

    return v4

    .line 230
    .end local v13    # "mPriv":Ljava/security/Key;
    .end local v14    # "certchain":[Ljava/security/cert/Certificate;
    .end local v18    # "mJavaKey":Ljava/security/KeyStore;
    .end local v19    # "mCertficate":[B
    .end local v20    # "mcert":Ljava/security/cert/X509Certificate;
    :catchall_247
    move-exception v0

    move-object v4, v0

    goto :goto_28b

    .line 226
    :catch_24a
    move-exception v0

    move-object v4, v0

    .line 227
    .local v4, "e":Ljava/lang/Exception;
    :try_start_24c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24f
    .catchall {:try_start_24c .. :try_end_24f} :catchall_247

    .line 228
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    const/4 v5, 0x4

    return v5

    .line 222
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_255
    move-exception v0

    move-object v4, v0

    .line 224
    .local v4, "e":Ljava/security/UnrecoverableKeyException;
    :try_start_257
    invoke-virtual {v4}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_25a
    .catchall {:try_start_257 .. :try_end_25a} :catchall_247

    .line 225
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    const/4 v5, 0x2

    return v5

    .line 218
    .end local v4    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_260
    move-exception v0

    move-object v4, v0

    .line 220
    .local v4, "e":Ljava/io/IOException;
    :try_start_262
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_265
    .catchall {:try_start_262 .. :try_end_265} :catchall_247

    .line 221
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    const/4 v5, 0x4

    return v5

    .line 214
    .end local v4    # "e":Ljava/io/IOException;
    :catch_26b
    move-exception v0

    move-object v4, v0

    .line 216
    .local v4, "e":Ljava/security/cert/CertificateException;
    :try_start_26d
    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_270
    .catchall {:try_start_26d .. :try_end_270} :catchall_247

    .line 217
    const/4 v5, 0x3

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    return v5

    .line 210
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :catch_275
    move-exception v0

    move-object v4, v0

    .line 212
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_277
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_27a
    .catchall {:try_start_277 .. :try_end_27a} :catchall_247

    .line 213
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    const/4 v5, 0x2

    return v5

    .line 206
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_280
    move-exception v0

    move-object v4, v0

    .line 208
    .local v4, "e":Ljava/security/KeyStoreException;
    :try_start_282
    invoke-virtual {v4}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_285
    .catchall {:try_start_282 .. :try_end_285} :catchall_247

    .line 209
    nop

    .line 230
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    const/4 v5, 0x2

    return v5

    .line 230
    .end local v4    # "e":Ljava/security/KeyStoreException;
    :goto_28b
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    throw v4
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .registers 12
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 65
    return v1

    .line 68
    :cond_8
    sget-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    const-string v2, "EmailKeystoreService"

    if-eqz v0, :cond_27

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAliasExists: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v3, 0x3e8

    invoke-static {v0, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 74
    .local v0, "UidoftheCertSystem":I
    const/16 v3, 0x3f2

    .line 75
    .local v3, "UidoftheCertWifi":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 77
    .local v4, "mAndroid":Landroid/security/KeyStore;
    if-nez v4, :cond_44

    .line 78
    const-string/jumbo v5, "isAliasExists() - Failed to get KeyStore Instance"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_43} :catch_d0

    .line 79
    return v1

    .line 82
    :cond_44
    const-string v2, "CACERT_"

    const-string v5, "USRPKEY_"

    const/4 v6, 0x0

    const-string v7, "USRCERT_"

    if-eqz p2, :cond_8d

    .line 83
    :try_start_4d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_8c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v4, v5, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_8c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v4, v2, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 86
    :cond_8c
    return v6

    .line 89
    :cond_8d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_cf

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v4, v5, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_cf

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v4, v2, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_ca} :catch_d0

    if-eqz v2, :cond_cd

    goto :goto_cf

    .line 99
    .end local v0    # "UidoftheCertSystem":I
    .end local v3    # "UidoftheCertWifi":I
    .end local v4    # "mAndroid":Landroid/security/KeyStore;
    :cond_cd
    nop

    .line 100
    return v1

    .line 92
    .restart local v0    # "UidoftheCertSystem":I
    .restart local v3    # "UidoftheCertWifi":I
    .restart local v4    # "mAndroid":Landroid/security/KeyStore;
    :cond_cf
    :goto_cf
    return v6

    .line 95
    .end local v0    # "UidoftheCertSystem":I
    .end local v3    # "UidoftheCertWifi":I
    .end local v4    # "mAndroid":Landroid/security/KeyStore;
    :catch_d0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    return v1
.end method
