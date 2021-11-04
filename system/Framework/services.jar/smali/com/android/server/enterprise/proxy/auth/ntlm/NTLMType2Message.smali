.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType2Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType2Message"


# instance fields
.field private contextData:[B

.field private flagsObtained:I

.field private serverChallengeNonce:[B

.field private targetData:[B

.field private targetName:Ljava/lang/String;

.field private type2MessageBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "rawServerResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(I)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    .line 36
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->processMessageString(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlagsObtained()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setFlags(I)V

    .line 44
    return-void
.end method

.method private checkForValidData(II)Z
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "returnValue":Z
    move v1, p1

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_f

    .line 49
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_c

    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_f

    .line 48
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 53
    .end local v1    # "i":I
    :cond_f
    :goto_f
    return v0
.end method

.method private isValidNTLMType2String()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1b

    .line 59
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v1, v1, v0

    sget-object v2, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->NTLM_HEADER_BYTES:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_13

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 60
    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Type2 Format Exception: Misplaced Header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_1b
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 66
    return-void

    .line 64
    :cond_23
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Type2 Format Exception: Message Type Incorrect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 2

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContextData()[B
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    if-nez v0, :cond_21

    .line 88
    const/16 v0, 0x28

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->checkForValidData(II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 89
    const/16 v0, 0x8

    new-array v2, v0, [B

    .line 90
    .local v2, "context":[B
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setContextData([B)V

    .line 93
    .end local v2    # "context":[B
    :cond_21
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    return-object v0
.end method

.method protected getFlagsObtained()I
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    .line 118
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_6
    iget v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    if-gez v1, :cond_14

    .line 120
    const/16 v1, 0x14

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setFlagsObtained(I)V

    .line 122
    :cond_14
    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    return v0
.end method

.method protected getServerChallengeNonce()[B
    .registers 6

    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    if-nez v0, :cond_21

    .line 72
    const/16 v0, 0x20

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->checkForValidData(II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 73
    const/16 v0, 0x8

    new-array v2, v0, [B

    .line 74
    .local v2, "challenge":[B
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setServerChallengeNonce([B)V

    .line 77
    .end local v2    # "challenge":[B
    :cond_21
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    return-object v0
.end method

.method protected getTargetData()[B
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_6
    const/4 v1, 0x0

    .line 104
    .local v1, "temp":[B
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    if-nez v2, :cond_17

    .line 105
    const/16 v2, 0x28

    invoke-static {v0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v1

    .line 106
    array-length v0, v1

    if-lez v0, :cond_17

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setTargetData([B)V

    .line 109
    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    return-object v0
.end method

.method protected getTargetName()Ljava/lang/String;
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    if-nez v1, :cond_2d

    .line 133
    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v0

    .line 135
    .local v0, "temp":[B
    :try_start_10
    array-length v1, v0

    if-lez v1, :cond_28

    .line 136
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlagsObtained()I

    move-result v1

    .line 137
    .local v1, "flags":I
    new-instance v2, Ljava/lang/String;

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_20

    .line 138
    const-string v3, "Cp850"

    goto :goto_22

    :cond_20
    const-string v3, "UTF-16LE"

    :goto_22
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setTargetName(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_28} :catch_29

    .line 142
    .end local v1    # "flags":I
    :cond_28
    goto :goto_2d

    .line 140
    :catch_29
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 144
    .end local v0    # "temp":[B
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    return-object v0
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    .line 159
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->isValidNTLMType2String()V

    .line 160
    return-void
.end method

.method protected setContextData([B)V
    .registers 2
    .param p1, "contextData"    # [B

    .line 97
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    .line 98
    return-void
.end method

.method protected setFlagsObtained(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 126
    iput p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    .line 127
    return-void
.end method

.method protected setServerChallengeNonce([B)V
    .registers 2
    .param p1, "serverChallengeNonce"    # [B

    .line 81
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    .line 82
    return-void
.end method

.method protected setTargetData([B)V
    .registers 2
    .param p1, "targetData"    # [B

    .line 113
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    .line 114
    return-void
.end method

.method protected setTargetName(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetName"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    .line 149
    return-void
.end method
