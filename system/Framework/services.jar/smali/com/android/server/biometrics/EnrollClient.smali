.class public abstract Lcom/android/server/biometrics/EnrollClient;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "EnrollClient.java"


# instance fields
.field private final mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

.field private final mCryptoToken:[B

.field private final mDisabledFeatures:[I

.field private mEnrollmentStartTimeMs:J

.field private mPrevRemaining:I

.field private final mTimeoutSec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;[II)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "userId"    # I
    .param p9, "groupId"    # I
    .param p10, "cryptoToken"    # [B
    .param p11, "restricted"    # Z
    .param p12, "owner"    # Ljava/lang/String;
    .param p13, "utils"    # Lcom/android/server/biometrics/BiometricUtils;
    .param p14, "disabledFeatures"    # [I
    .param p15, "timeoutSec"    # I

    .line 52
    move-object/from16 v13, p0

    move-object/from16 v14, p10

    move-object/from16 v15, p14

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/ClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 54
    move-object/from16 v0, p13

    iput-object v0, v13, Lcom/android/server/biometrics/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    .line 58
    const/4 v1, 0x0

    if-nez v14, :cond_29

    move-object v2, v1

    goto :goto_2e

    :cond_29
    array-length v2, v14

    invoke-static {v14, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    :goto_2e
    iput-object v2, v13, Lcom/android/server/biometrics/EnrollClient;->mCryptoToken:[B

    .line 59
    if-nez v15, :cond_33

    goto :goto_38

    :cond_33
    array-length v1, v15

    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :goto_38
    iput-object v1, v13, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    .line 61
    move/from16 v1, p15

    iput v1, v13, Lcom/android/server/biometrics/EnrollClient;->mTimeoutSec:I

    .line 62
    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 96
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->shouldVibrate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 98
    iget v0, p0, Lcom/android/server/biometrics/EnrollClient;->mPrevRemaining:I

    if-ge p2, v0, :cond_d

    .line 99
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->vibrateSuccess()V

    .line 101
    :cond_d
    iput p2, p0, Lcom/android/server/biometrics/EnrollClient;->mPrevRemaining:I

    .line 104
    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/EnrollClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, p0, Lcom/android/server/biometrics/EnrollClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->actionBiometricEnroll()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 106
    const/4 v0, 0x1

    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v1

    .line 107
    .local v1, "listener":Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    if-eqz v1, :cond_24

    .line 108
    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_29

    .line 110
    :cond_24
    if-nez p2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    .line 111
    .end local v1    # "listener":Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    :catch_29
    move-exception v1

    .line 112
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to notify EnrollResult:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    return v0
.end method


# virtual methods
.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .registers 6
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "authenticated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 178
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 72
    if-nez p2, :cond_1e

    .line 73
    iget-object v0, p0, Lcom/android/server/biometrics/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    .line 74
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/EnrollClient;->logOnEnrolled(IJZ)V

    .line 78
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->notifyUserActivity()V

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/EnrollClient;->sendEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v0

    .line 81
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/biometrics/EnrollClient;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    if-eqz v1, :cond_2e

    .line 82
    iget-object v1, p0, Lcom/android/server/biometrics/EnrollClient;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    invoke-virtual {v1, p2}, Lcom/android/server/biometrics/SemClientExtension;->onEnrollResult(I)V

    .line 84
    :cond_2e
    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 171
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public onError(JII)Z
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 190
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/EnrollClient;->logOnEnrolled(IJZ)V

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result v0

    return v0
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 164
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRemoved() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public abstract shouldVibrate()Z
.end method

.method public start()I
    .registers 7

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    .line 120
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/biometrics/EnrollClient;->mPrevRemaining:I

    .line 122
    const/4 v0, 0x0

    :try_start_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    array-length v3, v3

    if-ge v2, v3, :cond_24

    .line 124
    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 127
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getGroupId()I

    move-result v4

    iget v5, p0, Lcom/android/server/biometrics/EnrollClient;->mTimeoutSec:I

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->enroll([BIILjava/util/ArrayList;)I

    move-result v2

    .line 129
    .local v2, "result":I
    if-eqz v2, :cond_63

    .line 130
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startEnroll failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v4, p0, Lcom/android/server/biometrics/EnrollClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v4}, Lcom/android/server/biometrics/Constants;->tagEnrollStartError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getHalDeviceId()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/android/server/biometrics/EnrollClient;->onError(JII)Z
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_62} :catch_64

    .line 134
    return v2

    .line 138
    .end local v1    # "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "result":I
    :cond_63
    goto :goto_6f

    .line 136
    :catch_64
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "startEnroll failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_6f
    return v0
.end method

.method protected statsAction()I
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public stop(Z)I
    .registers 7
    .param p1, "initiatedByClient"    # Z

    .line 144
    iget-boolean v0, p0, Lcom/android/server/biometrics/EnrollClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 145
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stopEnroll: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v1

    .line 150
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result v0

    .line 151
    .local v0, "result":I
    if-eqz v0, :cond_34

    .line 152
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollCancel failed, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_33} :catch_35

    .line 153
    return v0

    .line 157
    .end local v0    # "result":I
    :cond_34
    goto :goto_40

    .line 155
    :catch_35
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "stopEnrollment failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/EnrollClient;->mAlreadyCancelled:Z

    .line 159
    return v1
.end method
