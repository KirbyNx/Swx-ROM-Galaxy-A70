.class public Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil;
.super Ljava/lang/Object;
.source "UcmSignatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;,
        Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 27
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_b
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 31
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_16
    return-object p0
.end method

.method public static isMDandPrefixNeeded(Ljava/lang/String;)Z
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 11
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 12
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 11
    :goto_10
    return v0
.end method

.method public static processInput([BLjava/lang/String;)[B
    .registers 3
    .param p0, "input"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18
    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;->processInput([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 20
    :cond_b
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 21
    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1;->processInput([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 23
    :cond_16
    return-object p0
.end method
