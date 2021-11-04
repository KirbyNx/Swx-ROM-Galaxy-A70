.class public Lcom/android/server/enterprise/utils/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRandom:Ljava/util/Random;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 125
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 307
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    .line 308
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    .line 309
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    .line 310
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 311
    return-void
.end method

.method public static convertDerToPem([B)[B
    .registers 7
    .param p0, "certDer"    # [B

    .line 849
    const-string v0, "CertificateUtil"

    const-string v1, "Convert DER to PEM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 852
    .local v1, "bao":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 853
    .local v2, "writer":Ljava/io/Writer;
    new-instance v3, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    .line 854
    .local v3, "pw":Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
    new-instance v4, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    const-string v5, "CERTIFICATE"

    invoke-direct {v4, v5, p0}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    .line 855
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->close()V

    .line 856
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_29} :catch_2a

    return-object v0

    .line 858
    .end local v1    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "writer":Ljava/io/Writer;
    .end local v3    # "pw":Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
    :catch_2a
    move-exception v1

    .line 859
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception converting DER to PEM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v0, 0x0

    return-object v0
.end method

.method public static convertPemToX509([B)Ljava/util/List;
    .registers 6
    .param p0, "certBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 779
    const-string v0, "Could not convert certificate."

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v2, "CertificateUtil"

    if-eqz p0, :cond_34

    .line 783
    :try_start_b
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_30
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_f} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_f} :catch_11

    move-object v1, v0

    goto :goto_34

    .line 789
    :catch_11
    move-exception v0

    .line 790
    .local v0, "ile":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 787
    .end local v0    # "ile":Ljava/lang/IllegalArgumentException;
    :catch_2b
    move-exception v3

    .line 788
    .local v3, "cer":Ljava/security/cert/CertificateException;
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "cer":Ljava/security/cert/CertificateException;
    goto :goto_34

    .line 785
    :catch_30
    move-exception v3

    .line 786
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    .end local v3    # "e":Ljava/io/IOException;
    :cond_34
    :goto_34
    nop

    .line 792
    :goto_35
    if-nez v1, :cond_42

    .line 793
    const-string v0, "Could not convert any certificate."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 796
    :cond_42
    return-object v1
.end method

.method public static convertStoreTypeToSystemUidAsUser(II)I
    .registers 4
    .param p0, "storeType"    # I
    .param p1, "userId"    # I

    .line 697
    const/4 v0, -0x1

    .line 698
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne p0, v1, :cond_b

    .line 699
    const v1, 0x186a0

    mul-int/2addr v1, p1

    add-int/lit16 v0, v1, 0x3e8

    goto :goto_10

    .line 700
    :cond_b
    const/4 v1, 0x2

    if-ne p0, v1, :cond_10

    .line 701
    const/16 v0, 0x3f2

    .line 703
    :cond_10
    :goto_10
    return v0
.end method

.method public static convertStoreTypeToUid(I)I
    .registers 3
    .param p0, "storeType"    # I

    .line 670
    const/4 v0, -0x1

    .line 671
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne p0, v1, :cond_6

    .line 672
    const/4 v0, -0x1

    goto :goto_b

    .line 673
    :cond_6
    const/4 v1, 0x2

    if-ne p0, v1, :cond_b

    .line 674
    const/16 v0, 0x3f2

    .line 676
    :cond_b
    :goto_b
    return v0
.end method

