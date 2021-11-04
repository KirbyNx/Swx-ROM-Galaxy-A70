.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;
.super Ljava/lang/Object;
.source "NTLMUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getSecurityData([BI)[B
    .registers 6
    .param p0, "dataSource"    # [B
    .param p1, "index"    # I

    .line 62
    invoke-static {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityDataLength([BI)I

    move-result v0

    .line 63
    .local v0, "dataLength":I
    new-array v1, v0, [B

    .line 64
    .local v1, "returnByteArray":[B
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityDataOffset([BI)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-object v1
.end method

.method private static getSecurityDataLength([BI)I
    .registers 3
    .param p0, "dataSource"    # [B
    .param p1, "index"    # I

    .line 30
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    return v0
.end method

.method private static getSecurityDataOffset([BI)I
    .registers 3
    .param p0, "dataSource"    # [B
    .param p1, "index"    # I

    .line 34
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    return v0
.end method

.method protected static getUnsignedValue([BII)I
    .registers 7
    .param p0, "dataSource"    # [B
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "returnValue":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_11

    .line 50
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 52
    .end local v1    # "i":I
    :cond_11
    return v0
.end method

.method protected static setSecurityDataAndAttributes([BII[B)V
    .registers 6
    .param p0, "destination"    # [B
    .param p1, "attributesOffset"    # I
    .param p2, "dataOffset"    # I
    .param p3, "src"    # [B

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "srcDataLen":I
    if-nez p3, :cond_5

    .line 74
    const/4 v0, 0x0

    goto :goto_6

    .line 76
    :cond_5
    array-length v0, p3

    .line 77
    :goto_6
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->writeSecurityDatalength([BII)V

    .line 78
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->writeSecurityDataOffset([BII)V

    .line 79
    if-eqz p3, :cond_12

    .line 80
    const/4 v1, 0x0

    invoke-static {p3, v1, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    :cond_12
    return-void
.end method

.method protected static setUnsignedValue([BIII)V
    .registers 7
    .param p0, "dataDest"    # [B
    .param p1, "offset"    # I
    .param p2, "longValue"    # I
    .param p3, "size"    # I

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_11

    .line 57
    add-int v1, p1, v0

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method private static writeSecurityDataOffset([BII)V
    .registers 5
    .param p0, "destination"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 43
    add-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    invoke-static {p0, v0, p2, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 44
    return-void
.end method

.method private static writeSecurityDatalength([BII)V
    .registers 5
    .param p0, "destination"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 38
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 39
    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1, p2, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 40
    return-void
.end method
