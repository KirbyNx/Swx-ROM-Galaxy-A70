.class public abstract Lcom/android/server/biometrics/SemBiometricTrustAppManager;
.super Ljava/lang/Object;
.source "SemBiometricTrustAppManager.java"


# static fields
.field public static final FACE_OK:I = 0x0

.field public static final FINGERPRINT_OK:I = 0x64


# instance fields
.field private mConstants:Lcom/android/server/biometrics/Constants;

.field private mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field private mDataTransmissionUnit:I

.field private mErrorValue:I

.field private mHalDeviceId:J

.field private mPath:Ljava/lang/String;

.field private mServiceListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

.field private mSuccessValue:I

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "path"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const v0, 0xe1000

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDataTransmissionUnit:I

    .line 48
    iput-object p8, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mPath:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    .line 50
    iput-object p3, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 51
    iput-object p7, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mServiceListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 52
    iput-wide p4, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mHalDeviceId:J

    .line 53
    instance-of v0, p2, Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    const/16 v1, -0x64

    if-eqz v0, :cond_1f

    .line 54
    iput v1, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mErrorValue:I

    .line 55
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mSuccessValue:I

    goto :goto_2c

    .line 56
    :cond_1f
    instance-of v0, p2, Lcom/android/server/biometrics/face/FaceConstants;

    if-eqz v0, :cond_2c

    .line 57
    iput v1, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mErrorValue:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mSuccessValue:I

    .line 59
    const/high16 v0, 0x300000

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDataTransmissionUnit:I

    .line 61
    :cond_2c
    :goto_2c
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, -0x2

    const-string v2, "biometrics.tad"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mThread:Landroid/os/HandlerThread;

    .line 62
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_60

    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateClient: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDataTransmissionUnit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_60
    return-void
.end method


# virtual methods
.method public abstract handleUpdate(I)V
.end method

