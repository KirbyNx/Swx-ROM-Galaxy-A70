.class public Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
.super Ljava/lang/Object;
.source "MdfPolicy.java"


# static fields
.field private static final DEV_DEVICE:Z

.field private static final INTENT_DMA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final INTENT_USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final INTENT_USE_MULTI_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_MULTI_APP_FEATURE_SURVEY"

.field private static final MDF_DISABLED:I = 0x8

.field private static final MDF_EMPTY:I = 0x10

.field private static final MDF_ENABLED:I = 0x1

.field private static final MDF_ENFORCE_SECUREBOOT_OFF:I = 0x0

.field private static final MDF_ENFORCE_SECUREBOOT_ON:I = 0x1

.field private static final MDF_ENFORCING:I = 0x2

.field private static final MDF_ERR_BORINGSSL_SELFTEST_FAIL:I = -0x14

.field private static final MDF_ERR_CCMODE_ALREADY_ENABLED:I = -0xe

.field private static final MDF_ERR_CCMODE_ALREADY_READY:I = -0xf

.field private static final MDF_ERR_CCMODE_DISABLED:I = -0xb

.field private static final MDF_ERR_CCMODE_ELSE:I = -0xd

.field private static final MDF_ERR_CCMODE_EMPTY:I = -0xc

.field public static final MDF_ERR_CCMODE_NOT_SUPPORT_CCMODE:I = -0x10

.field private static final MDF_ERR_ENFORCE_SB_FLAG_FAIL:I = -0x18

.field private static final MDF_ERR_GET_CCMODE_FLAG_FAIL:I = -0x1c

.field private static final MDF_ERR_GET_FIPS_STATUS_FAIL:I = -0x23

.field private static final MDF_ERR_INTEGRITY_CHECK_FAIL:I = -0x15

.field private static final MDF_ERR_INVALID_INPUT:I = -0x1

.field private static final MDF_ERR_LOCK_FINGER_PRINT_SET:I = -0x27

.field public static final MDF_ERR_NULL_POINTER:I = -0x2

.field private static final MDF_ERR_SET_CCMODE_FLAG_FAIL:I = -0x1b

.field private static final MDF_ERR_SYSTEMPROPERTY_EXCEPTION:I = -0x3

.field private static final MDF_FEATURE_CC_MODE_ENABLED:Ljava/lang/String; = "MCME"

.field private static final MDF_FEATURE_POLICY_CERT_OCSP:Ljava/lang/String; = "MPCO"

.field private static final MDF_FEATURE_POLICY_CERT_REVOCATION:Ljava/lang/String; = "MPCR"

.field private static final MDF_FEATURE_POLICY_FACE_LOCK:Ljava/lang/String; = "MPFL"

.field private static final MDF_FEATURE_POLICY_KEYGUARD_SMART_LOCK:Ljava/lang/String; = "MPKS"

.field private static final MDF_FEATURE_POLICY_PASSWORD_ATTEMPTS:Ljava/lang/String; = "MPPA"

.field private static final MDF_FEATURE_POLICY_PASSWORD_QUALITY:Ljava/lang/String; = "MPPQ"

.field private static final MDF_FEATURE_POLICY_SCREEN_LOCK:Ljava/lang/String; = "MPSL"

.field private static final MDF_FEATURE_POLICY_SD_CARD_BLOCKING:Ljava/lang/String; = "MPSB"

.field private static final MDF_FEATURE_POLICY_SD_CARD_ENCRYPTION:Ljava/lang/String; = "MPSE"

.field private static final MDF_LOGGING_TRACKING_ID:Ljava/lang/String; = "4M1-399-979749"

.field private static final MDF_LOGGING_TYPE:Ljava/lang/String; = "ev"

.field public static final MDF_OK:I = 0x0

.field private static final MDF_POLICY_ERR_FACE_LOCK_ON:I = 0x4000

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_EXTERNAL_FAST:I = 0x40

.field private static final MDF_POLICY_ERR_ODE_ENCRYPTED_INTERNAL:I = 0x80

.field private static final MDF_POLICY_ERR_OUT_OF_RANGE_OF_MAX_PW_COUNT:I = 0x2

.field private static final MDF_POLICY_ERR_PASSWORD_QUALITY:I = 0x2000

.field private static final MDF_POLICY_ERR_REVOCATION_CHECK_POLICY_SET:I = 0x20

