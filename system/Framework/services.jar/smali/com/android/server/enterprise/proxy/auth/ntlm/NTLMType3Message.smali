.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType3Message.java"


# static fields
.field private static final CIPHER_DES_ECB_NO_PADDING:Ljava/lang/String; = "DES/ECB/NoPadding"

.field private static final ENCODING_US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final HASH_MD5:Ljava/lang/String; = "MD5"

.field private static final MAGIC:Ljava/lang/String; = "KGS!@#$%"


# instance fields
.field domain:Ljava/lang/String;

.field lmCompatibility:I

.field lmResponse:[B

.field ntResponse:[B

.field password:Ljava/lang/String;

.field private randomBytesGenerator:Ljava/security/SecureRandom;

.field serverChallenge:[B

.field username:Ljava/lang/String;

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "serverChallenge"    # [B
    .param p2, "finalFlags"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "workstation"    # Ljava/lang/String;
    .param p7, "lmCompatibility"    # I

    .line 58
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    .line 53
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    .line 59
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    .line 64
    iput p7, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmCompatibility:I

    .line 65
    return-void
.end method

.method private createHashPartForLm([BLjavax/crypto/Cipher;)[B
    .registers 6
    .param p1, "keyBytes"    # [B
    .param p2, "des"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getSecret([B)Ljava/security/Key;

    move-result-object v0

    .line 163
    .local v0, "key":Ljava/security/Key;
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 164
    const-string v1, "KGS!@#$%"

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 165
    .local v1, "hash":[B
    return-object v1
.end method

.method private createKeyFrom([BI)[B
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .line 80
    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 81
    .local v1, "keyBytes":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    return-object v1
.end method

.method private createLMResponse([B[B)[B
    .registers 9
    .param p1, "bytePassword"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForLm([B)[B

    move-result-object v0

    .line 174
    .local v0, "lmHash":[B
    const/16 v1, 0x15

    new-array v1, v1, [B

    .line 175
    .local v1, "keyBytes":[B
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v2

    .line 177
    .local v2, "firstKey":[B
    const/4 v3, 0x7

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v3

    .line 178
    .local v3, "secondKey":[B
    const/16 v4, 0xe

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    .line 179
    .local v4, "thirdKey":[B
    invoke-direct {p0, p2, v2, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method private createNTLMResponse([B[B)[B
    .registers 9
    .param p1, "bytePassword"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForNtlm([B)[B

    move-result-object v0

    .line 184
    .local v0, "ntlmHash":[B
    const/16 v1, 0x15

    new-array v1, v1, [B

    .line 185
    .local v1, "keyBytes":[B
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v2

    .line 187
    .local v2, "firstKey":[B
    const/4 v3, 0x7

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v3

    .line 188
    .local v3, "secondKey":[B
    const/16 v4, 0xe

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    .line 189
    .local v4, "thirdKey":[B
    invoke-direct {p0, p2, v2, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method private createType3Message()[B
    .registers 18

    .line 193
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    if-eqz v0, :cond_ae

    iget-object v0, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    if-eqz v0, :cond_ae

    iget-object v0, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    if-nez v0, :cond_11

    const/4 v2, 0x0

    goto/16 :goto_af

    .line 197
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->isFlagSet(I)Z

    move-result v0
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_16} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_a8

    const-string v3, "Cp850"

    if-eqz v0, :cond_1d

    .line 198
    :try_start_1a
    const-string v0, "UTF-16LE"

    goto :goto_1e

    .line 199
    :cond_1d
    move-object v0, v3

    :goto_1e
    nop

    .line 201
    .local v0, "encodingStandard":Ljava/lang/String;
    const/4 v4, 0x0

    .line 202
    .local v4, "domainBytes":[B
    const/4 v5, 0x0

    .line 203
    .local v5, "domainLength":I
    iget-object v6, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    if-eqz v6, :cond_2e

    .line 204
    iget-object v6, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    move-object v4, v6

    .line 205
    array-length v6, v4

    move v5, v6

    .line 208
    :cond_2e
    const/4 v6, 0x0

    .line 209
    .local v6, "workstationBytes":[B
    const/4 v7, 0x0

    .line 210
    .local v7, "workstationLength":I
    iget-object v8, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    if-eqz v8, :cond_3d

    .line 211
    iget-object v8, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    move-object v6, v8

    .line 212
    array-length v8, v6

    move v7, v8

    .line 215
    :cond_3d
    const/4 v8, 0x0

    .line 216
    .local v8, "usernameBytes":[B
    const/4 v9, 0x0

    .line 217
    .local v9, "usernameLength":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 218
    iget-object v3, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    .line 220
    :cond_4d
    iget-object v3, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 221
    .end local v8    # "usernameBytes":[B
    .local v3, "usernameBytes":[B
    array-length v8, v3

    .line 223
    .end local v9    # "usernameLength":I
    .local v8, "usernameLength":I
    const/4 v9, 0x0

    .line 224
    .local v9, "sessionKeyBytes":[B
    const/4 v10, 0x0

    .line 226
    .local v10, "sessionKeyLength":I
    iget-object v11, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    array-length v11, v11

    .line 227
    .local v11, "ntResponseLength":I
    iget-object v12, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    array-length v12, v12

    .line 228
    .local v12, "lmResponseLength":I
    add-int/lit8 v13, v5, 0x40

    add-int/2addr v13, v8

    add-int/2addr v13, v7

    add-int/2addr v13, v12

    add-int/2addr v13, v11

    add-int/2addr v13, v10

    new-array v13, v13, [B

    .line 231
    .local v13, "type3MessageBytes":[B
    sget-object v14, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->NTLM_HEADER_BYTES:[B

    const/16 v15, 0x8

    const/4 v2, 0x0

    invoke-static {v14, v2, v13, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    const/4 v2, 0x3

    const/4 v14, 0x4

    invoke-static {v13, v15, v2, v14}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 233
    const/16 v2, 0x40

    .line 234
    .local v2, "offset":I
    const/16 v15, 0xc

    iget-object v14, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    invoke-static {v13, v15, v2, v14}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 235
    add-int/2addr v2, v12

    .line 236
    const/16 v14, 0x14

    iget-object v15, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    invoke-static {v13, v14, v2, v15}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 237
    add-int/2addr v2, v11

    .line 238
    const/16 v14, 0x1c

    invoke-static {v13, v14, v2, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 239
    add-int/2addr v2, v5

    .line 240
    const/16 v14, 0x24

    invoke-static {v13, v14, v2, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 241
    add-int/2addr v2, v8

    .line 242
    const/16 v14, 0x2c

    invoke-static {v13, v14, v2, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 243
    add-int/2addr v2, v7

    .line 244
    const/16 v14, 0x34

    invoke-static {v13, v14, v2, v9}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 245
    const/16 v14, 0x3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getFlags()I

    move-result v15

    move-object/from16 v16, v0

    const/4 v0, 0x4

    .end local v0    # "encodingStandard":Ljava/lang/String;
    .local v16, "encodingStandard":Ljava/lang/String;
    invoke-static {v13, v14, v15, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V
    :try_end_a7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_a7} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_a7} :catch_a8

    .line 246
    return-object v13

    .line 250
    .end local v2    # "offset":I
    .end local v3    # "usernameBytes":[B
    .end local v4    # "domainBytes":[B
    .end local v5    # "domainLength":I
    .end local v6    # "workstationBytes":[B
    .end local v7    # "workstationLength":I
    .end local v8    # "usernameLength":I
    .end local v9    # "sessionKeyBytes":[B
    .end local v10    # "sessionKeyLength":I
    .end local v11    # "ntResponseLength":I
    .end local v12    # "lmResponseLength":I
    .end local v13    # "type3MessageBytes":[B
    .end local v16    # "encodingStandard":Ljava/lang/String;
    :catch_a8
    move-exception v0

    goto :goto_ac

    .line 248
    :catch_aa
    move-exception v0

    .line 252
    nop

    .line 253
    :goto_ac
    const/4 v2, 0x0

    return-object v2

    .line 193
    :cond_ae
    const/4 v2, 0x0

    .line 194
    :goto_af
    return-object v2
.end method

.method private encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V
    .registers 10
    .param p1, "challenge"    # [B
    .param p2, "keyBytes"    # [B
    .param p3, "result"    # [B
    .param p4, "des"    # Ljavax/crypto/Cipher;
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getSecret([B)Ljava/security/Key;

    move-result-object v0

    .line 114
    .local v0, "key":Ljava/security/Key;
    const/4 v1, 0x1

    invoke-virtual {p4, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 115
    invoke-virtual {p4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 116
    .local v1, "partialResult":[B
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, p3, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    return-void
.end method

.method private getBytesForNtlm2([B[B[B)[B
    .registers 12
    .param p1, "bytePassword"    # [B
    .param p2, "challenge"    # [B
    .param p3, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForNtlm([B)[B

    move-result-object v0

    .line 132
    .local v0, "ntlmHash":[B
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 133
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, p3, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 135
    new-array v4, v3, [B

    .line 136
    .local v4, "sessionHash":[B
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    const/16 v3, 0x15

    new-array v3, v3, [B

    .line 138
    .local v3, "keyBytes":[B
    const/16 v5, 0x10

    invoke-static {v0, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v2

    .line 140
    .local v2, "firstKey":[B
    const/4 v5, 0x7

    invoke-direct {p0, v3, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v5

    .line 141
    .local v5, "secondKey":[B
    const/16 v6, 0xe

    invoke-direct {p0, v3, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v6

    .line 142
    .local v6, "thirdKey":[B
    invoke-direct {p0, v4, v2, v5, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v7

    return-object v7
.end method

.method private getLmBytes([B[B[B[B)[B
    .registers 13
    .param p1, "challenge"    # [B
    .param p2, "firstKey"    # [B
    .param p3, "secondKey"    # [B
    .param p4, "thirdKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 102
    .local v0, "result":[B
    const-string v1, "DES/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 103
    .local v7, "des":Ljavax/crypto/Cipher;
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    .line 104
    const/16 v6, 0x8

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    .line 105
    const/16 v6, 0x10

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    .line 107
    return-object v0
.end method

.method private getPasswordForLm(Ljava/lang/String;)[B
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cp850"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getPasswordForNtlm(Ljava/lang/String;)[B
    .registers 3
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 126
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getSecret([B)Ljava/security/Key;
    .registers 6
    .param p1, "keyBytes"    # [B

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 69
    .local v0, "material":[B
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    .line 70
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_22

    .line 71
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p1, v2

    array-length v3, v0

    sub-int/2addr v3, v1

    shl-int/2addr v2, v3

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    ushr-int/2addr v3, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 74
    .end local v1    # "i":I
    :cond_22
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 75
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->processParityForBytes([B)V

    .line 76
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private hashForLm([B)[B
    .registers 10
    .param p1, "bytePassword"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    array-length v0, p1

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    .local v0, "length":I
    new-array v1, v1, [B

    .line 148
    .local v1, "keyBytes":[B
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    const-string v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 150
    .local v3, "des":Ljavax/crypto/Cipher;
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createHashPartForLm([BLjavax/crypto/Cipher;)[B

    move-result-object v4

    .line 151
    .local v4, "firstHash":[B
    const/4 v5, 0x7

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createHashPartForLm([BLjavax/crypto/Cipher;)[B

    move-result-object v5

    .line 153
    .local v5, "secondHash":[B
    const/16 v6, 0x10

    new-array v6, v6, [B

    .line 154
    .local v6, "lmHash":[B
    const/16 v7, 0x8

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    invoke-static {v5, v2, v6, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    return-object v6
.end method

.method private hashForNtlm([B)[B
    .registers 4
    .param p1, "bytePassword"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;

    invoke-direct {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;-><init>()V

    .line 121
    .local v0, "md4":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 122
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method private processParityForBytes([B)V
    .registers 7
    .param p1, "bytes"    # [B

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_34

    .line 87
    aget-byte v1, p1, v0

    .line 88
    .local v1, "b":B
    ushr-int/lit8 v2, v1, 0x7

    ushr-int/lit8 v3, v1, 0x6

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x4

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x2

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x1

    xor-int/2addr v2, v3

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 91
    .local v2, "needsParity":Z
    :goto_21
    if-eqz v2, :cond_2a

    .line 92
    aget-byte v4, p1, v0

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    goto :goto_31

    .line 94
    :cond_2a
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 86
    .end local v1    # "b":B
    .end local v2    # "needsParity":Z
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "i":I
    :cond_34
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 7

    .line 259
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    if-nez v0, :cond_e

    goto :goto_77

    .line 262
    :cond_e
    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmCompatibility:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    goto :goto_76

    .line 265
    :cond_14
    const/high16 v0, 0x80000

    :try_start_16
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->isFlagSet(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_49

    .line 266
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 267
    .local v0, "randomClientNonce":[B
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 268
    const/16 v3, 0x8

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 270
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForNtlm(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getBytesForNtlm2([B[B[B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    .line 272
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    .line 273
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createType3Message()[B

    move-result-object v3

    .line 274
    .local v3, "type3MessageBytes":[B
    if-nez v3, :cond_44

    .line 275
    return-object v1

    .line 277
    :cond_44
    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "encode":Ljava/lang/String;
    return-object v1

    .line 280
    .end local v0    # "randomClientNonce":[B
    .end local v1    # "encode":Ljava/lang/String;
    .end local v3    # "type3MessageBytes":[B
    :cond_49
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForLm(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createLMResponse([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    .line 281
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForNtlm(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createNTLMResponse([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    .line 282
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createType3Message()[B

    move-result-object v0

    .line 283
    .local v0, "type3MessageBytes":[B
    if-nez v0, :cond_6c

    .line 284
    return-object v1

    .line 286
    :cond_6c
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_70} :catch_71

    .line 287
    .restart local v1    # "encode":Ljava/lang/String;
    return-object v1

    .line 289
    .end local v0    # "type3MessageBytes":[B
    .end local v1    # "encode":Ljava/lang/String;
    :catch_71
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 296
    :goto_76
    return-object v1

    .line 260
    :cond_77
    :goto_77
    return-object v1
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    return-void
.end method
