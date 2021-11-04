.class public Lcom/samsung/android/security/keystore/AttestationUtils;
.super Ljava/lang/Object;
.source "AttestationUtils.java"


# static fields
.field public static final DEFAULT_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final KEYMASTER_VERSION_SUPPORT_INTEGRITY_STATUS:I = 0x2

.field public static final PUBKEY_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final SAMSUNG_ATTESTESTATION_DEVICE_IDS_ROOT:Ljava/lang/String; = "samsungDeviceIds"

.field private static final SAMSUNG_ATTESTESTATION_ROOT:Ljava/lang/String; = "samsung"

.field private static final TAG:Ljava/lang/String; = "AttestationUtils"

.field private static final separator:Ljava/lang/String; = ":"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore;

    .line 363
    return-void
.end method

.method private getBytesAuthenticatePackage(Ljava/lang/String;Landroid/app/Application;)[B
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "application"    # Landroid/app/Application;

    .line 914
    const-string v0, "AttestationUtils"

    if-nez p1, :cond_b

    .line 915
    const-string v1, "packageName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v0, 0x0

    return-object v0

    .line 919
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->getPackagePublicKeys(Ljava/lang/String;Landroid/app/Application;)[Ljava/security/PublicKey;

    move-result-object v1

    .line 920
    .local v1, "pubKeys":[Ljava/security/PublicKey;
    if-nez v1, :cond_1b

    .line 921
    const-string v2, "pubKeys is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 925
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 926
    .local v0, "packageNameByte":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 927
    .local v2, "authPkgStream":Ljava/io/ByteArrayOutputStream;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 929
    array-length v3, v1

    move v5, v4

    :goto_2b
    if-ge v5, v3, :cond_50

    aget-object v6, v1, v5

    .line 930
    .local v6, "pubKey":Ljava/security/PublicKey;
    const-string v7, ":"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 931
    .local v7, "separator":[B
    array-length v8, v7

    invoke-virtual {v2, v7, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 932
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/security/keystore/AttestationUtils;->sha256(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v8

    .line 933
    .local v8, "baseEncode":[B
    array-length v9, v8

    invoke-virtual {v2, v8, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 929
    .end local v6    # "pubKey":Ljava/security/PublicKey;
    .end local v7    # "separator":[B
    .end local v8    # "baseEncode":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 935
    :cond_50
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private getPackagePublicKeys(Ljava/lang/String;Landroid/app/Application;)[Ljava/security/PublicKey;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 870
    invoke-virtual {p2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 871
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 873
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_3b

    move-object v1, v2

    .line 877
    nop

    .line 879
    if-nez v1, :cond_18

    .line 880
    const-string v2, "AttestationUtils"

    const-string v4, "pkgInfo is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return-object v3

    .line 884
    :cond_18
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 886
    .local v2, "signInfo":Landroid/content/pm/SigningInfo;
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 887
    .local v4, "sigs":[Landroid/content/pm/Signature;
    array-length v5, v4

    new-array v5, v5, [Ljava/security/PublicKey;

    .line 888
    .local v5, "pubKeys":[Ljava/security/PublicKey;
    const/4 v6, 0x0

    .line 889
    .local v6, "i":I
    array-length v7, v4

    const/4 v8, 0x0

    :goto_24
    if-ge v8, v7, :cond_3a

    aget-object v9, v4, v8

    .line 891
    .local v9, "s":Landroid/content/pm/Signature;
    :try_start_28
    invoke-virtual {v9}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    aput-object v10, v5, v6
    :try_end_2e
    .catch Ljava/security/cert/CertificateException; {:try_start_28 .. :try_end_2e} :catch_35

    .line 895
    nop

    .line 896
    nop

    .end local v9    # "s":Landroid/content/pm/Signature;
    add-int/lit8 v6, v6, 0x1

    .line 889
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 892
    .restart local v9    # "s":Landroid/content/pm/Signature;
    :catch_35
    move-exception v7

    .line 893
    .local v7, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v7}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 894
    return-object v3

    .line 898
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v9    # "s":Landroid/content/pm/Signature;
    :cond_3a
    return-object v5

    .line 874
    .end local v2    # "signInfo":Landroid/content/pm/SigningInfo;
    .end local v4    # "sigs":[Landroid/content/pm/Signature;
    .end local v5    # "pubKeys":[Ljava/security/PublicKey;
    .end local v6    # "i":I
    :catch_3b
    move-exception v2

    .line 875
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 876
    return-object v3
.end method

.method private getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 848
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 849
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 850
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 851
    .local v2, "pid":I
    const-string v3, "AttestationUtils"

    if-nez v1, :cond_1b

    .line 852
    const-string v4, "infos is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v3, 0x0

    return-object v3

    .line 856
    :cond_1b
    const/4 v4, 0x0

    .line 857
    .local v4, "processName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 858
    .local v6, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v2, :cond_49

    .line 859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processName : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v3, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v3

    .line 862
    .end local v6    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_49
    goto :goto_20

    .line 864
    :cond_4a
    const-string v5, "can\'t find any processInfo"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-object v4
.end method

.method private isPrivateKeyEntry(Ljava/lang/String;)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 814
    if-eqz p1, :cond_1b

    .line 818
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 815
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isSupportInstegrityStatus()Z
    .registers 4

    .line 835
    const/4 v0, 0x0

    .line 837
    .local v0, "keymaster_version":I
    :try_start_1
    const-string v1, "4"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 841
    goto :goto_d

    .line 839
    :catch_9
    move-exception v1

    .line 840
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 843
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportInstegrityStatus : keymaster_version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AttestationUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v1, 0x2

    if-lt v0, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method private sha256(Ljava/lang/String;)[B
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 902
    const/4 v0, 0x0

    .line 904
    .local v0, "md":Ljava/security/MessageDigest;
    :try_start_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_7} :catch_15

    move-object v0, v1

    .line 907
    nop

    .line 908
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 910
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 905
    :catch_15
    move-exception v1

    .line 906
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private storeCertificate(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "certificateBytes"    # [B
    .param p3, "failureMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v0

    .line 828
    .local v0, "insertErrorCode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 832
    return-void

    .line 829
    :cond_c
    new-instance v1, Ljava/security/ProviderException;

    .line 830
    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;
    .registers 13
    .param p1, "spec"    # Lcom/samsung/android/security/keystore/AttestParameterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/security/keystore/AttestParameterSpec;",
            ")",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;,
            Lcom/samsung/android/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .line 564
    if-eqz p1, :cond_11b

    .line 568
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getChallenge()[B

    move-result-object v1

    .line 570
    .local v1, "challenge":[B
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 572
    .local v2, "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    if-eqz v0, :cond_113

    .line 576
    if-eqz v1, :cond_10b

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "privateKeyAlias":Ljava/lang/String;
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 582
    .local v4, "args":Landroid/security/keymaster/KeymasterArguments;
    const v5, -0x6ffffd3c

    invoke-virtual {v4, v5, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 583
    const v5, -0x6ffff7ca

    .line 584
    const-string v6, "samsungDeviceIds"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 583
    invoke-virtual {v4, v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 586
    if-eqz v2, :cond_5a

    const-string v5, "RFC1779"

    invoke-virtual {v2, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 587
    const v6, -0x6ffff7c9

    .line 588
    invoke-virtual {v2, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 587
    invoke-virtual {v4, v6, v5}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 590
    :cond_5a
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isVerifiableIntegrity()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 591
    invoke-direct {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->isSupportInstegrityStatus()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 597
    const v5, 0x700008fe

    invoke-virtual {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 598
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    .line 600
    .local v6, "application":Landroid/app/Application;
    const-string v7, "AttestationUtils"

    if-eqz v6, :cond_9d

    .line 601
    if-eqz v5, :cond_86

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_86

    .line 602
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 603
    :cond_86
    invoke-direct {p0, v6}, Lcom/samsung/android/security/keystore/AttestationUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 606
    :cond_8a
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/security/keystore/AttestationUtils;->getBytesAuthenticatePackage(Ljava/lang/String;Landroid/app/Application;)[B

    move-result-object v8

    .line 607
    .local v8, "bytesAuthPkg":[B
    if-eqz v8, :cond_97

    .line 608
    const v7, -0x6ffff701

    invoke-virtual {v4, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto :goto_9c

    .line 610
    :cond_97
    const-string v9, "attestDevice : byte is null"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v8    # "bytesAuthPkg":[B
    :goto_9c
    goto :goto_ab

    .line 613
    :cond_9d
    const-string v8, "attestDevice : application is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 592
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "application":Landroid/app/Application;
    :cond_a3
    new-instance v5, Ljava/security/ProviderException;

    const-string v6, "Integrity status is only supported on devices of keymaster version 2 or later"

    invoke-direct {v5, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 616
    :cond_ab
    :goto_ab
    new-instance v5, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v5}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 618
    .local v5, "outChain":Landroid/security/keymaster/KeymasterCertificateChain;
    iget-object v6, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v3, v4, v5}, Landroid/security/KeyStore;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v6

    .line 619
    .local v6, "errorCode":I
    const/16 v7, -0x42

    if-eq v6, v7, :cond_ff

    .line 625
    const/4 v7, 0x1

    if-ne v6, v7, :cond_f3

    .line 629
    invoke-virtual {v5}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object v7

    .line 630
    .local v7, "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    if-eqz v7, :cond_eb

    .line 633
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_cb

    .line 637
    return-object v7

    .line 634
    :cond_cb
    new-instance v8, Ljava/security/ProviderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attestation certificate chain contained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " entries. At least three are required."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 631
    :cond_eb
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "chain == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 626
    .end local v7    # "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :cond_f3
    new-instance v7, Ljava/security/ProviderException;

    .line 627
    invoke-static {v6}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    const-string v9, "Failed to generate attestation certificate chain"

    invoke-direct {v7, v9, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 620
    :cond_ff
    new-instance v7, Lcom/samsung/android/security/keystore/DeviceIdAttestationException;

    .line 622
    invoke-static {v6}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    const-string v9, "Failed to generate attestation certificate chain with deviceId"

    invoke-direct {v7, v9, v8}, Lcom/samsung/android/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 577
    .end local v3    # "privateKeyAlias":Ljava/lang/String;
    .end local v4    # "args":Landroid/security/keymaster/KeymasterArguments;
    .end local v5    # "outChain":Landroid/security/keymaster/KeymasterCertificateChain;
    .end local v6    # "errorCode":I
    :cond_10b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "attestDevice : The challenge cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 573
    :cond_113
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "attestDevice : alias == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 565
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "challenge":[B
    .end local v2    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    :cond_11b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attestDevice : AttestParameterSpec is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attestDevice(Ljava/lang/String;[B)Ljava/lang/Iterable;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;,
            Lcom/samsung/android/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .line 536
    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 537
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setDeviceAttestation(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object v0

    .line 539
    .local v0, "spec":Lcom/samsung/android/security/keystore/AttestParameterSpec;
    invoke-virtual {p0, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v1

    return-object v1
.end method

.method public attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;
    .registers 13
    .param p1, "spec"    # Lcom/samsung/android/security/keystore/AttestParameterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/security/keystore/AttestParameterSpec;",
            ")",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 427
    if-eqz p1, :cond_10b

    .line 431
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getChallenge()[B

    move-result-object v1

    .line 433
    .local v1, "challenge":[B
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 435
    .local v2, "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    if-eqz v0, :cond_103

    .line 439
    if-eqz v1, :cond_fb

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "privateKeyAlias":Ljava/lang/String;
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 445
    .local v4, "args":Landroid/security/keymaster/KeymasterArguments;
    const v5, -0x6ffffd3c

    invoke-virtual {v4, v5, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 446
    const v5, -0x6ffff7ca

    .line 447
    const-string v6, "samsung"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 446
    invoke-virtual {v4, v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 449
    if-eqz v2, :cond_5a

    const-string v5, "RFC1779"

    invoke-virtual {v2, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 450
    const v6, -0x6ffff7c9

    .line 451
    invoke-virtual {v2, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 450
    invoke-virtual {v4, v6, v5}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 453
    :cond_5a
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isVerifiableIntegrity()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->isSupportInstegrityStatus()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 460
    const v5, 0x700008fe

    invoke-virtual {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 461
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    .line 463
    .local v6, "application":Landroid/app/Application;
    const-string v7, "AttestationUtils"

    if-eqz v6, :cond_9d

    .line 464
    if-eqz v5, :cond_86

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_86

    .line 465
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 466
    :cond_86
    invoke-direct {p0, v6}, Lcom/samsung/android/security/keystore/AttestationUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 469
    :cond_8a
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/security/keystore/AttestationUtils;->getBytesAuthenticatePackage(Ljava/lang/String;Landroid/app/Application;)[B

    move-result-object v8

    .line 470
    .local v8, "bytesAuthPkg":[B
    if-eqz v8, :cond_97

    .line 471
    const v7, -0x6ffff701

    invoke-virtual {v4, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto :goto_9c

    .line 473
    :cond_97
    const-string v9, "attestKey : byte is null"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v8    # "bytesAuthPkg":[B
    :goto_9c
    goto :goto_ab

    .line 476
    :cond_9d
    const-string v8, "attestKey : application is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 455
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "application":Landroid/app/Application;
    :cond_a3
    new-instance v5, Ljava/security/ProviderException;

    const-string v6, "Integrity status is only supported on devices of keymaster version 2 or later"

    invoke-direct {v5, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 479
    :cond_ab
    :goto_ab
    new-instance v5, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v5}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 481
    .local v5, "outChain":Landroid/security/keymaster/KeymasterCertificateChain;
    iget-object v6, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v3, v4, v5}, Landroid/security/KeyStore;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v6

    .line 482
    .local v6, "errorCode":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_ef

    .line 486
    invoke-virtual {v5}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object v7

    .line 487
    .local v7, "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    if-eqz v7, :cond_e7

    .line 490
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_c7

    .line 494
    return-object v7

    .line 491
    :cond_c7
    new-instance v8, Ljava/security/ProviderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attestation certificate chain contained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " entries. At least three are required."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 488
    :cond_e7
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "chain == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 483
    .end local v7    # "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :cond_ef
    new-instance v7, Ljava/security/ProviderException;

    .line 484
    invoke-static {v6}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    const-string v9, "Failed to generate attestation certificate chain"

    invoke-direct {v7, v9, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 440
    .end local v3    # "privateKeyAlias":Ljava/lang/String;
    .end local v4    # "args":Landroid/security/keymaster/KeymasterArguments;
    .end local v5    # "outChain":Landroid/security/keymaster/KeymasterCertificateChain;
    .end local v6    # "errorCode":I
    :cond_fb
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "attestKey : The challenge cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 436
    :cond_103
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "attestKey : alias == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 428
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "challenge":[B
    .end local v2    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    :cond_10b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attestKey : AttestParameterSpec is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attestKey(Ljava/lang/String;[B)Ljava/lang/Iterable;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 403
    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 404
    invoke-virtual {v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object v0

    .line 405
    .local v0, "spec":Lcom/samsung/android/security/keystore/AttestParameterSpec;
    invoke-virtual {p0, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v1

    return-object v1
.end method

.method public deleteKey(Ljava/lang/String;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 803
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 804
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 805
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_f

    .line 810
    .end local v0    # "keystore":Ljava/security/KeyStore;
    nop

    .line 811
    return-void

    .line 806
    :catch_f
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 809
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;
    .registers 8
    .param p1, "spec"    # Lcom/samsung/android/security/keystore/AttestParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 719
    if-eqz p1, :cond_55

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 724
    .local v1, "params":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "alias":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4d

    .line 733
    :try_start_18
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidKeyStore"

    invoke-static {v3, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 734
    .local v3, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v3, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 735
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    move-object v0, v4

    .line 737
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 738
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v4

    goto :goto_39

    .line 739
    :cond_35
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v4

    :goto_39
    nop

    .line 741
    .local v4, "certChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/security/keystore/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_3d
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/security/KeyStoreException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/security/NoSuchProviderException; {:try_start_18 .. :try_end_3d} :catch_3f

    .line 747
    .end local v3    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v4    # "certChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    nop

    .line 749
    return-object v0

    .line 742
    :catch_3f
    move-exception v3

    .line 745
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 746
    new-instance v4, Ljava/security/ProviderException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 729
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4d
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Cannot generate key pair with empty alias or specified uid."

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 720
    .end local v0    # "keyPair":Ljava/security/KeyPair;
    .end local v1    # "params":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v2    # "alias":Ljava/lang/String;
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AttestParameterSpec is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 698
    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 699
    invoke-virtual {v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object v0

    .line 700
    .local v0, "spec":Lcom/samsung/android/security/keystore/AttestParameterSpec;
    invoke-virtual {p0, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object v1

    return-object v1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 763
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 764
    .local v1, "keystore":Ljava/security/KeyStore;
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 765
    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_e} :catch_f

    return-object v0

    .line 766
    .end local v1    # "keystore":Ljava/security/KeyStore;
    :catch_f
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 771
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 785
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 786
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 787
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 788
    .end local v0    # "keystore":Ljava/security/KeyStore;
    :catch_f
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 791
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/lang/NullPointerException;,
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 651
    .local p2, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 654
    if-eqz p2, :cond_6f

    .line 658
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 659
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 660
    const-string v1, "AttestationUtils"

    const-string v2, "there is no cert chain byte"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 664
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v3, "Failed to store certificate"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->storeCertificate(Ljava/lang/String;[BLjava/lang/String;)V

    .line 667
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 668
    return-void

    .line 671
    :cond_3d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 672
    .local v1, "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 673
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 674
    .local v2, "data":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 675
    .end local v2    # "data":[B
    goto :goto_42

    .line 677
    :cond_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 677
    const-string v4, "Failed to store attestation CA certificate"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/security/keystore/AttestationUtils;->storeCertificate(Ljava/lang/String;[BLjava/lang/String;)V

    .line 679
    return-void

    .line 655
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    .end local v1    # "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    :cond_6f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iterable == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_77
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Entry exists and is not a trusted certificate"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