.field private static final MDF_POLICY_ERR_SCREENLOCK_NOT_SET:I = 0x4

.field private static final MDF_POLICY_ERR_SMART_LOCK_ON:I = 0x8000

.field private static final MDF_READY:I = 0x4

.field private static final OFFICIAL_RELEASE:Z

.field private static final PROPERTY_MDF:Ljava/lang/String; = "security.mdf"

.field private static final PROPERTY_MDF_DISABLED:Ljava/lang/String; = "Disabled"

.field private static final PROPERTY_MDF_EMPTY:Ljava/lang/String; = "None"

.field private static final PROPERTY_MDF_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final PROPERTY_MDF_ENFORCING:Ljava/lang/String; = "Enforcing"

.field private static final PROPERTY_MDF_READY:Ljava/lang/String; = "Ready"

.field private static final PROPERTY_MDF_RESULT:Ljava/lang/String; = "security.mdf.result"

.field private static final PROPERTY_MDF_UX:Ljava/lang/String; = "ro.security.mdf.ux"

.field public static final SERVICE_VERSION:Ljava/lang/String; = "v3.21.0"

.field private static final SURVEY_MODE:Z

.field public static final TAG:Ljava/lang/String; = "MdfService"

.field private static sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# instance fields
.field private mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mIsExternalSDRemovable:Z

.field private mIsFaceLockDisabled:Z

.field private mIsOcspCheckEnabled:Z

.field private mIsPasswordEnabled:Z

.field private mIsRevocationCheckEnabled:Z

.field private mIsSDEnabled:Z

.field private mIsSDEncrypted:Z

.field private mIsSmartLockDisabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaximumFailedPasswordsForWipe:I

.field private mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

.field private mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private mPasswordQuality:I

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-string v0, "ro.boot.em.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->DEV_DEVICE:Z

    .line 40
    const-string v0, "ro.build.official.release"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->OFFICIAL_RELEASE:Z

    .line 41
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->SURVEY_MODE:Z

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->printVersion()V

    .line 132
    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 133
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 134
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 138
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mUserManager:Landroid/os/UserManager;

    .line 140
    new-instance v0, Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-direct {v0}, Lcom/samsung/android/security/mdf/MdfUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 141
    return-void
.end method

.method private checkCCModeOnDevice()I
    .registers 4

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "result":I
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v1}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result v1

    .line 394
    .local v1, "CCModeFlag":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 395
    const/4 v0, 0x1

    goto :goto_1f

    .line 396
    :cond_c
    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 397
    const/4 v0, 0x2

    goto :goto_1f

    .line 398
    :cond_11
    const/4 v2, 0x4

    if-ne v1, v2, :cond_16

    .line 399
    const/4 v0, 0x4

    goto :goto_1f

    .line 400
    :cond_16
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1d

    .line 401
    const/16 v0, 0x8

    goto :goto_1f

    .line 403
    :cond_1d
    const/16 v0, 0x10

    .line 406
    :goto_1f
    return v0
.end method

