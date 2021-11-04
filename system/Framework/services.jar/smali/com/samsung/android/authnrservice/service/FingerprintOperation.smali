.class final Lcom/samsung/android/authnrservice/service/FingerprintOperation;
.super Ljava/lang/Object;
.source "FingerprintOperation.java"


# static fields
.field private static final APP_ID_AUTHNR:Ljava/lang/String; = "authnr"

.field private static final FIDO_CMD_GET_WRAPPED_OBJECT:S = 0x2s

.field private static final FIDO_CMD_SET_CHALLENGE:S = 0x1s

.field private static final LENGTH_FIELD_SIZE:S = 0x2s

.field private static final MAX_RESPONSE_LENGTH:I = 0x2800

.field private static final OPERATION_CODE_FIELD_SIZE:S = 0x2s

.field private static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FPO"

.field private static sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 61
    if-nez v0, :cond_12

    .line 62
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 64
    :cond_12
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    if-nez v1, :cond_e

    .line 54
    new-instance v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    invoke-direct {v1, p0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    .line 57
    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 52
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized sendRequest([B)[B
    .registers 13
    .param p1, "input"    # [B

    monitor-enter p0

    .line 67
    :try_start_1
    const-string v0, "FPO"

    const-string/jumbo v1, "sendRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 70
    const-string v0, "FPO"

    const-string v2, "Fingerprint Service not found"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-array v0, v1, [B
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_a4

    monitor-exit p0

    return-object v0

    .line 74
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    :cond_19
    const/4 v0, 0x0

    if-eqz p1, :cond_9a

    :try_start_1c
    array-length v2, p1

    if-nez v2, :cond_21

    goto/16 :goto_9a

    .line 79
    :cond_21
    const-string v2, "authnr"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    array-length v4, p1

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 80
    .local v2, "request":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v10, v4

    .line 81
    .local v10, "inputTlvBuffer":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    const/16 v4, 0x5301

    invoke-virtual {v10, v1, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 83
    const/4 v4, 0x2

    const-string v5, "authnr"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    add-int/2addr v5, v6

    array-length v7, p1

    add-int/2addr v5, v7

    int-to-short v5, v5

    invoke-virtual {v10, v4, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 84
    const/16 v4, 0x5302

    invoke-virtual {v10, v6, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 85
    const/4 v4, 0x6

    const-string v5, "authnr"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v10, v4, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 86
    const-string v4, "authnr"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "authnr"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    const-string v4, "authnr"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    array-length v3, p1

    invoke-static {p1, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    const/16 v1, 0x2800

    new-array v1, v1, [B

    .line 91
    .local v1, "response":[B
    iget-object v4, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v5, 0x9

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v3

    .line 92
    .local v3, "ret":I
    if-nez v3, :cond_94

    .line 93
    const-string v4, "FPO"

    const-string/jumbo v5, "request failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_1c .. :try_end_92} :catchall_a4

    .line 94
    monitor-exit p0

    return-object v0

    .line 97
    :cond_94
    :try_start_94
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_a4

    monitor-exit p0

    return-object v0

    .line 75
    .end local v1    # "response":[B
    .end local v2    # "request":[B
    .end local v3    # "ret":I
    .end local v10    # "inputTlvBuffer":Ljava/nio/ByteBuffer;
    :cond_9a
    :goto_9a
    :try_start_9a
    const-string v1, "FPO"

    const-string/jumbo v2, "invalid input"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_a4

    .line 76
    monitor-exit p0

    return-object v0

    .line 66
    .end local p1    # "input":[B
    :catchall_a4
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getWrappedObject([B)[B
    .registers 8
    .param p1, "challenge"    # [B

    monitor-enter p0

    .line 130
    :try_start_1
    const-string v0, "FPO"

    const-string/jumbo v1, "getWrappedObject"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    .local v0, "bf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 136
    array-length v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sendRequest([B)[B

    move-result-object v1

    .line 140
    .local v1, "response":[B
    if-eqz v1, :cond_56

    array-length v2, v1

    if-nez v2, :cond_38

    goto :goto_56

    .line 145
    :cond_38
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, v2

    .line 146
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 148
    .local v2, "ret":S
    if-eqz v2, :cond_54

    .line 149
    const-string v4, "FPO"

    const-string/jumbo v5, "getWrappedObject failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-array v3, v3, [B
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_62

    monitor-exit p0

    return-object v3

    .line 153
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    :cond_54
    monitor-exit p0

    return-object v1

    .line 141
    .end local v2    # "ret":S
    :cond_56
    :goto_56
    :try_start_56
    const-string v2, "FPO"

    const-string/jumbo v4, "sendRequest failed"

    invoke-static {v2, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-array v2, v3, [B
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_62

    monitor-exit p0

    return-object v2

    .line 129
    .end local v0    # "bf":Ljava/nio/ByteBuffer;
    .end local v1    # "response":[B
    .end local p1    # "challenge":[B
    :catchall_62
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setChallenge([B)Z
    .registers 8
    .param p1, "challenge"    # [B

    monitor-enter p0

    .line 102
    :try_start_1
    const-string v0, "FPO"

    const-string/jumbo v1, "set challenge"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    .local v0, "bf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 108
    array-length v2, p1

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sendRequest([B)[B

    move-result-object v2

    .line 112
    .local v2, "response":[B
    if-eqz v2, :cond_56

    array-length v3, v2

    if-nez v3, :cond_3a

    goto :goto_56

    .line 117
    :cond_3a
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v3

    .line 118
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 120
    .local v3, "ret":S
    if-eqz v3, :cond_54

    .line 121
    const-string v1, "FPO"

    const-string/jumbo v5, "setChallenge failed"

    invoke-static {v1, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_60

    .line 122
    monitor-exit p0

    return v4

    .line 125
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    :cond_54
    monitor-exit p0

    return v1

    .line 113
    .end local v3    # "ret":S
    :cond_56
    :goto_56
    :try_start_56
    const-string v1, "FPO"

    const-string/jumbo v3, "sendRequest failed"

    invoke-static {v1, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_60

    .line 114
    monitor-exit p0

    return v4

    .line 101
    .end local v0    # "bf":Ljava/nio/ByteBuffer;
    .end local v2    # "response":[B
    .end local p1    # "challenge":[B
    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method
