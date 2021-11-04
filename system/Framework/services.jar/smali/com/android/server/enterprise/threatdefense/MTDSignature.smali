.class Lcom/android/server/enterprise/threatdefense/MTDSignature;
.super Ljava/lang/Object;
.source "MTDSignature.java"


# static fields
.field private static final CERTIFICATE_PATH:Ljava/lang/String; = "/etc/mtdl.crt"

.field private static final DEFAULT_ALGORITHM:Ljava/lang/String; = "SHA256withRSA/PSS"

.field private static final DEFAULT_SIGNATURE_LEN:I = 0x100

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mData:[B

.field private mSignature:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "encodedData"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 38
    .local v1, "decodedData":[B
    array-length v2, v1

    const/16 v3, 0x100

    if-le v2, v3, :cond_1f

    .line 39
    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mData:[B

    .line 41
    array-length v0, v1

    sub-int/2addr v0, v3

    array-length v2, v1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mSignature:[B

    .line 47
    return-void

    .line 44
    :cond_1f
    sget-object v0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid SHA256. please encode the String as UTF_8"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCertificate()Ljava/security/cert/Certificate;
    .registers 8

    .line 65
    const-string v0, "IOException"

    const/4 v1, 0x0

    .line 66
    .local v1, "certificate":Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    .line 68
    .local v2, "ins":Ljava/io/InputStream;
    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/etc/mtdl.crt"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 69
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 70
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_16} :catch_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_16} :catch_49
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_16} :catch_25
    .catchall {:try_start_4 .. :try_end_16} :catchall_23

    move-object v1, v4

    .line 81
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    nop

    .line 82
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 85
    :cond_1b
    :goto_1b
    goto :goto_78

    .line 83
    :catch_1c
    move-exception v3

    .line 84
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_78

    .line 80
    :catchall_23
    move-exception v3

    goto :goto_79

    .line 76
    :catch_25
    move-exception v3

    .line 77
    .local v3, "ce":Ljava/security/cert/CertificateException;
    :try_start_26
    sget-object v4, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CertificateException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_23

    .line 81
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    if-eqz v2, :cond_1b

    .line 82
    :try_start_45
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_1c

    goto :goto_1b

    .line 74
    :catch_49
    move-exception v3

    .line 75
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4a
    sget-object v4, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_23

    .line 81
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_1b

    .line 82
    :try_start_66
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_1c

    goto :goto_1b

    .line 72
    :catch_6a
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_6b
    sget-object v4, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    const-string v5, "SecurityException"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_23

    .line 81
    .end local v3    # "e":Ljava/lang/SecurityException;
    if-eqz v2, :cond_1b

    .line 82
    :try_start_74
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_1c

    goto :goto_1b

    .line 88
    :goto_78
    return-object v1

    .line 81
    :goto_79
    if-eqz v2, :cond_86

    .line 82
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_86

    .line 83
    :catch_7f
    move-exception v4

    .line 84
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_87

    .line 85
    .end local v4    # "e":Ljava/io/IOException;
    :cond_86
    :goto_86
    nop

    .line 86
    :goto_87
    throw v3
.end method

.method private getPublicKey([B)Ljava/security/PublicKey;
    .registers 7
    .param p1, "certificateSignature"    # [B

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 114
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 115
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 116
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_17} :catch_23
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    .line 120
    nop

    .line 122
    :try_start_18
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 125
    goto :goto_20

    .line 123
    :catch_1c
    move-exception v4

    .line 124
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    .end local v4    # "e":Ljava/io/IOException;
    :goto_20
    return-object v3

    .line 120
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :catchall_21
    move-exception v1

    goto :goto_34

    .line 117
    :catch_23
    move-exception v1

    .line 118
    .local v1, "e":Ljava/security/cert/CertificateException;
    :try_start_24
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_21

    .line 120
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    if-eqz v0, :cond_32

    .line 122
    :try_start_29
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 125
    :goto_2c
    goto :goto_32

    .line 123
    :catch_2d
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2c

    .line 128
    :cond_32
    :goto_32
    const/4 v1, 0x0

    return-object v1

    .line 120
    :goto_34
    if-eqz v0, :cond_3e

    .line 122
    :try_start_36
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 125
    goto :goto_3e

    .line 123
    :catch_3a
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3e
    :goto_3e
    throw v1
.end method

.method private verify()Z
    .registers 6

    .line 93
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    .line 94
    .local v1, "certificate":Ljava/security/cert/Certificate;
    if-eqz v1, :cond_27

    .line 96
    const-string v2, "SHA256withRSA/PSS"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 97
    .local v2, "publicSignature":Ljava/security/Signature;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getPublicKey([B)Ljava/security/PublicKey;

    move-result-object v3

    .line 98
    .local v3, "pubKey":Ljava/security/PublicKey;
    if-nez v3, :cond_18

    return v0

    .line 99
    :cond_18
    invoke-virtual {v2, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 100
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mData:[B

    invoke-virtual {v2, v4}, Ljava/security/Signature;->update([B)V

    .line 101
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mSignature:[B

    invoke-virtual {v2, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_26} :catch_28
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_26} :catch_28
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_26} :catch_28
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_26} :catch_28

    return v0

    .line 106
    .end local v1    # "certificate":Ljava/security/cert/Certificate;
    .end local v2    # "publicSignature":Ljava/security/Signature;
    .end local v3    # "pubKey":Ljava/security/PublicKey;
    :cond_27
    goto :goto_2c

    .line 103
    :catch_28
    move-exception v1

    .line 105
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 107
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :goto_2c
    return v0
.end method


# virtual methods
.method getVerifiedData()Ljava/lang/String;
    .registers 5

    .line 50
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->verify()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 51
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mData:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 52
    .local v0, "data":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v1, :cond_2a

    .line 53
    sget-object v1, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verified !!! data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 55
    :cond_2a
    sget-object v1, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    const-string v2, "Verified !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_31
    return-object v0

    .line 59
    .end local v0    # "data":Ljava/lang/String;
    :cond_32
    sget-object v0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    const-string v1, "Verification failed !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
