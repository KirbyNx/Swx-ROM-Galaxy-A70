.class final Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
.super Ljava/lang/Object;
.source "PreloadedAuthnrOperation.java"


# static fields
.field private static final FIDO_CMD_DO_FIDO:I = 0x3

.field private static final FIDO_CMD_GET_WRAPPED_OBJECT:I = 0x2

.field private static final FIDO_CMD_SET_CHALLENGE:I = 0x1

.field private static final MAX_RESPONSE_LENGTH:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "PAO"

.field private static sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_11

    .line 53
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 55
    :cond_11
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    if-nez v1, :cond_e

    .line 59
    new-instance v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    invoke-direct {v1, p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    .line 62
    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 57
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private sendRequest([B)[B
    .registers 11
    .param p1, "request"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const-string v0, "PAO"

    const-string/jumbo v1, "send request"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    array-length v2, p1

    if-nez v2, :cond_f

    goto :goto_2d

    .line 186
    :cond_f
    const/16 v2, 0x2800

    new-array v2, v2, [B

    .line 188
    .local v2, "response":[B
    iget-object v3, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v4, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v3

    .line 189
    .local v3, "ret":I
    if-nez v3, :cond_28

    .line 190
    const-string/jumbo v4, "request failed"

    invoke-static {v0, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-object v1

    .line 194
    :cond_28
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    .line 182
    .end local v2    # "response":[B
    .end local v3    # "ret":I
    :cond_2d
    :goto_2d
    const-string/jumbo v2, "request is 0"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-object v1
.end method


# virtual methods
.method public declared-synchronized initialize()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_1
    const-string v0, "PAO"

    const-string/jumbo v1, "initialize TA"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    if-nez v0, :cond_14

    .line 69
    new-instance v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;

    invoke-direct {v0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    .line 72
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    invoke-interface {v0}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->initialize()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return v0

    .line 65
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized process([BLjava/lang/String;)[B
    .registers 12
    .param p1, "data"    # [B
    .param p2, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_1
    const-string v0, "PAO"

    const-string/jumbo v1, "process"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 96
    const-string v0, "PAO"

    const-string/jumbo v2, "input data is null"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-array v0, v1, [B
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_13c

    monitor-exit p0

    return-object v0

    .line 101
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    :cond_19
    :try_start_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_2c

    .line 102
    const-string v0, "PAO"

    const-string v2, "appId is too long(max: 32)"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-array v0, v1, [B
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_13c

    monitor-exit p0

    return-object v0

    .line 106
    :cond_2c
    :try_start_2c
    const-string v0, "authnr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 107
    const-string v0, "PAO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appId is wrong. appId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-array v0, v1, [B
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_13c

    monitor-exit p0

    return-object v0

    .line 111
    :cond_4e
    :try_start_4e
    new-array v0, v1, [B

    .line 113
    .local v0, "response":[B
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    array-length v4, p1

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 114
    .local v2, "inputTlv":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 115
    .local v4, "inputTlvBuffer":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 117
    const/16 v5, 0x5301

    invoke-virtual {v4, v1, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    add-int/2addr v5, v6

    array-length v7, p1

    add-int/2addr v5, v7

    int-to-short v5, v5

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 119
    const/16 v5, 0x5302

    invoke-virtual {v4, v6, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 120
    const/4 v5, 0x6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 121
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    array-length v3, p1

    invoke-static {p1, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 126
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    .line 129
    .local v5, "opCode":S
    const/4 v6, 0x1

    if-eq v5, v6, :cond_11a

    if-eq v5, v7, :cond_f1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b9

    .line 171
    const-string v6, "PAO"

    const-string/jumbo v7, "unknown opCode"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_134

    .line 153
    :cond_b9
    const-string v6, "PAO"

    const-string v7, "doFido"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->initialize()Z

    move-result v6

    .line 155
    .local v6, "ret":Z
    if-nez v6, :cond_ce

    .line 156
    const-string v7, "PAO"

    const-string v8, "TA init failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    goto :goto_134

    .line 160
    :cond_ce
    iget-object v7, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    invoke-interface {v7, p1}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->process([B)[B

    move-result-object v7

    move-object v0, v7

    .line 161
    if-eqz v0, :cond_da

    array-length v7, v0

    if-nez v7, :cond_e2

    .line 162
    :cond_da
    const-string v7, "PAO"

    const-string/jumbo v8, "process failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_e2
    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->terminate()Z

    move-result v7

    move v6, v7

    .line 165
    if-nez v6, :cond_134

    .line 166
    const-string v7, "PAO"

    const-string v8, "TA terminate failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_134

    .line 139
    .end local v6    # "ret":Z
    :cond_f1
    const-string v6, "PAO"

    const-string/jumbo v7, "getWrappedObject"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->initialize()Z

    move-result v6

    .line 141
    .restart local v6    # "ret":Z
    if-nez v6, :cond_107

    .line 142
    const-string v7, "PAO"

    const-string v8, "TA init failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    goto :goto_134

    .line 146
    :cond_107
    invoke-direct {p0, v2}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sendRequest([B)[B

    move-result-object v7

    move-object v0, v7

    .line 147
    if-eqz v0, :cond_111

    array-length v7, v0

    if-nez v7, :cond_134

    .line 148
    :cond_111
    const-string v7, "PAO"

    const-string/jumbo v8, "send request failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_134

    .line 131
    .end local v6    # "ret":Z
    :cond_11a
    const-string v6, "PAO"

    const-string/jumbo v7, "setChallenge start"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, v2}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sendRequest([B)[B

    move-result-object v6

    move-object v0, v6

    .line 133
    if-eqz v0, :cond_12c

    array-length v6, v0

    if-nez v6, :cond_134

    .line 134
    :cond_12c
    const-string v6, "PAO"

    const-string/jumbo v7, "send request fail"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_134
    :goto_134
    if-nez v0, :cond_139

    new-array v1, v1, [B
    :try_end_138
    .catchall {:try_start_4e .. :try_end_138} :catchall_13c

    goto :goto_13a

    :cond_139
    move-object v1, v0

    :goto_13a
    monitor-exit p0

    return-object v1

    .line 92
    .end local v0    # "response":[B
    .end local v2    # "inputTlv":[B
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "inputTlvBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "opCode":S
    .end local p1    # "data":[B
    .end local p2    # "appId":Ljava/lang/String;
    :catchall_13c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminate()Z
    .registers 4

    monitor-enter p0

    .line 76
    :try_start_1
    const-string v0, "PAO"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    if-nez v0, :cond_17

    .line 79
    const-string v0, "PAO"

    const-string v1, "controller is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2d

    .line 80
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 83
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    invoke-interface {v0}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->terminate()Z

    move-result v0

    .line 84
    .local v0, "ret":Z
    if-nez v0, :cond_27

    .line 85
    const-string v1, "PAO"

    const-string/jumbo v2, "terminate failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2d

    .line 89
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 75
    .end local v0    # "ret":Z
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
