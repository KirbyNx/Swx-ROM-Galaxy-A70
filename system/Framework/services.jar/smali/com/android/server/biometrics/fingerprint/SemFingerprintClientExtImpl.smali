.class public Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
.super Lcom/android/server/biometrics/SemClientExtension;
.source "SemFingerprintClientExtImpl.java"


# instance fields
.field private final mAllowListForFodHideGuideLayer:[Ljava/lang/String;

.field private mCaptureStartTime:J

.field private mDuplicatedImgCnt:I

.field private mHashCode:I

.field private mIconOptionWhenScreenOff:I

.field private mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

.field private mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

.field private mIsAuthenticated:Z

.field private mIsSetEarlyWakeUp:Z

.field private mIsWaitingFingerLeaveState:Z

.field private mLastErrorCode:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPromptPrivilegedAttr:I

.field private mQualityErrorCount:I

.field private mRejectCount:I

.field private mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

.field private mSysUiSessionId:I

.field private mSysUiType:I

.field private mTotalQualityErrorCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/ClientMonitor;ILandroid/os/Bundle;Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V
    .registers 9
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "type"    # I
    .param p3, "b"    # Landroid/os/Bundle;
    .param p4, "injector"    # Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 65
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/biometrics/SemClientExtension;-><init>(Lcom/android/server/biometrics/ClientMonitor;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPromptPrivilegedAttr:I

    .line 34
    const-string v1, "com.tencent.mm"

    const-string v2, "com.taobao.taobao"

    const-string v3, "com.nhnent.payapp"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mAllowListForFodHideGuideLayer:[Ljava/lang/String;

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiType:I

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mHashCode:I

    .line 67
    iput-object p4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 68
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 70
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getIsRestricted()Z

    move-result v2

    if-nez v2, :cond_40

    .line 71
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-eqz v2, :cond_40

    .line 72
    const-string v2, "SEM_KEY_PRIVILEGED_FLAG"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->setPromptPrivilegedAttr(I)V

    .line 75
    :cond_40
    if-eqz p3, :cond_8a

    .line 76
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    .line 77
    const-string/jumbo v3, "sem_privileged_attr"

    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    .line 78
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsKeyguard:Z

    if-eqz v2, :cond_59

    .line 79
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    or-int/lit8 v2, v2, 0x1b

    iput v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    goto :goto_63

    .line 83
    :cond_59
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsSetting:Z

    if-eqz v2, :cond_63

    .line 84
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    .line 86
    :cond_63
    :goto_63
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_8a

    .line 87
    const-string v2, "ALLOWLIST_FLAGS"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const v3, 0x8000

    and-int/2addr v2, v3

    if-nez v2, :cond_7d

    .line 89
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->isAllowListAppForFodHideSensorGuide(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 90
    :cond_7d
    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->TAG:Ljava/lang/String;

    const-string v3, "SemFingerprintClientExtImpl: specific allowlist attr"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    .line 95
    :cond_8a
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_91

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->initForInDisplaySensor(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 98
    :cond_91
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-nez v2, :cond_ab

    .line 99
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsKeyguard:Z

    if-nez v2, :cond_a8

    const/4 v2, 0x4

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->hasPrivilegedAttr(I)Z

    move-result v2

    if-nez v2, :cond_a8

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a9

    :cond_a8
    move v0, v1

    :cond_a9
    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mHasBackgroundAuthPermission:Z

    .line 103
    :cond_ab
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b2

    .line 104
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mCanIgnoreLockout:Z

    .line 106
    :cond_b2
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_ba

    .line 107
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mHasNoVibrationEffectPermission:Z

    .line 110
    :cond_ba
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemFingerprintClientExtImpl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPromptPrivilegedAttr:I

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 24
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 24
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 24
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsKeyguard:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 24
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 24
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method private initForInDisplaySensor(Lcom/android/server/biometrics/ClientMonitor;)V
    .registers 9
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 512
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 514
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsKeyguard:Z

    if-eqz v0, :cond_6a

    .line 516
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint_screen_off_icon_aod"

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIconOptionWhenScreenOff:I

    .line 519
    if-ne v0, v3, :cond_6a

    .line 521
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint_adaptive_icon"

    invoke-static {v0, v4, v2, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    .line 522
    .local v0, "adaptiveIcon":I
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    const-string v5, "fingerprint_screen_off_icon"

    invoke-static {v4, v5, v2, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v3

    .line 523
    .local v3, "screenOffIcon":I
    if-eqz v0, :cond_39

    if-nez v3, :cond_2d

    goto :goto_39

    .line 525
    :cond_2d
    if-eq v0, v2, :cond_36

    if-ne v3, v2, :cond_32

    goto :goto_36

    .line 528
    :cond_32
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIconOptionWhenScreenOff:I

    goto :goto_3c

    .line 526
    :cond_36
    :goto_36
    iput v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIconOptionWhenScreenOff:I

    goto :goto_3c

    .line 524
    :cond_39
    :goto_39
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIconOptionWhenScreenOff:I

    .line 530
    :goto_3c
    sget-object v4, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initForInDisplaySensor: No DB, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIconOptionWhenScreenOff:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIconOptionWhenScreenOff:I

    invoke-static {v4, v1, v2, v5}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 536
    .end local v0    # "adaptiveIcon":I
    .end local v3    # "screenOffIcon":I
    :cond_6a
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-nez v0, :cond_89

    .line 537
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 569
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    .line 571
    :cond_89
    return-void
.end method

.method private isAllowListAppForFodHideSensorGuide(Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mAllowListForFodHideGuideLayer:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 503
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 504
    const/4 v0, 0x1

    return v0

    .line 502
    .end local v4    # "s":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 507
    :cond_14
    return v2
.end method

.method private setEarlyWakeUp()V
    .registers 3

    .line 585
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsSetEarlyWakeUp:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 587
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsKeyguard:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    .line 589
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 590
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setEarlyWakeUp(Z)V

    .line 591
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsSetEarlyWakeUp:Z

    .line 593
    :cond_20
    return-void
.end method

.method private setPromptPrivilegedAttr(I)V
    .registers 4
    .param p1, "attr"    # I

    .line 494
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPromptPrivilegedAttr:I

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->hasPromptPrivilegedAttr(I)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x4

    .line 496
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->hasPromptPrivilegedAttr(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 497
    :cond_10
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    .line 499
    :cond_15
    return-void
.end method

.method private writeEventLog()V
    .registers 5

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const-string v1, "fingerprint_stop"

    .line 578
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mLastErrorCode:I

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_11

    :cond_e
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mLastErrorCode:I

    neg-int v2, v2

    .line 577
    :goto_11
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 581
    goto :goto_31

    .line 579
    :catch_15
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeEventLog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 10

    .line 242
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1c

    .line 243
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    .line 244
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_1c

    .line 245
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_1c

    .line 246
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setHwLightMode(Ljava/lang/String;)V

    .line 250
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->writeEventLog()V

    .line 251
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mHashCode:I

    const-wide/16 v5, 0x0

    iget v7, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mLastErrorCode:I

    iget v8, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mTotalQualityErrorCount:I

    const-string v4, "U"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStop(ILjava/lang/String;JII)V

    .line 253
    return-void
.end method

.method public getFingerprintWithExtraInfo(Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;
    .registers 10
    .param p1, "oldFp"    # Landroid/hardware/fingerprint/Fingerprint;

    .line 260
    new-instance v7, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    .line 261
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mDuplicatedImgCnt:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    .line 260
    return-object v7
.end method

.method public getHashCode()I
    .registers 2

    .line 470
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mHashCode:I

    return v0
.end method

.method public getPrivilegedAttr()I
    .registers 2

    .line 484
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPrivilegedAttr:I

    return v0
.end method

.method public getRemainTimeForFingerIcon()J
    .registers 6

    .line 489
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mCaptureStartTime:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 490
    .local v0, "ret":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_11

    goto :goto_12

    :cond_11
    move-wide v2, v0

    :goto_12
    return-wide v2
.end method

.method public handleAuthenticationResult()Z
    .registers 15

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    .line 284
    .local v0, "timeForResult":J
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_PENDING_FINGER_LEAVE:Z

    if-eqz v2, :cond_f

    .line 285
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsAuthenticated:Z

    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsWaitingFingerLeaveState:Z

    .line 287
    :cond_f
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsAuthenticated:Z

    const/4 v3, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, -0x1

    if-eqz v2, :cond_62

    .line 289
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mHashCode:I

    iget v9, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mRejectCount:I

    iget v10, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mTotalQualityErrorCount:I

    const-string v6, "M"

    move-wide v7, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStop(ILjava/lang/String;JII)V

    .line 292
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 294
    invoke-virtual {v4}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    .line 293
    const-string v5, "FPIS"

    invoke-virtual {v2, v5, v4, v13, v11}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 296
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v2

    .line 298
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 297
    const-string v5, "FPTS"

    invoke-virtual {v2, v5, v4, v13, v12}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 301
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v2

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mRejectCount:I

    .line 303
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    const-string v5, "FPSF"

    invoke-virtual {v2, v5, v4, v13, v12}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 306
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v2

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mQualityErrorCount:I

    .line 308
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 307
    const-string v5, "FPSQ"

    invoke-virtual {v2, v5, v4, v13, v12}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_95

    .line 312
    :cond_62
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mRejectCount:I

    add-int/2addr v2, v12

    iput v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mRejectCount:I

    .line 314
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mHashCode:I

    iget v9, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mRejectCount:I

    iget v10, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mQualityErrorCount:I

    const-string v6, "N"

    move-wide v7, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpNoMatch(ILjava/lang/String;JII)V

    .line 317
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 319
    invoke-virtual {v4}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    .line 318
    const-string v5, "FPIF"

    invoke-virtual {v2, v5, v4, v13, v11}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 321
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v2

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 322
    const-string v5, "FPTF"

    invoke-virtual {v2, v5, v4, v13, v12}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 325
    iput v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mQualityErrorCount:I

    .line 328
    :goto_95
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    .line 329
    .local v2, "c":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v4, v2, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v4, :cond_ab

    .line 330
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintClientExtImpl$QKGZpVpLUtelYkTrcijFztIfUPs;

    invoke-direct {v5, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintClientExtImpl$QKGZpVpLUtelYkTrcijFztIfUPs;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    .end local v2    # "c":Lcom/android/server/biometrics/ClientMonitor;
    :cond_ab
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsAuthenticated:Z

    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->onAuthenticated(Z)V

    .line 336
    return v3
.end method

.method public hasPromptPrivilegedAttr(I)Z
    .registers 3
    .param p1, "attr"    # I

    .line 256
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mPromptPrivilegedAttr:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isWaitingFingerLeaveState()Z
    .registers 2

    .line 265
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsWaitingFingerLeaveState:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsKeyguard:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public synthetic lambda$handleAuthenticationResult$0$SemFingerprintClientExtImpl()V
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getSemFaceManager()Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestAuthResume()V

    .line 332
    return-void
.end method

.method public synthetic lambda$onAcquired$2$SemFingerprintClientExtImpl()V
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getSemFaceManager()Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestAuthResume()V

    .line 453
    return-void
.end method

.method public synthetic lambda$onError$1$SemFingerprintClientExtImpl()V
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getSemFaceManager()Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestAuthResume()V

    .line 376
    return-void
.end method

.method public moveSensorIcon()V
    .registers 6

    .line 474
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 476
    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getSensorIconRandomPos(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 474
    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 478
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v0

    .line 479
    const-string v1, "FPMV"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 481
    return-void
.end method

.method public onAcquired(II)Z
    .registers 8
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "ret":Z
    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_85

    .line 388
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const/16 v3, 0xca

    if-eqz v2, :cond_20

    .line 389
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-eqz v2, :cond_17

    .line 390
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v2

    invoke-virtual {v2, v3, p2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommandIfSessionExist(IILandroid/os/Bundle;)V

    goto :goto_20

    .line 393
    :cond_17
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v2

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    invoke-virtual {v2, v4, v3, p2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 397
    :cond_20
    :goto_20
    const/16 v2, 0x3ea

    if-eq p2, v2, :cond_7d

    const/16 v2, 0x2714

    const/4 v4, 0x0

    if-eq p2, v2, :cond_76

    const/16 v2, 0x2717

    if-eq p2, v2, :cond_76

    const/16 v2, 0x271b

    if-eq p2, v2, :cond_72

    const/16 v2, 0x3ec

    if-eq p2, v2, :cond_65

    const/16 v2, 0x3ed

    if-eq p2, v2, :cond_65

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_62

    const/16 v1, 0x2712

    if-eq p2, v1, :cond_42

    goto :goto_84

    .line 405
    :cond_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mCaptureStartTime:J

    .line 406
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->setEarlyWakeUp()V

    .line 407
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 408
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->vibrateSuccess()V

    .line 410
    :cond_58
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_84

    .line 411
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->notifyFingerStartEventToTSP()V

    goto :goto_84

    .line 399
    :cond_62
    iput-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsSetEarlyWakeUp:Z

    .line 400
    goto :goto_84

    .line 431
    :cond_65
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-eqz v2, :cond_84

    .line 433
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v2

    invoke-virtual {v2, v3, p2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommandIfSessionExist(IILandroid/os/Bundle;)V

    .line 435
    const/4 v0, 0x1

    goto :goto_84

    .line 402
    :cond_72
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->setEarlyWakeUp()V

    .line 403
    goto :goto_84

    .line 424
    :cond_76
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_PENDING_FINGER_LEAVE:Z

    if-eqz v1, :cond_84

    .line 425
    iput-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsWaitingFingerLeaveState:Z

    goto :goto_84

    .line 419
    :cond_7d
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mDuplicatedImgCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mDuplicatedImgCnt:I

    .line 420
    nop

    .line 437
    :cond_84
    :goto_84
    goto :goto_94

    .line 440
    :cond_85
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_94

    .line 441
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    const/16 v4, 0xc9

    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 446
    :cond_94
    :goto_94
    invoke-static {p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->isFingerprintQualityFailedEvent(II)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 449
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    .line 450
    .local v1, "c":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v2, v1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v2, :cond_b0

    .line 451
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintClientExtImpl$8QHnSNlMYFHfhxkZUrhFKBwDc4w;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintClientExtImpl$8QHnSNlMYFHfhxkZUrhFKBwDc4w;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    .end local v1    # "c":Lcom/android/server/biometrics/ClientMonitor;
    :cond_b0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->hasPrivilegedAttr(I)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 458
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->vibrateError()V

    .line 460
    :cond_bd
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mQualityErrorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mQualityErrorCount:I

    .line 461
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mTotalQualityErrorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mTotalQualityErrorCount:I

    .line 462
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 463
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 462
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLogHelp(IILjava/lang/String;I)V

    .line 464
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->onAcquireFailed()V

    .line 466
    :cond_e0
    return v0
.end method

.method public onEnrollResult(I)V
    .registers 12
    .param p1, "remaining"    # I

    .line 171
    if-nez p1, :cond_3c

    .line 173
    :try_start_2
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 176
    goto :goto_29

    .line 174
    :catch_d
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnrollResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_29
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->getHashCode()I

    move-result v4

    const-wide/16 v6, 0x0

    iget v8, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mDuplicatedImgCnt:I

    iget v9, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mTotalQualityErrorCount:I

    const-string v5, "S"

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStop(ILjava/lang/String;JII)V

    .line 180
    :cond_3c
    return-void
.end method

.method public onError(II)Z
    .registers 7
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 341
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1b

    .line 342
    iput p2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mLastErrorCode:I

    .line 344
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_30

    .line 345
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-nez v1, :cond_30

    .line 346
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    const/16 v3, 0xcc

    invoke-virtual {v1, v2, v3, p2, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    goto :goto_30

    .line 351
    :cond_1b
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mLastErrorCode:I

    .line 352
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_30

    .line 354
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-nez v1, :cond_30

    .line 355
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    const/16 v3, 0xcb

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 362
    :cond_30
    :goto_30
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_4c

    .line 363
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_3f

    .line 364
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setHwLightMode(Ljava/lang/String;)V

    .line 366
    :cond_3f
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 367
    const-string v0, "fod_enable,0"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    .line 372
    :cond_4c
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 373
    .local v0, "c":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_62

    .line 374
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintClientExtImpl$YA_e__vpBkpwYm8O95KlL-18saA;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintClientExtImpl$YA_e__vpBkpwYm8O95KlL-18saA;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    .end local v0    # "c":Lcom/android/server/biometrics/ClientMonitor;
    :cond_62
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 381
    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLogError(IILjava/lang/String;)V

    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method pauseEnroll()I
    .registers 6

    .line 116
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 117
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    const/16 v4, 0x70

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 121
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v0

    return v0
.end method

.method public postAuthStart()I
    .registers 12

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_40

    .line 186
    const-string v1, "fod_enable,1,1,0"

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    .line 188
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-eqz v1, :cond_16

    .line 189
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->TAG:Ljava/lang/String;

    const-string v2, "SemFingerprintClientExtImpl: Prompt Client"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 191
    :cond_16
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->hasPrivilegedAttr(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 192
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsKeyguard:Z

    if-eqz v1, :cond_24

    .line 193
    const/4 v1, 0x4

    goto :goto_25

    :cond_24
    const/4 v1, 0x2

    :goto_25
    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiType:I

    .line 195
    :cond_27
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;ZILjava/lang/String;J)V

    .line 207
    :goto_38
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->observeFodLimitationListener(Z)V

    .line 209
    :cond_40
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mHashCode:I

    .line 210
    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-eqz v3, :cond_4d

    const-string v3, "AP"

    goto :goto_4f

    :cond_4d
    const-string v3, "A"

    :goto_4f
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 211
    invoke-virtual {v4}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    return v0
.end method

.method public postAuthStop(Z)V
    .registers 5
    .param p1, "hasPendingClient"    # Z

    .line 217
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_35

    .line 218
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 219
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->TAG:Ljava/lang/String;

    const-string v2, "SemFingerprintClientExtImpl.postAuthStop: Prompt Client"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 221
    :cond_11
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->hide(III)V

    .line 223
    :goto_1a
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_25

    .line 224
    if-nez p1, :cond_25

    .line 225
    const-string v0, "fod_enable,0"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    .line 235
    :cond_25
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    .line 236
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->observeFodLimitationListener(Z)V

    .line 238
    :cond_35
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getServiceExtension()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->releaseDvfs()V

    .line 239
    return-void
.end method

.method public postEnrollStart()V
    .registers 11

    .line 144
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_2a

    .line 145
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 146
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInDisplaySensorArea()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 145
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;ZILjava/lang/String;J)V

    .line 149
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->observeFodLimitationListener(Z)V

    .line 150
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2a

    .line 151
    const-string v0, "fod_enable,1,1,0"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    .line 154
    :cond_2a
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mHashCode:I

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "E"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public postEnrollStop()V
    .registers 4

    .line 159
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_27

    .line 160
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->hide(III)V

    .line 161
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    .line 162
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->observeFodLimitationListener(Z)V

    .line 163
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_27

    .line 164
    const-string v0, "fod_enable,0"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    .line 167
    :cond_27
    return-void
.end method

.method public preEnrollStart()V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 139
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SWIPE_ENROLL:Z

    .line 138
    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    .line 140
    return-void
.end method

.method resumeEnroll()I
    .registers 6

    .line 126
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 127
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    const/16 v4, 0x71

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 131
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v0

    return v0
.end method

.method public setAuthenticationResult(Z)V
    .registers 6
    .param p1, "authenticated"    # Z

    .line 269
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsAuthenticated:Z

    if-eqz v0, :cond_5

    .line 270
    return-void

    .line 272
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsAuthenticated:Z

    .line 273
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1b

    .line 274
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsPrompt:Z

    if-nez v0, :cond_1b

    .line 275
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mSysUiSessionId:I

    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsAuthenticated:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->onAuthenticated(IZLjava/lang/String;)V

    .line 278
    :cond_1b
    return-void
.end method