.method public synthetic lambda$start$0$SemBiometricTrustAppManager()V
    .registers 13

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateClient: start: thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 77
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_d
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 79
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UpdateClient: start: No file exist"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget v3, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mErrorValue:I

    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->handleUpdate(I)V

    .line 81
    return-void

    .line 83
    :cond_2b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 84
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v3

    .line 85
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateClient: start: size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const v3, 0x19000

    new-array v3, v3, [B

    .line 90
    .local v3, "buffer":[B
    :goto_5d
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "readCnt":I
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v4, v6, :cond_6a

    .line 91
    invoke-virtual {v0, v3, v7, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_5d

    .line 93
    :cond_6a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6d} :catch_1f4

    .line 94
    const/4 v1, 0x0

    .line 106
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "buffer":[B
    .end local v5    # "readCnt":I
    nop

    .line 107
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v2}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpdateClient: start: done reading file"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    invoke-interface {v2}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->sehInstallTAStart()I

    move-result v2

    if-eqz v2, :cond_88

    .line 110
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mErrorValue:I

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->handleUpdate(I)V

    .line 111
    return-void

    .line 115
    :cond_88
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDataTransmissionUnit:I

    const-string v3, "UpdateClient: start: OPERATION_WRITE error"

    if-ne v2, v6, :cond_a9

    .line 116
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->sehInstallTAWrite([B)I

    move-result v2

    if-eqz v2, :cond_168

    .line 117
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v2}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v2, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mErrorValue:I

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->handleUpdate(I)V

    .line 119
    return-void

    .line 122
    :cond_a9
    const/4 v2, 0x0

    .line 123
    .local v2, "fileBuf":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-double v4, v4

    iget v6, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDataTransmissionUnit:I

    int-to-double v8, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 124
    .local v4, "loopCnt":I
    sget-boolean v5, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v5, :cond_d6

    .line 125
    iget-object v5, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v5}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UpdateClient: start: loopCnt:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_d6
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_da
    if-ge v5, v4, :cond_168

    .line 129
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget v8, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDataTransmissionUnit:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 130
    .local v6, "length":I
    new-array v2, v6, [B

    .line 131
    sget-boolean v8, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v9, ", byteBuffer.remaining():"

    if-eqz v8, :cond_11e

    .line 132
    iget-object v8, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v8}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UpdateClient: start: read length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", byteBuffer.position()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 132
    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_11e
    invoke-virtual {v0, v2, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 137
    sget-boolean v8, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v8, :cond_14d

    .line 138
    iget-object v8, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v8}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UpdateClient: start: byteBuffer.position() after get()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 138
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_14d
    iget-object v8, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    invoke-interface {v8, v2}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->sehInstallTAWrite([B)I

    move-result v8

    if-eqz v8, :cond_164

    .line 142
    iget-object v7, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v7}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v3, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mErrorValue:I

    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->handleUpdate(I)V

    .line 144
    return-void

    .line 128
    .end local v6    # "length":I
    :cond_164
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_da

    .line 149
    .end local v2    # "fileBuf":[B
    .end local v4    # "loopCnt":I
    .end local v5    # "i":I
    :cond_168
    const/4 v2, 0x0

    .line 151
    .local v2, "md":Ljava/security/MessageDigest;
    :try_start_169
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_16f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_169 .. :try_end_16f} :catch_1e1

    move-object v2, v3

    .line 156
    nop

    .line 157
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 158
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 159
    .local v3, "digest":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v5, v3

    move v6, v7

    :goto_183
    if-ge v6, v5, :cond_19c

    aget-byte v8, v3, v6

    .line 161
    .local v8, "element":B
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v7

    const-string v10, "%02x"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .end local v8    # "element":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_183

    .line 163
    :cond_19c
    sget-boolean v5, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v5, :cond_1c2

    .line 164
    iget-object v5, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v5}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpdateClient: digest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1c2
    iget-object v5, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    invoke-interface {v5, v3}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->sehInstallTAEnd([B)I

    move-result v5

    if-eqz v5, :cond_1db

    .line 168
    iget-object v5, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v5}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UpdateClient: start: OPERATION_END error"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v5, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mErrorValue:I

    invoke-virtual {p0, v5}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->handleUpdate(I)V

    .line 170
    return-void

    .line 173
    :cond_1db
    iget v5, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mSuccessValue:I

    invoke-virtual {p0, v5}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->handleUpdate(I)V

    .line 174
    return-void

    .line 152
    .end local v3    # "digest":[B
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_1e1
    move-exception v3

    .line 153
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v4, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v4}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "start: failure to get MessageDigest instance"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    iget v4, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mErrorValue:I

    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->handleUpdate(I)V

    .line 155
    return-void

    .line 95
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1f4
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UpdateClient: start: failure to read file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v3, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mErrorValue:I

    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->handleUpdate(I)V

    .line 99
    if-eqz v1, :cond_218

    .line 100
    :try_start_207
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_20a} :catch_20b

    goto :goto_218

    .line 102
    :catch_20b
    move-exception v3

    .line 103
    .local v3, "ce":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v4}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UpdateClient: start: failed to close file"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_219

    .line 104
    .end local v3    # "ce":Ljava/lang/Exception;
    :cond_218
    :goto_218
    nop

    .line 105
    :goto_219
    return-void
.end method

.method public onAcquired(II)Z
    .registers 6
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mServiceListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_b

    .line 186
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mServiceListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    iget-wide v1, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mHalDeviceId:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAcquired(JII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 190
    :cond_b
    goto :goto_19

    .line 188
    :catch_c
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onAcquired: failed to invoke sendAcquired"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method public onFaceStatusUpdate(I)Z
    .registers 5
    .param p1, "status"    # I

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mServiceListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_b

    .line 197
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mServiceListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onSemStatusUpdate(ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 201
    :cond_b
    goto :goto_19

    .line 199
    :catch_c
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFaceStatusUpdate: failed to invoke onFaceStatusUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$SemBiometricTrustAppManager$FGji1IYV-Y207W4WG_lf6Tc8UrE;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricTrustAppManager$FGji1IYV-Y207W4WG_lf6Tc8UrE;-><init>(Lcom/android/server/biometrics/SemBiometricTrustAppManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public stop()I
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 180
    const/4 v0, 0x0

    return v0
.end method