.method private checkDevicePolicy()I
    .registers 8

    .line 410
    const/4 v0, 0x0

    .line 413
    .local v0, "res":I
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getMaximumFailedPasswordsForWipe()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMaximumFailedPasswordsForWipe:I

    .line 414
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x5

    if-lez v1, :cond_18

    const/16 v6, 0x1e

    if-le v1, v6, :cond_12

    goto :goto_18

    .line 420
    :cond_12
    const-string v1, "Password attempts : OK"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_34

    .line 416
    :cond_18
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Password attempts : setMaximumFailedPasswordsForWipe() should be set between 1 and 30. Current value = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMaximumFailedPasswordsForWipe:I

    .line 417
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 418
    or-int/lit8 v0, v0, 0x2

    .line 423
    :goto_34
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getPasswordQuality()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordQuality:I

    .line 424
    const/high16 v6, 0x50000

    if-lt v1, v6, :cond_49

    const/high16 v6, 0x60000

    if-le v1, v6, :cond_43

    goto :goto_49

    .line 428
    :cond_43
    const-string v1, "Password quality : OK"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_50

    .line 425
    :cond_49
    :goto_49
    const-string v1, "Password quality : setPasswordQuality() should be set between alphanumeric and complex."

    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 426
    or-int/lit16 v0, v0, 0x2000

    .line 431
    :goto_50
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isPasswordEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsPasswordEnabled:Z

    .line 432
    if-nez v1, :cond_60

    .line 433
    const-string v1, "Screen lock : Screen lock should be set to Password above alphanumeric.(Biometric lock is avaliable)"

    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 434
    or-int/lit8 v0, v0, 0x4

    goto :goto_65

    .line 436
    :cond_60
    const-string v1, "Screen lock : OK"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 439
    :goto_65
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isRevocationCheckEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsRevocationCheckEnabled:Z

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isOcspCheckEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsOcspCheckEnabled:Z

    .line 441
    if-eqz v1, :cond_79

    .line 442
    const-string v1, "Certificate revocation : OK(OCSP/CRL)"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_8a

    .line 443
    :cond_79
    iget-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsRevocationCheckEnabled:Z

    if-eqz v1, :cond_83

    .line 444
    const-string v1, "Certificate revocation : OK(CRL)"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_8a

    .line 446
    :cond_83
    const-string v1, "Certificate revocation : enableOcspCheck() or enableRevocationCheck() should be set on all packages."

    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 447
    or-int/lit8 v0, v0, 0x20

    .line 451
    :goto_8a
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isExternalSDRemovable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsExternalSDRemovable:Z

    .line 452
    if-eqz v1, :cond_cc

    .line 453
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v1

    if-eqz v1, :cond_a6

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mUserManager:Landroid/os/UserManager;

    const-string v6, "no_physical_media"

    invoke-virtual {v1, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    move v1, v3

    goto :goto_a7

    :cond_a6
    const/4 v1, 0x0

    :goto_a7
    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    .line 454
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEncrypted:Z

    .line 455
    iget-boolean v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    if-nez v6, :cond_bc

    .line 456
    const-string v1, "SD card status : OK(Blocked)"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_d1

    .line 457
    :cond_bc
    if-eqz v1, :cond_c4

    .line 458
    const-string v1, "SD card status : OK(Encrypted)"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_d1

    .line 460
    :cond_c4
    const-string v1, "SD card status : setRequireStorageCardEncryption() should be set to true, setSdCardState() should be set to false, or DISALLOW_MOUNT_PHYSICAL_MEDIA should be set to addUserRestriction()."

    invoke-direct {p0, v5, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 464
    or-int/lit16 v0, v0, 0x80

    goto :goto_d1

    .line 467
    :cond_cc
    const-string v1, "SD card status : OK(No slot)"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 472
    :goto_d1
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isFaceLockDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsFaceLockDisabled:Z

    .line 473
    if-eqz v1, :cond_df

    .line 474
    const-string v1, "Face lock : OK"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_e6

    .line 476
    :cond_df
    const-string v1, "Face lock : BIOMETRIC_AUTHENTICATION_FACE should be set to false in the setBiometricAuthenticationEnabled()or KEYGUARD_DISABLE_FACE should be set to setKeyguardDisabledFeatures()."

    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 479
    or-int/lit16 v0, v0, 0x4000

    .line 484
    :goto_e6
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isSmartLockDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSmartLockDisabled:Z

    .line 485
    if-eqz v1, :cond_f4

    .line 486
    const-string v1, "Smart lock : OK"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_fd

    .line 488
    :cond_f4
    const-string v1, "Smart lock : KEYGUARD_DISABLE_TRUST_AGENTS should be set to setKeyguardDisabledFeatures()."

    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 489
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 492
    :goto_fd
    return v0
.end method

.method private checkFipsSelftest()I
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->FIPS_Openssl_SelfTest()I

    move-result v0

    if-eqz v0, :cond_12

    .line 498
    const/4 v0, 0x1

    const/4 v1, 0x6

    const-string v2, "FIPS self-test : FAILED"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 499
    const/16 v0, -0x14

    return v0

    .line 502
    :cond_12
    const/4 v0, 0x5

    const/4 v1, 0x4

    const-string v2, "FIPS self-test : OK"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method private checkSystemUid()V
    .registers 4

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 741
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 745
    return-void

    .line 742
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Security Exception Occurred. Only SYSTEM can use the MdfService."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 743
    .local v1, "e":Ljava/lang/SecurityException;
    throw v1
.end method

.method private enforceSB(Z)I
    .registers 8
    .param p1, "enabled"    # Z

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "res":I
    const/4 v1, -0x1

    .line 511
    .local v1, "secureBootFlag":I
    const-string v2, "Failed. SBFlag has yet to set. current flag = "

    const/16 v3, -0x18

    const-string v4, "MdfService"

    if-eqz p1, :cond_4b

    .line 512
    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v5}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOn()I

    move-result v0

    .line 513
    if-eqz v0, :cond_2b

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. setSBFlagOn() res = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return v3

    .line 517
    :cond_2b
    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v5}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result v1

    .line 518
    const/4 v5, 0x1

    if-eq v1, v5, :cond_8b

    .line 519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v3

    .line 524
    :cond_4b
    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v5}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOff()I

    move-result v0

    .line 525
    if-eqz v0, :cond_6c

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. setSBFlagOff() res = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return v3

    .line 529
    :cond_6c
    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v5}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result v1

    .line 530
    if-eqz v1, :cond_8b

    .line 531
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v3

    .line 537
    :cond_8b
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    monitor-enter v0

    .line 144
    :try_start_3
    sget-object v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    if-nez v1, :cond_e

    .line 145
    new-instance v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 148
    :cond_e
    sget-object v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 143
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMaximumFailedPasswordsForWipe()I
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_a

    .line 645
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    .line 647
    :cond_a
    const-string v0, "MdfService"

    const-string v1, "DevicePolicyManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordQuality()I
    .registers 3

    .line 666
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_a

    .line 667
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    .line 669
    :cond_a
    const-string v0, "MdfService"

    const-string v1, "DevicePolicyManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, -0x2

    return v0
