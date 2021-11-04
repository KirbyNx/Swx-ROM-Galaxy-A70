.class public Lcom/android/server/enterprise/ccm/CertificateHandler;
.super Ljava/lang/Object;
.source "CertificateHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateHandler"


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

.field private mPrivateKeyEntry:Ljava/security/KeyStore$PrivateKeyEntry;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    .line 81
    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 83
    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mPrivateKeyEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .registers 12
    .param p1, "entry"    # Ljava/security/KeyStore$PrivateKeyEntry;

    monitor-enter p0

    .line 163
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 164
    .local v1, "arrayChain":[Ljava/security/cert/Certificate;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v2, "listChain":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    array-length v3, v1

    move v4, v0

    :goto_e
    if-ge v4, v3, :cond_21

    aget-object v5, v1, v4

    .line 167
    .local v5, "cert":Ljava/security/cert/Certificate;
    new-instance v6, Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-object v7, v5

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-direct {v6, v7}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    nop

    .end local v5    # "cert":Ljava/security/cert/Certificate;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 170
    .end local p0    # "this":Lcom/android/server/enterprise/ccm/CertificateHandler;
    :cond_21
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    .line 171
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 173
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 174
    .local v3, "certs":[Ljava/security/cert/Certificate;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    .line 176
    .local v4, "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    array-length v5, v3

    move v6, v0

    :goto_3d
    if-ge v6, v5, :cond_50

    aget-object v7, v3, v6

    .line 177
    .local v7, "c":Ljava/security/cert/Certificate;
    move-object v8, v7

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 178
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/ccm/CertificateHandler;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 179
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_56
    .catchall {:try_start_2 .. :try_end_4d} :catchall_54

    .line 176
    .end local v7    # "c":Ljava/security/cert/Certificate;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 184
    .end local v1    # "arrayChain":[Ljava/security/cert/Certificate;
    .end local v2    # "listChain":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_50
    nop

    .line 185
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 162
    .end local p1    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :catchall_54
    move-exception p1

    goto :goto_74

    .line 181
    .restart local p1    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_56
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    :try_start_57
    const-string v2, "CertificateHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installFrom exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_57 .. :try_end_72} :catchall_54

    .line 183
    monitor-exit p0

    return v0

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    .end local p1    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_74
    monitor-exit p0

    throw p1
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 88
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "2.5.29.19"

    invoke-virtual {p1, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 89
    .local v1, "asn1EncodedBytes":[B
    if-nez v1, :cond_a

    .line 90
    return v0

    .line 92
    :cond_a
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 93
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 94
    .local v2, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    .line 95
    .local v3, "octets":[B
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 96
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 97
    .local v4, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2d

    return v0

    .line 98
    .end local v1    # "asn1EncodedBytes":[B
    .end local v2    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v3    # "octets":[B
    .end local v4    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2d
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method


# virtual methods
.method public extractPkcs12([BLjava/lang/String;)Z
    .registers 12
    .param p1, "data"    # [B
    .param p2, "password"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    const-string v1, "CertificateHandler"

    if-nez p2, :cond_b

    .line 105
    const-string v2, "extractPkcs12() password is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v0

    .line 109
    :cond_b
    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 111
    .local v2, "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_15
    const/4 v4, 0x5

    if-ge v3, v4, :cond_d2

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractPkcs12() try "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractPkcs12() data length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_41
    const-string v4, "PKCS12"

    .line 117
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 120
    .local v4, "keystore":Ljava/security/KeyStore;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 122
    const-string v5, "extractPkcs12() keystore.aliases()"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v5

    .line 124
    .local v5, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_63

    .line 125
    return v0

    .line 127
    :cond_63
    const-string v6, "extractPkcs12() aliases.hasMoreElements()"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_68
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 129
    const-string v6, "extractPkcs12()  aliases.nextElement()"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 131
    .local v6, "alias":Ljava/lang/String;
    if-nez v6, :cond_81

    .line 132
    const-string v7, "extractPkcs12() alias is null!"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v0

    .line 135
    :cond_81
    const-string v7, "extractPkcs12()  keystore.isKeyEntry(alias)"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v4, v6}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 137
    const-string v7, "extractPkcs12()  keystore.getEntry()"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v4, v6, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v7

    .line 141
    .local v7, "entry":Ljava/security/KeyStore$Entry;
    const-string v8, "extractPkcs12() entry instanceof PrivateKeyEntry"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    instance-of v8, v7, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v8, :cond_ad

    .line 143
    const-string v8, "extractPkcs12() installFrom((PrivateKeyEntry) entry)"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-object v8, v7

    check-cast v8, Ljava/security/KeyStore$PrivateKeyEntry;

    iput-object v8, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mPrivateKeyEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    .line 145
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/ccm/CertificateHandler;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z

    move-result v0
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_ac} :catch_af

    return v0

    .line 148
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "entry":Ljava/security/KeyStore$Entry;
    :cond_ad
    goto :goto_68

    .line 156
    .end local v4    # "keystore":Ljava/security/KeyStore;
    .end local v5    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_ae
    goto :goto_ce

    .line 149
    :catch_af
    move-exception v4

    .line 150
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractPkcs12 exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-wide/16 v5, 0x5

    :try_start_c6
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_c9} :catch_ca
    .catch Ljava/lang/InterruptedException; {:try_start_c6 .. :try_end_c9} :catch_ca

    .line 155
    goto :goto_ce

    .line 153
    :catch_ca
    move-exception v5

    .line 154
    .local v5, "expt":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "expt":Ljava/lang/Exception;
    :goto_ce
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    .line 158
    .end local v3    # "k":I
    :cond_d2
    return v0
.end method

.method public getFormattedPrivateKey()[B
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/generic/util/CCMKeyCertUtils;->getFormattedPrivateKey(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyAlgorithm()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_6

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_6
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPemCertificateChain()[B
    .registers 9

    .line 193
    const-string/jumbo v0, "getPemCertificateChain exception - "

    const-string v1, "CertificateHandler"

    const/4 v2, 0x0

    .line 194
    .local v2, "caCerts":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 195
    .local v3, "retBytes":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_c
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_1f

    .line 199
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/Certificate;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v7, v5, v6

    invoke-static {v5}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 203
    :cond_1f
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 204
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    .line 205
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    move-object v2, v5

    .line 206
    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    :cond_3f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_43} :catch_5d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_43} :catch_45

    move-object v3, v0

    goto :goto_74

    .line 213
    :catch_45
    move-exception v5

    .line 214
    .local v5, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 211
    .end local v5    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_5d
    move-exception v5

    .line 212
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v5    # "e":Ljava/io/IOException;
    :goto_74
    nop

    .line 216
    :goto_75
    return-object v3
.end method

.method public getPrivateKeyEntry()Ljava/security/KeyStore$PrivateKeyEntry;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mPrivateKeyEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    return-object v0
.end method

.method public isPrivateKeyExists()Z
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_a

    .line 221
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_a
    const/4 v0, 0x0

    return v0
.end method
