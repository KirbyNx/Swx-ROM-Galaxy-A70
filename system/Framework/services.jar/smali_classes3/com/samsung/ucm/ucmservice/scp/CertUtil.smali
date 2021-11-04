.class public Lcom/samsung/ucm/ucmservice/scp/CertUtil;
.super Ljava/lang/Object;
.source "CertUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UCM::CertUtil"

.field public static final TAG_CA_ID:B = 0x42t

.field private static final TAG_ECC_KEY_PARAMETER:B = -0x10t

.field private static final TAG_ECC_PUB_KEY_VALUE:B = -0x50t

.field public static final TAG_EXPIRATION_DATE:S = 0x5f24s

.field private static final TAG_PUBLIC_KEY_DATA:S = 0x7f49s


# instance fields
.field private DEBUG:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    return-void
.end method

.method public static toBin(Ljava/lang/String;)[B
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 35
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 36
    mul-int/lit8 v2, v1, 0x2

    .line 37
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 38
    .local v3, "v":I
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    .line 35
    .end local v2    # "index":I
    .end local v3    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 40
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static toHex(B)Ljava/lang/String;
    .registers 4
    .param p0, "a"    # B

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 8
    .param p0, "a"    # [B

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_26

    aget-byte v4, p0, v3

    .line 25
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v6, v4, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 26
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public updateTlvCaCert([B)[B
    .registers 15
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v0

    .line 53
    .local v0, "tlv_ca_cert":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, 0x7f49

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(S)V

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    .line 55
    .local v2, "tlv_pub_key":Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x50

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 56
    .local v3, "key_val":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    new-instance v5, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v6, -0x10

    invoke-direct {v5, v6}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v2, v5}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v5

    check-cast v5, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 57
    .local v5, "key_param":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-eqz v3, :cond_161

    if-eqz v5, :cond_161

    .line 59
    const-string v7, "EC"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    .line 60
    .local v7, "kf":Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    .line 62
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 61
    invoke-virtual {v7, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    check-cast v8, Ljava/security/interfaces/ECPublicKey;

    .line 63
    .local v8, "pubKey2":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v9

    .line 65
    .local v9, "point":Ljava/security/spec/ECPoint;
    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    const-string v11, "UCM::CertUtil"

    if-eqz v10, :cond_6c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pubkey value : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_6c
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v10, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v2, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    .line 67
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v10, v6}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v2, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    .line 69
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    invoke-virtual {v9}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 72
    invoke-virtual {v9}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_bf

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_bf
    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_e3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Y:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_e3
    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_103

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removed pubkey value : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_103
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v12, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v12, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    .line 78
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v10, v12, v4}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    .line 77
    invoke-virtual {v2, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 79
    invoke-virtual {v2, v5}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 80
    iget-boolean v4, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v4, :cond_137

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "added new pubkey value : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_137
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v4

    .line 83
    .local v4, "a":[B
    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_157

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "final tlv : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_157
    array-length v10, v4

    invoke-static {v4, v1, v10}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    .line 86
    .local v1, "test":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v10

    return-object v10

    .line 89
    .end local v1    # "test":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .end local v4    # "a":[B
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "kf":Ljava/security/KeyFactory;
    .end local v8    # "pubKey2":Ljava/security/interfaces/ECPublicKey;
    .end local v9    # "point":Ljava/security/spec/ECPoint;
    :cond_161
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
.end method