.end method

.method private isExternalSDRemovable()Z
    .registers 3

    .line 693
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    const-string v1, "MdfService"

    if-eqz v0, :cond_f

    .line 694
    const-string v0, "SDCARD SLOT Support"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x1

    return v0

    .line 697
    :cond_f
    const-string v0, "SDCARD SLOT None"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method private isFaceLockDisabled()Z
    .registers 7

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "isFaceLockDisabledByDPM":Z
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v2, "MdfService"

    const/4 v3, 0x0

    if-eqz v1, :cond_2e

    .line 705
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    const/4 v4, 0x1

    if-eqz v1, :cond_14

    move v1, v4

    goto :goto_15

    :cond_14
    move v1, v3

    :goto_15
    move v0, v1

    .line 712
    const/4 v1, 0x0

    .line 713
    .local v1, "isFaceLockDisabledByPP":Z
    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-eqz v5, :cond_28

    .line 714
    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v2

    xor-int/2addr v2, v4

    move v1, v2

    .line 721
    if-nez v0, :cond_26

    if-eqz v1, :cond_27

    :cond_26
    move v3, v4

    :cond_27
    return v3

    .line 717
    :cond_28
    const-string v4, "PasswordPolicy is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return v3

    .line 708
    .end local v1    # "isFaceLockDisabledByPP":Z
    :cond_2e
    const-string v1, "DevicePolicyManager is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return v3
.end method

.method private isOcspCheckEnabled()Z
    .registers 3

    .line 684
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz v0, :cond_b

    .line 685
    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isOcspCheckEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 687
    :cond_b
    const-string v0, "MdfService"

    const-string v1, "CertificatePolicy is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method private isPasswordEnabled()Z
    .registers 4

    .line 653
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 654
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 655
    .local v0, "passwordQuality":I
    const/high16 v2, 0x40000

    if-lt v0, v2, :cond_17

    const/high16 v2, 0x60000

    if-gt v0, v2, :cond_17

    .line 656
    const/4 v1, 0x1

    return v1

    .line 658
    :cond_17
    return v1

    .line 660
    .end local v0    # "passwordQuality":I
    :cond_18
    const-string v0, "MdfService"

    const-string v2, "LockPatternUtils is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return v1
.end method

.method private isRevocationCheckEnabled()Z
    .registers 3

    .line 675
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz v0, :cond_b

    .line 676
    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 678
    :cond_b
    const-string v0, "MdfService"

    const-string v1, "CertificatePolicy is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method private isSmartLockDisabled()Z
    .registers 4

    .line 725
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 726
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 729
    :cond_10
    const-string v0, "MdfService"

    const-string v2, "DevicePolicyManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return v1
.end method

