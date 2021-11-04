.class final Lcom/android/server/biometrics/BiometricService$AuthSession;
.super Ljava/lang/Object;
.source "BiometricService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AuthSession"
.end annotation


# instance fields
.field private mAuthenticatedTimeMs:J

.field final mBundle:Landroid/os/Bundle;

.field final mCallingPid:I

.field final mCallingUid:I

.field final mCallingUserId:I

.field final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field mErrorEscrow:I

.field final mModalitiesMatched:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mModalitiesWaiting:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mModality:I

.field final mOpPackageName:Ljava/lang/String;

.field final mRequireConfirmation:Z

.field mSemExtension:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

.field final mSessionId:J

.field private mStartTimeMs:J

.field mState:I

.field final mSysUiSessionId:I

.field final mToken:Landroid/os/IBinder;

.field mTokenEscrow:[B

.field final mUserId:I

.field mVendorCodeEscrow:I

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;Ljava/util/HashMap;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIIZ)V
    .registers 31
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricService;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "sessionId"    # J
    .param p6, "userId"    # I
    .param p7, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "bundle"    # Landroid/os/Bundle;
    .param p10, "callingUid"    # I
    .param p11, "callingPid"    # I
    .param p12, "callingUserId"    # I
    .param p13, "modality"    # I
    .param p14, "requireConfirmation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/IBinder;",
            "JI",
            "Landroid/hardware/biometrics/IBiometricServiceReceiver;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "IIIIZ)V"
        }
    .end annotation

    .line 240
    .local p2, "modalities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    .line 220
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 241
    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    .line 242
    move-object/from16 v4, p3

    iput-object v4, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    .line 243
    move-wide/from16 v5, p4

    iput-wide v5, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    .line 244
    move/from16 v7, p6

    iput v7, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    .line 245
    move-object/from16 v8, p7

    iput-object v8, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 246
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    .line 247
    move-object/from16 v10, p9

    iput-object v10, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    .line 248
    # getter for: Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    iput v11, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    .line 249
    move/from16 v11, p10

    iput v11, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    .line 250
    move/from16 v12, p11

    iput v12, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    .line 251
    move/from16 v13, p12

    iput v13, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    .line 252
    move/from16 v14, p13

    iput v14, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    .line 253
    move/from16 v15, p14

    iput-boolean v15, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New AuthSession, mSysUiSessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_65
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6f} :catch_70

    .line 261
    goto :goto_76

    .line 259
    :catch_70
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to link to death"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_76
    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/BiometricService$AuthSession;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 191
    iget-wide v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mAuthenticatedTimeMs:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService$AuthSession;
    .param p1, "x1"    # J

    .line 191
    iput-wide p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mAuthenticatedTimeMs:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/BiometricService$AuthSession;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 191
    iget-wide v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService$AuthSession;
    .param p1, "x1"    # J

    .line 191
    iput-wide p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mStartTimeMs:J

    return-wide p1
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, sysUiSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method containsCookie(I)Z
    .registers 5
    .param p1, "cookie"    # I

    .line 269
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 270
    return v1

    .line 272
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    if-eqz v0, :cond_1f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 273
    return v1

    .line 275
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method destroy()V
    .registers 2

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy(I)V

    .line 316
    return-void
.end method

.method destroy(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 323
    goto :goto_13

    .line 321
    :catch_b
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BiometricService"

    const-string v2, "Unable to unlink to death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSemExtension:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->closeSysUiSession()V

    .line 325
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSemExtension:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mCookie:I

    iget v2, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mErrorEscrow:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/SemBioLoggingManager;->bpStop(III)V

    .line 326
    return-void
.end method

.method isAllowDeviceCredential()Z
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method isCrypto()Z
    .registers 5

    .line 265
    iget-wide v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method onError(II)V
    .registers 6
    .param p1, "error"    # I
    .param p2, "vendor"    # I

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 310
    goto :goto_23

    .line 308
    :catch_8
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthSession.onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mErrorEscrow:I

    .line 312
    return-void
.end method

.method semChangeModalities(I)V
    .registers 5
    .param p1, "modality"    # I

    .line 299
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    .line 300
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 301
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 302
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSemExtension:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mCookie:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void
.end method

.method semCreateAuthSessionExtension(I)V
    .registers 9
    .param p1, "cookie"    # I

    .line 290
    new-instance v6, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    move-object v0, v6

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;ILandroid/os/Bundle;I)V

    iput-object v6, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSemExtension:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    .line 291
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->bpStart(ILjava/lang/String;)V

    .line 292
    return-void
.end method

.method semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSemExtension:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    return-object v0
.end method
