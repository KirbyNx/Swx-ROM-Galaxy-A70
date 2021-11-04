.class public Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.super Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyStoreErrors;,
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;,
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SCEPKeystoreProxyService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    .line 47
    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scepuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 681
    if-eqz p0, :cond_70

    .line 684
    invoke-static {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 685
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 687
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 711
    .local v2, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/security/IKeyChainService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v4

    .line 713
    .local v4, "comp":Landroid/content/ComponentName;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 715
    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_45

    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyChainConnection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SCEPKeystoreProxyService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_45
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 719
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 720
    .local v6, "backupUID":J
    invoke-virtual {p0, v3, v2, v1, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 721
    .local v1, "isBound":Z
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    if-eqz v1, :cond_68

    .line 725
    new-instance v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/security/IKeyChainService;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v2, v9, v10}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;)V

    return-object v8

    .line 723
    :cond_68
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Could not bind to KeyChainService"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 682
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

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 533
    return-void
.end method

.method private checkCEPCaller()Z
    .registers 4

    .line 624
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "actualForSCEP":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 626
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_16

    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 627
    const/4 v2, 0x1

    return v2

    .line 629
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method private checkCaller()Ljava/lang/String;
    .registers 3

    .line 633
    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "actualPackage":Ljava/lang/String;
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 729
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 730
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_15

    .line 731
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 733
    :cond_15
    :goto_15
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .registers 6
    .param p1, "keyData"    # [B

    .line 736
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 737
    .local v1, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v2

    .line 738
    .local v2, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    if-nez v2, :cond_16

    .line 739
    return v0

    .line 744
    :cond_16
    const/4 v3, 0x0

    .line 745
    .local v3, "algName":Ljava/lang/String;
    if-nez v3, :cond_1a

    .line 746
    return v0

    .line 747
    :cond_1a
    invoke-static {v3}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    return v0

    .line 748
    .end local v1    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v3    # "algName":Ljava/lang/String;
    :catch_1f
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 750
    const-string v2, "System Service"

    const-string v3, "Failed to parse key data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return v0
.end method

