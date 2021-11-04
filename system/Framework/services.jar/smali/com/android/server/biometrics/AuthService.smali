.class public Lcom/android/server/biometrics/AuthService;
.super Lcom/android/server/SystemService;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthService$AuthServiceImpl;,
        Lcom/android/server/biometrics/AuthService$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AuthService"


# instance fields
.field private mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field final mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

.field private final mInjector:Lcom/android/server/biometrics/AuthService$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 355
    new-instance v0, Lcom/android/server/biometrics/AuthService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/AuthService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/biometrics/AuthService$Injector;

    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 361
    iput-object p2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 362
    new-instance v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/AuthService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/AuthService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkPermission()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/AuthService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 69
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkInternalPermission()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/AuthService;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthService;->checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/AuthService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthService;->checkPrivilegedPermission(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 69
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    return-object v0
.end method

.method private checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x4e

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private checkInternalPermission()V
    .registers 4

    .line 447
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method private checkPermission()V
    .registers 4

    .line 452
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 454
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    const-string v2, "Must have USE_BIOMETRIC permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_17
    return-void
.end method

.method private checkPrivilegedPermission(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "b"    # Landroid/os/Bundle;

    .line 467
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 468
    const-string v0, "SEM_KEY_PRIVILEGED_FLAG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 469
    const-string v0, "SEM_KEY_BIOMETRIC_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 471
    :cond_16
    return-void
.end method

.method private registerAuthenticator(Lcom/android/server/biometrics/SensorConfig;)V
    .registers 7
    .param p1, "config"    # Lcom/android/server/biometrics/SensorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/biometrics/SensorConfig;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/biometrics/SensorConfig;->mModality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget v0, p1, Lcom/android/server/biometrics/SensorConfig;->mModality:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_ae

    const/4 v2, 0x4

    if-eq v0, v2, :cond_95

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4f

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown modality: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/biometrics/SensorConfig;->mModality:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 402
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 404
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.biometrics.face"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 406
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object v2

    .line 407
    .local v2, "faceService":Landroid/hardware/face/IFaceService;
    if-nez v2, :cond_6d

    .line 408
    const-string v3, "Attempting to register with null FaceService. Please check  your device configuration."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 413
    :cond_6d
    new-instance v1, Lcom/android/server/biometrics/face/FaceAuthenticator;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/biometrics/face/FaceAuthenticator;-><init>(Landroid/hardware/face/IFaceService;Landroid/content/Context;)V

    .line 414
    .local v1, "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    iget v3, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-interface {v2, v3}, Landroid/hardware/face/IFaceService;->initConfiguredStrength(I)V

    .line 415
    .end local v2    # "faceService":Landroid/hardware/face/IFaceService;
    goto :goto_c7

    .end local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    :cond_7c
    const-string v2, "com.samsung.android.bio.face"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 417
    new-instance v1, Lcom/android/server/biometrics/face/FaceAuthenticator;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/biometrics/face/FaceAuthenticator;-><init>(Landroid/hardware/face/IFaceService;Landroid/content/Context;)V

    .restart local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    goto :goto_c7

    .line 419
    .end local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    :cond_8f
    const-string v2, "No biometric face feature. Please check our device system feature."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 426
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_95
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisService()Landroid/hardware/iris/IIrisService;

    move-result-object v0

    .line 427
    .local v0, "irisService":Landroid/hardware/iris/IIrisService;
    if-nez v0, :cond_a3

    .line 428
    const-string v2, "Attempting to register with null IrisService. Please check your device configuration."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 433
    :cond_a3
    new-instance v1, Lcom/android/server/biometrics/iris/IrisAuthenticator;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/iris/IrisAuthenticator;-><init>(Landroid/hardware/iris/IIrisService;)V

    .line 434
    .restart local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    iget v2, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-interface {v0, v2}, Landroid/hardware/iris/IIrisService;->initConfiguredStrength(I)V

    .line 435
    goto :goto_c7

    .line 390
    .end local v0    # "irisService":Landroid/hardware/iris/IIrisService;
    .end local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    :cond_ae
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    .line 391
    .local v0, "fingerprintService":Landroid/hardware/fingerprint/IFingerprintService;
    if-nez v0, :cond_bc

    .line 392
    const-string v2, "Attempting to register with null FingerprintService. Please check your device configuration."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void

    .line 397
    :cond_bc
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintAuthenticator;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintAuthenticator;-><init>(Landroid/hardware/fingerprint/IFingerprintService;)V

    .line 398
    .restart local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    iget v2, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-interface {v0, v2}, Landroid/hardware/fingerprint/IFingerprintService;->initConfiguredStrength(I)V

    .line 399
    nop

    .line 442
    .end local v0    # "fingerprintService":Landroid/hardware/fingerprint/IFingerprintService;
    :goto_c7
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    iget v2, p1, Lcom/android/server/biometrics/SensorConfig;->mId:I

    iget v3, p1, Lcom/android/server/biometrics/SensorConfig;->mModality:I

    iget v4, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    .line 444
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 8

    .line 367
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 369
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "configs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 372
    .local v3, "config":Ljava/lang/String;
    :try_start_18
    new-instance v4, Lcom/android/server/biometrics/SensorConfig;

    invoke-direct {v4, v3}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/biometrics/AuthService;->registerAuthenticator(Lcom/android/server/biometrics/SensorConfig;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21

    .line 375
    goto :goto_29

    .line 373
    :catch_21
    move-exception v4

    .line 374
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AuthService"

    const-string v6, "Remote exception"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 378
    :cond_2c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/biometrics/AuthService$Injector;->publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V

    .line 379
    return-void
.end method
