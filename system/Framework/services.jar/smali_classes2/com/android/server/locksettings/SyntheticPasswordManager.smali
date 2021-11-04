.class public Lcom/android/server/locksettings/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DEFAULT_HANDLE:J = 0x0L

.field private static final DEFAULT_PASSWORD:[B

.field private static final DEFAULT_TOKEN:[B

.field private static final DEVICE_SUPPORT_KNOX_SDP:Z = true

.field protected static final HEX_ARRAY:[B

.field private static final INVALID_WEAVER_SLOT:I = -0x1

.field private static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final PASSWORD_METRICS_NAME:Ljava/lang/String; = "metrics"

.field private static final PASSWORD_SALT_LENGTH:I = 0x10

.field private static final PASSWORD_SCRYPT_N:I = 0xb

.field private static final PASSWORD_SCRYPT_P:I = 0x1

.field private static final PASSWORD_SCRYPT_R:I = 0x3

.field private static final PASSWORD_TOKEN_LENGTH:I = 0x20

.field private static final PERSONALISATION_CONTEXT:[B

.field private static final PERSONALISATION_SECDISCARDABLE:[B

.field private static final PERSONALISATION_WEAVER_KEY:[B

.field private static final PERSONALISATION_WEAVER_PASSWORD:[B

.field private static final PERSONALISATION_WEAVER_TOKEN:[B

.field private static final PERSONALIZATION_AUTHSECRET_KEY:[B

.field private static final PERSONALIZATION_E0:[B

.field private static final PERSONALIZATION_FBE_KEY:[B

.field private static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field private static final PERSONALIZATION_PASSWORD_HASH:[B

.field private static final PERSONALIZATION_PASSWORD_METRICS:[B

.field private static final PERSONALIZATION_SDP_MASTER_KEY:[B

.field private static final PERSONALIZATION_SP_GK_AUTH:[B

.field private static final PERSONALIZATION_SP_SPLIT:[B

.field private static final PERSONALIZATION_USER_GK_AUTH:[B

.field private static final SECDISCARDABLE_LENGTH:I = 0x4000

.field private static final SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field private static final SECURITY_ADDITIONAL_LOG:Z = true

.field private static final SECURITY_TOKEN_KEY:Ljava/lang/String; = "lockscreen.token"

.field private static final SECURITY_TOKEN_LENGTH:I = 0x5

.field private static final SECURITY_UNPACK:Z

.field private static final SP_BLOB_INFO_FILED_LENGTH:I = 0x3

.field private static final SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field private static final SP_BLOB_RESERVED_FILED_LENGTH:I = 0x10

.field private static final SP_BLOB_TOTAL_HEADER_LENGTH:I = 0x13

.field private static final SP_E0_NAME:Ljava/lang/String; = "e0"

.field private static final SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field private static final SP_P1_NAME:Ljava/lang/String; = "p1"

.field private static final SYNTHETIC_PASSWORD_LENGTH:B = 0x20t

.field private static final SYNTHETIC_PASSWORD_PASSWORD_BASED:B = 0x0t

.field private static final SYNTHETIC_PASSWORD_TOKEN_BASED:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION_LATEST:B = 0x3t

.field private static final SYNTHETIC_PASSWORD_VERSION_V1:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION_V2:B = 0x2t

.field private static final SYNTHETIC_PASSWORD_VERSION_V3:B = 0x3t

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordManager"

.field private static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordManager.SDP"

.field private static final TARGET_ANDROID_KEYSTORE:B = 0x1t

.field private static final TARGET_TIMA_KEYSTORE:B = 0x2t

.field private static final TOKEN_MATCH:I = 0x1

.field private static final TOKEN_NO_MATCH:I = 0x0

.field private static final TOKEN_UNKNOWN:I = -0x1

.field public static final WEAVER_ENROLL:I = 0x0

.field private static final WEAVER_SLOT_NAME:Ljava/lang/String; = "weaver"

.field public static final WEAVER_VERIFY:I = 0x1

.field private static final WEAVER_VERSION:B = 0x1t


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsWeaverSupported:Z

.field private mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

.field private mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

.field private mSdpManagerService:Lcom/android/server/SdpManagerService;

.field private mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

.field private mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

.field private final mWeaverDeathRecipient:Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;

.field private tokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 134
    const-string v0, "default-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 136
    const-string v0, "This-byte-array-is-default-token"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_TOKEN:[B

    .line 137
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    .line 170
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 171
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    :goto_3c
    sput-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    .line 173
    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    .line 174
    const-string/jumbo v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 175
    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 176
    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 177
    const-string v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 178
    const-string v0, "authsecret-hal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 179
    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 180
    const-string/jumbo v0, "pw-hash"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 181
    const-string v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 182
    const-string/jumbo v0, "weaver-pwd"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    .line 183
    const-string/jumbo v0, "weaver-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    .line 184
    const-string/jumbo v0, "weaver-token"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    .line 185
    const-string/jumbo v0, "password-metrics"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    .line 186
    nop

    .line 187
    const-string v0, "android-synthetic-password-personalization-context"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    .line 188
    const-string/jumbo v0, "sdp-master-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B

    .line 2446
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;
    .param p3, "userManager"    # Landroid/os/UserManager;
    .param p4, "passwordSlotManager"    # Lcom/android/server/locksettings/PasswordSlotManager;

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    .line 730
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager$1;)V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverDeathRecipient:Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;

    .line 1467
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 723
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 724
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 725
    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 726
    iput-object p4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 727
    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    return-object v0
.end method

.method static synthetic access$100([B)[B
    .registers 2
    .param p0, "x0"    # [B

    .line 122
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method static synthetic access$1100()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/locksettings/SyntheticPasswordManager;)Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 122
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/hardware/weaver/V1_0/IWeaver;)Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager;
    .param p1, "x1"    # Landroid/hardware/weaver/V1_0/IWeaver;

    .line 122
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    return-object p1
.end method

.method static synthetic access$200()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method static synthetic access$300()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method static synthetic access$400()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method static synthetic access$500()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    return-object v0
.end method

.method static synthetic access$600()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    return-object v0
.end method

.method static synthetic access$700()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    return-object v0
.end method

.method static synthetic access$800()[B
    .registers 1

    .line 122
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B

    return-object v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 122
    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    return v0
.end method

.method private adjustCredentialType(II)I
    .registers 7
    .param p1, "credType"    # I
    .param p2, "userId"    # I

    .line 2286
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    .line 2287
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-wide/16 v1, 0x0

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2289
    .local v0, "quality":I
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2290
    const/4 v1, 0x4

    return v1

    .line 2292
    :cond_17
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityNumericPin(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2293
    const/4 v1, 0x3

    return v1

    .line 2296
    .end local v0    # "quality":I
    :cond_1f
    return p1
.end method

.method private byteToHexString([B)Ljava/lang/String;
    .registers 8
    .param p1, "ary"    # [B

    .line 2750
    if-nez p1, :cond_c

    .line 2751
    const-string v0, "SyntheticPasswordManager"

    const-string v1, "byteToHexString ary is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const-string v0, ""

    return-object v0

    .line 2754
    :cond_c
    const-string v0, "0123456789ABCDEF"

    .line 2755
    .local v0, "hex":Ljava/lang/String;
    const-string v1, ""

    .line 2756
    .local v1, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, p1

    if-ge v2, v3, :cond_4c

    const/4 v3, 0x5

    if-ge v2, v3, :cond_4c

    .line 2757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p1, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p1, v2

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2756
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2760
    .end local v2    # "i":I
    :cond_4c
    return-object v1
.end method

.method private static bytesToHex([B)[B
    .registers 7
    .param p0, "bytes"    # [B

    .line 2448
    if-nez p0, :cond_a

    .line 2449
    const-string/jumbo v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 2451
    :cond_a
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 2452
    .local v0, "hexBytes":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_2e

    .line 2453
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 2454
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    ushr-int/lit8 v5, v2, 0x4

    aget-byte v5, v4, v5

    aput-byte v5, v0, v3

    .line 2455
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 2452
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2457
    .end local v1    # "j":I
    :cond_2e
    return-object v0
.end method

.method private static cacheSecureMode(II)V
    .registers 5
    .param p0, "userId"    # I
    .param p1, "mode"    # I

    .line 2510
    invoke-static {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->cacheSecureMode(II)V

    .line 2511
    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2512
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2511
    const-string v1, "Cache - [ Secure Mode : %d, UserId : %d ]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager.SDP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_23
    return-void
.end method

.method private computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .registers 11
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "data"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 2396
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    if-eqz v0, :cond_b

    goto :goto_10

    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    goto :goto_12

    :cond_10
    :goto_10
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 2398
    .local v0, "password":[B
    :goto_12
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2399
    iget-object v1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    const/16 v2, 0x4000

    const/16 v3, 0x20

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->pbkdf2([B[BII)[B

    move-result-object v1

    return-object v1

    .line 2403
    :cond_23
    iget-object v3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte v1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v2, 0x1

    shl-int v4, v2, v1

    iget-byte v1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v5, v2, v1

    iget-byte v1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v6, v2, v1

    const/16 v7, 0x20

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt([B[BIIII)[B

    move-result-object v1

    return-object v1
.end method

.method private createSecdiscardable(JI)[B
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2183
    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v0

    .line 2184
    .local v0, "data":[B
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 2185
    return-object v0
.end method

.method private createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V
    .registers 20
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "applicationId"    # [B
    .param p6, "sid"    # J
    .param p8, "userId"    # I

    .line 1632
    move v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1633
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getEscrowSecret()[B

    move-result-object v2

    .local v2, "secret":[B
    goto :goto_d

    .line 1635
    .end local v2    # "secret":[B
    :cond_9
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v2

    .line 1637
    .restart local v2    # "secret":[B
    :goto_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v5, v2

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v3

    .line 1638
    .local v3, "content":[B
    array-length v4, v3

    add-int/2addr v4, v1

    add-int/2addr v4, v1

    new-array v4, v4, [B

    .line 1644
    .local v4, "blob":[B
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1700(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne v5, v7, :cond_2c

    .line 1645
    aput-byte v7, v4, v8

    goto :goto_2e

    .line 1647
    :cond_2c
    aput-byte v6, v4, v8

    .line 1649
    :goto_2e
    aput-byte v0, v4, v1

    .line 1650
    array-length v1, v3

    invoke-static {v3, v8, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1651
    const-string/jumbo v6, "spblob"

    move-object v5, p0

    move-object v7, v4

    move-wide v8, p1

    move/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1652
    return-void
.end method

.method private createSyntheticPasswordBlobForked(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V
    .registers 11
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "applicationId"    # [B
    .param p6, "sid"    # J
    .param p8, "userId"    # I
    .param p9, "km"    # Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    .line 1620
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1621
    invoke-direct/range {p0 .. p9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlobSpecific(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V

    goto :goto_d

    .line 1623
    :cond_a
    invoke-direct/range {p0 .. p8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 1625
    :goto_d
    return-void
.end method

.method private createSyntheticPasswordBlobSpecific(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V
    .registers 29
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "applicationId"    # [B
    .param p6, "sid"    # J
    .param p8, "userId"    # I
    .param p9, "km"    # Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    .line 1658
    move/from16 v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1659
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getEscrowSecret()[B

    move-result-object v2

    .local v2, "secret":[B
    goto :goto_e

    .line 1661
    .end local v2    # "secret":[B
    :cond_a
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B
    invoke-static/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1800(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v2

    .line 1663
    .restart local v2    # "secret":[B
    :goto_e
    const/4 v11, 0x1

    .line 1665
    .local v11, "targetKeyStore":B
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_2f

    .line 1666
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    new-array v10, v1, [[B

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getAAD()[B

    move-result-object v3

    aput-object v3, v10, v12

    move-object/from16 v3, p0

    move-object v5, v2

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJB[[B)[B

    move-result-object v3

    .local v3, "content":[B
    goto :goto_41

    .line 1668
    .end local v3    # "content":[B
    :cond_2f
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    new-array v10, v12, [[B

    move-object/from16 v3, p0

    move-object v5, v2

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJB[[B)[B

    move-result-object v3

    .line 1670
    .restart local v3    # "content":[B
    :goto_41
    array-length v4, v3

    const/16 v5, 0x13

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 1671
    .local v4, "blob":[B
    const/4 v6, 0x3

    aput-byte v6, v4, v12

    .line 1672
    aput-byte v0, v4, v1

    .line 1673
    const/4 v7, 0x2

    aput-byte v1, v4, v7

    .line 1674
    invoke-static {v4, v6, v5, v12}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1675
    array-length v1, v3

    invoke-static {v3, v12, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1676
    const-string/jumbo v14, "spblob"

    move-object/from16 v13, p0

    move-object v15, v4

    move-wide/from16 v16, p1

    move/from16 v18, p8

    invoke-direct/range {v13 .. v18}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1677
    return-void
.end method

.method public static decode([B)[B
    .registers 4
    .param p0, "encoded"    # [B

    .line 2523
    if-nez p0, :cond_4

    .line 2524
    const/4 v0, 0x0

    return-object v0

    .line 2526
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 2527
    .local v0, "encodedStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Llibcore/util/HexEncoding;->decode([CZ)[B

    move-result-object v1

    return-object v1
.end method

.method private static deleteSecureMode(I)V
    .registers 4
    .param p0, "userId"    # I

    .line 2516
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteSecureMode(I)V

    .line 2517
    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2518
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2517
    const-string v1, "Delete - [ Secure Mode : X, UserId : %d ]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager.SDP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    :cond_1c
    return-void
.end method

.method private destroyState(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 2301
    const-string/jumbo v0, "pwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, p2, p3, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeSpmLog(IJLjava/lang/String;)V

    .line 2304
    :cond_1d
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    .line 2306
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2307
    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->postDeleteState(Ljava/lang/String;I)V

    .line 2310
    :cond_2b
    return-void
.end method

.method private destroySyntheticPassword(JI)V
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2157
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 2158
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 2159
    const-string/jumbo v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2160
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 2162
    :cond_19
    return-void
.end method

.method private destroyWeaverSlot(JI)V
    .registers 10
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    .line 1121
    .local v0, "slot":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1122
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8a

    .line 1123
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    .line 1124
    .local v1, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroy weaver slot [ sl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", u : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " for user "

    const-string v4, "SyntheticPasswordManager"

    if-nez v2, :cond_6b

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroy weaver slot "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v2, 0x0

    invoke-static {v2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 1128
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    .line 1129
    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1130
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v2, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotDeleted(I)V

    goto :goto_8a

    .line 1132
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip destroying reused weaver slot "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v2, "Destroying skipped!"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1136
    .end local v1    # "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_8a
    :goto_8a
    return-void
.end method

.method private fakeUid(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 2379
    const v0, 0x186a0

    add-int/2addr v0, p1

    return v0
.end method

.method protected static fromByteArrayList(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 2439
    .local p0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 2440
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 2441
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 2440
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2443
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static generateHandle()J
    .registers 5

    .line 2370
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2373
    .local v0, "rng":Ljava/security/SecureRandom;
    :goto_5
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 2374
    .local v1, "result":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_10

    .line 2375
    return-wide v1

    .line 2374
    :cond_10
    goto :goto_5
.end method

.method static getFrpCredentialType([B)I
    .registers 2
    .param p0, "payload"    # [B

    .line 921
    if-nez p0, :cond_4

    .line 922
    const/4 v0, -0x1

    return v0

    .line 924
    :cond_4
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    return v0
.end method

.method private getHandleName(J)Ljava/lang/String;
    .registers 6
    .param p1, "handle"    # J

    .line 2392
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "synthetic_password_"

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockSettingsInternal()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/internal/widget/LockSettingsInternal;",
            ">;"
        }
    .end annotation

    .line 2561
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_e

    .line 2562
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 2564
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getNextAvailableWeaverSlot()I
    .registers 4

    .line 1198
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v0

    .line 1199
    .local v0, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/PasswordSlotManager;->getUsedSlots()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge v1, v2, :cond_22

    .line 1201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1202
    return v1

    .line 1200
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1205
    .end local v1    # "i":I
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Run out of weaver slots."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getSdpManagerService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/SdpManagerService;",
            ">;"
        }
    .end annotation

    .line 2554
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    if-nez v0, :cond_f

    .line 2555
    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService;

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    .line 2557
    :cond_f
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSecureMode(I)I
    .registers 9
    .param p1, "userId"    # I

    .line 2470
    const-string v0, "SyntheticPasswordManager.SDP"

    const/4 v1, -0x1

    .line 2472
    .local v1, "mode":I
    :try_start_3
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->getSecureMode(I)I

    move-result v2
    :try_end_7
    .catch Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException; {:try_start_3 .. :try_end_7} :catch_9

    move v1, v2

    .line 2476
    goto :goto_19

    .line 2473
    :catch_9
    move-exception v2

    .line 2474
    .local v2, "e":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;
    sget-boolean v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;->printStackTrace()V

    goto :goto_19

    .line 2475
    :cond_12
    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    .end local v2    # "e":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;
    :goto_19
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5b

    .line 2488
    const/4 v1, 0x0

    .line 2490
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 2491
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 2492
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$-ACpktafMBU7UdWlAfPdYEKYhBM;

    invoke-direct {v4, p1}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$-ACpktafMBU7UdWlAfPdYEKYhBM;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    .line 2493
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2494
    if-ne v1, v2, :cond_5b

    .line 2495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No secure mode for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2496
    const/4 v1, 0x2

    .line 2501
    :cond_5b
    invoke-static {p1, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->cacheSecureMode(II)V

    .line 2502
    sget-boolean v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_7c

    new-array v2, v5, [Ljava/lang/Object;

    .line 2503
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 2502
    const-string v6, "Get - [ Secure Mode : %d, UserId : %d ]"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_7c
    new-array v2, v5, [Ljava/lang/Object;

    .line 2505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2504
    const-string v3, "Secure mode for user %d = %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    return v1
.end method

.method private getUsedWeaverSlots()Ljava/util/Set;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "weaver"

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1151
    .local v1, "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1152
    .local v2, "slots":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1153
    .local v3, "conflicts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Slot conflict at slot #"

    if-eqz v5, :cond_b6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1154
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1155
    .local v8, "handle":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v9

    .line 1157
    .local v9, "slot":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 1158
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1159
    .local v10, "userId":I
    invoke-static {v10}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v11

    if-eqz v11, :cond_ac

    .line 1160
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1162
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_94

    .line 1163
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;>;"
    goto :goto_a0

    .line 1165
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;>;"
    :cond_94
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    :goto_a0
    new-instance v12, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-direct {v12, v13, v14, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;-><init>(JI)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    .end local v10    # "userId":I
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;>;"
    :cond_ac
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1173
    .end local v8    # "handle":Ljava/lang/Long;
    .end local v9    # "slot":I
    goto :goto_35

    .line 1174
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_b4
    goto/16 :goto_1d

    .line 1176
    :cond_b6
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_166

    .line 1177
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_163

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1178
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1179
    .local v7, "userId":I
    invoke-static {v7}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v8

    if-nez v8, :cond_15d

    .line 1180
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ea
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1181
    .local v9, "handle":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v0, v10, v11, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v10

    .line 1182
    .local v10, "slot":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_155

    .line 1183
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " with user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1184
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1185
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_13a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_152

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;

    .line 1186
    .local v13, "info":Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;
    iget-wide v14, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->handle:J

    move-object/from16 v16, v1

    .end local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .local v16, "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    iget v1, v13, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->userId:I

    invoke-direct {v0, v14, v15, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->mitigateSlotConflict(JI)V

    .line 1187
    .end local v13    # "info":Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;
    move-object/from16 v1, v16

    goto :goto_13a

    .line 1185
    .end local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_152
    move-object/from16 v16, v1

    .end local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto :goto_157

    .line 1182
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;>;"
    .end local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_155
    move-object/from16 v16, v1

    .line 1189
    .end local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v9    # "handle":Ljava/lang/Long;
    .end local v10    # "slot":I
    .restart local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :goto_157
    move-object/from16 v1, v16

    goto :goto_ea

    .line 1180
    .end local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_15a
    move-object/from16 v16, v1

    .end local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto :goto_15f

    .line 1179
    .end local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_15d
    move-object/from16 v16, v1

    .line 1191
    .end local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v7    # "userId":I
    .restart local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :goto_15f
    move-object/from16 v1, v16

    goto/16 :goto_c4

    .line 1177
    .end local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_163
    move-object/from16 v16, v1

    .end local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto :goto_168

    .line 1176
    .end local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_166
    move-object/from16 v16, v1

    .line 1194
    .end local v1    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v16    # "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :goto_168
    return-object v2
.end method

.method private hasPasswordMetrics(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2221
    const-string/jumbo v0, "metrics"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method private hasState(Ljava/lang/String;JI)Z
    .registers 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 2225
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isEnterpriseUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isDeviceSupportKnoxSDP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 2537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2539
    .local v2, "callingId":J
    :try_start_b
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2540
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v4
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1e

    if-eqz v4, :cond_1a

    const/4 v1, 0x1

    .line 2542
    :cond_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2540
    return v1

    .line 2542
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :catchall_1e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2543
    throw v0

    .line 2545
    .end local v2    # "callingId":J
    :cond_23
    return v1
.end method

.method private isMdfppMode(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2466
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isSpBlobSpecific(JI)Z
    .registers 13
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1926
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1927
    return v1

    .line 1929
    :cond_8
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 1930
    .local v0, "blob":[B
    if-eqz v0, :cond_3b

    array-length v2, v0

    const/16 v3, 0x13

    if-ge v2, v3, :cond_17

    goto :goto_3b

    .line 1933
    :cond_17
    aget-byte v2, v0, v1

    .line 1934
    .local v2, "version":B
    const/4 v4, 0x1

    if-lt v2, v4, :cond_3a

    const/4 v5, 0x3

    if-le v2, v5, :cond_20

    goto :goto_3a

    .line 1938
    :cond_20
    aget-byte v5, v0, v4

    .line 1939
    .local v5, "type":B
    if-ltz v5, :cond_39

    if-le v5, v4, :cond_27

    goto :goto_39

    .line 1943
    :cond_27
    const/4 v6, 0x2

    aget-byte v6, v0, v6

    .line 1944
    .local v6, "targetKeyStore":B
    if-eq v6, v4, :cond_2d

    .line 1945
    return v1

    .line 1947
    :cond_2d
    const/4 v7, 0x3

    .local v7, "i":I
    :goto_2e
    if-ge v7, v3, :cond_38

    .line 1948
    aget-byte v8, v0, v7

    if-eqz v8, :cond_35

    .line 1949
    return v1

    .line 1947
    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 1952
    .end local v7    # "i":I
    :cond_38
    return v4

    .line 1941
    .end local v6    # "targetKeyStore":B
    :cond_39
    :goto_39
    return v1

    .line 1936
    .end local v5    # "type":B
    :cond_3a
    :goto_3a
    return v1

    .line 1931
    .end local v2    # "version":B
    :cond_3b
    :goto_3b
    return v1
.end method

.method private isSpEnabledSystemUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 2549
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isDeviceSupportKnoxSDP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$3PU7a0EYq2xfn5hsw7NxLPh4Qxw;

    invoke-direct {v2, p1}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$3PU7a0EYq2xfn5hsw7NxLPh4Qxw;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 2550
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 2549
    :goto_27
    return v1
.end method

.method private isSpecificProcessRequired(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2531
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isDeviceSupportKnoxSDP()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isSpEnabledSystemUser(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2532
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2531
    :goto_1b
    return v0
.end method

.method private isTokenMatch([BI)I
    .registers 7
    .param p1, "ary"    # [B
    .param p2, "userId"    # I

    .line 2768
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->byteToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 2769
    .local v0, "input":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "lockscreen.token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2771
    .local v1, "saved":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 2772
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_26

    goto :goto_30

    .line 2775
    :cond_26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2776
    const/4 v2, 0x1

    return v2

    .line 2778
    :cond_2e
    const/4 v2, 0x0

    return v2

    .line 2773
    :cond_30
    :goto_30
    const/4 v2, -0x1

    return v2
.end method

.method private declared-synchronized isWeaverAvailable()Z
    .registers 2

    monitor-enter p0

    .line 800
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-nez v0, :cond_8

    .line 802
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 804
    .end local p0    # "this":Lcom/android/server/locksettings/SyntheticPasswordManager;
    :cond_8
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    monitor-exit p0

    return v0

    .line 799
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$getSecureMode$2(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;
    .registers 3
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/internal/widget/LockSettingsInternal;

    .line 2492
    nop

    .line 2493
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockSettingsInternal;->getSecureMode(I)I

    move-result v0

    .line 2492
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isSpEnabledSystemUser$3(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/server/SdpManagerService;

    .line 2549
    nop

    .line 2550
    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->isSyntheticPasswordEnabledSystemUser(I)Z

    move-result v0

    .line 2549
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$weaverVerify$1([I[Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 9
    .param p0, "readStatus"    # [I
    .param p1, "response"    # [Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p2, "slot"    # I
    .param p3, "status"    # I
    .param p4, "readResponse"    # Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    .line 865
    const/4 v0, 0x0

    aput p3, p0, v0

    .line 866
    if-eqz p3, :cond_a9

    const/4 v1, 0x1

    const-string v2, "SyntheticPasswordManager"

    if-eq p3, v1, :cond_8f

    const/4 v1, 0x2

    if-eq p3, v1, :cond_52

    const/4 v1, 0x3

    if-eq p3, v1, :cond_33

    .line 890
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p1, v0

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read unknown status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b7

    .line 872
    :cond_33
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v3, p4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v1, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v1, p1, v0

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (THROTTLE), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    goto :goto_b7

    .line 876
    :cond_52
    iget v1, p4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-nez v1, :cond_70

    .line 877
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p1, v0

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (INCORRECT_KEY), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 880
    :cond_70
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v3, p4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v1, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v1, p1, v0

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    goto :goto_b7

    .line 886
    :cond_8f
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p1, v0

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed (FAILED), slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    goto :goto_b7

    .line 868
    :cond_a9
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v2, p4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 869
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fromByteArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    aput-object v1, p1, v0

    .line 870
    nop

    .line 894
    :goto_b7
    return-void
.end method

.method private loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 7
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 1058
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 1059
    .local v0, "e0":[B
    const-string/jumbo v3, "p1"

    invoke-direct {p0, v3, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 1060
    .local v1, "p1":[B
    invoke-virtual {p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    .line 1061
    if-eqz v0, :cond_18

    if-eqz v1, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method

.method private loadSecdiscardable(JI)[B
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2193
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadState(Ljava/lang/String;JI)[B
    .registers 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 2230
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2231
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 2232
    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object v0

    .line 2233
    .local v0, "data":[B
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->postReadOrWriteState(Ljava/lang/String;[BI)V

    .line 2234
    return-object v0

    .line 2238
    .end local v0    # "data":[B
    :cond_10
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private loadSyntheticPasswordHandle(I)[B
    .registers 5
    .param p1, "userId"    # I

    .line 1050
    const-string/jumbo v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadWeaverSlot(JI)I
    .registers 10
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1097
    const/4 v0, 0x5

    .line 1098
    .local v0, "LENGTH":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 1099
    .local v1, "data":[B
    const/4 v2, -0x1

    if-eqz v1, :cond_3f

    array-length v3, v1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_10

    goto :goto_3f

    .line 1102
    :cond_10
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1103
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1104
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1105
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3a

    .line 1106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid weaver slot version of handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SyntheticPasswordManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return v2

    .line 1109
    :cond_3a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    return v2

    .line 1100
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3f
    :goto_3f
    return v2
.end method

.method private makeSpmLog(IJLjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "handle"    # J
    .param p4, "contents"    # Ljava/lang/String;

    .line 2726
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2727
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SyntheticPasswordManager state file event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2728
    const-string v2, "Contents : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    const-string v2, "Time : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2730
    const-string v2, "User id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2731
    const-string v2, "User handle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, ", %x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    const-string v1, "Callers : \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    const-string v2, "    "

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2734
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 2735
    return-void
.end method

.method private makeTime()Ljava/lang/String;
    .registers 8

    .line 2738
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2739
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2740
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 2741
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    .line 2742
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2743
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2744
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 2745
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 2746
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2740
    const-string v3, "%02d-%02d %02d:%02d:%02d.%03d "

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private mitigateSlotConflict(JI)V
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1224
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1225
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1226
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1225
    const-string v1, "Mitigate slot conflict on %x.weaver for virtual user %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_45

    .line 1228
    const-string/jumbo v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    goto :goto_45

    .line 1231
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not handle conflict for normal user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_45
    :goto_45
    return-void
.end method

.method private passwordTokenToGkInput([B)[B
    .registers 5
    .param p1, "token"    # [B

    .line 2409
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private passwordTokenToWeaverKey([B)[B
    .registers 5
    .param p1, "token"    # [B

    .line 2413
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 2414
    .local v0, "key":[B
    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-lt v1, v2, :cond_1c

    .line 2417
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 2415
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "weaver key length too small"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private postDeleteState(Ljava/lang/String;I)V
    .registers 4
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2279
    const-string/jumbo v0, "pwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2280
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteCredentialType(I)V

    .line 2282
    :cond_c
    return-void
.end method

.method private postReadOrWriteState(Ljava/lang/String;[BI)V
    .registers 7
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "userId"    # I

    .line 2259
    if-eqz p2, :cond_45

    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_7

    goto :goto_45

    .line 2262
    :cond_7
    const-string/jumbo v0, "pwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2263
    const/4 v0, 0x0

    .line 2264
    invoke-static {p2, v0, v1}, Lcom/android/server/sdp/security/BytesUtil;->bytesToInt([BII)I

    move-result v0

    .line 2263
    invoke-direct {p0, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->adjustCredentialType(II)I

    move-result v0

    .line 2265
    .local v0, "credType":I
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->validateCredentialType(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2266
    invoke-static {p3, v0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->cacheCredentialType(II)V

    .line 2267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credential type for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager.SDP"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 2269
    :cond_41
    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteCredentialType(I)V

    .line 2272
    .end local v0    # "credType":I
    :cond_44
    :goto_44
    return-void

    .line 2260
    :cond_45
    :goto_45
    return-void
.end method

.method private saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 14
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 1065
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1500(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v2

    const-string v1, "e0"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1066
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$1600(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v7

    const-string/jumbo v6, "p1"

    const-wide/16 v8, 0x0

    move-object v5, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1067
    return-void
.end method

.method private savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V
    .registers 15
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "handle"    # J
    .param p5, "userId"    # I

    .line 2214
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveMetricsKey()[B

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    new-instance v2, Lcom/android/server/locksettings/VersionedPasswordMetrics;

    invoke-direct {v2, p1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;-><init>(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 2216
    invoke-virtual {v2}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->serialize()[B

    move-result-object v2

    .line 2214
    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    .line 2217
    .local v0, "encrypted":[B
    const-string/jumbo v4, "metrics"

    move-object v3, p0

    move-object v5, v0

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 2218
    return-void
.end method

.method private saveSecdiscardable(J[BI)V
    .registers 11
    .param p1, "handle"    # J
    .param p3, "secdiscardable"    # [B
    .param p4, "userId"    # I

    .line 2189
    const-string/jumbo v1, "secdis"

    move-object v0, p0

    move-object v2, p3

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 2190
    return-void
.end method

.method private saveState(Ljava/lang/String;[BJI)V
    .registers 13
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "handle"    # J
    .param p5, "userId"    # I

    .line 2243
    const-string/jumbo v0, "pwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, p3, p4, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeSpmLog(IJLjava/lang/String;)V

    .line 2246
    :cond_1e
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move v2, p5

    move-wide v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    .line 2248
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2249
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->postReadOrWriteState(Ljava/lang/String;[BI)V

    .line 2252
    :cond_30
    return-void
.end method

.method private saveSyntheticPasswordHandle([BI)V
    .registers 9
    .param p1, "spHandle"    # [B
    .param p2, "userId"    # I

    .line 1054
    const-string/jumbo v1, "handle"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1055
    return-void
.end method

.method private saveWeaverSlot(IJI)V
    .registers 13
    .param p1, "slot"    # I
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1113
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1114
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1115
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1116
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string/jumbo v3, "weaver"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1117
    return-void
.end method

.method protected static secureRandom(I)[B
    .registers 3
    .param p0, "length"    # I

    .line 2384
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 2385
    :catch_b
    move-exception v0

    .line 2386
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 2387
    const/4 v1, 0x0

    return-object v1
.end method

.method private setToken([BI)V
    .registers 6
    .param p1, "ary"    # [B
    .param p2, "userId"    # I

    .line 2764
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->byteToHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.token"

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2765
    return-void
.end method

.method private synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .registers 7
    .param p1, "pwd"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .param p2, "requestedQuality"    # I
    .param p3, "userId"    # I

    .line 1441
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 1443
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1442
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1444
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 1445
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x1

    .line 1446
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 1445
    invoke-virtual {v0, v1, p3, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 1448
    :cond_26
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 1451
    :cond_2d
    :goto_2d
    return-void
.end method

.method private synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V
    .registers 8
    .param p1, "pwd"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .param p2, "requestedQuality"    # I
    .param p3, "userId"    # I
    .param p4, "weaverSlot"    # I

    .line 1455
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 1457
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1456
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1458
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 1459
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x2

    .line 1460
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 1459
    invoke-virtual {v0, v1, p4, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 1462
    :cond_26
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 1465
    :cond_2d
    :goto_2d
    return-void
.end method

.method protected static toByteArrayList([B)Ljava/util/ArrayList;
    .registers 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 2431
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2432
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 2433
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2432
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2435
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private transformUnderSecdiscardable([B[B)[B
    .registers 8
    .param p1, "data"    # [B
    .param p2, "rawSecdiscardable"    # [B

    .line 2174
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 2176
    .local v0, "secdiscardable":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 2177
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2178
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2179
    return-object v1
.end method

.method private transformUnderWeaverSecret([B[B)[B
    .registers 8
    .param p1, "data"    # [B
    .param p2, "secret"    # [B

    .line 2165
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 2167
    .local v0, "weaverSecret":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 2168
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2169
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2170
    return-object v1
.end method

.method private unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 27
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "applicationId"    # [B
    .param p5, "sid"    # J
    .param p7, "userId"    # I

    .line 1966
    move-object/from16 v9, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p7

    const-string/jumbo v0, "spblob"

    move-wide/from16 v13, p1

    invoke-direct {v9, v0, v13, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v15

    .line 1967
    .local v15, "blob":[B
    const/4 v0, 0x0

    if-nez v15, :cond_15

    .line 1968
    return-object v0

    .line 1970
    :cond_15
    const/4 v1, 0x0

    aget-byte v8, v15, v1

    .line 1971
    .local v8, "version":B
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v8, v1, :cond_2a

    if-eq v8, v2, :cond_2a

    if-ne v8, v3, :cond_22

    goto :goto_2a

    .line 1974
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown blob version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1976
    :cond_2a
    :goto_2a
    aget-byte v1, v15, v3

    if-ne v1, v10, :cond_cc

    .line 1980
    if-ne v8, v3, :cond_3f

    .line 1981
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v4, v15

    .line 1982
    invoke-static {v15, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1981
    invoke-static {v1, v2, v11}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v1

    move-object v6, v1

    .local v1, "secret":[B
    goto :goto_4d

    .line 1984
    .end local v1    # "secret":[B
    :cond_3f
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v4, v15

    .line 1985
    invoke-static {v15, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1984
    invoke-virtual {v9, v1, v2, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v1

    move-object v6, v1

    .line 1987
    .local v6, "secret":[B
    :goto_4d
    const-string v1, "SyntheticPasswordManager"

    if-nez v6, :cond_66

    .line 1988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to decrypt SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    return-object v0

    .line 1991
    :cond_66
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v2, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    move-object v7, v2

    .line 1992
    .local v7, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-ne v10, v3, :cond_8d

    .line 1993
    invoke-direct {v9, v7, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    if-nez v2, :cond_89

    .line 1994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not escrowable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    return-object v0

    .line 1997
    :cond_89
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateFromEscrow([B)V

    goto :goto_90

    .line 1999
    :cond_8d
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateDirectly([B)V

    .line 2001
    :goto_90
    if-ne v8, v3, :cond_c5

    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade v1 SP blob for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object v4, v7

    move-object/from16 v5, p4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v6    # "secret":[B
    .end local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .local v16, "secret":[B
    .local v17, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    move-wide/from16 v6, p5

    move/from16 v18, v8

    .end local v8    # "version":B
    .local v18, "version":B
    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    goto :goto_cb

    .line 2001
    .end local v16    # "secret":[B
    .end local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v18    # "version":B
    .restart local v6    # "secret":[B
    .restart local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v8    # "version":B
    :cond_c5
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    .line 2005
    .end local v6    # "secret":[B
    .end local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v8    # "version":B
    .restart local v16    # "secret":[B
    .restart local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v18    # "version":B
    :goto_cb
    return-object v17

    .line 1977
    .end local v16    # "secret":[B
    .end local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v18    # "version":B
    .restart local v8    # "version":B
    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid blob type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unwrapSyntheticPasswordBlobForked(JB[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 10
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "applicationId"    # [B
    .param p5, "sid"    # J
    .param p7, "userId"    # I
    .param p8, "km"    # Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    .line 1957
    invoke-direct {p0, p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1, p2, p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isSpBlobSpecific(JI)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 1960
    :cond_d
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    return-object v0

    .line 1958
    :cond_12
    :goto_12
    invoke-direct/range {p0 .. p8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlobSpecific(JB[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    return-object v0
.end method

.method private unwrapSyntheticPasswordBlobSpecific(JB[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 32
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "applicationId"    # [B
    .param p5, "sid"    # J
    .param p7, "userId"    # I
    .param p8, "km"    # Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    .line 2011
    move-object/from16 v10, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p7

    const-string/jumbo v0, "spblob"

    move-wide/from16 v14, p1

    invoke-direct {v10, v0, v14, v15, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v9

    .line 2012
    .local v9, "blob":[B
    const/4 v6, 0x0

    if-nez v9, :cond_15

    .line 2013
    return-object v6

    .line 2015
    :cond_15
    const/4 v7, 0x0

    aget-byte v8, v9, v7

    .line 2016
    .local v8, "version":B
    const/4 v5, 0x1

    if-lt v8, v5, :cond_199

    const/4 v4, 0x3

    if-gt v8, v4, :cond_199

    .line 2020
    aget-byte v0, v9, v5

    if-ne v0, v11, :cond_191

    .line 2026
    const/4 v3, 0x2

    if-ne v8, v5, :cond_3a

    .line 2027
    const/4 v0, 0x1

    .line 2028
    .local v0, "targetKeyStore":B
    const/4 v1, 0x2

    .line 2029
    .local v1, "offset":I
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v2

    array-length v4, v9

    .line 2030
    invoke-static {v9, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 2029
    invoke-static {v2, v4, v12}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v2

    move/from16 v17, v0

    move/from16 v16, v1

    move-object v6, v2

    .local v2, "secret":[B
    goto :goto_9a

    .line 2031
    .end local v0    # "targetKeyStore":B
    .end local v1    # "offset":I
    .end local v2    # "secret":[B
    :cond_3a
    if-ne v8, v3, :cond_53

    .line 2032
    aget-byte v0, v9, v3

    .line 2033
    .restart local v0    # "targetKeyStore":B
    const/16 v1, 0x13

    .line 2034
    .restart local v1    # "offset":I
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v2

    array-length v4, v9

    .line 2035
    invoke-static {v9, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 2034
    invoke-virtual {v10, v2, v4, v12, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlobV1(Ljava/lang/String;[B[BB)[B

    move-result-object v2

    move/from16 v17, v0

    move/from16 v16, v1

    move-object v6, v2

    .restart local v2    # "secret":[B
    goto :goto_9a

    .line 2037
    .end local v0    # "targetKeyStore":B
    .end local v1    # "offset":I
    .end local v2    # "secret":[B
    :cond_53
    aget-byte v17, v9, v3

    .line 2038
    .local v17, "targetKeyStore":B
    const/16 v4, 0x13

    .line 2039
    .local v4, "offset":I
    invoke-direct {v10, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 2040
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v0, v9

    .line 2041
    invoke-static {v9, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    new-array v0, v5, [[B

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getAAD()[B

    move-result-object v18

    aput-object v18, v0, v7

    .line 2040
    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move v6, v4

    .end local v4    # "offset":I
    .local v6, "offset":I
    move/from16 v4, v17

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[BB[[B)[B

    move-result-object v2

    move/from16 v16, v6

    move-object v6, v2

    .restart local v2    # "secret":[B
    goto :goto_9a

    .line 2043
    .end local v2    # "secret":[B
    .end local v6    # "offset":I
    .restart local v4    # "offset":I
    :cond_81
    move v6, v4

    .end local v4    # "offset":I
    .restart local v6    # "offset":I
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v0, v9

    .line 2044
    invoke-static {v9, v6, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    new-array v5, v7, [[B

    .line 2043
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[BB[[B)[B

    move-result-object v2

    move/from16 v16, v6

    move-object v6, v2

    .line 2047
    .local v6, "secret":[B
    .local v16, "offset":I
    :goto_9a
    const-string v0, "SyntheticPasswordManager"

    if-nez v6, :cond_b4

    .line 2048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to decrypt SP for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    const/4 v0, 0x0

    return-object v0

    .line 2052
    :cond_b4
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getSecureMode()I

    move-result v5

    .line 2053
    .local v5, "secureMode":I
    if-nez v5, :cond_c4

    const/4 v1, 0x2

    if-eq v8, v1, :cond_c1

    const/4 v2, 0x3

    if-ne v8, v2, :cond_c6

    goto :goto_c2

    :cond_c1
    const/4 v2, 0x3

    :goto_c2
    const/4 v3, 0x1

    goto :goto_c7

    :cond_c4
    const/4 v1, 0x2

    const/4 v2, 0x3

    :cond_c6
    move v3, v7

    :goto_c7
    move/from16 v18, v3

    .line 2055
    .local v18, "shouldRevert":Z
    if-eqz v18, :cond_cc

    .line 2056
    const/4 v8, 0x2

    .line 2059
    :cond_cc
    new-instance v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v3, v8, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(BI)V

    .line 2060
    .local v3, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/4 v4, 0x1

    if-ne v11, v4, :cond_fa

    .line 2061
    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v19

    if-nez v19, :cond_f6

    invoke-direct {v10, v3, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v19

    if-nez v19, :cond_f6

    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is not escrowable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    const/4 v0, 0x0

    return-object v0

    .line 2065
    :cond_f6
    invoke-virtual {v3, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateFromEscrow([B)V

    goto :goto_fd

    .line 2067
    :cond_fa
    invoke-virtual {v3, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateDirectly([B)V

    .line 2070
    :goto_fd
    if-nez v5, :cond_150

    .line 2071
    if-eqz v18, :cond_146

    .line 2072
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 2074
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v2, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v1

    .line 2072
    const-string v1, "Revert to v2 SP original blob for user %d [ type : %d, prev : %d ]"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2075
    const/4 v2, 0x0

    const-string/jumbo v1, "spblob"

    move-object/from16 v0, p0

    move-object/from16 v19, v3

    .end local v3    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .local v19, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    move-wide/from16 v3, p1

    move/from16 v20, v5

    .end local v5    # "secureMode":I
    .local v20, "secureMode":I
    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 2076
    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, v19

    move-object/from16 v5, p4

    move-object/from16 v21, v6

    .end local v6    # "secret":[B
    .local v21, "secret":[B
    move-wide/from16 v6, p5

    move v10, v8

    .end local v8    # "version":B
    .local v10, "version":B
    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    move-object/from16 v22, v9

    goto :goto_18d

    .line 2071
    .end local v10    # "version":B
    .end local v19    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v20    # "secureMode":I
    .end local v21    # "secret":[B
    .restart local v3    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v5    # "secureMode":I
    .restart local v6    # "secret":[B
    .restart local v8    # "version":B
    :cond_146
    move-object/from16 v19, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move v10, v8

    .end local v3    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v5    # "secureMode":I
    .end local v6    # "secret":[B
    .end local v8    # "version":B
    .restart local v10    # "version":B
    .restart local v19    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v20    # "secureMode":I
    .restart local v21    # "secret":[B
    move-object/from16 v22, v9

    goto :goto_18d

    .line 2078
    .end local v10    # "version":B
    .end local v19    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v20    # "secureMode":I
    .end local v21    # "secret":[B
    .restart local v3    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v5    # "secureMode":I
    .restart local v6    # "secret":[B
    .restart local v8    # "version":B
    :cond_150
    move-object/from16 v19, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move v10, v8

    .end local v3    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v5    # "secureMode":I
    .end local v6    # "secret":[B
    .end local v8    # "version":B
    .restart local v10    # "version":B
    .restart local v19    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v20    # "secureMode":I
    .restart local v21    # "secret":[B
    if-ne v10, v1, :cond_18b

    .line 2079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade v2 SP blob for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, v19

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v22, v9

    .end local v9    # "blob":[B
    .local v22, "blob":[B
    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlobSpecific(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V

    goto :goto_18d

    .line 2078
    .end local v22    # "blob":[B
    .restart local v9    # "blob":[B
    :cond_18b
    move-object/from16 v22, v9

    .line 2082
    .end local v9    # "blob":[B
    .restart local v22    # "blob":[B
    :goto_18d
    invoke-static/range {v21 .. v21}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 2083
    return-object v19

    .line 2021
    .end local v10    # "version":B
    .end local v16    # "offset":I
    .end local v17    # "targetKeyStore":B
    .end local v18    # "shouldRevert":Z
    .end local v19    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v20    # "secureMode":I
    .end local v21    # "secret":[B
    .end local v22    # "blob":[B
    .restart local v8    # "version":B
    .restart local v9    # "blob":[B
    :cond_191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid blob type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2016
    :cond_199
    move-object/from16 v22, v9

    .line 2018
    .end local v9    # "blob":[B
    .restart local v22    # "blob":[B
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown blob version"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private weaverEnroll(I[B[B)[B
    .registers 10
    .param p1, "slot"    # I
    .param p2, "key"    # [B
    .param p3, "value"    # [B

    .line 815
    const-string/jumbo v0, "weaver write failed"

    const-string v1, "SyntheticPasswordManager"

    const/4 v2, -0x1

    if-eq p1, v2, :cond_75

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v2, :cond_75

    .line 819
    if-nez p2, :cond_17

    .line 820
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v2, [B

    goto :goto_1e

    .line 821
    :cond_17
    array-length v2, p2

    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v3, v3, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v2, v3, :cond_6a

    .line 825
    :goto_1e
    if-nez p3, :cond_28

    .line 826
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p3

    .line 829
    :cond_28
    const/4 v2, 0x0

    :try_start_29
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5}, Landroid/hardware/weaver/V1_0/IWeaver;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v3

    .line 830
    .local v3, "writeStatus":I
    invoke-static {p1, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->update(II)V

    .line 831
    if-eqz v3, :cond_5d

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "weaver write failed, slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_5c} :catch_5f

    .line 834
    return-object v2

    .line 840
    .end local v3    # "writeStatus":I
    :cond_5d
    nop

    .line 841
    return-object p3

    .line 836
    :catch_5f
    move-exception v3

    .line 837
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    const-string/jumbo v0, "weaver write failed with Exception"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 839
    return-object v2

    .line 822
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_6a
    const-string v0, "Invalid key size for weaver"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 823
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_75
    const-string v0, "Invalid slot for weaver"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 817
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 9
    .param p1, "slot"    # I
    .param p2, "key"    # [B

    .line 850
    const/4 v0, -0x1

    if-eq p1, v0, :cond_61

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v0, :cond_61

    .line 854
    if-nez p2, :cond_12

    .line 855
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v0, [B

    goto :goto_19

    .line 856
    :cond_12
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v0, v1, :cond_56

    .line 860
    :goto_19
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, -0x3e7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 861
    .local v1, "readStatus":[I
    new-array v0, v0, [Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 863
    .local v0, "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_start_23
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$5EG0D-fIaB41X-1UFRz77rMRpM0;

    invoke-direct {v5, v1, v0, p1}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$5EG0D-fIaB41X-1UFRz77rMRpM0;-><init>([I[Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    invoke-interface {v2, p1, v4, v5}, Landroid/hardware/weaver/V1_0/IWeaver;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_31} :catch_32

    .line 898
    goto :goto_4e

    .line 895
    :catch_32
    move-exception v2

    .line 896
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v4, v0, v3

    .line 897
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "weaver read failed, slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SyntheticPasswordManager"

    invoke-static {v5, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4e
    aget v2, v1, v3

    invoke-static {p1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->update(II)V

    .line 900
    aget-object v2, v0, v3

    return-object v2

    .line 857
    .end local v0    # "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v1    # "readStatus":[I
    :cond_56
    const-string v0, "Invalid key size for weaver"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 858
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 851
    :cond_61
    const-string v0, "Invalid slot for weaver"

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 852
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 21
    .param p1, "handle"    # J
    .param p3, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "userId"    # I

    .line 1576
    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move/from16 v13, p4

    iget-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 1577
    return v1

    .line 1579
    :cond_14
    iget-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    .line 1580
    .local v14, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    if-nez v14, :cond_2e

    .line 1581
    return v1

    .line 1583
    :cond_2e
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    const-string v2, "SyntheticPasswordManager"

    if-nez v0, :cond_44

    move-object/from16 v15, p3

    invoke-direct {v10, v15, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 1584
    const-string v0, "User is not escrowable"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    return v1

    .line 1583
    :cond_44
    move-object/from16 v15, p3

    .line 1587
    :cond_46
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1588
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v0

    .line 1589
    .local v0, "slot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weaver enroll token to slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-static {v1, v0, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 1591
    const/4 v3, 0x0

    iget-object v4, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    invoke-direct {v10, v0, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v3

    if-nez v3, :cond_92

    .line 1592
    const-string v3, "Failed to enroll weaver secret when activating token"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to enroll token for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 1594
    return v1

    .line 1596
    :cond_92
    invoke-static/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1597
    invoke-direct {v10, v0, v11, v12, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 1598
    iget-object v1, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 1600
    .end local v0    # "slot":I
    :cond_9d
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    invoke-direct {v10, v11, v12, v0, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1606
    const/4 v3, 0x1

    iget-object v5, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    const-wide/16 v6, 0x0

    iget-object v9, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->km:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v4, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlobForked(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V

    .line 1608
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->km:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->destroy()V

    .line 1610
    iget-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    if-eqz v0, :cond_d5

    .line 1612
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    invoke-interface {v0, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;->onEscrowTokenActivated(JI)V

    .line 1614
    :cond_d5
    const/4 v0, 0x1

    return v0
.end method

.method public checkWeaverStatus()V
    .registers 8

    .line 935
    const/4 v0, 0x0

    .line 937
    .local v0, "isAvailalbe":Z
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    .line 940
    goto :goto_d

    .line 938
    :catch_7
    move-exception v1

    .line 939
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unexpected exception while check weaver availability"

    invoke-static {v2, v1}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 941
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_d
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 942
    const-string v1, "SyntheticPasswordManager.SDP"

    const-string v2, "Device does not support weaver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-void

    .line 945
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weaver is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2b

    const-string/jumbo v2, "now"

    goto :goto_2d

    :cond_2b
    const-string v2, "NOT"

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "status":Ljava/lang/String;
    const-string v2, "!"

    .line 947
    .local v2, "info":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    if-eqz v3, :cond_6d

    if-eqz v0, :cond_6d

    .line 948
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v6, v6, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    .line 950
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v6, v6, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v6, v6, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 948
    const-string v5, " with slots(%d), kSize(%d) and vSize(%d)"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 952
    :cond_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method public clearSidForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1039
    const-string/jumbo v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1040
    return-void
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 27
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "userId"    # I

    .line 1251
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p4

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v14

    .line 1256
    .local v14, "handle":J
    invoke-direct {v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v10

    .line 1257
    .local v10, "secureMode":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(II)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v9

    .line 1258
    .local v9, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    move-result-object v0

    .line 1260
    .local v0, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    move-object/from16 v7, p2

    invoke-direct {v11, v7, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v8

    .line 1265
    .local v8, "pwdToken":[B
    invoke-direct {v11, v8, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setToken([BI)V

    .line 1268
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1

    const-string v2, "SyntheticPasswordManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_d3

    .line 1270
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v1

    .line 1271
    .local v1, "weaverSlot":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Weaver enroll password to slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-static {v3, v1, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 1273
    invoke-direct {v11, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v2

    invoke-direct {v11, v1, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v2

    .line 1275
    .local v2, "weaverSecret":[B
    invoke-static/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1277
    iget-object v5, v11, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "password slot log  = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 1278
    invoke-virtual {v4}, Lcom/android/server/locksettings/PasswordSlotManager;->getDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1277
    invoke-virtual {v5, v3, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1280
    if-eqz v2, :cond_94

    .line 1289
    invoke-direct {v11, v1, v14, v15, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 1290
    iget-object v4, v11, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v4, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 1292
    invoke-direct {v11, v9, v3, v13, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 1294
    const/4 v3, 0x0

    iput-object v3, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1295
    const-wide/16 v3, 0x0

    .line 1296
    .local v3, "sid":J
    invoke-direct {v11, v8, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v1

    .line 1297
    .end local v2    # "weaverSecret":[B
    .local v1, "applicationId":[B
    move-object/from16 v16, v1

    move-wide/from16 v17, v3

    goto/16 :goto_13f

    .line 1281
    .end local v3    # "sid":J
    .local v1, "weaverSlot":I
    .restart local v2    # "weaverSecret":[B
    :cond_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enroll credential for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1283
    .local v3, "log":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weaver enroll failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v13, v14, v15, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeSpmLog(IJLjava/lang/String;)V

    .line 1285
    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1286
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to enroll user password under weaver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1299
    .end local v1    # "weaverSlot":I
    .end local v2    # "weaverSecret":[B
    .end local v3    # "log":Ljava/lang/String;
    :cond_d3
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    invoke-direct {v1, v8, v10}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([BI)V

    .line 1305
    .end local v0    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .local v1, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    :try_start_d8
    invoke-direct {v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_df} :catch_e0

    .line 1308
    goto :goto_e6

    .line 1306
    :catch_e0
    move-exception v0

    .line 1307
    .local v0, "ignore":Landroid/os/RemoteException;
    const-string v4, "Failed to clear SID from gatekeeper"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    .end local v0    # "ignore":Landroid/os/RemoteException;
    :goto_e6
    :try_start_e6
    invoke-virtual {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v0
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_ea} :catch_19c

    if-eqz v0, :cond_103

    .line 1314
    :try_start_ec
    invoke-direct {v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    .line 1315
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getGkInput()[B

    move-result-object v2

    .line 1314
    const/4 v4, 0x0

    invoke-interface {v12, v0, v4, v4, v2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_f9} :catch_fa

    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_110

    .line 1322
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_fa
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    goto/16 :goto_1a3

    .line 1319
    :cond_103
    :try_start_103
    invoke-direct {v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    .line 1320
    invoke-direct {v11, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v2

    .line 1319
    const/4 v4, 0x0

    invoke-interface {v12, v0, v4, v4, v2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_110
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_110} :catch_19c

    .line 1324
    .restart local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_110
    nop

    .line 1325
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_16d

    .line 1332
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1333
    iget-object v2, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v11, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v4

    .line 1336
    .local v4, "sid":J
    invoke-virtual {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 1337
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getAppId()[B

    move-result-object v2

    .local v2, "applicationId":[B
    goto :goto_137

    .line 1341
    .end local v2    # "applicationId":[B
    :cond_12e
    nop

    .line 1342
    invoke-direct {v11, v14, v15, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v2

    .line 1341
    invoke-direct {v11, v8, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v2

    .line 1345
    .restart local v2    # "applicationId":[B
    :goto_137
    invoke-direct {v11, v9, v3, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    move-object v0, v1

    move-object/from16 v16, v2

    move-wide/from16 v17, v4

    .line 1347
    .end local v1    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .end local v2    # "applicationId":[B
    .end local v4    # "sid":J
    .local v0, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .local v16, "applicationId":[B
    .local v17, "sid":J
    :goto_13f
    invoke-virtual {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v3

    const-string/jumbo v2, "pwd"

    move-object/from16 v1, p0

    move-wide v4, v14

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1348
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V

    .line 1354
    const/4 v4, 0x0

    move-wide v2, v14

    move-object/from16 v5, p3

    move-object/from16 v6, v16

    move-object/from16 v19, v8

    .end local v8    # "pwdToken":[B
    .local v19, "pwdToken":[B
    move-wide/from16 v7, v17

    move-object/from16 v20, v9

    .end local v9    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .local v20, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    move/from16 v9, p4

    move/from16 v21, v10

    .end local v10    # "secureMode":I
    .local v21, "secureMode":I
    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlobForked(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)V

    .line 1356
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->destroy()V

    .line 1358
    return-wide v14

    .line 1327
    .end local v16    # "applicationId":[B
    .end local v17    # "sid":J
    .end local v19    # "pwdToken":[B
    .end local v20    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v21    # "secureMode":I
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v1    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .restart local v8    # "pwdToken":[B
    .restart local v9    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .restart local v10    # "secureMode":I
    :cond_16d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GateKeeper enroll failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeSpmLog(IJLjava/lang/String;)V

    .line 1329
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1322
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_19c
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    .line 1323
    .end local v8    # "pwdToken":[B
    .end local v9    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v10    # "secureMode":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v19    # "pwdToken":[B
    .restart local v20    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .restart local v21    # "secureMode":I
    :goto_1a3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to enroll password for new SP blob"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createSPBlob(Ljava/lang/String;[B[BJ)[B
    .registers 7
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "sid"    # J

    .line 2346
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs createSPBlob(Ljava/lang/String;[B[BJB[[B)[B
    .registers 14
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "sid"    # J
    .param p6, "targetKeyStore"    # B
    .param p7, "additional"    # [[B

    .line 2353
    const/4 v0, 0x1

    if-ne p6, v0, :cond_e

    .line 2355
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ[[B)[B

    move-result-object v0

    .line 2356
    .local v0, "ret":[B
    nop

    .line 2361
    return-object v0

    .line 2359
    .end local v0    # "ret":[B
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Make sure of input parameter"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 12
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "changeCallback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 1475
    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    if-eqz v0, :cond_6

    .line 1476
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_TOKEN:[B

    .line 1478
    :cond_6
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v0

    .line 1479
    .local v0, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1480
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    :cond_24
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    invoke-direct {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>()V

    .line 1483
    .local v2, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    const/16 v3, 0x4000

    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v3

    .line 1484
    .local v3, "secdiscardable":[B
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4b

    .line 1485
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v4, v4, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1486
    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    sget-object v6, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v4, v6, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    goto :goto_4f

    .line 1489
    :cond_4b
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 1490
    iput-object v5, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1492
    :goto_4f
    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 1495
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 1496
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v4

    .line 1497
    .local v4, "secureMode":I
    new-instance v6, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v4, v7}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([BIZ)V

    iput-object v6, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->km:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    .line 1498
    iget-object v6, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->km:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    invoke-virtual {v6}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getAppId()[B

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 1499
    iput-object v5, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 1500
    iput-object v5, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1501
    .end local v4    # "secureMode":I
    goto :goto_80

    .line 1502
    :cond_7a
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->km:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    .line 1506
    :goto_80
    iput-object p3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 1508
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    return-wide v0
.end method

.method protected decryptSPBlob(Ljava/lang/String;[B[B)[B
    .registers 5
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B

    .line 2313
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs decryptSPBlob(Ljava/lang/String;[B[BB[[B)[B
    .registers 8
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "targetKeyStore"    # B
    .param p5, "additional"    # [[B

    .line 2333
    const/4 v0, 0x1

    if-ne p4, v0, :cond_9

    .line 2335
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B[[B)[B

    move-result-object v0

    .line 2336
    .local v0, "ret":[B
    nop

    .line 2341
    return-object v0

    .line 2339
    .end local v0    # "ret":[B
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Make sure of input parameter"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decryptSPBlobV1(Ljava/lang/String;[B[BB)[B
    .registers 7
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "targetKeyStore"    # B

    .line 2319
    const/4 v0, 0x1

    if-ne p4, v0, :cond_9

    .line 2321
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v0

    .line 2322
    .local v0, "ret":[B
    nop

    .line 2327
    return-object v0

    .line 2325
    .end local v0    # "ret":[B
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Make sure of input parameter"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteInvalidSyntheticPasswordHandleLocked(IJ)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "validHandle"    # J

    .line 2691
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "pwd"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2692
    .local v0, "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5a

    .line 2693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteInvalidSyntheticPasswordHandleLocked   validHandle ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2695
    .local v3, "pwdHandle":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-eqz v4, :cond_59

    .line 2696
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteInvalidSyntheticPasswordHandleLocked delete ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 2699
    .end local v3    # "pwdHandle":Ljava/lang/Long;
    :cond_59
    goto :goto_2a

    .line 2701
    :cond_5a
    return-void
.end method

.method public destroyEscrowData(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1092
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1093
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1094
    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 2151
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 2152
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 2153
    const-string/jumbo v0, "metrics"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 2154
    return-void
.end method

.method protected destroySPBlobKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyAlias"    # Ljava/lang/String;

    .line 2366
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    .line 2367
    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 2146
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 2147
    return-void
.end method

.method public existsBlobKey(IJ)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "spHandle"    # J

    .line 2579
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1a

    .line 2597
    :cond_f
    invoke-direct {p0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->existsBlobKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 2598
    return v2

    .line 2580
    :cond_1a
    :goto_1a
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 2581
    .local v0, "blob":[B
    const-string v3, "SyntheticPasswordManager"

    if-nez v0, :cond_2b

    .line 2582
    const-string v1, "existsBlobKey blob is null!!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    return v2

    .line 2585
    :cond_2b
    aget-byte v4, v0, v2

    .line 2586
    .local v4, "version":B
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    .line 2587
    .local v5, "targetKeyStore":B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "existsBlobKey userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  spHandle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "  version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  keystore type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    if-ge v4, v1, :cond_61

    const/4 v3, 0x3

    if-gt v4, v3, :cond_70

    .line 2590
    :cond_61
    if-eq v4, v1, :cond_65

    if-ne v5, v1, :cond_70

    .line 2591
    :cond_65
    invoke-direct {p0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->existsBlobKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 2592
    return v2

    .line 2596
    .end local v0    # "blob":[B
    .end local v4    # "version":B
    .end local v5    # "targetKeyStore":B
    :cond_70
    nop

    .line 2601
    :cond_71
    return v1
.end method

.method public existsHandle(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2141
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public getActiveToken(IJ[B)[B
    .registers 12
    .param p1, "userId"    # I
    .param p2, "handle"    # J
    .param p4, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1532
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v0

    .line 1533
    .local v0, "secdiscardable":[B
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v1

    .line 1534
    .local v1, "slotId":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_43

    .line 1535
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v3

    const-string v4, "SyntheticPasswordManager"

    const/4 v5, 0x0

    if-nez v3, :cond_1b

    .line 1536
    const-string v2, "No weaver service to unwrap token based SP"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    return-object v5

    .line 1539
    :cond_1b
    invoke-static {v2, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 1540
    invoke-direct {p0, v1, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 1541
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1542
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-nez v6, :cond_3d

    .line 1543
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v6

    if-nez v6, :cond_32

    goto :goto_3d

    .line 1547
    :cond_32
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v4, v5, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    goto :goto_43

    .line 1544
    :cond_3d
    :goto_3d
    const-string v2, "Failed to retrieve weaver secret when unwrapping token"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    return-object v5

    .line 1555
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_43
    :goto_43
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1556
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v3

    .line 1557
    .local v3, "secureMode":I
    new-instance v4, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    invoke-direct {v4, p4, v3, v2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([BIZ)V

    move-object v2, v4

    .line 1558
    .local v2, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getAppId()[B

    move-result-object v4

    .local v4, "applicationId":[B
    goto :goto_62

    .line 1560
    .end local v2    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .end local v3    # "secureMode":I
    .end local v4    # "applicationId":[B
    :cond_5e
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deriveResetTokenForDualDAR([B)[B

    move-result-object v4

    .line 1563
    .restart local v4    # "applicationId":[B
    :goto_62
    return-object v4
.end method

.method getCredentialType(JI)I
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 912
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 913
    .local v0, "passwordData":[B
    if-nez v0, :cond_21

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCredentialType: encountered empty password data for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v1, -0x1

    return v1

    .line 917
    :cond_21
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    iget v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    return v1
.end method

.method public getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Landroid/app/admin/PasswordMetrics;
    .registers 9
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 2204
    const-string/jumbo v0, "metrics"

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 2205
    .local v0, "encrypted":[B
    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    .line 2206
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveMetricsKey()[B

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-static {v2, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v2

    .line 2208
    .local v2, "decrypted":[B
    if-nez v2, :cond_19

    return-object v1

    .line 2209
    :cond_19
    invoke-static {v2}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->deserialize([B)Lcom/android/server/locksettings/VersionedPasswordMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->getMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    return-object v1
.end method

.method public getPendingToken(IJ)[B
    .registers 7
    .param p1, "userId"    # I
    .param p2, "handle"    # J

    .line 1521
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1522
    const/4 v0, 0x0

    return-object v0

    .line 1525
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 1526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    array-length v1, v1

    .line 1525
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 1527
    .local v0, "pendingToken":[B
    return-object v0
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1513
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1514
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1516
    :cond_11
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSecureMode(JI)I
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 957
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 958
    .local v0, "passwordData":[B
    if-nez v0, :cond_21

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecureMode: encountered empty password data for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager.SDP"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v1, -0x1

    return v1

    .line 962
    :cond_21
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->access$1400(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)I

    move-result v1

    return v1
.end method

.method public getValidSyntheticPasswordHandleLocked(IJ)J
    .registers 7
    .param p1, "userId"    # I
    .param p2, "spHandle"    # J

    .line 2605
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2606
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsBlobKey(IJ)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2607
    return-wide v0

    .line 2610
    :cond_13
    return-wide p2
.end method

.method public getValidSyntheticPasswordHandleLocked(IJLjava/lang/String;Z)J
    .registers 26
    .param p1, "userId"    # I
    .param p2, "spHandle"    # J
    .param p4, "tryHandles"    # Ljava/lang/String;
    .param p5, "isFbeSecure"    # Z

    .line 2614
    move-object/from16 v0, p0

    move/from16 v8, p1

    move-wide/from16 v9, p2

    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-wide/16 v11, 0x0

    const-string/jumbo v2, "handle"

    invoke-virtual {v1, v8, v11, v12, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2615
    .local v13, "handleFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v1

    .line 2616
    .local v14, "handleFile":Ljava/io/File;
    const/4 v1, 0x1

    if-eqz p5, :cond_22

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_22

    move v3, v1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    move v15, v3

    .line 2617
    .local v15, "isSecure":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getValidSyntheticPasswordHandleLocked userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  isSecure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SyntheticPasswordManager"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v3

    .line 2619
    .local v7, "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v4, "pwd"

    invoke-virtual {v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 2620
    .local v5, "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "passwordFileList ="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "  size="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v11, -0x1

    if-le v3, v1, :cond_c6

    .line 2622
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 2623
    .local v12, "pwdHandle":Ljava/lang/Long;
    move-object/from16 v17, v3

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v4, v2, v3, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v2

    .line 2624
    .local v2, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    if-nez v2, :cond_9d

    .line 2625
    move-object/from16 v3, v17

    goto :goto_7e

    .line 2627
    :cond_9d
    if-eqz v15, :cond_b6

    .line 2628
    iget v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-eq v3, v11, :cond_b3

    .line 2629
    move-object/from16 v18, v2

    .end local v2    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .local v18, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsBlobKey(IJ)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 2630
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    .line 2628
    .end local v18    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .restart local v2    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    :cond_b3
    move-object/from16 v18, v2

    .end local v2    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .restart local v18    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    goto :goto_c1

    .line 2634
    .end local v18    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .restart local v2    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    :cond_b6
    move-object/from16 v18, v2

    .end local v2    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .restart local v18    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    move-object/from16 v1, v18

    .end local v18    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .local v1, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-ne v2, v11, :cond_c1

    .line 2635
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2638
    .end local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v12    # "pwdHandle":Ljava/lang/Long;
    :cond_c1
    :goto_c1
    move-object/from16 v3, v17

    const/4 v1, 0x1

    goto :goto_7e

    :cond_c5
    goto :goto_10d

    .line 2639
    :cond_c6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1fe

    .line 2640
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v4, v1, v2, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    .line 2641
    .restart local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    if-nez v1, :cond_eb

    .line 2642
    const-string/jumbo v2, "getValidSyntheticPasswordHandleLocked pwd data is null"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    const-wide/16 v2, 0x0

    return-wide v2

    .line 2645
    :cond_eb
    if-eqz v15, :cond_fe

    .line 2646
    iget v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-eq v2, v11, :cond_fc

    .line 2647
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10c

    .line 2646
    :cond_fc
    const/4 v2, 0x0

    goto :goto_10c

    .line 2650
    :cond_fe
    const/4 v2, 0x0

    iget v4, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-ne v4, v11, :cond_10c

    .line 2651
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2654
    .end local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    :cond_10c
    :goto_10c
    nop

    .line 2658
    :goto_10d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getValidSyntheticPasswordHandleLocked validPwdHandleList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_148

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 2661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getValidSyntheticPasswordHandleLocked init validPwdHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    return-wide v9

    .line 2665
    :cond_148
    const-wide/16 v11, 0x0

    .line 2666
    .local v11, "validPwdHandle":J
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_191

    .line 2667
    if-eqz v15, :cond_189

    .line 2668
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-wide/16 v16, 0x0

    const-string/jumbo v3, "pwd"

    move/from16 v2, p1

    move-object v4, v13

    move-object/from16 v18, v5

    .end local v5    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v18, "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v5, p4

    move-object v9, v6

    move-object/from16 v19, v7

    .end local v7    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v19, "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-wide/from16 v6, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsStorage;->getValidSyntheticPasswordHandleLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v10

    .line 2669
    .end local v11    # "validPwdHandle":J
    .local v10, "validPwdHandle":J
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-nez v1, :cond_182

    .line 2670
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-wide/16 v6, 0x0

    const-string/jumbo v3, "pwd"

    const-string v5, ""

    move/from16 v2, p1

    move-object v4, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsStorage;->getValidSyntheticPasswordHandleLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide v11, v1

    .end local v10    # "validPwdHandle":J
    .local v1, "validPwdHandle":J
    goto :goto_183

    .line 2669
    .end local v1    # "validPwdHandle":J
    .restart local v10    # "validPwdHandle":J
    :cond_182
    move-wide v11, v10

    .line 2672
    .end local v10    # "validPwdHandle":J
    .restart local v11    # "validPwdHandle":J
    :goto_183
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    move-object/from16 v1, v19

    goto :goto_1ad

    .line 2667
    .end local v18    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v19    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v7    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_189
    move-object/from16 v18, v5

    move-object v9, v6

    move-object/from16 v19, v7

    .end local v5    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v18    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v19    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v1, v19

    goto :goto_1ad

    .line 2674
    .end local v18    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v19    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v7    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_191
    move-object/from16 v18, v5

    move-object v9, v6

    move-object/from16 v19, v7

    .end local v5    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v18    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v19    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1ab

    .line 2675
    move-object/from16 v1, v19

    const/4 v2, 0x0

    .end local v19    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v1, "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_1ad

    .line 2674
    .end local v1    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v19    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1ab
    move-object/from16 v1, v19

    .line 2678
    .end local v19    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v1    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1ad
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getValidSyntheticPasswordHandleLocked validPwdHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, v18

    .end local v18    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v3, "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2680
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1cf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2681
    .local v4, "pwdHandle":Ljava/lang/Long;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getValidSyntheticPasswordHandleLocked delete="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 2683
    .end local v4    # "pwdHandle":Ljava/lang/Long;
    goto :goto_1cf

    .line 2684
    :cond_1f8
    if-nez v15, :cond_1fd

    .line 2685
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 2687
    :cond_1fd
    return-wide v11

    .line 2655
    .end local v1    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v11    # "validPwdHandle":J
    .restart local v5    # "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v7    # "validPwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1fe
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method protected getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    const-string v0, "SyntheticPasswordManager"

    const/4 v1, 0x0

    .line 754
    .local v1, "isNotSupported":Z
    :try_start_3
    invoke-static {}, Landroid/hardware/weaver/V1_0/IWeaver;->getService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v2
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_7} :catch_1f
    .catchall {:try_start_3 .. :try_end_7} :catchall_1d

    .line 755
    .local v2, "weaver":Landroid/hardware/weaver/V1_0/IWeaver;
    if-eqz v2, :cond_17

    .line 757
    :try_start_9
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverDeathRecipient:Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/weaver/V1_0/IWeaver;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_10} :catch_1f
    .catchall {:try_start_9 .. :try_end_10} :catchall_1d

    .line 760
    goto :goto_17

    .line 758
    :catch_11
    move-exception v3

    .line 759
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_12
    const-string v4, "Cannot register a death recipient"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/util/NoSuchElementException; {:try_start_12 .. :try_end_17} :catch_1f
    .catchall {:try_start_12 .. :try_end_17} :catchall_1d

    .line 762
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    nop

    .line 770
    xor-int/lit8 v0, v1, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    .line 762
    return-object v2

    .line 770
    .end local v2    # "weaver":Landroid/hardware/weaver/V1_0/IWeaver;
    :catchall_1d
    move-exception v0

    goto :goto_2c

    .line 763
    :catch_1f
    move-exception v2

    .line 764
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_20
    const-string v3, "Device does not support weaver"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 765
    const/4 v0, 0x1

    .line 766
    .end local v1    # "isNotSupported":Z
    .local v0, "isNotSupported":Z
    const/4 v1, 0x0

    .line 770
    xor-int/lit8 v3, v0, 0x1

    iput-boolean v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    .line 766
    return-object v1

    .line 770
    .end local v0    # "isNotSupported":Z
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    .restart local v1    # "isNotSupported":Z
    :goto_2c
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    .line 771
    throw v0
.end method

.method public hasEscrowData(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1081
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1082
    return v1

    .line 1086
    :cond_8
    const-string v0, "e0"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1087
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 1086
    :goto_1d
    return v1
.end method

.method public hasSidForUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1043
    const-string/jumbo v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized initWeaverService()V
    .registers 4

    monitor-enter p0

    .line 776
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-eqz v0, :cond_7

    .line 777
    monitor-exit p0

    return-void

    .line 780
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 781
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 782
    if-eqz v0, :cond_23

    .line 783
    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    invoke-interface {v0, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V

    .line 792
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_23} :catch_24
    .catchall {:try_start_8 .. :try_end_23} :catchall_2e

    .line 796
    .end local p0    # "this":Lcom/android/server/locksettings/SyntheticPasswordManager;
    :cond_23
    goto :goto_2c

    .line 794
    :catch_24
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Failed to get weaver service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2e

    .line 797
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    monitor-exit p0

    return-void

    .line 775
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isDeviceSupportKnoxSDP()Z
    .registers 2

    .line 718
    const/4 v0, 0x1

    return v0
.end method

.method public isLockPasswordValid(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 2704
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "pwd"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2705
    .local v0, "pwdHandleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_12

    .line 2706
    const/4 v1, 0x0

    return v1

    .line 2708
    :cond_12
    return v2
.end method

.method public isWeaverSupported()Z
    .registers 2

    .line 930
    iget-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    return v0
.end method

.method public synthetic lambda$initWeaverService$0$SyntheticPasswordManager(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "config"    # Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 784
    if-nez p1, :cond_9

    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lez v0, :cond_9

    .line 785
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    goto :goto_2c

    .line 787
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get weaver config, status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slots: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 791
    :goto_2c
    return-void
.end method

.method public migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .registers 8
    .param p1, "handle"    # J
    .param p3, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p4, "requestedQuality"    # I

    .line 1424
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 1425
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1426
    iget v0, p3, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v1, "pwd"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 1428
    .local v0, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 1429
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v1

    .line 1430
    .local v1, "weaverSlot":I
    if-eq v1, v2, :cond_30

    .line 1431
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    goto :goto_35

    .line 1433
    :cond_30
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 1437
    .end local v0    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v1    # "weaverSlot":I
    :cond_35
    :goto_35
    return-void
.end method

.method native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 8
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "userId"    # I

    .line 1026
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p3, v1, v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_3b

    .line 1029
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1030
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_18

    .line 1034
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 1035
    return-void

    .line 1031
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to create new SID for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1027
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_3b
    move-exception v0

    .line 1028
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create new SID for user"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 10
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "hash"    # [B
    .param p3, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p4, "userId"    # I

    .line 994
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v0

    .line 995
    .local v0, "secureMode":I
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v1

    .line 998
    .local v1, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-eqz p2, :cond_48

    .line 1000
    :try_start_a
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    .line 1001
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v3

    .line 1000
    invoke-interface {p1, p4, p2, v2, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_3f

    .line 1004
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1005
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_37

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SyntheticPasswordManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_4b

    .line 1009
    :cond_37
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v3

    invoke-direct {p0, v3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_4b

    .line 1002
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_3f
    move-exception v2

    .line 1003
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to enroll credential duing SP init"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1012
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_48
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 1014
    :goto_4b
    invoke-direct {p0, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 1015
    return-object v1
.end method

.method protected pbkdf2([B[BII)[B
    .registers 6
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "iteration"    # I
    .param p4, "outLen"    # I

    .line 2462
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PBKDF2([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected refreshActiveSlots()V
    .registers 3

    .line 1210
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V

    .line 1211
    return-void
.end method

.method public removePendingToken(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1568
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 1569
    return v1

    .line 1571
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public removeUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 904
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "spblob"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 905
    .local v1, "handle":J
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 906
    invoke-direct {p0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 907
    .end local v1    # "handle":J
    goto :goto_d

    .line 908
    :cond_28
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->removeUser(I)V

    .line 909
    return-void
.end method

.method public saveEscrowData([B[BI)V
    .registers 15
    .param p1, "e0"    # [B
    .param p2, "p1"    # [B
    .param p3, "userId"    # I

    .line 1074
    const-string v1, "e0"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1075
    const-string/jumbo v6, "p1"

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v7, p2

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1076
    return-void
.end method

.method protected scrypt([B[BIIII)[B
    .registers 14
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "n"    # I
    .param p4, "r"    # I
    .param p5, "p"    # I
    .param p6, "outLen"    # I

    .line 2425
    new-instance v0, Landroid/security/Scrypt;

    invoke-direct {v0}, Landroid/security/Scrypt;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method protected sidFromPasswordHandle([B)J
    .registers 4
    .param p1, "handle"    # [B

    .line 2421
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 35
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 1688
    move-object/from16 v10, p0

    move-wide/from16 v11, p2

    move-object/from16 v13, p4

    move/from16 v14, p5

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v15, v0

    .line 1689
    .local v15, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    const-string/jumbo v0, "pwd"

    invoke-direct {v10, v0, v11, v12, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v9

    .line 1692
    .local v9, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    const/4 v8, 0x1

    if-nez v9, :cond_40

    .line 1693
    iget-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pwd data reading failed!!  userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1695
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1696
    return-object v15

    .line 1700
    :cond_40
    iget v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v0

    const/4 v7, 0x0

    const-string v6, "SyntheticPasswordManager"

    if-nez v0, :cond_6e

    .line 1701
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1702
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    .line 1701
    const-string v1, "Credential type mismatch: expected %d actual %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1704
    return-object v15

    .line 1707
    :cond_6e
    invoke-direct {v10, v13, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v4

    .line 1709
    .local v4, "pwdToken":[B
    invoke-virtual {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->getSecureMode()I

    move-result v5

    .line 1710
    .local v5, "secureMode":I
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    move-result-object v0

    .line 1714
    .local v0, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    invoke-direct {v10, v4, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isTokenMatch([BI)I

    move-result v3

    .line 1718
    .local v3, "isMatch":I
    invoke-direct {v10, v11, v12, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v2

    .line 1719
    .local v2, "weaverSlot":I
    const/4 v1, -0x1

    const-string v7, ", match = "

    if-eq v2, v1, :cond_109

    .line 1721
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 1722
    const-string v1, "No weaver service to unwrap password based SP"

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1725
    iget-object v1, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No weaver service to unwrap password based SP!  userid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1728
    return-object v15

    .line 1730
    :cond_b4
    invoke-static {v8, v2, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 1731
    invoke-direct {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v1

    invoke-direct {v10, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1732
    invoke-static/range {p5 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1733
    iget-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_ea

    .line 1735
    iget-object v1, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Weaver failed!!  userid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1738
    return-object v15

    .line 1740
    :cond_ea
    const-wide/16 v18, 0x0

    .line 1741
    .local v18, "sid":J
    iget-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v1

    invoke-direct {v10, v4, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v1

    move-object/from16 v16, v0

    move v13, v3

    move/from16 v23, v5

    move-object/from16 v22, v7

    move-object/from16 v20, v15

    move-wide/from16 v24, v18

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-object v15, v4

    move-object v7, v6

    .local v1, "applicationId":[B
    goto/16 :goto_22e

    .line 1747
    .end local v1    # "applicationId":[B
    .end local v18    # "sid":J
    :cond_109
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    invoke-direct {v1, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([BI)V

    move-object v8, v1

    .line 1748
    .end local v0    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .local v8, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    invoke-virtual {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getGkInput()[B

    move-result-object v0

    goto :goto_11e

    :cond_11a
    invoke-direct {v10, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v0

    :goto_11e
    move-object v1, v0

    .line 1749
    .local v1, "gkPwdToken":[B
    invoke-static/range {p5 .. p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_150

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    if-eqz v0, :cond_150

    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    if-nez v0, :cond_150

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v2

    .end local v2    # "weaverSlot":I
    .local v24, "weaverSlot":I
    const-string v2, "Virtual User "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " may lost weaver slot."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1751
    const/4 v2, 0x0

    new-array v0, v2, [B

    iput-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    goto :goto_152

    .line 1749
    .end local v24    # "weaverSlot":I
    .restart local v2    # "weaverSlot":I
    :cond_150
    move/from16 v24, v2

    .line 1757
    .end local v2    # "weaverSlot":I
    .restart local v24    # "weaverSlot":I
    :goto_152
    :try_start_152
    invoke-direct {v10, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v19

    const-wide/16 v20, 0x0

    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v18, p1

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    invoke-interface/range {v18 .. v23}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_164
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_164} :catch_34a

    move-object/from16 v18, v0

    .line 1763
    .local v18, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1764
    invoke-virtual/range {v18 .. v18}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    .line 1765
    .local v2, "responseCode":I
    if-nez v2, :cond_2dc

    .line 1766
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1767
    invoke-virtual/range {v18 .. v18}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 1770
    :try_start_177
    invoke-direct {v10, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0
    :try_end_17b
    .catch Landroid/os/RemoteException; {:try_start_177 .. :try_end_17b} :catch_18c

    move/from16 v19, v2

    .end local v2    # "responseCode":I
    .local v19, "responseCode":I
    :try_start_17d
    iget-object v2, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B
    :try_end_17f
    .catch Landroid/os/RemoteException; {:try_start_17d .. :try_end_17f} :catch_188

    move-object/from16 v13, p1

    :try_start_181
    invoke-interface {v13, v0, v2, v1, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_185
    .catch Landroid/os/RemoteException; {:try_start_181 .. :try_end_185} :catch_186

    .line 1776
    .local v0, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_199

    .line 1772
    .end local v0    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_186
    move-exception v0

    goto :goto_191

    :catch_188
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_191

    .end local v19    # "responseCode":I
    .restart local v2    # "responseCode":I
    :catch_18c
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v19, v2

    .line 1773
    .end local v2    # "responseCode":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v19    # "responseCode":I
    :goto_191
    const-string v2, "Fail to invoke gatekeeper.enroll"

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1774
    sget-object v2, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    move-object v0, v2

    .line 1777
    .local v0, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_199
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_1d3

    .line 1778
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1781
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    iput v2, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1782
    invoke-virtual {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v20

    const-string/jumbo v2, "pwd"

    move-object/from16 v21, v1

    .end local v1    # "gkPwdToken":[B
    .local v21, "gkPwdToken":[B
    move-object/from16 v1, p0

    move-object/from16 v22, v7

    move/from16 v7, v19

    move/from16 v19, v24

    .end local v24    # "weaverSlot":I
    .local v7, "responseCode":I
    .local v19, "weaverSlot":I
    move v13, v3

    .end local v3    # "isMatch":I
    .local v13, "isMatch":I
    move-object/from16 v3, v20

    move/from16 v23, v5

    move-object/from16 v20, v15

    move-object v15, v4

    .end local v4    # "pwdToken":[B
    .end local v5    # "secureMode":I
    .local v15, "pwdToken":[B
    .local v20, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .local v23, "secureMode":I
    move-wide/from16 v4, p2

    move/from16 v24, v7

    move-object v7, v6

    .end local v7    # "responseCode":I
    .local v24, "responseCode":I
    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1783
    const/4 v1, 0x0

    invoke-direct {v10, v9, v1, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto :goto_1f8

    .line 1785
    .end local v13    # "isMatch":I
    .end local v20    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v21    # "gkPwdToken":[B
    .end local v23    # "secureMode":I
    .restart local v1    # "gkPwdToken":[B
    .restart local v3    # "isMatch":I
    .restart local v4    # "pwdToken":[B
    .restart local v5    # "secureMode":I
    .local v15, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .local v19, "responseCode":I
    .local v24, "weaverSlot":I
    :cond_1d3
    move-object/from16 v21, v1

    move v13, v3

    move/from16 v23, v5

    move-object/from16 v22, v7

    move-object/from16 v20, v15

    move-object v15, v4

    move-object v7, v6

    move/from16 v27, v24

    move/from16 v24, v19

    move/from16 v19, v27

    .end local v1    # "gkPwdToken":[B
    .end local v3    # "isMatch":I
    .end local v4    # "pwdToken":[B
    .end local v5    # "secureMode":I
    .restart local v13    # "isMatch":I
    .local v15, "pwdToken":[B
    .local v19, "weaverSlot":I
    .restart local v20    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v21    # "gkPwdToken":[B
    .restart local v23    # "secureMode":I
    .local v24, "responseCode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to re-enroll user password for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    .end local v0    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_1f8
    goto :goto_208

    .line 1767
    .end local v13    # "isMatch":I
    .end local v19    # "weaverSlot":I
    .end local v20    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v21    # "gkPwdToken":[B
    .end local v23    # "secureMode":I
    .restart local v1    # "gkPwdToken":[B
    .restart local v2    # "responseCode":I
    .restart local v3    # "isMatch":I
    .restart local v4    # "pwdToken":[B
    .restart local v5    # "secureMode":I
    .local v15, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .local v24, "weaverSlot":I
    :cond_1f9
    move-object/from16 v21, v1

    move v13, v3

    move/from16 v23, v5

    move-object/from16 v22, v7

    move-object/from16 v20, v15

    move/from16 v19, v24

    move/from16 v24, v2

    move-object v15, v4

    move-object v7, v6

    .line 1806
    .end local v1    # "gkPwdToken":[B
    .end local v2    # "responseCode":I
    .end local v3    # "isMatch":I
    .end local v4    # "pwdToken":[B
    .end local v5    # "secureMode":I
    .restart local v13    # "isMatch":I
    .local v15, "pwdToken":[B
    .restart local v19    # "weaverSlot":I
    .restart local v20    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v21    # "gkPwdToken":[B
    .restart local v23    # "secureMode":I
    .local v24, "responseCode":I
    :goto_208
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v10, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v0

    .line 1808
    .local v0, "sid":J
    invoke-virtual {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v2

    if-eqz v2, :cond_21f

    .line 1809
    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getAppId()[B

    move-result-object v2

    move-wide/from16 v24, v0

    move-object/from16 v18, v2

    move-object/from16 v16, v8

    .local v2, "applicationId":[B
    goto :goto_22e

    .line 1813
    .end local v2    # "applicationId":[B
    :cond_21f
    nop

    .line 1814
    invoke-direct {v10, v11, v12, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v2

    .line 1813
    invoke-direct {v10, v15, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v2

    move-wide/from16 v24, v0

    move-object/from16 v18, v2

    move-object/from16 v16, v8

    .line 1817
    .end local v0    # "sid":J
    .end local v8    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .end local v21    # "gkPwdToken":[B
    .local v16, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .local v18, "applicationId":[B
    .local v24, "sid":J
    :goto_22e
    const/4 v1, 0x1

    if-eq v13, v1, :cond_254

    .line 1818
    invoke-direct {v10, v15, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setToken([BI)V

    .line 1819
    iget-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success!!  userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but match is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    goto :goto_255

    .line 1817
    :cond_254
    move v8, v1

    .line 1824
    :goto_255
    if-eqz p6, :cond_264

    .line 1826
    :try_start_257
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_25a
    .catch Landroid/os/RemoteException; {:try_start_257 .. :try_end_25a} :catch_25b

    .line 1829
    goto :goto_264

    .line 1827
    :catch_25b
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1828
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "progressCallback throws exception"

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1836
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_264
    :goto_264
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v5, v18

    move-object/from16 v26, v22

    move-wide/from16 v6, v24

    move/from16 v8, p5

    move-object/from16 v17, v9

    .end local v9    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .local v17, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlobForked(JB[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    move-object/from16 v9, v20

    .end local v20    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .local v9, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iput-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 1838
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->destroy()V

    .line 1842
    iget-object v3, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1846
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_2a5

    invoke-direct {v10, v11, v12, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasPasswordMetrics(JI)Z

    move-result v0

    if-nez v0, :cond_2a5

    .line 1847
    iget-object v3, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-wide/from16 v4, p2

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V

    .line 1850
    :cond_2a5
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-eqz v0, :cond_2b1

    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v0

    if-nez v0, :cond_2db

    .line 1851
    :cond_2b1
    iget-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyChallenge is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1854
    :cond_2db
    return-object v9

    .line 1789
    .end local v13    # "isMatch":I
    .end local v16    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .end local v17    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v19    # "weaverSlot":I
    .end local v23    # "secureMode":I
    .restart local v1    # "gkPwdToken":[B
    .local v2, "responseCode":I
    .restart local v3    # "isMatch":I
    .restart local v4    # "pwdToken":[B
    .restart local v5    # "secureMode":I
    .restart local v8    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .local v9, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .local v15, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .local v18, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v24, "weaverSlot":I
    :cond_2dc
    move-object/from16 v21, v1

    move v13, v3

    move/from16 v23, v5

    move-object/from16 v17, v9

    move-object v9, v15

    move/from16 v19, v24

    const/4 v3, 0x1

    move/from16 v24, v2

    move-object v15, v4

    move-object v2, v7

    .end local v1    # "gkPwdToken":[B
    .end local v2    # "responseCode":I
    .end local v3    # "isMatch":I
    .end local v4    # "pwdToken":[B
    .end local v5    # "secureMode":I
    .local v9, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v13    # "isMatch":I
    .local v15, "pwdToken":[B
    .restart local v17    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .restart local v19    # "weaverSlot":I
    .restart local v21    # "gkPwdToken":[B
    .restart local v23    # "secureMode":I
    .local v24, "responseCode":I
    const-string v0, "Failed!!  userid = "

    move/from16 v1, v24

    .end local v24    # "responseCode":I
    .local v1, "responseCode":I
    if-ne v1, v3, :cond_326

    .line 1790
    new-instance v4, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual/range {v18 .. v18}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    iput-object v4, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1791
    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->destroy()V

    .line 1793
    iget-object v4, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeout = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-virtual/range {v18 .. v18}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1793
    invoke-virtual {v4, v3, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1796
    return-object v9

    .line 1798
    :cond_326
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v2, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1799
    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->destroy()V

    .line 1801
    iget-object v2, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeout = -1, match = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1804
    return-object v9

    .line 1759
    .end local v13    # "isMatch":I
    .end local v17    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v18    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v19    # "weaverSlot":I
    .end local v21    # "gkPwdToken":[B
    .end local v23    # "secureMode":I
    .local v1, "gkPwdToken":[B
    .restart local v3    # "isMatch":I
    .restart local v4    # "pwdToken":[B
    .restart local v5    # "secureMode":I
    .local v9, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .local v15, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .local v24, "weaverSlot":I
    :catch_34a
    move-exception v0

    move-object/from16 v21, v1

    move v13, v3

    move/from16 v23, v5

    move-object v7, v6

    move-object/from16 v17, v9

    move-object v9, v15

    move/from16 v19, v24

    move-object v15, v4

    .line 1760
    .end local v1    # "gkPwdToken":[B
    .end local v3    # "isMatch":I
    .end local v4    # "pwdToken":[B
    .end local v5    # "secureMode":I
    .end local v24    # "weaverSlot":I
    .restart local v0    # "e":Landroid/os/RemoteException;
    .local v9, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v13    # "isMatch":I
    .local v15, "pwdToken":[B
    .restart local v17    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .restart local v19    # "weaverSlot":I
    .restart local v21    # "gkPwdToken":[B
    .restart local v23    # "secureMode":I
    const-string v1, "gatekeeper verify failed"

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1761
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1762
    return-object v9
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 25
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 1864
    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move/from16 v13, p5

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v14, v0

    .line 1865
    .local v14, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    invoke-direct {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v0

    .line 1866
    .local v0, "secdiscardable":[B
    invoke-direct {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v15

    .line 1867
    .local v15, "slotId":I
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v15, v2, :cond_5a

    .line 1868
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v2

    const-string v3, "SyntheticPasswordManager"

    if-nez v2, :cond_2c

    .line 1869
    const-string v1, "No weaver service to unwrap token based SP"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1871
    return-object v14

    .line 1873
    :cond_2c
    invoke-static {v1, v15, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 1874
    const/4 v2, 0x0

    invoke-direct {v9, v15, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 1875
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static/range {p5 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1876
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_50

    .line 1877
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    if-nez v4, :cond_44

    goto :goto_50

    .line 1882
    :cond_44
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v3, v4, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    move-object v8, v0

    goto :goto_5b

    .line 1878
    :cond_50
    :goto_50
    const-string v1, "Failed to retrieve weaver secret when unwrapping token"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1880
    return-object v14

    .line 1867
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_5a
    move-object v8, v0

    .line 1891
    .end local v0    # "secdiscardable":[B
    .local v8, "secdiscardable":[B
    :goto_5b
    invoke-direct {v9, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-direct {v9, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1892
    invoke-direct {v9, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v0

    .line 1893
    .local v0, "secureMode":I
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    invoke-direct {v2, v12, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([BIZ)V

    move-object v1, v2

    .line 1894
    .local v1, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getAppId()[B

    move-result-object v0

    .line 1895
    .local v0, "applicationId":[B
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_86

    .line 1896
    .end local v0    # "applicationId":[B
    .end local v1    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    :cond_7a
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    move-result-object v1

    .line 1898
    .restart local v1    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    invoke-direct {v9, v12, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 1906
    .end local v1    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .local v16, "applicationId":[B
    .local v17, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    :goto_86
    const/4 v3, 0x1

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v4, v16

    move/from16 v7, p5

    move-object/from16 v18, v8

    .end local v8    # "secdiscardable":[B
    .local v18, "secdiscardable":[B
    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlobForked(JB[BJILcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 1908
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->destroy()V

    .line 1911
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_bb

    .line 1912
    iget-object v2, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1913
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez v0, :cond_bf

    .line 1916
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_bf

    .line 1919
    :cond_bb
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1921
    :cond_bf
    :goto_bf
    return-object v14
.end method

.method public updateHandleFile(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 2570
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-wide/16 v1, 0x0

    const-string/jumbo v3, "handle"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2571
    .local v0, "handleFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2572
    .local v1, "handleFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_17

    .line 2573
    return-void

    .line 2575
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 2576
    return-void
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .line 2097
    const-string v0, "SyntheticPasswordManager"

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v7

    .line 2098
    .local v7, "spHandle":[B
    if-nez v7, :cond_a

    .line 2101
    const/4 v0, 0x0

    return-object v0

    .line 2105
    :cond_a
    nop

    .line 2106
    :try_start_b
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v6

    .line 2105
    move-object v1, p1

    move v2, p5

    move-wide v3, p3

    move-object v5, v7

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_77

    .line 2110
    .local v1, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 2111
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    .line 2112
    .local v2, "responseCode":I
    if-nez v2, :cond_67

    .line 2113
    new-instance v3, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .line 2114
    .local v3, "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 2116
    nop

    .line 2117
    :try_start_2e
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v4

    .line 2116
    invoke-interface {p1, p5, v7, v7, v4}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v4
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_36} :catch_38

    move-object v1, v4

    .line 2121
    goto :goto_40

    .line 2118
    :catch_38
    move-exception v4

    .line 2119
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Failed to invoke gatekeeper.enroll"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2120
    sget-object v1, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 2122
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_40
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_52

    .line 2123
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    .line 2124
    .end local v7    # "spHandle":[B
    .local v0, "spHandle":[B
    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 2126
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 2129
    .end local v0    # "spHandle":[B
    .restart local v7    # "spHandle":[B
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to re-enroll SP handle for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :cond_66
    return-object v3

    .line 2133
    .end local v3    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_67
    const/4 v0, 0x1

    if-ne v2, v0, :cond_74

    .line 2134
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    return-object v0

    .line 2136
    :cond_74
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2107
    .end local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v2    # "responseCode":I
    :catch_77
    move-exception v1

    .line 2108
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to verify with gatekeeper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2109
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method public verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 20
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "userCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 1364
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v3

    .line 1365
    .local v3, "persistentData":Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    iget v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v4, 0x1

    const-string v5, "SyntheticPasswordManager"

    if-ne v0, v4, :cond_7c

    .line 1366
    iget-object v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v4

    .line 1367
    .local v4, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {v1, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v6

    .line 1370
    .local v6, "pwdToken":[B
    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v0

    const-string v7, "FRP verifyChallenge failed"

    if-eqz v0, :cond_5b

    .line 1371
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->getSecureMode()I

    move-result v8

    invoke-direct {v0, v6, v8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([BI)V

    move-object v8, v0

    .line 1372
    .local v8, "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getGkInput()[B

    move-result-object v15

    .line 1375
    .local v15, "gkInput":[B
    :try_start_31
    iget v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v10

    const-wide/16 v11, 0x0

    iget-object v13, v4, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v9, p1

    move-object v14, v15

    invoke-interface/range {v9 .. v14}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 1377
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_46} :catch_4c
    .catchall {:try_start_31 .. :try_end_46} :catchall_4a

    .line 1381
    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->destroy()V

    .line 1377
    return-object v5

    .line 1381
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catchall_4a
    move-exception v0

    goto :goto_57

    .line 1378
    :catch_4c
    move-exception v0

    .line 1379
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4d
    const-string v9, "SyntheticPasswordManager.SDP"

    invoke-static {v9, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_4a

    .line 1381
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->destroy()V

    .line 1382
    goto :goto_5b

    .line 1381
    :goto_57
    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->destroy()V

    .line 1382
    throw v0

    .line 1388
    .end local v8    # "km":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .end local v15    # "gkInput":[B
    :cond_5b
    :goto_5b
    :try_start_5b
    iget v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v9

    const-wide/16 v10, 0x0

    iget-object v12, v4, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1389
    invoke-direct {v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v13

    .line 1388
    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v13}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_6f} :catch_75

    .line 1393
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1394
    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    return-object v5

    .line 1390
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_75
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1392
    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v5

    .line 1395
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v6    # "pwdToken":[B
    :cond_7c
    iget v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_b5

    .line 1396
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 1397
    const-string v0, "No weaver service to verify SP-based FRP credential"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1400
    :cond_8f
    iget-object v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v5

    .line 1401
    .local v5, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {v1, v2, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v6

    .line 1402
    .restart local v6    # "pwdToken":[B
    iget v7, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 1409
    .local v7, "weaverSlot":I
    const/16 v8, -0x270f

    :try_start_9d
    invoke-static {v4, v7, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 1410
    invoke-direct {v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_ac
    .catchall {:try_start_9d .. :try_end_ac} :catchall_b0

    .line 1412
    invoke-static {v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1410
    return-object v0

    .line 1412
    :catchall_b0
    move-exception v0

    invoke-static {v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1413
    throw v0

    .line 1416
    .end local v5    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v6    # "pwdToken":[B
    .end local v7    # "weaverSlot":I
    :cond_b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persistentData.type must be TYPE_SP or TYPE_SP_WEAVER, but is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method
