.class final Lcom/android/server/sepunion/cover/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final FEATURE_COVER_ACCESSARY_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.nfc_authentication_cover"

.field private static final FEATURE_COVER_CLEARCOVER:Ljava/lang/String; = "com.sec.feature.cover.clearcover"

.field private static final FEATURE_COVER_CLEAR_SIDE_VIEW_COVER:Ljava/lang/String; = "com.sec.feature.cover.clearsideviewcover"

.field private static final FEATURE_COVER_GAMEPACK_COVER:Ljava/lang/String; = "com.sec.feature.cover.gamepackcover"

.field private static final FEATURE_COVER_LED_BACK_COVER:Ljava/lang/String; = "com.sec.feature.cover.ledbackcover"

.field private static final FEATURE_COVER_MINI_SVIEW_WALLET_COVER:Ljava/lang/String; = "com.sec.feature.cover.minisviewwalletcover"

.field private static final FEATURE_COVER_NEONCOVER:Ljava/lang/String; = "com.sec.feature.cover.neoncover"

.field private static final FEATURE_COVER_NFC_LED_COVER:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field private static final FEATURE_COVER_SECURE_COVER:Ljava/lang/String; = "com.sec.feature.cover.securecover"

.field private static final NFC_LED_COVER_FEATURE_LEVEL:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

.field static final NFC_LED_COVER_LEVEL_BEYOND:I = 0x3c

.field static final NFC_LED_COVER_LEVEL_DAVINCI:I = 0x46

.field static final NFC_LED_COVER_LEVEL_DREAM:I = 0x1e

.field static final NFC_LED_COVER_LEVEL_GRACE:I = 0x14

.field static final NFC_LED_COVER_LEVEL_GREAT:I = 0x28

.field static final NFC_LED_COVER_LEVEL_HERO:I = 0xa

.field static final NFC_LED_COVER_LEVEL_HUBBLE:I = 0x50

.field static final NFC_LED_COVER_LEVEL_STAR:I = 0x32

.field static final NFC_LED_COVER_LEVEL_UNBOUND:I = 0x5a

.field private static sDeviceTypeProperty:Ljava/lang/String;

.field private static sHardwareProperty:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/sepunion/cover/Feature;

.field private static sIsDeviceSupportDetectCover:Z

.field private static sIsDeviceSupportQueried:Z

.field private static sIsDeviceSupportVerifyCover:Z

.field private static sIsNfcAuthSystemFeatureEnabled:Z

.field private static sIsSupportClearCover:Z

.field private static sIsSupportClearSideViewCover:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportGamePackCover:Z

.field private static sIsSupportLEDBackCover:Z

.field private static sIsSupportMiniSviewWalletCover:Z

.field private static sIsSupportNeonCover:Z

.field private static sIsSupportNfcLedCover:Z

.field private static sIsSupportSecureCover:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sSupportNfcLedCoverLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    .line 36
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 38
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 39
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 40
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 41
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    .line 42
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    .line 43
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    .line 44
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    .line 45
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    .line 47
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 48
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    .line 49
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 50
    sput v1, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    .line 77
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 78
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    .line 80
    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 81
    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/Feature;->getSystemProperties()V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/Feature;->updateSystemFeature(Landroid/content/Context;)V

    .line 93
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/Feature;->updateDeviceSupportFeature()V

    .line 94
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    if-nez v0, :cond_b

    .line 85
    new-instance v0, Lcom/android/server/sepunion/cover/Feature;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/Feature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    .line 87
    :cond_b
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    return-object v0
.end method

.method private getSystemProperties()V
    .registers 2

    .line 125
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 126
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 128
    :cond_d
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 129
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    .line 131
    :cond_1a
    return-void
.end method

.method private updateDeviceSupportFeature()V
    .registers 3

    .line 116
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    if-nez v0, :cond_24

    .line 117
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 118
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    sput-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    .line 119
    const-string v0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 120
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 122
    :cond_24
    return-void
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_67

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 99
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 100
    const-string v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    .line 101
    const-string v1, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 102
    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 103
    const-string v1, "com.sec.feature.cover.gamepackcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    .line 104
    const-string v1, "com.sec.feature.cover.ledbackcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    .line 105
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    .line 106
    const-string v1, "com.sec.feature.cover.neoncover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 107
    const-string v1, "com.sec.feature.cover.securecover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    .line 108
    const-string v1, "com.sec.feature.cover.clearsideviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    .line 109
    const-string v1, "com.sec.feature.cover.minisviewwalletcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    .line 111
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 113
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_67
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 202
    const-string v0, " Current Feature state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    const-string v0, "  sIsDeviceSupportVerifyCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 204
    const-string v0, "  sIsDeviceSupportDetectCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 205
    const-string v0, "  sIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 206
    const-string v0, "  sIsSupportNfcLedCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 207
    const-string v0, "  sIsSupportClearCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 208
    const-string v0, "  sIsNfcAuthSystemFeatureEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 209
    const-string v0, "  sIsSupportNeonCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 210
    const-string v0, "  sSupportNfcLedCoverLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 211
    const-string v0, "  sIsSupportGamePackCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 212
    const-string v0, "  sIsSupportLEDBackCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 213
    const-string v0, "  sIsSupportSecureCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 214
    const-string v0, "  sIsSupportClearSideViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 215
    const-string v0, "  sIsSupportMiniSviewWalletCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 216
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method getSupportNfcLedCoverLevel()I
    .registers 2

    .line 198
    sget v0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    return v0
.end method

.method isChinaModel()Z
    .registers 3

    .line 190
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isMobileKeyboardFeatureEnabled()Z
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method isNfcAuthEnabled()Z
    .registers 2

    .line 150
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    return v0
.end method

.method isRuggedizedFeatureEnabled()Z
    .registers 2

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method isSupportClearCover()Z
    .registers 2

    .line 146
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    return v0
.end method

.method isSupportClearSideViewCover()Z
    .registers 2

    .line 174
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    return v0
.end method

.method isSupportDetectCover()Z
    .registers 2

    .line 138
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    return v0
.end method

.method isSupportFlipCover()Z
    .registers 2

    .line 142
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    return v0
.end method

.method isSupportGamePackCover()Z
    .registers 2

    .line 162
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    return v0
.end method

.method isSupportLEDBackCover()Z
    .registers 2

    .line 166
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    return v0
.end method

.method isSupportMiniSviewWalletCover()Z
    .registers 2

    .line 178
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    return v0
.end method

.method isSupportNeonCover()Z
    .registers 2

    .line 158
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    return v0
.end method

.method isSupportNfcLedCover()Z
    .registers 2

    .line 154
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isSupportSecureCover()Z
    .registers 2

    .line 170
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    return v0
.end method

.method isSupportVerifyCover()Z
    .registers 2

    .line 134
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    return v0
.end method

.method isTablet()Z
    .registers 3

    .line 182
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method
