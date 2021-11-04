.class Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;
.super Ljava/lang/Object;
.source "UcmSignatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PKCS1"
.end annotation


# static fields
.field private static final ALGORITHM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->ALGORITHM_MAP:Ljava/util/HashMap;

    .line 66
    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_54

    const-string v2, "md5withrsa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->ALGORITHM_MAP:Ljava/util/HashMap;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_62

    const-string v2, "sha1withrsa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->ALGORITHM_MAP:Ljava/util/HashMap;

    const/16 v1, 0x13

    new-array v2, v1, [B

    fill-array-data v2, :array_6e

    const-string v3, "sha224withrsa"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->ALGORITHM_MAP:Ljava/util/HashMap;

    new-array v2, v1, [B

    fill-array-data v2, :array_7c

    const-string v3, "sha256withrsa"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->ALGORITHM_MAP:Ljava/util/HashMap;

    new-array v2, v1, [B

    fill-array-data v2, :array_8a

    const-string v3, "sha384withrsa"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->ALGORITHM_MAP:Ljava/util/HashMap;

    new-array v1, v1, [B

    fill-array-data v1, :array_98

    const-string v2, "sha512withrsa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void

    :array_54
    .array-data 1
        0x30t
        0x20t
        0x30t
        0xct
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x5t
        0x5t
        0x0t
        0x4t
        0x10t
    .end array-data

    nop

    :array_62
    .array-data 1
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data

    :array_6e
    .array-data 1
        0x30t
        0x2dt
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x1ct
    .end array-data

    :array_7c
    .array-data 1
        0x30t
        0x31t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x1t
        0x5t
        0x0t
        0x4t
        0x20t
    .end array-data

    :array_8a
    .array-data 1
        0x30t
        0x41t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x2t
        0x5t
        0x0t
        0x4t
        0x30t
    .end array-data

    :array_98
    .array-data 1
        0x30t
        0x51t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x3t
        0x5t
        0x0t
        0x4t
        0x40t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 124
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 125
    return-object p0

    .line 127
    :cond_7
    const-string v0, "RSA/ECB/PKCS1Padding"

    return-object v0
.end method

.method static isMDandPrefixNeeded(Ljava/lang/String;)Z
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->ALGORITHM_MAP:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static processInput([BLjava/lang/String;)[B
    .registers 10
    .param p0, "input"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 103
    return-object v1

    .line 105
    :cond_8
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->ALGORITHM_MAP:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 106
    .local v0, "t_prefix":[B
    move-object v2, p1

    .line 107
    .local v2, "mdAlgorithm":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "withrsa"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 110
    :cond_2e
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 111
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 112
    .local v5, "retMd":[B
    if-nez v5, :cond_39

    .line 113
    return-object v1

    .line 115
    :cond_39
    array-length v1, v0

    array-length v6, v5

    add-int/2addr v1, v6

    new-array v1, v1, [B

    .line 116
    .local v1, "ret":[B
    const/4 v6, 0x0

    .line 117
    .local v6, "offset":I
    array-length v7, v0

    invoke-static {v0, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    array-length v7, v0

    add-int/2addr v6, v7

    .line 119
    array-length v7, v5

    invoke-static {v5, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-object v1
.end method