.method private logForAudit(ILjava/lang/String;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 180
    nop

    .line 184
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 180
    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v4, "MdfStatus"

    move v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private logForAuditAndLogcat(IILjava/lang/String;)V
    .registers 5
    .param p1, "auditType"    # I
    .param p2, "logType"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAudit(ILjava/lang/String;)V

    .line 191
    const-string v0, "MdfService"

    invoke-static {p2, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method private printVersion()V
    .registers 3

    .line 735
    const-string v0, "MdfService"

    const-string v1, "v3.21.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return-void
.end method

.method private setCCMode(I)I
    .registers 12
    .param p1, "status"    # I

    .line 580
    const-string v0, "security.mdf"

    const/4 v1, 0x0

    .line 581
    .local v1, "res":I
    const/4 v2, 0x0

    .line 582
    .local v2, "sb":Z
    const/4 v3, 0x0

    .line 583
    .local v3, "ccmode":I
    const-string v4, "None"

    .line 585
    .local v4, "ccmodeProperty":Ljava/lang/String;
    const/4 v5, 0x1

    const-string v6, "MdfService"

    if-eq p1, v5, :cond_4d

    const/4 v5, 0x2

    if-eq p1, v5, :cond_48

    const/4 v5, 0x4

    if-eq p1, v5, :cond_43

    const/16 v5, 0x8

    if-eq p1, v5, :cond_3d

    const/16 v5, 0x10

    if-eq p1, v5, :cond_37

    .line 617
    const/4 v2, 0x0

    .line 618
    const/4 v3, 0x0

    .line 619
    const-string v4, "None"

    .line 620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCCMode default... status = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 611
    :cond_37
    const/4 v2, 0x0

    .line 612
    const/16 v3, 0x10

    .line 613
    const-string v4, "None"

    .line 614
    goto :goto_52

    .line 605
    :cond_3d
    const/4 v2, 0x1

    .line 606
    const/16 v3, 0x8

    .line 607
    const-string v4, "Disabled"

    .line 608
    goto :goto_52

    .line 599
    :cond_43
    const/4 v2, 0x0

    .line 600
    const/4 v3, 0x4

    .line 601
    const-string v4, "Ready"

    .line 602
    goto :goto_52

    .line 593
    :cond_48
    const/4 v2, 0x1

    .line 594
    const/4 v3, 0x2

    .line 595
    const-string v4, "Enforcing"

    .line 596
    goto :goto_52

    .line 587
    :cond_4d
    const/4 v2, 0x1

    .line 588
    const/4 v3, 0x1

    .line 589
    const-string v4, "Enabled"

    .line 590
    nop

    .line 623
    :goto_52
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setFlags(ZI)I

    move-result v5

    move v1, v5

    if-eqz v5, :cond_5a

    .line 624
    return v1

    .line 627
    :cond_5a
    const/4 v5, -0x3

    :try_start_5b
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 628
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_68
    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CC Mode status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAudit(ILjava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_7d} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_7d} :catch_97

    .line 636
    nop

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "security.mdf : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return v1

    .line 633
    :catch_97
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "SystemProperties Exception Occurs"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return v5

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_9e
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v7, "SystemProperties RuntimeException Occurs"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v5
.end method

.method private setCCModeFlags(I)I
    .registers 8
    .param p1, "status"    # I

    .line 541
    const/4 v0, 0x0

    .line 543
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v1, p1}, Lcom/samsung/android/security/mdf/MdfUtils;->setCCModeFlag(I)I

    move-result v0

    .line 544
    const/16 v1, -0x1b

    const-string v2, "MdfService"

    if-eqz v0, :cond_26

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCModeFlag() res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return v1

    .line 548
    :cond_26
    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v3}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result v3

    .line 549
    .local v3, "ccFlag":I
    if-eq v3, p1, :cond_47

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. CCMode Flag has yet to set. current flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 550
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return v1

    .line 555
    :cond_47
    return v0
.end method

