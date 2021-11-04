.class public final Lcom/android/server/biometrics/face/FaceAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "FaceAuthenticator.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mFaceService:Landroid/hardware/face/IFaceService;

.field private mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method public constructor <init>(Landroid/hardware/face/IFaceService;)V
    .registers 3
    .param p1, "faceService"    # Landroid/hardware/face/IFaceService;

    .line 45
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 41
    const-string v0, "FaceAuthenticator"

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 46
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/hardware/face/IFaceService;Landroid/content/Context;)V
    .registers 4
    .param p1, "faceService"    # Landroid/hardware/face/IFaceService;
    .param p2, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 41
    const-string v0, "FaceAuthenticator"

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 51
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 52
    if-nez p1, :cond_14

    .line 53
    invoke-static {p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 55
    :cond_14
    return-void
.end method


# virtual methods
.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_9

    goto :goto_17

    .line 87
    :cond_9
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_22

    .line 88
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    goto :goto_22

    .line 85
    :cond_17
    :goto_17
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/hardware/face/IFaceService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 91
    :cond_22
    :goto_22
    return-void
.end method

.method public getAuthenticatorId(I)J
    .registers 4
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_9

    goto :goto_15

    .line 135
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_12

    .line 136
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getAuthenticatorId()J

    move-result-wide v0

    return-wide v0

    .line 138
    :cond_12
    const-wide/16 v0, 0x0

    return-wide v0

    .line 134
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->getAuthenticatorId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEnrolledTemplates(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_9

    goto :goto_14

    .line 107
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_12

    .line 108
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    return v0

    .line 110
    :cond_12
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .registers 3
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_9

    goto :goto_14

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_12

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v0

    return v0

    .line 100
    :cond_12
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    .registers 39
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "sessionId"    # J
    .param p5, "userId"    # I
    .param p6, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v1, :cond_28

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_b

    goto :goto_28

    .line 66
    :cond_b
    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_41

    .line 67
    const/4 v14, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v14}, Lcom/samsung/android/bio/face/SemBioFaceManager;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIILandroid/os/Bundle;)V

    goto :goto_41

    .line 64
    :cond_28
    :goto_28
    iget-object v15, v0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    move/from16 v16, p1

    move-object/from16 v17, p2

    move-wide/from16 v18, p3

    move/from16 v20, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p7

    move/from16 v23, p8

    move/from16 v24, p9

    move/from16 v25, p10

    move/from16 v26, p11

    invoke-interface/range {v15 .. v26}, Landroid/hardware/face/IFaceService;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V

    .line 70
    :cond_41
    :goto_41
    return-void
.end method

.method public resetLockout([B)V
    .registers 3
    .param p1, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 117
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_16

    .line 118
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->resetTimeout([B)V

    goto :goto_16

    .line 116
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->resetLockout([B)V

    .line 120
    :cond_16
    :goto_16
    return-void
.end method

.method public semGetSecurityLevel()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_a

    goto :goto_14

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_13

    .line 169
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSecurityLevel()I

    move-result v0

    return v0

    .line 171
    :cond_13
    return v1

    .line 167
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, v1}, Landroid/hardware/face/IFaceService;->semGetSecurityLevel(Z)I

    move-result v0

    return v0
.end method

.method public semPrepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIIILandroid/os/Bundle;)V
    .registers 30
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "sessionId"    # J
    .param p5, "userId"    # I
    .param p6, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUserId"    # I
    .param p12, "extraFlag"    # I
    .param p13, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    move-object/from16 v0, p0

    move/from16 v1, p12

    if-nez p13, :cond_c

    .line 149
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .end local p13    # "b":Landroid/os/Bundle;
    .local v2, "b":Landroid/os/Bundle;
    goto :goto_e

    .line 148
    .end local v2    # "b":Landroid/os/Bundle;
    .restart local p13    # "b":Landroid/os/Bundle;
    :cond_c
    move-object/from16 v2, p13

    .line 151
    .end local p13    # "b":Landroid/os/Bundle;
    .restart local v2    # "b":Landroid/os/Bundle;
    :goto_e
    if-eqz v1, :cond_2b

    .line 152
    const-string v3, "SEM_KEY_PRIVILEGED_FLAG"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extraFlag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FaceAuthenticator"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2b
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v3, :cond_51

    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v3, :cond_34

    goto :goto_51

    .line 158
    :cond_34
    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_6b

    .line 159
    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object v15, v2

    invoke-virtual/range {v3 .. v15}, Lcom/samsung/android/bio/face/SemBioFaceManager;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIILandroid/os/Bundle;)V

    goto :goto_6b

    .line 156
    :cond_51
    :goto_51
    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object v15, v2

    invoke-interface/range {v3 .. v15}, Landroid/hardware/face/IFaceService;->semPrepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIILandroid/os/Bundle;)V

    .line 162
    :cond_6b
    :goto_6b
    return-void
.end method

.method public setActiveUser(I)V
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_16

    .line 127
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setActiveUser(I)V

    goto :goto_16

    .line 125
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->setActiveUser(I)V

    .line 129
    :cond_16
    :goto_16
    return-void
.end method

.method public startPreparedClient(I)V
    .registers 3
    .param p1, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 76
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_16

    .line 77
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->startPreparedClient(I)V

    goto :goto_16

    .line 75
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->startPreparedClient(I)V

    .line 79
    :cond_16
    :goto_16
    return-void
.end method