.method private makeUidWithUserID(II)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 764
    if-gez p1, :cond_3

    .line 765
    return p2

    .line 767
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

    .line 638
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 639
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public deletecertificateEntry(Ljava/lang/String;Z)I
    .registers 20
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SCEPKeystoreProxyService"

    const/4 v4, 0x0

    .line 354
    .local v4, "UidoftheCert":I
    const/4 v5, 0x0

    .line 355
    .local v5, "mUserId":I
    const/4 v6, 0x0

    .line 356
    .local v6, "UidoftheCertSystem":I
    const/4 v7, 0x0

    .line 358
    .local v7, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_12

    .line 359
    return v8

    .line 363
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 364
    .local v0, "CallingUid":I
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_2e

    .line 365
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteCertificateEntry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2e
    const/16 v9, 0x3e8

    if-nez p2, :cond_47

    .line 368
    const/16 v4, 0x3e8

    .line 369
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move v5, v10

    .line 370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static {v10, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    move v6, v10

    goto :goto_50

    .line 372
    :cond_47
    const/16 v4, 0x3f2

    .line 373
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    move v5, v10

    .line 374
    const/16 v6, 0x3f2

    .line 376
    :goto_50
    sget-boolean v10, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v10, :cond_68

    .line 377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCertificateEntry: UidoftheCert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_68
    sget-boolean v10, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v10, :cond_80

    .line 379
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCertificateEntry: processId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_80} :catch_2d7
    .catchall {:try_start_12 .. :try_end_80} :catchall_2d5

    .line 381
    :cond_80
    const/4 v10, 0x0

    .line 383
    .local v10, "bDeleted":Z
    const-string/jumbo v11, "not exist : USRPKEY_"

    const-string/jumbo v12, "not exist : CACERT_"

    const-string/jumbo v13, "not exist : USRCERT_"

    const-string v14, "USRPKEY_"

    const-string v15, "CACERT_"

    const-string v8, "USRCERT_"

    if-nez p2, :cond_195

    if-ne v6, v9, :cond_98

    move/from16 v16, v0

    goto/16 :goto_197

    .line 430
    :cond_98
    :try_start_98
    iget-object v9, v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v9

    move-object v7, v9

    .line 431
    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v9

    .line 432
    .local v9, "keyChainService":Landroid/security/IKeyChainService;
    move/from16 v16, v0

    .end local v0    # "CallingUid":I
    .local v16, "CallingUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v6}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 433
    invoke-interface {v9, v2, v8}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 434
    sget-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v0, :cond_ca

    .line 435
    const-string/jumbo v0, "keyChainService.deleteCertificate delete user cert: failure"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_ca} :catch_2d7
    .catchall {:try_start_98 .. :try_end_ca} :catchall_2d5

    .line 436
    :cond_ca
    nop

    .line 490
    if-eqz v7, :cond_d0

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 436
    :cond_d0
    const/4 v3, 0x1

    return v3

    .line 438
    :cond_d2
    const/4 v10, 0x1

    .line 439
    :try_start_d3
    sget-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v0, :cond_f4

    .line 440
    const-string/jumbo v0, "keyChainService.deleteCertificate delete user cert: success"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 443
    :cond_de
    sget-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v0, :cond_f4

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_f4
    :goto_f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v6}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 448
    invoke-interface {v9, v2, v15}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_121

    .line 449
    sget-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v0, :cond_119

    .line 450
    const-string/jumbo v0, "keyChainService.deleteCertificate delete CA Cert: failure"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_119} :catch_2d7
    .catchall {:try_start_d3 .. :try_end_119} :catchall_2d5

    .line 451
    :cond_119
    nop

    .line 490
    if-eqz v7, :cond_11f

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 451
    :cond_11f
    const/4 v3, 0x1

    return v3

    .line 453
    :cond_121
    const/4 v10, 0x1

    .line 454
    :try_start_122
    sget-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v0, :cond_143

    .line 455
    const-string/jumbo v0, "keyChainService.deleteCertificate delete CA cert: success"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    .line 458
    :cond_12d
    sget-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v0, :cond_143

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_143
    :goto_143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v6}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 463
    invoke-interface {v9, v2, v14}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_170

    .line 464
    sget-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v0, :cond_168

    .line 465
    const-string/jumbo v0, "keyChainService.deleteCertificate delKeyAsUser: failure"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_168} :catch_2d7
    .catchall {:try_start_122 .. :try_end_168} :catchall_2d5

    .line 466
    :cond_168
    nop

    .line 490
    if-eqz v7, :cond_16e

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 466
    :cond_16e
    const/4 v3, 0x1

    return v3

    .line 468
    :cond_170
    const/4 v10, 0x1

    .line 469
    :try_start_171
    sget-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v0, :cond_2c3

    .line 470
    const-string/jumbo v0, "keyChainService.deleteCertificate delKeyAsUser: success"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c3

    .line 473
    :cond_17d
    sget-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v0, :cond_2c3

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c3

    .line 383
    .end local v9    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v16    # "CallingUid":I
    .restart local v0    # "CallingUid":I
    :cond_195
    move/from16 v16, v0

    .line 384
    .end local v0    # "CallingUid":I
    .restart local v16    # "CallingUid":I
    :goto_197
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 385
    .local v0, "mAndroid":Landroid/security/KeyStore;
    if-eqz v0, :cond_1e7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1e7

    .line 386
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1dc

    .line 387
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_1d4

    .line 388
    const-string v8, "deleteCertificateEntry delete user cert: failure"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_1d4} :catch_2d7
    .catchall {:try_start_171 .. :try_end_1d4} :catchall_2d5

    .line 389
    :cond_1d4
    nop

    .line 490
    if-eqz v7, :cond_1da

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 389
    :cond_1da
    const/4 v3, 0x1

    return v3

    .line 391
    :cond_1dc
    const/4 v10, 0x1

    .line 392
    :try_start_1dd
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_1fd

    .line 393
    const-string v8, "deleteCertificateEntry delete user cert: success"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fd

    .line 396
    :cond_1e7
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_1fd

    .line 397
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1fd
    :goto_1fd
    if-eqz v0, :cond_249

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_249

    .line 401
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_23e

    .line 402
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_236

    .line 403
    const-string v8, "deleteCertificateEntry delete CA Cert: failure"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_236} :catch_2d7
    .catchall {:try_start_1dd .. :try_end_236} :catchall_2d5

    .line 404
    :cond_236
    nop

    .line 490
    if-eqz v7, :cond_23c

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 404
    :cond_23c
    const/4 v3, 0x1

    return v3

    .line 406
    :cond_23e
    const/4 v10, 0x1

    .line 407
    :try_start_23f
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_25f

    .line 408
    const-string v8, "deleteCertificateEntry delete CA cert: success"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25f

    .line 411
    :cond_249
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_25f

    .line 412
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_25f
    :goto_25f
    if-eqz v0, :cond_2ac

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2ac

    .line 416
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2a0

    .line 417
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_298

    .line 418
    const-string v8, "deleteCertificateEntry delKeyAsUser: failure"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_298} :catch_2d7
    .catchall {:try_start_23f .. :try_end_298} :catchall_2d5

    .line 419
    :cond_298
    nop

    .line 490
    if-eqz v7, :cond_29e

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 419
    :cond_29e
    const/4 v3, 0x1

    return v3

    .line 421
    :cond_2a0
    const/4 v8, 0x1

    .line 422
    .end local v10    # "bDeleted":Z
    .local v8, "bDeleted":Z
    :try_start_2a1
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_2aa

    .line 423
    const-string v9, "deleteCertificateEntry delKeyAsUser: success"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0    # "mAndroid":Landroid/security/KeyStore;
    :cond_2aa
    move v10, v8

    goto :goto_2c2

    .line 426
    .end local v8    # "bDeleted":Z
    .restart local v0    # "mAndroid":Landroid/security/KeyStore;
    .restart local v10    # "bDeleted":Z
    :cond_2ac
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_2c2

    .line 427
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c2
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2c2} :catch_2d7
    .catchall {:try_start_2a1 .. :try_end_2c2} :catchall_2d5

    .line 429
    .end local v0    # "mAndroid":Landroid/security/KeyStore;
    :cond_2c2
    :goto_2c2
    nop

    .line 479
    :cond_2c3
    :goto_2c3
    const/4 v3, 0x1

    if-ne v3, v10, :cond_2cd

    .line 480
    const/4 v0, 0x0

    .line 490
    if-eqz v7, :cond_2cc

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 480
    :cond_2cc
    return v0

    .line 482
    :cond_2cd
    nop

    .line 490
    if-eqz v7, :cond_2d3

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 482
    :cond_2d3
    const/4 v3, 0x1

    return v3

    .line 490
    .end local v10    # "bDeleted":Z
    .end local v16    # "CallingUid":I
    :catchall_2d5
    move-exception v0

    goto :goto_2ec

    .line 483
    :catch_2d7
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2d8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_2e4

    .line 487
    const-string v8, "deleteCertificateEntry return exception"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e4
    .catchall {:try_start_2d8 .. :try_end_2e4} :catchall_2d5

    .line 488
    :cond_2e4
    nop

    .line 490
    if-eqz v7, :cond_2ea

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 488
    :cond_2ea
    const/4 v3, 0x1

    return v3

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2ec
    if-eqz v7, :cond_2f1

    invoke-virtual {v7}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 491
    :cond_2f1
    throw v0
.end method