.method public static convertToX509List(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 815
    .local p0, "certInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 817
    .local v2, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    invoke-virtual {v2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    .end local v2    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    goto :goto_9

    .line 819
    :cond_1f
    return-object v0
.end method

.method public static convertX509ListToPem(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)[B"
        }
    .end annotation

    .line 823
    .local p0, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v0, "Could not convert certificate."

    const-string v1, "CertificateUtil"

    if-eqz p0, :cond_3a

    .line 824
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    .line 826
    .local v2, "array":[Ljava/security/cert/X509Certificate;
    :try_start_12
    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_36
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_16} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_16} :catch_17

    return-object v0

    .line 831
    :catch_17
    move-exception v0

    .line 832
    .local v0, "ile":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 829
    .end local v0    # "ile":Ljava/lang/IllegalArgumentException;
    :catch_31
    move-exception v3

    .line 830
    .local v3, "cer":Ljava/security/cert/CertificateException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "cer":Ljava/security/cert/CertificateException;
    goto :goto_3a

    .line 827
    :catch_36
    move-exception v3

    .line 828
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v2    # "array":[Ljava/security/cert/X509Certificate;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    .registers 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 801
    const-string v0, "Could not convert certificate."

    const-string v1, "CertificateUtil"

    const/4 v2, 0x0

    .line 803
    .local v2, "certBytes":[B
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_7
    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_17
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_10} :catch_12

    .line 810
    .end local v2    # "certBytes":[B
    .local v0, "certBytes":[B
    nop

    .line 811
    return-object v0

    .line 807
    .end local v0    # "certBytes":[B
    .restart local v2    # "certBytes":[B
    :catch_12
    move-exception v3

    .line 808
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-object v4

    .line 804
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_17
    move-exception v3

    .line 805
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-object v4
.end method

.method private extractPkcs12([BLjava/lang/String;I)Z
    .registers 12
    .param p1, "data"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 591
    const-string v0, "CertificateUtil"

    if-nez p2, :cond_6

    .line 594
    const-string p2, ""

    .line 597
    :cond_6
    const/4 v1, 0x0

    :try_start_7
    const-string v2, "PKCS12"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 598
    .local v2, "keystore":Ljava/security/KeyStore;
    new-instance v3, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 599
    .local v3, "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 601
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    .line 602
    .local v4, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 603
    return v1

    .line 605
    :cond_2d
    :goto_2d
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 606
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 607
    .local v5, "alias":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 608
    invoke-virtual {v2, v5, v3}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v6

    .line 611
    .local v6, "entry":Ljava/security/KeyStore$Entry;
    instance-of v7, v6, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_4f

    .line 612
    move-object v7, v6

    check-cast v7, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {p0, v7, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z

    move-result v0

    return v0

    .line 614
    .end local v6    # "entry":Ljava/security/KeyStore$Entry;
    :cond_4f
    goto :goto_55

    .line 618
    :cond_50
    const-string v6, "Skipping non-key entry"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_55} :catch_57

    .line 620
    .end local v5    # "alias":Ljava/lang/String;
    :goto_55
    goto :goto_2d

    .line 623
    .end local v2    # "keystore":Ljava/security/KeyStore;
    .end local v3    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    .end local v4    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_56
    goto :goto_6c

    .line 621
    :catch_57
    move-exception v2

    .line 622
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractPkcs12(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6c
    return v1
.end method

.method private installCaCerts(Ljava/lang/String;II)Z
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "keystoreUid"    # I
    .param p3, "userId"    # I

    .line 373
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 374
    return v1

    .line 375
    :cond_a
    const/4 v0, 0x1

    .line 377
    .local v0, "ret":Z
    and-int/lit8 v2, p2, 0x2

    const-string v3, "CACERT_"

    const-string v4, "CertificateUtil"

    const/4 v5, 0x0

    if-eqz v2, :cond_53

    .line 379
    :try_start_14
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    move-result-object v2

    .line 380
    .local v2, "pemCertificate":[B
    if-eqz v2, :cond_35

    .line 381
    iget-object v6, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3f2

    invoke-virtual {v6, v7, v2, v8, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v6
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_33} :catch_38

    and-int/2addr v0, v6

    goto :goto_37

    .line 386
    :cond_35
    and-int/lit8 v0, v0, 0x0

    .line 391
    .end local v2    # "pemCertificate":[B
    :goto_37
    goto :goto_3f

    .line 388
    :catch_38
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 390
    const-string v6, "Error installing CA Certificate for WIFI keystore: "

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CaCerts put state for wifi keystore: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_53
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v6, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    .line 398
    .local v2, "keyChainCRUD":Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_82

    .line 399
    iget-object v6, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-static {v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    move-result-object v6

    .line 400
    .local v6, "pemCertificate":[B
    if-eqz v6, :cond_6c

    .line 401
    invoke-virtual {v2, p1, v3, v6, v5}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_6e

    .line 405
    :cond_6c
    and-int/lit8 v0, v0, 0x0

    .line 407
    :goto_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CaCerts put state for vpn and apps keystore: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v6    # "pemCertificate":[B
    :cond_82
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_118

    .line 413
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Error converting certificate to PEM: "

    if-eqz v6, :cond_c6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 414
    .local v6, "caCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 415
    const/4 v8, 0x0

    .line 417
    .local v8, "pemCertificate":[B
    :try_start_a9
    new-array v9, v1, [Ljava/security/cert/Certificate;

    aput-object v6, v9, v5

    invoke-static {v9}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v7
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b1} :catch_b3

    move-object v8, v7

    .line 421
    goto :goto_b9

    .line 418
    :catch_b3
    move-exception v9

    .line 419
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v4, v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    and-int/lit8 v0, v0, 0x0

    .line 422
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_b9
    if-eqz v8, :cond_c5

    .line 423
    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v7

    .line 424
    .local v7, "alias":Ljava/lang/String;
    if-eqz v7, :cond_c3

    move v9, v1

    goto :goto_c4

    :cond_c3
    move v9, v5

    :goto_c4
    and-int/2addr v0, v9

    .line 427
    .end local v6    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "pemCertificate":[B
    :cond_c5
    goto :goto_8c

    .line 430
    :cond_c6
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_cc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 431
    .restart local v6    # "caCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_103

    .line 432
    const/4 v8, 0x0

    .line 434
    .restart local v8    # "pemCertificate":[B
    :try_start_e7
    new-array v9, v1, [Ljava/security/cert/Certificate;

    aput-object v6, v9, v5

    invoke-static {v9}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v9
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ef} :catch_f1

    move-object v8, v9

    .line 438
    goto :goto_f7

    .line 435
    :catch_f1
    move-exception v9

    .line 436
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v4, v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    and-int/lit8 v0, v0, 0x0

    .line 439
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_f7
    if-eqz v8, :cond_103

    .line 440
    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, "alias":Ljava/lang/String;
    if-eqz v9, :cond_101

    move v10, v1

    goto :goto_102

    :cond_101
    move v10, v5

    :goto_102
    and-int/2addr v0, v10

    .line 444
    .end local v6    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v8    # "pemCertificate":[B
    .end local v9    # "alias":Ljava/lang/String;
    :cond_103
    goto :goto_cc

    .line 445
    :cond_104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CaCerts put state for default keystore: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CaCerts put state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 450
    return v0
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    .registers 12
    .param p1, "entry"    # Ljava/security/KeyStore$PrivateKeyEntry;
    .param p2, "userId"    # I

    monitor-enter p0

    .line 629
    :try_start_1
    const-string v0, "certificate_policy"

    .line 630
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 629
    invoke-static {v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c5

    .line 632
    .local v0, "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    const/4 v1, 0x0

    if-eqz v0, :cond_60

    :try_start_e
    invoke-interface {v0, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 633
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 634
    .local v2, "arrayChain":[Ljava/security/cert/Certificate;
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 635
    .local v3, "listChain":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    array-length v4, v2

    move v5, v1

    :goto_20
    if-ge v5, v4, :cond_33

    aget-object v6, v2, v5

    .line 636
    .local v6, "cert":Ljava/security/cert/Certificate;
    new-instance v7, Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-object v8, v6

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-direct {v7, v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    nop

    .end local v6    # "cert":Ljava/security/cert/Certificate;
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 638
    .end local p0    # "this":Lcom/android/server/enterprise/utils/CertificateUtil;
    :cond_33
    invoke-interface {v0, v3, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    move-result v4

    .line 639
    .local v4, "resultCode":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_60

    .line 640
    const-string v5, "CertificateUtil"

    const-string v6, "certificate failed during validation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string/jumbo v5, "installer_module"

    .line 642
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 641
    invoke-interface {v0, v5, v6, v1, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_4b} :catch_56
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_4b} :catch_4d
    .catchall {:try_start_e .. :try_end_4b} :catchall_c5

    .line 643
    monitor-exit p0

    return v1

    .line 648
    .end local v2    # "arrayChain":[Ljava/security/cert/Certificate;
    .end local v3    # "listChain":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    .end local v4    # "resultCode":I
    :catch_4d
    move-exception v2

    .line 649
    .local v2, "nex":Ljava/lang/NullPointerException;
    :try_start_4e
    const-string v3, "CertificateUtil"

    const-string v4, "Certificate policy not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 646
    .end local v2    # "nex":Ljava/lang/NullPointerException;
    :catch_56
    move-exception v2

    .line 647
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CertificateUtil"

    const-string v4, "Failed talking to certificate policy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_61

    :cond_60
    nop

    .line 652
    :goto_61
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 653
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 655
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 656
    .local v2, "certs":[Ljava/security/cert/Certificate;
    const-string v3, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# certs extracted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 658
    .local v3, "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    array-length v4, v2

    :goto_93
    if-ge v1, v4, :cond_a6

    aget-object v5, v2, v1

    .line 659
    .local v5, "c":Ljava/security/cert/Certificate;
    move-object v6, v5

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 660
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 661
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    .end local v5    # "c":Ljava/security/cert/Certificate;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    :cond_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 663
    :cond_a6
    const-string v1, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# ca certs extracted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_4e .. :try_end_c2} :catchall_c5

    .line 665
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 628
    .end local v0    # "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p1    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    .end local p2    # "userId":I
    :catchall_c5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private installUserCert(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "keystoreUid"    # I
    .param p3, "userId"    # I
    .param p4, "type"    # Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 455
    return v1

    .line 457
    :cond_6
    const/4 v0, 0x1

    .line 459
    .local v0, "ret":Z
    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    const-string v4, "CertificateUtil"

    if-eqz v2, :cond_4e

    .line 461
    :try_start_e
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/security/cert/Certificate;

    iget-object v7, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v7, v6, v3

    .line 462
    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v6

    const/16 v7, 0x3f2

    .line 461
    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_33

    and-int/2addr v0, v2

    .line 468
    goto :goto_3a

    .line 465
    :catch_33
    move-exception v2

    .line 466
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 467
    const-string v5, "Error installing User Certificate for WIFI keystore: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserCert put state for wifi keystore: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_4e
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_8a

    .line 473
    const/4 v2, 0x0

    .line 475
    .local v2, "pemCertificate":[B
    :try_start_53
    new-array v1, v1, [Ljava/security/cert/Certificate;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v5, v1, v3

    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_5f

    move-object v2, v1

    .line 479
    goto :goto_67

    .line 476
    :catch_5f
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Error converting certificate to PEM: "

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    and-int/lit8 v0, v0, 0x0

    .line 480
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_67
    if-eqz v2, :cond_76

    .line 481
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const-string v7, "USRCERT_"

    move-object v6, p1

    move-object v8, v2

    move v10, p3

    invoke-static/range {v5 .. v10}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BII)Z

    move-result v1

    and-int/2addr v0, v1

    .line 484
    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserCert put state for vpn and apps keystore: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v2    # "pemCertificate":[B
    :cond_8a
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_a0

    .line 488
    const-string v1, ".crt"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 489
    const-string v1, "CERT"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 490
    :cond_9e
    and-int/lit8 v0, v0, 0x0

    .line 492
    :cond_a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserCert put state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return v0
.end method

.method private installUserKey(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "keystoreUid"    # I
    .param p3, "userId"    # I
    .param p4, "type"    # Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_6

    .line 498
    const/4 v0, 0x1

    return v0

    .line 500
    :cond_6
    const/4 v0, 0x1

    .line 502
    .local v0, "ret":Z
    and-int/lit8 v1, p2, 0x2

    const-string v2, "CertificateUtil"

    if-eqz v1, :cond_4a

    .line 504
    :try_start_d
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 505
    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    const/16 v5, 0x3f2

    .line 504
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2d} :catch_2f

    and-int/2addr v0, v1

    .line 510
    goto :goto_36

    .line 507
    :catch_2f
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 509
    const-string v3, "Error installing User Key for WIFI keystore: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserPKey put state for wifi keystore : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_4a
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_74

    .line 515
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 516
    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x0

    .line 515
    const-string v5, "USRPKEY_"

    move-object v4, p1

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BII)Z

    move-result v1

    and-int/2addr v0, v1

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserPKey put state for vpn and apps keystore : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_74
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_8a

    .line 521
    const-string v1, ".crt"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 522
    const-string v1, "CERT"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 523
    :cond_88
    and-int/lit8 v0, v0, 0x0

    .line 525
    :cond_8a
    return v0
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 575
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "2.5.29.19"

    invoke-virtual {p1, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 576
    .local v1, "asn1EncodedBytes":[B
    if-nez v1, :cond_a

    .line 577
    return v0

    .line 579
    :cond_a
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 580
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 581
    .local v2, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    .line 582
    .local v3, "octets":[B
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 583
    .local v4, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2d

    return v0

    .line 584
    .end local v1    # "asn1EncodedBytes":[B
    .end local v2    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v3    # "octets":[B
    .end local v4    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2d
    move-exception v1

    .line 585
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private parseCert([BI)Z
    .registers 13
    .param p1, "bytes"    # [B
    .param p2, "userId"    # I

    .line 530
    const-string v0, "CertificateUtil"

    const/4 v1, 0x0

    .line 532
    .local v1, "ret":Z
    :try_start_3
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 533
    .local v2, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 534
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 537
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    const-string v4, "certificate_policy"

    .line 538
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 537
    invoke-static {v4}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v4
    :try_end_1e
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_1e} :catch_71

    .line 540
    .local v4, "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    if-eqz v4, :cond_53

    :try_start_20
    invoke-interface {v4, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 541
    new-instance v5, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v5, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 542
    .local v5, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    nop

    .line 543
    invoke-interface {v4, v5, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    move-result v6

    .line 544
    .local v6, "resultCode":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_53

    .line 545
    const-string v7, "certificate failed during validation"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string/jumbo v7, "installer_module"

    .line 547
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 546
    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_43} :catch_4b
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_43} :catch_44
    .catch Ljava/security/cert/CertificateException; {:try_start_20 .. :try_end_43} :catch_71

    .line 548
    return v9

    .line 553
    .end local v5    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v6    # "resultCode":I
    :catch_44
    move-exception v5

    .line 554
    .local v5, "nex":Ljava/lang/NullPointerException;
    :try_start_45
    const-string v6, "Certificate policy not found"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 551
    .end local v5    # "nex":Ljava/lang/NullPointerException;
    :catch_4b
    move-exception v5

    .line 552
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Failed talking to certificate policy"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    nop

    .end local v5    # "e":Landroid/os/RemoteException;
    goto :goto_54

    :cond_53
    nop

    .line 557
    :goto_54
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 558
    const-string/jumbo v5, "got a CA cert"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    const/4 v0, 0x1

    .end local v1    # "ret":Z
    .local v0, "ret":Z
    goto :goto_70

    .line 562
    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    :cond_67
    const-string/jumbo v5, "got a user cert"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iput-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_6f
    .catch Ljava/security/cert/CertificateException; {:try_start_45 .. :try_end_6f} :catch_71

    .line 564
    const/4 v0, 0x1

    .line 569
    .end local v1    # "ret":Z
    .end local v2    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "certPolicy":Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    .restart local v0    # "ret":Z
    :goto_70
    goto :goto_88

    .line 566
    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    :catch_71
    move-exception v2

    .line 567
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseCert(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v0, 0x0

    .line 570
    .end local v1    # "ret":Z
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "ret":Z
    :goto_88
    return v0
.end method

.method public static splitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "certTypeAndAlias"    # Ljava/lang/String;

    .line 839
    const-string v0, "CACERT_"

    const-string v1, "USRCERT_"

    const-string v2, "USRPKEY_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "certTypes":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_2b

    aget-object v4, v0, v3

    .line 841
    .local v4, "certType":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 842
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    return-object v1

    .line 840
    .end local v4    # "certType":Ljava/lang/String;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 845
    :cond_2b
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getAllUsersId()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v0, "usersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v1

    .line 761
    .local v1, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 762
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    goto :goto_d

    .line 764
    :cond_29
    return-object v0
.end method

.method public getAllUsersInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 771
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 773
    .local v2, "usersInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    nop

    .line 775
    return-object v2

    .line 773
    .end local v2    # "usersInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 774
    throw v2
.end method

.method public getRandomInt()I
    .registers 2

    .line 755
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .line 315
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)I
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "keystoreUid"    # I
    .param p6, "userId"    # I

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "ret":I
    if-nez p1, :cond_25

    .line 323
    const-string p1, "CERT"

    .line 325
    if-nez p4, :cond_1a

    .line 326
    invoke-direct {p0, p2, p6}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([BI)Z

    move-result v1

    if-nez v1, :cond_58

    .line 327
    const-string v1, ""

    invoke-direct {p0, p2, v1, p6}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 328
    const-string p1, "PKCS12"

    goto :goto_58

    .line 330
    :cond_18
    const/4 v0, -0x2

    goto :goto_58

    .line 334
    :cond_1a
    invoke-direct {p0, p2, p4, p6}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 335
    const-string p1, "PKCS12"

    goto :goto_58

    .line 337
    :cond_23
    const/4 v0, -0x3

    goto :goto_58

    .line 341
    :cond_25
    const-string v1, ".crt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 342
    const-string v1, "CERT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_51

    .line 345
    :cond_36
    const-string v1, ".p12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 346
    const-string v1, "PKCS12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_49

    .line 350
    :cond_47
    const/4 v0, -0x3

    goto :goto_58

    .line 347
    :cond_49
    :goto_49
    invoke-direct {p0, p2, p4, p6}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_58

    .line 348
    const/4 v0, -0x3

    goto :goto_58

    .line 343
    :cond_51
    :goto_51
    invoke-direct {p0, p2, p6}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([BI)Z

    move-result v1

    if-nez v1, :cond_58

    .line 344
    const/4 v0, -0x2

    .line 354
    :cond_58
    :goto_58
    if-nez v0, :cond_8c

    .line 356
    :try_start_5a
    invoke-direct {p0, p3, p5, p6}, Lcom/android/server/enterprise/utils/CertificateUtil;->installCaCerts(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_61

    .line 357
    const/4 v0, -0x4

    .line 359
    :cond_61
    invoke-direct {p0, p3, p5, p6, p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->installUserCert(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 360
    const/4 v0, -0x5

    .line 362
    :cond_68
    invoke-direct {p0, p3, p5, p6, p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->installUserKey(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6c} :catch_70

    if-nez v1, :cond_6f

    .line 363
    const/4 v0, -0x6

    .line 367
    :cond_6f
    goto :goto_8c

    .line 365
    :catch_70
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "install(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CertificateUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8c
    :goto_8c
    return v0
.end method

.method public isGuestUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 745
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_12

    .line 746
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 747
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 748
    const/4 v1, 0x1

    return v1

    .line 751
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public sendIntentToSettings(IZ)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "bootCompleted"    # Z

    .line 713
    if-eqz p2, :cond_5e

    .line 714
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 715
    .local v0, "token":J
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 716
    .local v2, "refreshUi":Landroid/content/Intent;
    const-string v3, "com.samsung.android.knox.intent.action.REFRESH_CREDENTIALS_UI_INTERNAL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz v3, :cond_21

    .line 722
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    .local v3, "personaOwner":I
    goto :goto_22

    .line 724
    .end local v3    # "personaOwner":I
    :cond_21
    move v3, p1

    .line 728
    .restart local v3    # "personaOwner":I
    :goto_22
    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 729
    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz v4, :cond_5b

    .line 730
    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 731
    .local v4, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_5b

    .line 732
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 733
    .local v7, "persona":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 734
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v9, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 736
    .end local v7    # "persona":Landroid/content/pm/UserInfo;
    :cond_5a
    goto :goto_3c

    .line 740
    .end local v4    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    .end local v0    # "token":J
    .end local v2    # "refreshUi":Landroid/content/Intent;
    .end local v3    # "personaOwner":I
    :cond_5e
    return-void
.end method