.method private setFlags(ZI)I
    .registers 8
    .param p1, "SBenabled"    # Z
    .param p2, "CCModeStatus"    # I

    .line 559
    const/4 v0, 0x0

    .line 562
    .local v0, "res":I
    invoke-direct {p0, p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->enforceSB(Z)I

    move-result v0

    .line 563
    const-string v1, ", result = "

    const-string v2, "MdfService"

    if-eqz v0, :cond_2a

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. enforceSB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return v0

    .line 569
    :cond_2a
    invoke-direct {p0, p2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCModeFlags(I)I

    move-result v0

    .line 570
    if-eqz v0, :cond_53

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. setCCModeFlag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v0

    .line 576
    :cond_53
    return v0
.end method

.method private setNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 152
    const-string v0, "MdfService"

    const-string v1, "Notice for applying security policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 155
    .local v1, "notiManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_19

    .line 156
    const-string v2, "NotificationManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 160
    :cond_19
    const-string v0, "mdf_channel_id"

    .line 161
    .local v0, "channelId":Ljava/lang/String;
    const-string v2, "Mdf Channel"

    .line 162
    .local v2, "channelName":Ljava/lang/CharSequence;
    const/4 v3, 0x4

    .line 163
    .local v3, "importance":I
    new-instance v4, Landroid/app/NotificationChannel;

    invoke-direct {v4, v0, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 164
    .local v4, "notiChannel":Landroid/app/NotificationChannel;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 165
    const/4 v5, 0x2

    new-array v6, v5, [J

    fill-array-data v6, :array_64

    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 166
    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 168
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v6, "noti":Landroid/app/Notification$Builder;
    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 170
    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 171
    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 172
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 173
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 174
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 176
    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 177
    return-void

    :array_64
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method


# virtual methods
.method public enableCCMode(Z)I
    .registers 15
    .param p1, "enable"    # Z

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "res":I
    const-string v1, "security.mdf.result"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isCCModeSupport()Z

    move-result v2

    const-string v3, "MdfService"

    if-nez v2, :cond_20

    .line 272
    const-string v2, "This model does not support CC mode."

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v0, -0x10

    .line 274
    nop

    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return v0

    .line 280
    :cond_20
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v2

    .line 281
    .local v2, "ccModeOnDevice":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the current mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const v4, 0x104063b

    const v5, 0x104063d

    const v6, 0x104063c

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/16 v10, 0x8

    const/16 v11, 0x10

    const-string v12, "Failed. setCCMode. res = "

    if-eqz p1, :cond_193

    .line 284
    if-ne v2, v9, :cond_58

    .line 285
    const-string v1, "CCMode is already enabled."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v0

    .line 287
    :cond_58
    if-eq v2, v8, :cond_da

    if-ne v2, v7, :cond_5e

    goto/16 :goto_da

    .line 318
    :cond_5e
    if-ne v2, v11, :cond_88

    .line 319
    invoke-direct {p0, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 320
    if-eqz v0, :cond_7c

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_7c
    const/16 v0, -0xc

    .line 324
    nop

    .line 325
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_270

    .line 326
    :cond_88
    if-ne v2, v10, :cond_b2

    .line 327
    invoke-direct {p0, v10}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 328
    if-eqz v0, :cond_a6

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_a6
    const/16 v0, -0xb

    .line 332
    nop

    .line 333
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_270

    .line 335
    :cond_b2
    invoke-direct {p0, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 336
    if-eqz v0, :cond_ce

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_ce
    const/16 v0, -0xd

    .line 340
    nop

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_270

    .line 289
    :cond_da
    :goto_da
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v0

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    if-eqz v0, :cond_ff

    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_ff
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkFipsSelftest()I

    move-result v0

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-eqz v0, :cond_159

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed. check fips self test. res = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 301
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-direct {p0, v1, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, v10}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 303
    if-eqz v0, :cond_270

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_270

    .line 308
    :cond_159
    invoke-direct {p0, v9}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 309
    if-eqz v0, :cond_177

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_270

    .line 313
    :cond_177
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104062b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_270

    .line 345
    :cond_193
    if-eq v2, v9, :cond_232

    if-ne v2, v7, :cond_199

    goto/16 :goto_232

    .line 355
    :cond_199
    if-ne v2, v8, :cond_1a1

    .line 356
    const-string v1, "CCMode is already ready."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v0

    .line 358
    :cond_1a1
    if-ne v2, v10, :cond_1e2

    .line 359
    invoke-direct {p0, v10}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 360
    iget-object v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 361
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-direct {p0, v5, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz v0, :cond_1d6

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1d6
    const/16 v0, -0xb

    .line 366
    nop

    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_270

    .line 368
    :cond_1e2
    if-ne v2, v11, :cond_20b

    .line 369
    invoke-direct {p0, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 370
    if-eqz v0, :cond_200

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_200
    const/16 v0, -0xc

    .line 374
    nop

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_270

    .line 377
    :cond_20b
    invoke-direct {p0, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 378
    if-eqz v0, :cond_227

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_227
    const/16 v0, -0xd

    .line 382
    nop

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_270

    .line 347
    :cond_232
    :goto_232
    invoke-direct {p0, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 348
    if-eqz v0, :cond_24e

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_24e
    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104062d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    nop

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_270
    :goto_270
    return v0
.end method

.method public initCCMode()I
    .registers 9

    .line 205
    const/4 v0, 0x0

    .line 208
    .local v0, "res":I
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkSystemUid()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_12c

    .line 212
    nop

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v1

    .line 215
    .local v1, "ccModeOnDevice":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MdfService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v2, 0x1

    const/16 v4, 0x8

    const-string v5, "Failed. setCCMode. res = "

    if-eq v1, v2, :cond_b5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    goto/16 :goto_b5

    .line 236
    :cond_2f
    const/4 v2, 0x4

    if-ne v1, v2, :cond_50

    .line 237
    invoke-direct {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 238
    if-eqz v0, :cond_12b

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b

    .line 241
    :cond_50
    if-ne v1, v4, :cond_72

    .line 242
    invoke-direct {p0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 243
    if-eqz v0, :cond_6e

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_6e
    const/16 v0, -0xb

    goto/16 :goto_12b

    .line 247
    :cond_72
    const/16 v2, 0x10

    if-ne v1, v2, :cond_96

    .line 248
    invoke-direct {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 249
    if-eqz v0, :cond_92

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_92
    const/16 v0, -0xc

    goto/16 :goto_12b

    .line 254
    :cond_96
    invoke-direct {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 255
    if-eqz v0, :cond_b2

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_b2
    const/16 v0, -0xd

    goto :goto_12b

    .line 218
    :cond_b5
    :goto_b5
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkFipsSelftest()I

    move-result v0

    .line 219
    if-eqz v0, :cond_10d

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed. check fips self test. res = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x104063d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104063b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-direct {p0, v2, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    .line 225
    if-eqz v0, :cond_12b

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    .line 230
    :cond_10d
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v0

    .line 231
    if-eqz v0, :cond_12b

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_12b
    :goto_12b
    return v0

    .line 209
    .end local v1    # "ccModeOnDevice":I
    :catch_12c
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 211
    throw v1
.end method

.method public isCCModeSupport()Z
    .registers 3

    .line 195
    const-string v0, "ro.security.mdf.ux"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "propertyMdfppUx":Ljava/lang/String;
    const-string v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 198
    const/4 v1, 0x1

    return v1

    .line 200
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public sendSamsungAnalyticsMultiLog()V
    .registers 7

    .line 752
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v0

    .line 753
    .local v0, "ccModeOnDevice":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MdfService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v2, 0x2

    if-eq v0, v2, :cond_25

    .line 756
    return-void

    .line 759
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v2, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v3, "extras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "MCME"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    const-string v4, "Enabled"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    const-string v4, "MPPA"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMaximumFailedPasswordsForWipe:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    const-string v4, "MPPQ"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    iget v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordQuality:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    const-string v4, "MPSL"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    iget-boolean v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsPasswordEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    const-string v4, "MPCR"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    iget-boolean v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsRevocationCheckEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    const-string v4, "MPCO"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    iget-boolean v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsOcspCheckEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-boolean v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsExternalSDRemovable:Z

    if-eqz v4, :cond_a0

    .line 788
    const-string v4, "MPSE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    iget-boolean v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEncrypted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    const-string v4, "MPSB"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    iget-boolean v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    xor-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_a0
    const-string v4, "MPFL"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget-boolean v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsFaceLockDisabled:Z

    xor-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    const-string v4, "MPKS"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    iget-boolean v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSmartLockDisabled:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 807
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "tracking_id"

    const-string v5, "4M1-399-979749"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, "feature"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 809
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, "extra"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 810
    const-string v4, "type"

    const-string v5, "ev"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 813
    .local v4, "broadcastIntent":Landroid/content/Intent;
    const-string v5, "com.sec.android.diagmonagent.intent.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 815
    const-string v5, "com.sec.android.diagmonagent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_10c

    .line 818
    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    :cond_10c
    return-void
.end method