.method public getCertificate(Ljava/lang/String;)Lcom/samsung/android/cepproxyks/CertificateAKS;
    .registers 14
    .param p1, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 60
    return-object v1

    .line 63
    :cond_8
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 65
    .local v0, "mAndroid":Landroid/security/KeyStore;
    new-instance v2, Lcom/samsung/android/cepproxyks/CertificateAKS;

    invoke-direct {v2}, Lcom/samsung/android/cepproxyks/CertificateAKS;-><init>()V

    .line 66
    .local v2, "mCertObj":Lcom/samsung/android/cepproxyks/CertificateAKS;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 68
    .local v3, "CallingUid":I
    const/4 v4, 0x0

    .line 70
    .local v4, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_31

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SCEPKeystoreProxyService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_31
    :try_start_31
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x3e8

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_d3
    .catchall {:try_start_31 .. :try_end_3b} :catchall_d1

    .line 74
    .local v5, "UidoftheCertSystem":I
    const/16 v7, 0x3f2

    .line 75
    .local v7, "UidoftheCertWifi":I
    const-string v8, "USRCERT_"

    if-eqz v0, :cond_6c

    if-ne v5, v6, :cond_6c

    :try_start_43
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 76
    invoke-virtual {v0, v9, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v6

    .local v6, "mCert":[B
    goto :goto_a7

    .line 78
    .end local v6    # "mCert":[B
    :cond_6c
    if-eqz v0, :cond_97

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v6

    .restart local v6    # "mCert":[B
    goto :goto_a7

    .line 81
    .end local v6    # "mCert":[B
    :cond_97
    iget-object v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v6

    move-object v4, v6

    .line 82
    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    .line 83
    .local v6, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v6, p1, v8}, Landroid/security/IKeyChainService;->getCertificateSystem(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_a6} :catch_d3
    .catchall {:try_start_43 .. :try_end_a6} :catchall_d1

    move-object v6, v8

    .line 86
    .local v6, "mCert":[B
    :goto_a7
    if-nez v6, :cond_b0

    .line 87
    nop

    .line 99
    if-eqz v4, :cond_af

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 87
    :cond_af
    return-object v1

    .line 88
    :cond_b0
    :try_start_b0
    invoke-static {v6}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v8

    .line 89
    .local v8, "mCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v8, :cond_ca

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_ca

    .line 90
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/security/cert/Certificate;

    .line 91
    .local v9, "cert":[Ljava/security/cert/Certificate;
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/Certificate;

    aput-object v11, v9, v10

    .line 92
    iput-object v9, v2, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_ca} :catch_d3
    .catchall {:try_start_b0 .. :try_end_ca} :catchall_d1

    .line 94
    .end local v9    # "cert":[Ljava/security/cert/Certificate;
    :cond_ca
    nop

    .line 99
    if-eqz v4, :cond_d0

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 94
    :cond_d0
    return-object v2

    .line 99
    .end local v5    # "UidoftheCertSystem":I
    .end local v6    # "mCert":[B
    .end local v7    # "UidoftheCertWifi":I
    .end local v8    # "mCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_d1
    move-exception v1

    goto :goto_dd

    .line 95
    :catch_d3
    move-exception v5

    .line 97
    .local v5, "e":Ljava/lang/Exception;
    :try_start_d4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d1

    .line 99
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_dc

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 101
    :cond_dc
    return-object v1

    .line 99
    :goto_dd
    if-eqz v4, :cond_e2

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 100
    :cond_e2
    throw v1
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .registers 5
    .param p1, "uidscep"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_7

    .line 567
    return-void

    .line 569
    :cond_7
    if-eqz p2, :cond_1b

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    goto :goto_1b

    .line 573
    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;-><init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 592
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 593
    return-void

    .line 570
    :cond_1b
    :goto_1b
    return-void
.end method

.method public installCACert(Lcom/samsung/android/cepproxyks/CertificateAKS;)I
    .registers 9
    .param p1, "caCert"    # Lcom/samsung/android/cepproxyks/CertificateAKS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9

    .line 540
    return v2

    .line 542
    :cond_9
    if-nez p1, :cond_c

    .line 543
    return v2

    .line 545
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 546
    .local v1, "uidscep":I
    iget-object v3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v3

    move-object v0, v3

    .line 547
    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 548
    .local v3, "keyChainService":Landroid/security/IKeyChainService;
    iget-object v4, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    .line 549
    .local v4, "mCertArray":[Ljava/security/cert/Certificate;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    array-length v6, v4

    if-ge v5, v6, :cond_2d

    .line 550
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_36
    .catchall {:try_start_c .. :try_end_2a} :catchall_34

    .line 549
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 556
    .end local v1    # "uidscep":I
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v4    # "mCertArray":[Ljava/security/cert/Certificate;
    .end local v5    # "i":I
    :cond_2d
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 558
    :cond_32
    const/4 v1, 0x0

    return v1

    .line 556
    :catchall_34
    move-exception v1

    goto :goto_41

    .line 551
    :catch_36
    move-exception v1

    .line 553
    .local v1, "e":Ljava/lang/Exception;
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    .line 554
    nop

    .line 556
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 554
    :cond_40
    return v2

    .line 556
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_41
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 557
    :cond_46
    throw v1
.end method

.method public installCACertForWifiCCM(Lcom/samsung/android/cepproxyks/CertificateAKS;Ljava/lang/String;)I
    .registers 11
    .param p1, "caCert"    # Lcom/samsung/android/cepproxyks/CertificateAKS;
    .param p2, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 598
    return v1

    .line 601
    :cond_8
    const/4 v0, 0x0

    .line 602
    .local v0, "UidoftheCert":I
    const/16 v0, 0x3f2

    .line 603
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 605
    .local v2, "keystoreService":Landroid/security/KeyStore;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 607
    .local v3, "id":J
    if-eqz p1, :cond_4c

    .line 608
    :try_start_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v0, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_31} :catch_3f
    .catchall {:try_start_15 .. :try_end_31} :catchall_3d

    if-nez v5, :cond_38

    .line 609
    nop

    .line 618
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    return v1

    .line 618
    :cond_38
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    nop

    .line 620
    return v7

    .line 618
    :catchall_3d
    move-exception v1

    goto :goto_48

    .line 614
    :catch_3f
    move-exception v5

    .line 615
    .local v5, "e":Ljava/lang/Exception;
    :try_start_40
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    .line 616
    nop

    .line 618
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    return v1

    .line 618
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_48
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    throw v1

    .line 612
    :cond_4c
    nop

    .line 618
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    return v1
.end method

.method public installCaCertificate([B)V
    .registers 7
    .param p1, "caCertificate"    # [B

    .line 496
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 498
    .local v0, "mTrustedCertificateStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :try_start_5
    monitor-enter v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_6} :catch_36

    .line 499
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 500
    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_19

    .line 501
    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_17

    .line 502
    const-string v2, "SCEPKeystoreProxyService"

    const-string v3, "CA Certificate parse error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_17
    monitor-exit v0

    return-void

    .line 506
    :cond_19
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    .line 509
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 510
    .local v2, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 511
    sget-boolean v3, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v3, :cond_31

    .line 512
    const-string v3, "SCEPKeystoreProxyService"

    const-string v4, "CA Certificate successfully installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
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
    .end local p0    # "this":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
    .end local p1    # "caCertificate":[B
    :try_start_35
    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_35 .. :try_end_36} :catch_36

    .line 521
    .restart local v0    # "mTrustedCertificateStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .restart local p0    # "this":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
    .restart local p1    # "caCertificate":[B
    :catch_36
    move-exception v1

    .line 522
    .local v1, "e":Ljava/security/cert/CertificateException;
    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_42

    .line 523
    const-string v2, "SCEPKeystoreProxyService"

    const-string v3, "CertificateException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_42
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_56

    .line 516
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_46
    move-exception v1

    .line 517
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_52

    .line 518
    const-string v2, "SCEPKeystoreProxyService"

    const-string v3, "IOException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_52
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 526
    .end local v1    # "e":Ljava/io/IOException;
    :goto_55
    nop

    .line 527
    :goto_56
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->broadcastStorageChange()V

    .line 528
    return-void
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/cepproxyks/CertByte;Ljava/lang/String;[CZI)I
    .registers 32
    .param p1, "certificate"    # Lcom/samsung/android/cepproxyks/CertByte;
    .param p2, "aliasName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "installWithWIFI"    # Z
    .param p5, "scepUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_10

    .line 160
    return v6

    .line 162
    :cond_10
    if-nez v2, :cond_13

    .line 163
    return v6

    .line 165
    :cond_13
    const-wide/16 v7, 0x0

    .line 166
    .local v7, "id":J
    const/4 v5, 0x0

    .line 169
    .local v5, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    :try_start_16
    const-string v11, "PKCS12"

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 170
    .local v11, "mJavaKey":Ljava/security/KeyStore;
    iget v12, v2, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    new-array v12, v12, [B

    .line 171
    .local v12, "mCertficate":[B
    iget-object v13, v2, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    move-object v12, v13

    .line 172
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v11, v13, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 173
    invoke-virtual {v11, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 174
    .local v13, "mcert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v14

    .line 175
    .local v14, "mPriv":Ljava/security/Key;
    new-array v15, v6, [Ljava/security/cert/Certificate;

    .line 176
    .local v15, "certchain":[Ljava/security/cert/Certificate;
    const/4 v10, 0x0

    aput-object v13, v15, v10

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-wide/from16 v7, v16

    .line 179
    sget-boolean v16, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z
    :try_end_42
    .catch Ljava/security/KeyStoreException; {:try_start_16 .. :try_end_42} :catch_47c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_42} :catch_469
    .catch Ljava/security/cert/CertificateException; {:try_start_16 .. :try_end_42} :catch_457
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_42} :catch_444
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_16 .. :try_end_42} :catch_431
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_42} :catch_41e
    .catchall {:try_start_16 .. :try_end_42} :catchall_417

    const-string v9, "SCEPKeystoreProxyService"

    if-eqz v16, :cond_5f

    .line 180
    :try_start_46
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/security/KeyStoreException; {:try_start_46 .. :try_end_5f} :catch_139
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_5f} :catch_134
    .catch Ljava/security/cert/CertificateException; {:try_start_46 .. :try_end_5f} :catch_12f
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5f} :catch_12a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_46 .. :try_end_5f} :catch_125
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5f} :catch_120
    .catchall {:try_start_46 .. :try_end_5f} :catchall_11c

    .line 182
    :cond_5f
    const-string v6, "CACERT_"

    const-string v10, "USRCERT_"

    const-string v4, "USRPKEY_"

    if-eqz p4, :cond_13e

    .line 183
    :try_start_67
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v9

    .line 184
    .local v9, "keystoreService":Landroid/security/KeyStore;
    move-object/from16 v18, v11

    .end local v11    # "mJavaKey":Ljava/security/KeyStore;
    .local v18, "mJavaKey":Ljava/security/KeyStore;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v12

    const/4 v11, 0x1

    .end local v12    # "mCertficate":[B
    .local v19, "mCertficate":[B
    new-array v12, v11, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    aput-object v13, v12, v11

    invoke-static {v12}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    move-object/from16 v20, v15

    .end local v15    # "certchain":[Ljava/security/cert/Certificate;
    .local v20, "certchain":[Ljava/security/cert/Certificate;
    const/16 v15, 0x3f2

    invoke-virtual {v9, v10, v12, v15, v11}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10
    :try_end_90
    .catch Ljava/security/KeyStoreException; {:try_start_67 .. :try_end_90} :catch_139
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_67 .. :try_end_90} :catch_134
    .catch Ljava/security/cert/CertificateException; {:try_start_67 .. :try_end_90} :catch_12f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_90} :catch_12a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_67 .. :try_end_90} :catch_125
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_90} :catch_120
    .catchall {:try_start_67 .. :try_end_90} :catchall_11c

    if-nez v10, :cond_9d

    .line 186
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_9b

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 186
    :cond_9b
    const/4 v4, 0x1

    return v4

    .line 188
    :cond_9d
    :try_start_9d
    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->isHardwareBackedKey([B)Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v4, v10, v15, v11}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v4
    :try_end_bf
    .catch Ljava/security/KeyStoreException; {:try_start_9d .. :try_end_bf} :catch_139
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9d .. :try_end_bf} :catch_134
    .catch Ljava/security/cert/CertificateException; {:try_start_9d .. :try_end_bf} :catch_12f
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_bf} :catch_12a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_9d .. :try_end_bf} :catch_125
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_bf} :catch_120
    .catchall {:try_start_9d .. :try_end_bf} :catchall_11c

    if-nez v4, :cond_f1

    .line 191
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_ca

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 191
    :cond_ca
    const/4 v4, 0x1

    return v4

    .line 194
    :cond_cc
    :try_start_cc
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v15, v11}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v4
    :try_end_e4
    .catch Ljava/security/KeyStoreException; {:try_start_cc .. :try_end_e4} :catch_139
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cc .. :try_end_e4} :catch_134
    .catch Ljava/security/cert/CertificateException; {:try_start_cc .. :try_end_e4} :catch_12f
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_e4} :catch_12a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_cc .. :try_end_e4} :catch_125
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_e4} :catch_120
    .catchall {:try_start_cc .. :try_end_e4} :catchall_11c

    if-nez v4, :cond_f1

    .line 196
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_ef

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 196
    :cond_ef
    const/4 v4, 0x1

    return v4

    .line 199
    :cond_f1
    :try_start_f1
    iget v4, v2, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v4, :cond_118

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v2, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v6, v15, v10}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v4
    :try_end_10b
    .catch Ljava/security/KeyStoreException; {:try_start_f1 .. :try_end_10b} :catch_139
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f1 .. :try_end_10b} :catch_134
    .catch Ljava/security/cert/CertificateException; {:try_start_f1 .. :try_end_10b} :catch_12f
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_10b} :catch_12a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_f1 .. :try_end_10b} :catch_125
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_10b} :catch_120
    .catchall {:try_start_f1 .. :try_end_10b} :catchall_11c

    if-nez v4, :cond_118

    .line 202
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_116

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 202
    :cond_116
    const/4 v4, 0x1

    return v4

    .line 205
    .end local v9    # "keystoreService":Landroid/security/KeyStore;
    :cond_118
    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_27d

    .line 313
    .end local v13    # "mcert":Ljava/security/cert/X509Certificate;
    .end local v14    # "mPriv":Ljava/security/Key;
    .end local v18    # "mJavaKey":Ljava/security/KeyStore;
    .end local v19    # "mCertficate":[B
    .end local v20    # "certchain":[Ljava/security/cert/Certificate;
    :catchall_11c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_490

    .line 309
    :catch_120
    move-exception v0

    move-object v1, v2

    :goto_122
    move-object v2, v0

    goto/16 :goto_423

    .line 305
    :catch_125
    move-exception v0

    move-object v1, v2

    :goto_127
    move-object v2, v0

    goto/16 :goto_436

    .line 301
    :catch_12a
    move-exception v0

    move-object v1, v2

    :goto_12c
    move-object v2, v0

    goto/16 :goto_449

    .line 297
    :catch_12f
    move-exception v0

    move-object v1, v2

    :goto_131
    move-object v2, v0

    goto/16 :goto_45c

    .line 293
    :catch_134
    move-exception v0

    move-object v1, v2

    :goto_136
    move-object v2, v0

    goto/16 :goto_46e

    .line 289
    :catch_139
    move-exception v0

    move-object v1, v2

    :goto_13b
    move-object v2, v0

    goto/16 :goto_481

    .line 208
    .restart local v11    # "mJavaKey":Ljava/security/KeyStore;
    .restart local v12    # "mCertficate":[B
    .restart local v13    # "mcert":Ljava/security/cert/X509Certificate;
    .restart local v14    # "mPriv":Ljava/security/Key;
    .restart local v15    # "certchain":[Ljava/security/cert/Certificate;
    :cond_13e
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v15

    .end local v11    # "mJavaKey":Ljava/security/KeyStore;
    .end local v12    # "mCertficate":[B
    .end local v15    # "certchain":[Ljava/security/cert/Certificate;
    .restart local v18    # "mJavaKey":Ljava/security/KeyStore;
    .restart local v19    # "mCertficate":[B
    .restart local v20    # "certchain":[Ljava/security/cert/Certificate;
    :try_start_144
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const/16 v12, 0x3e8

    invoke-static {v11, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11
    :try_end_14e
    .catch Ljava/security/KeyStoreException; {:try_start_144 .. :try_end_14e} :catch_47c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_144 .. :try_end_14e} :catch_469
    .catch Ljava/security/cert/CertificateException; {:try_start_144 .. :try_end_14e} :catch_457
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_14e} :catch_444
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_144 .. :try_end_14e} :catch_431
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_14e} :catch_41e
    .catchall {:try_start_144 .. :try_end_14e} :catchall_417

    .line 209
    .local v11, "UidoftheCertSystem":I
    const-string v15, "Alias : CACERT_"

    const-string v12, "Alias : USRPKEY_"

    move-object/from16 v22, v15

    const-string v15, "Alias : USRCERT_"

    move-object/from16 v23, v6

    const-string v6, "Uid : "

    const/16 v2, 0x3e8

    if-ne v11, v2, :cond_2c7

    .line 210
    :try_start_15e
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2
    :try_end_162
    .catch Ljava/security/KeyStoreException; {:try_start_15e .. :try_end_162} :catch_2c1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15e .. :try_end_162} :catch_2bb
    .catch Ljava/security/cert/CertificateException; {:try_start_15e .. :try_end_162} :catch_2b5
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_162} :catch_2af
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_15e .. :try_end_162} :catch_2a9
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_162} :catch_2a3
    .catchall {:try_start_15e .. :try_end_162} :catchall_29d

    .line 212
    .local v2, "keystoreService":Landroid/security/KeyStore;
    :try_start_162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v12

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/security/cert/Certificate;

    const/16 v16, 0x0

    aput-object v13, v12, v16

    invoke-static {v12}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    invoke-virtual {v2, v1, v12, v11, v10}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1
    :try_end_182
    .catch Ljava/security/KeyStoreException; {:try_start_162 .. :try_end_182} :catch_299
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_162 .. :try_end_182} :catch_295
    .catch Ljava/security/cert/CertificateException; {:try_start_162 .. :try_end_182} :catch_291
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_182} :catch_28d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_162 .. :try_end_182} :catch_289
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_182} :catch_285
    .catchall {:try_start_162 .. :try_end_182} :catchall_281

    if-nez v1, :cond_1bc

    .line 214
    :try_start_184
    sget-boolean v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v1, :cond_1b1

    .line 215
    const-string v1, "USER_CERTIFICATE keystoreService.put is failed"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b1
    .catch Ljava/security/KeyStoreException; {:try_start_184 .. :try_end_1b1} :catch_3dc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_184 .. :try_end_1b1} :catch_3d9
    .catch Ljava/security/cert/CertificateException; {:try_start_184 .. :try_end_1b1} :catch_3d6
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_1b1} :catch_3d3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_184 .. :try_end_1b1} :catch_3d0
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1b1} :catch_3cd
    .catchall {:try_start_184 .. :try_end_1b1} :catchall_3ca

    .line 219
    :cond_1b1
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_1ba

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 219
    :cond_1ba
    const/4 v1, 0x1

    return v1

    .line 221
    :cond_1bc
    :try_start_1bc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v2, v1, v4, v11, v10}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v1
    :try_end_1d4
    .catch Ljava/security/KeyStoreException; {:try_start_1bc .. :try_end_1d4} :catch_299
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1bc .. :try_end_1d4} :catch_295
    .catch Ljava/security/cert/CertificateException; {:try_start_1bc .. :try_end_1d4} :catch_291
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1d4} :catch_28d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1bc .. :try_end_1d4} :catch_289
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1d4} :catch_285
    .catchall {:try_start_1bc .. :try_end_1d4} :catchall_281

    if-nez v1, :cond_210

    .line 223
    :try_start_1d6
    sget-boolean v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v1, :cond_205

    .line 224
    const-string v1, "USER_PRIVATE_KEY keystoreService.importKey is failed"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v21

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_205
    .catch Ljava/security/KeyStoreException; {:try_start_1d6 .. :try_end_205} :catch_3dc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d6 .. :try_end_205} :catch_3d9
    .catch Ljava/security/cert/CertificateException; {:try_start_1d6 .. :try_end_205} :catch_3d6
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_205} :catch_3d3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1d6 .. :try_end_205} :catch_3d0
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_205} :catch_3cd
    .catchall {:try_start_1d6 .. :try_end_205} :catchall_3ca

    .line 228
    :cond_205
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_20e

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 228
    :cond_20e
    const/4 v1, 0x1

    return v1

    .line 236
    :cond_210
    :try_start_210
    const-string v1, "MarkKeyAsUserSelectable call"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;
    :try_end_217
    .catch Ljava/security/KeyStoreException; {:try_start_210 .. :try_end_217} :catch_299
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_210 .. :try_end_217} :catch_295
    .catch Ljava/security/cert/CertificateException; {:try_start_210 .. :try_end_217} :catch_291
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_217} :catch_28d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_210 .. :try_end_217} :catch_289
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_217} :catch_285
    .catchall {:try_start_210 .. :try_end_217} :catchall_281

    move-object/from16 v4, p0

    :try_start_219
    invoke-direct {v1, v4, v3, v11}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;-><init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;Ljava/lang/String;I)V

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Void;

    invoke-virtual {v1, v12}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_222
    .catch Ljava/security/KeyStoreException; {:try_start_219 .. :try_end_222} :catch_3dc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_219 .. :try_end_222} :catch_3d9
    .catch Ljava/security/cert/CertificateException; {:try_start_219 .. :try_end_222} :catch_3d6
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_222} :catch_3d3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_219 .. :try_end_222} :catch_3d0
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_222} :catch_3cd
    .catchall {:try_start_219 .. :try_end_222} :catchall_3ca

    .line 239
    move-object/from16 v1, p1

    :try_start_224
    iget v10, v1, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v10, :cond_27c

    .line 240
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v23

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v15, 0x1

    invoke-virtual {v2, v10, v12, v11, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    if-nez v10, :cond_27c

    .line 242
    sget-boolean v10, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v10, :cond_271

    .line 243
    const-string v10, "CA_CERTIFICATE keystoreService.put is failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v22

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_271
    .catch Ljava/security/KeyStoreException; {:try_start_224 .. :try_end_271} :catch_3ee
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_224 .. :try_end_271} :catch_3eb
    .catch Ljava/security/cert/CertificateException; {:try_start_224 .. :try_end_271} :catch_3e8
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_271} :catch_3e5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_224 .. :try_end_271} :catch_3e2
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_271} :catch_3df
    .catchall {:try_start_224 .. :try_end_271} :catchall_48f

    .line 247
    :cond_271
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_27a

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 247
    :cond_27a
    const/4 v6, 0x1

    return v6

    .line 250
    .end local v2    # "keystoreService":Landroid/security/KeyStore;
    :cond_27c
    nop

    .line 287
    .end local v11    # "UidoftheCertSystem":I
    :goto_27d
    move-object/from16 v25, v13

    goto/16 :goto_3bf

    .line 313
    .end local v13    # "mcert":Ljava/security/cert/X509Certificate;
    .end local v14    # "mPriv":Ljava/security/Key;
    .end local v18    # "mJavaKey":Ljava/security/KeyStore;
    .end local v19    # "mCertficate":[B
    .end local v20    # "certchain":[Ljava/security/cert/Certificate;
    :catchall_281
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_29f

    .line 309
    :catch_285
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2a5

    .line 305
    :catch_289
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2ab

    .line 301
    :catch_28d
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2b1

    .line 297
    :catch_291
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2b7

    .line 293
    :catch_295
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2bd

    .line 289
    :catch_299
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2c3

    .line 313
    :catchall_29d
    move-exception v0

    move-object v4, v1

    :goto_29f
    move-object/from16 v1, p1

    goto/16 :goto_490

    .line 309
    :catch_2a3
    move-exception v0

    move-object v4, v1

    :goto_2a5
    move-object/from16 v1, p1

    goto/16 :goto_122

    .line 305
    :catch_2a9
    move-exception v0

    move-object v4, v1

    :goto_2ab
    move-object/from16 v1, p1

    goto/16 :goto_127

    .line 301
    :catch_2af
    move-exception v0

    move-object v4, v1

    :goto_2b1
    move-object/from16 v1, p1

    goto/16 :goto_12c

    .line 297
    :catch_2b5
    move-exception v0

    move-object v4, v1

    :goto_2b7
    move-object/from16 v1, p1

    goto/16 :goto_131

    .line 293
    :catch_2bb
    move-exception v0

    move-object v4, v1

    :goto_2bd
    move-object/from16 v1, p1

    goto/16 :goto_136

    .line 289
    :catch_2c1
    move-exception v0

    move-object v4, v1

    :goto_2c3
    move-object/from16 v1, p1

    goto/16 :goto_13b

    .line 251
    .restart local v11    # "UidoftheCertSystem":I
    .restart local v13    # "mcert":Ljava/security/cert/X509Certificate;
    .restart local v14    # "mPriv":Ljava/security/Key;
    .restart local v18    # "mJavaKey":Ljava/security/KeyStore;
    .restart local v19    # "mCertficate":[B
    .restart local v20    # "certchain":[Ljava/security/cert/Certificate;
    :cond_2c7
    move-object v2, v1

    move-object/from16 v21, v5

    move-object/from16 v5, v23

    move-object/from16 v1, p1

    .end local v5    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .local v21, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    :try_start_2ce
    iget-object v5, v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v5, v11}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v5
    :try_end_2d4
    .catch Ljava/security/KeyStoreException; {:try_start_2ce .. :try_end_2d4} :catch_411
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2ce .. :try_end_2d4} :catch_40b
    .catch Ljava/security/cert/CertificateException; {:try_start_2ce .. :try_end_2d4} :catch_406
    .catch Ljava/io/IOException; {:try_start_2ce .. :try_end_2d4} :catch_401
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2ce .. :try_end_2d4} :catch_3fc
    .catch Ljava/lang/Exception; {:try_start_2ce .. :try_end_2d4} :catch_3f7
    .catchall {:try_start_2ce .. :try_end_2d4} :catchall_3f1

    .line 252
    .end local v21    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .restart local v5    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    :try_start_2d4
    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v21
    :try_end_2d8
    .catch Ljava/security/KeyStoreException; {:try_start_2d4 .. :try_end_2d8} :catch_3ee
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d4 .. :try_end_2d8} :catch_3eb
    .catch Ljava/security/cert/CertificateException; {:try_start_2d4 .. :try_end_2d8} :catch_3e8
    .catch Ljava/io/IOException; {:try_start_2d4 .. :try_end_2d8} :catch_3e5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2d4 .. :try_end_2d8} :catch_3e2
    .catch Ljava/lang/Exception; {:try_start_2d4 .. :try_end_2d8} :catch_3df
    .catchall {:try_start_2d4 .. :try_end_2d8} :catchall_48f

    move-object/from16 v24, v21

    .line 253
    .local v24, "keyChainService":Landroid/security/IKeyChainService;
    const/4 v2, 0x1

    :try_start_2db
    new-array v1, v2, [Ljava/security/cert/Certificate;

    const/16 v16, 0x0

    aput-object v13, v1, v16

    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v1

    move-object/from16 v25, v13

    move-object/from16 v13, v24

    .end local v24    # "keyChainService":Landroid/security/IKeyChainService;
    .local v13, "keyChainService":Landroid/security/IKeyChainService;
    .local v25, "mcert":Ljava/security/cert/X509Certificate;
    invoke-interface {v13, v3, v10, v1, v2}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v1

    if-nez v1, :cond_327

    .line 255
    sget-boolean v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v1, :cond_31c

    .line 256
    const-string v1, "USER_CERTIFICATE keyChainService.put is failed"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31c
    .catch Ljava/security/KeyStoreException; {:try_start_2db .. :try_end_31c} :catch_3dc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2db .. :try_end_31c} :catch_3d9
    .catch Ljava/security/cert/CertificateException; {:try_start_2db .. :try_end_31c} :catch_3d6
    .catch Ljava/io/IOException; {:try_start_2db .. :try_end_31c} :catch_3d3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2db .. :try_end_31c} :catch_3d0
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_31c} :catch_3cd
    .catchall {:try_start_2db .. :try_end_31c} :catchall_3ca

    .line 261
    :cond_31c
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_325

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 261
    :cond_325
    const/4 v1, 0x1

    return v1

    .line 263
    :cond_327
    :try_start_327
    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v13, v3, v4, v1, v2}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v1

    if-nez v1, :cond_36a

    .line 265
    sget-boolean v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v1, :cond_35f

    .line 266
    const-string v1, "USER_PRIVATE_KEY keyChainService.put is failed"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35f
    .catch Ljava/security/KeyStoreException; {:try_start_327 .. :try_end_35f} :catch_3dc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_327 .. :try_end_35f} :catch_3d9
    .catch Ljava/security/cert/CertificateException; {:try_start_327 .. :try_end_35f} :catch_3d6
    .catch Ljava/io/IOException; {:try_start_327 .. :try_end_35f} :catch_3d3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_327 .. :try_end_35f} :catch_3d0
    .catch Ljava/lang/Exception; {:try_start_327 .. :try_end_35f} :catch_3cd
    .catchall {:try_start_327 .. :try_end_35f} :catchall_3ca

    .line 270
    :cond_35f
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_368

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 270
    :cond_368
    const/4 v1, 0x1

    return v1

    .line 272
    :cond_36a
    :try_start_36a
    const-string/jumbo v1, "setUserSelectable called for other uid"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x1

    invoke-interface {v13, v3, v1}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V
    :try_end_374
    .catch Ljava/security/KeyStoreException; {:try_start_36a .. :try_end_374} :catch_3dc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36a .. :try_end_374} :catch_3d9
    .catch Ljava/security/cert/CertificateException; {:try_start_36a .. :try_end_374} :catch_3d6
    .catch Ljava/io/IOException; {:try_start_36a .. :try_end_374} :catch_3d3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_36a .. :try_end_374} :catch_3d0
    .catch Ljava/lang/Exception; {:try_start_36a .. :try_end_374} :catch_3cd
    .catchall {:try_start_36a .. :try_end_374} :catchall_3ca

    .line 274
    move-object/from16 v1, p1

    :try_start_376
    iget v2, v1, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v2, :cond_3bf

    .line 275
    iget-object v2, v1, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    move-object/from16 v4, v23

    const/4 v10, 0x1

    invoke-interface {v13, v3, v4, v2, v10}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v2

    if-nez v2, :cond_3bf

    .line 277
    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_3b4

    .line 278
    const-string v2, "CA_CERTIFICATE keyChainService.put is failed"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v22

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b4
    .catch Ljava/security/KeyStoreException; {:try_start_376 .. :try_end_3b4} :catch_3ee
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_376 .. :try_end_3b4} :catch_3eb
    .catch Ljava/security/cert/CertificateException; {:try_start_376 .. :try_end_3b4} :catch_3e8
    .catch Ljava/io/IOException; {:try_start_376 .. :try_end_3b4} :catch_3e5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_376 .. :try_end_3b4} :catch_3e2
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_3b4} :catch_3df
    .catchall {:try_start_376 .. :try_end_3b4} :catchall_48f

    .line 282
    :cond_3b4
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_3bd

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 282
    :cond_3bd
    const/4 v2, 0x1

    return v2

    .line 287
    .end local v11    # "UidoftheCertSystem":I
    .end local v13    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_3bf
    :goto_3bf
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_3c8

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 287
    :cond_3c8
    const/4 v2, 0x0

    return v2

    .line 313
    .end local v14    # "mPriv":Ljava/security/Key;
    .end local v18    # "mJavaKey":Ljava/security/KeyStore;
    .end local v19    # "mCertficate":[B
    .end local v20    # "certchain":[Ljava/security/cert/Certificate;
    .end local v25    # "mcert":Ljava/security/cert/X509Certificate;
    :catchall_3ca
    move-exception v0

    goto/16 :goto_29f

    .line 309
    :catch_3cd
    move-exception v0

    goto/16 :goto_2a5

    .line 305
    :catch_3d0
    move-exception v0

    goto/16 :goto_2ab

    .line 301
    :catch_3d3
    move-exception v0

    goto/16 :goto_2b1

    .line 297
    :catch_3d6
    move-exception v0

    goto/16 :goto_2b7

    .line 293
    :catch_3d9
    move-exception v0

    goto/16 :goto_2bd

    .line 289
    :catch_3dc
    move-exception v0

    goto/16 :goto_2c3

    .line 309
    :catch_3df
    move-exception v0

    goto/16 :goto_122

    .line 305
    :catch_3e2
    move-exception v0

    goto/16 :goto_127

    .line 301
    :catch_3e5
    move-exception v0

    goto/16 :goto_12c

    .line 297
    :catch_3e8
    move-exception v0

    goto/16 :goto_131

    .line 293
    :catch_3eb
    move-exception v0

    goto/16 :goto_136

    .line 289
    :catch_3ee
    move-exception v0

    goto/16 :goto_13b

    .line 313
    .end local v5    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .restart local v21    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    :catchall_3f1
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v21

    goto/16 :goto_491

    .line 309
    :catch_3f7
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v21

    goto :goto_423

    .line 305
    :catch_3fc
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v21

    goto :goto_436

    .line 301
    :catch_401
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v21

    goto :goto_449

    .line 297
    :catch_406
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v21

    goto :goto_45c

    .line 293
    :catch_40b
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v21

    goto/16 :goto_46e

    .line 289
    :catch_411
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v21

    goto/16 :goto_481

    .line 313
    .end local v21    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .restart local v5    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    :catchall_417
    move-exception v0

    move-object v1, v2

    move-object/from16 v21, v5

    move-object v2, v0

    .end local v5    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .restart local v21    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    goto/16 :goto_491

    .line 309
    .end local v21    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .restart local v5    # "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    :catch_41e
    move-exception v0

    move-object v1, v2

    move-object/from16 v21, v5

    move-object v2, v0

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    :goto_423
    :try_start_423
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_426
    .catchall {:try_start_423 .. :try_end_426} :catchall_48f

    .line 311
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_42f

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 311
    :cond_42f
    const/4 v4, 0x4

    return v4

    .line 305
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_431
    move-exception v0

    move-object v1, v2

    move-object/from16 v21, v5

    move-object v2, v0

    .line 307
    .local v2, "e":Ljava/security/UnrecoverableKeyException;
    :goto_436
    :try_start_436
    invoke-virtual {v2}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_439
    .catchall {:try_start_436 .. :try_end_439} :catchall_48f

    .line 308
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_442

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 308
    :cond_442
    const/4 v4, 0x2

    return v4

    .line 301
    .end local v2    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_444
    move-exception v0

    move-object v1, v2

    move-object/from16 v21, v5

    move-object v2, v0

    .line 303
    .local v2, "e":Ljava/io/IOException;
    :goto_449
    :try_start_449
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44c
    .catchall {:try_start_449 .. :try_end_44c} :catchall_48f

    .line 304
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_455

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 304
    :cond_455
    const/4 v4, 0x4

    return v4

    .line 297
    .end local v2    # "e":Ljava/io/IOException;
    :catch_457
    move-exception v0

    move-object v1, v2

    move-object/from16 v21, v5

    move-object v2, v0

    .line 299
    .local v2, "e":Ljava/security/cert/CertificateException;
    :goto_45c
    :try_start_45c
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_45f
    .catchall {:try_start_45c .. :try_end_45f} :catchall_48f

    .line 300
    const/4 v4, 0x3

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_468

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 300
    :cond_468
    return v4

    .line 293
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :catch_469
    move-exception v0

    move-object v1, v2

    move-object/from16 v21, v5

    move-object v2, v0

    .line 295
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_46e
    :try_start_46e
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_471
    .catchall {:try_start_46e .. :try_end_471} :catchall_48f

    .line 296
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_47a

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 296
    :cond_47a
    const/4 v4, 0x2

    return v4

    .line 289
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_47c
    move-exception v0

    move-object v1, v2

    move-object/from16 v21, v5

    move-object v2, v0

    .line 291
    .local v2, "e":Ljava/security/KeyStoreException;
    :goto_481
    :try_start_481
    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_484
    .catchall {:try_start_481 .. :try_end_484} :catchall_48f

    .line 292
    nop

    .line 313
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_48d

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 292
    :cond_48d
    const/4 v4, 0x2

    return v4

    .line 313
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :catchall_48f
    move-exception v0

    :goto_490
    move-object v2, v0

    :goto_491
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-eqz v5, :cond_499

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 315
    :cond_499
    throw v2
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .registers 15
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 109
    return v1

    .line 112
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 113
    .local v0, "CallingUid":I
    const/4 v2, 0x0

    .line 114
    .local v2, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    sget-boolean v3, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v3, :cond_28

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAliasExists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SCEPKeystoreProxyService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_28
    :try_start_28
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 119
    .local v3, "UidoftheCertSystem":I
    const/16 v5, 0x3f2

    .line 121
    .local v5, "UidoftheCertWifi":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_38} :catch_12d
    .catchall {:try_start_28 .. :try_end_38} :catchall_12b

    .line 122
    .local v6, "mAndroid":Landroid/security/KeyStore;
    const-string v7, "CACERT_"

    const/4 v8, 0x0

    const-string v9, "USRCERT_"

    const-string v10, "USRPKEY_"

    if-eqz p2, :cond_89

    .line 123
    if-eqz v6, :cond_58

    :try_start_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_82

    :cond_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v6, v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_82

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v6, v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_80} :catch_12d
    .catchall {:try_start_43 .. :try_end_80} :catchall_12b

    if-eqz v4, :cond_11e

    .line 126
    :cond_82
    nop

    .line 150
    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 126
    :cond_88
    return v8

    .line 129
    :cond_89
    if-eqz v6, :cond_d3

    if-ne v3, v4, :cond_d3

    :try_start_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {v6, v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_cc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v6, v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_cc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {v6, v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_ca} :catch_12d
    .catchall {:try_start_8d .. :try_end_ca} :catchall_12b

    if-eqz v4, :cond_d3

    .line 133
    :cond_cc
    nop

    .line 150
    if-eqz v2, :cond_d2

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 133
    :cond_d2
    return v8

    .line 135
    :cond_d3
    :try_start_d3
    iget-object v4, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v4

    move-object v2, v4

    .line 136
    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    .line 138
    .local v4, "keyChainService":Landroid/security/IKeyChainService;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v3}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_124

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 139
    invoke-interface {v4, v9, v3}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_124

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-interface {v4, v7, v3}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v7
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_11b} :catch_12d
    .catchall {:try_start_d3 .. :try_end_11b} :catchall_12b

    if-eqz v7, :cond_11e

    goto :goto_124

    .line 150
    .end local v3    # "UidoftheCertSystem":I
    .end local v4    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v5    # "UidoftheCertWifi":I
    .end local v6    # "mAndroid":Landroid/security/KeyStore;
    :cond_11e
    if-eqz v2, :cond_123

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 152
    :cond_123
    return v1

    .line 141
    .restart local v3    # "UidoftheCertSystem":I
    .restart local v4    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v5    # "UidoftheCertWifi":I
    .restart local v6    # "mAndroid":Landroid/security/KeyStore;
    :cond_124
    :goto_124
    nop

    .line 150
    if-eqz v2, :cond_12a

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 141
    :cond_12a
    return v8

    .line 150
    .end local v3    # "UidoftheCertSystem":I
    .end local v4    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v5    # "UidoftheCertWifi":I
    .end local v6    # "mAndroid":Landroid/security/KeyStore;
    :catchall_12b
    move-exception v1

    goto :goto_138

    .line 145
    :catch_12d
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    :try_start_12e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_12b

    .line 148
    nop

    .line 150
    if-eqz v2, :cond_137

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 148
    :cond_137
    return v1

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_138
    if-eqz v2, :cond_13d

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 151
    :cond_13d
    throw v1
.end method

.method setPrivateKey([B)Ljava/security/PrivateKey;
    .registers 4
    .param p1, "bytes"    # [B

    .line 664
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 665
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_17
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_f} :catch_10

    .line 666
    .local v1, "mUserKey":Ljava/security/PrivateKey;
    return-object v1

    .line 669
    .end local v0    # "keyFactory":Ljava/security/KeyFactory;
    .end local v1    # "mUserKey":Ljava/security/PrivateKey;
    :catch_10
    move-exception v0

    .line 670
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 667
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_17
    move-exception v0

    .line 668
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
