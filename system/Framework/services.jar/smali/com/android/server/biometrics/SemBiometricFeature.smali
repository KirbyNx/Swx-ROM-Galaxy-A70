.class public Lcom/android/server/biometrics/SemBiometricFeature;
.super Ljava/lang/Object;
.source "SemBiometricFeature.java"


# static fields
.field public static final FACE_FEATURE_AOSP_CONCEPT:Z

.field public static final FACE_FEATURE_CONFIG:Ljava/lang/String; = ""

.field public static final FACE_FEATURE_LANDSCAPE_MODE:Z

.field public static final FACE_FEATURE_SUPPORT_FACE:Z = true

.field public static final FEATURE_AOSP_CODE:Z = false

.field public static final FEATURE_BP_AOSP_SYS_UI:Z = false

.field public static final FEATURE_DESKTOP_MODE:Z = false

.field public static final FEATURE_FACE_JDM_HAL:Z

.field public static final FEATURE_FAKE_AOD:Z

.field public static final FEATURE_FINGERPRINT_JDM_HAL:Z

.field public static final FEATURE_LOGGING_MODE:Z

.field public static final FEATURE_MDNIE_MODE:I

.field public static final FEATURE_SUPPORT_ADAPTIVE_BLF:Z

.field public static final FEATURE_SUPPORT_AOD:Z

.field public static final FEATURE_SUPPORT_COLOR_ADJUSTMENT:Z

.field public static final FEATURE_SUPPORT_COLOR_LENS:Z

.field public static final FEATURE_SUPPORT_COLOR_NEGATIVE:Z

.field public static final FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

.field public static final FEATURE_SUPPORT_SPEN:Z

.field public static final FEATURE_USE_SENSOR_CONFIG:Z = false

.field public static final FP_FEATURE_AOSP_CONCEPT:Z

.field public static final FP_FEATURE_EARLY_WAKE_UP:Z = true

.field public static final FP_FEATURE_GESTURE_MODE:Z

.field public static final FP_FEATURE_HW_LIGHT_SOURCE:Z

.field public static final FP_FEATURE_PENDING_FINGER_LEAVE:Z

.field public static final FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

.field public static final FP_FEATURE_SENSOR_IS_OPTICAL:Z

.field public static final FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

.field public static final FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

.field public static final FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

.field public static final FP_FEATURE_SUPPORT_FAST_RECOGNITION:Z = false

.field public static final FP_FEATURE_SUPPORT_FINGERPRINT:Z = true

.field public static final FP_FEATURE_SWIPE_ENROLL:Z

.field public static final FP_FEATURE_TSP_BLOCK:Z

.field public static final FP_FEATURE_WOF_OPTION_DEFAULT_OFF:Z

.field public static final IR_FEATURE_SUPPORT_IRIS:Z = false

.field public static final IS_FEATURE_SUPPORT_INTELLIGENT_SCAN:Z = false

.field public static final PKG_NAME_DESKTOP_KEYGUARD:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field public static final PKG_NAME_KEYGUARD:Ljava/lang/String; = "com.android.systemui"

.field public static final PKG_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final SETTING_DB_STRONG_BIO_TIMESTAMP:Ljava/lang/String; = "biometrics_strong_enroll_timestamp"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 27
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 29
    nop

    .line 30
    const-string/jumbo v0, "in_house"

    const-string/jumbo v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_28

    .line 31
    const-string/jumbo v2, "qc_et7g2_egisg2opt_ros"

    const-string v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v3

    goto :goto_29

    :cond_28
    move v2, v4

    :goto_29
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    .line 33
    nop

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FACE_JDM_HAL:Z

    .line 40
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    .line 43
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aodversion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_AOD:Z

    .line 46
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const/4 v1, -0x1

    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_61

    move v0, v3

    goto :goto_62

    :cond_61
    move v0, v4

    :goto_62
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_SPEN:Z

    .line 49
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_MODE"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_MDNIE_MODE:I

    .line 52
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_COLOR_LENS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_COLOR_LENS:Z

    .line 54
    sget v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_MDNIE_MODE:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_84

    move v0, v3

    goto :goto_85

    :cond_84
    move v0, v4

    :goto_85
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_COLOR_NEGATIVE:Z

    .line 57
    sget v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_MDNIE_MODE:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8f

    move v0, v3

    goto :goto_90

    :cond_8f
    move v0, v4

    :goto_90
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_COLOR_ADJUSTMENT:Z

    .line 61
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_a0

    move v0, v3

    goto :goto_a1

    :cond_a0
    move v0, v4

    :goto_a1
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_ADAPTIVE_BLF:Z

    .line 66
    nop

    .line 67
    const-string/jumbo v0, "google_touch_display_optical,settings=3"

    const-string/jumbo v1, "touch_display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 69
    nop

    .line 70
    const-string/jumbo v1, "optical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 72
    nop

    .line 73
    const-string/jumbo v1, "ultrasonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 75
    nop

    .line 76
    const-string/jumbo v1, "navi=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    .line 78
    nop

    .line 79
    const-string/jumbo v1, "swipe_enroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SWIPE_ENROLL:Z

    .line 81
    nop

    .line 82
    const-string v1, "aosp_concept"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_AOSP_CONCEPT:Z

    .line 87
    nop

    .line 88
    const-string/jumbo v5, "hw_light_source"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fa

    .line 89
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_LCD_CONFIG_SELFMASK_VERSION"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lt v5, v3, :cond_f8

    goto :goto_fa

    :cond_f8
    move v5, v4

    goto :goto_fb

    :cond_fa
    :goto_fa
    move v5, v3

    :goto_fb
    sput-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 92
    sget-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v5, :cond_107

    sget-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-nez v5, :cond_107

    move v5, v3

    goto :goto_108

    :cond_107
    move v5, v4

    :goto_108
    sput-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_PENDING_FINGER_LEAVE:Z

    .line 94
    nop

    .line 95
    const-string/jumbo v5, "limit_wireless_charging"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    .line 97
    nop

    .line 98
    const-string/jumbo v5, "limit_spen_charging"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

    .line 100
    sget-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_AOD:Z

    if-nez v5, :cond_12c

    .line 101
    const-string/jumbo v5, "screen_off"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12c

    goto :goto_12d

    :cond_12c
    move v3, v4

    :goto_12d
    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FAKE_AOD:Z

    .line 103
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_SPEN:Z

    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    .line 107
    nop

    .line 108
    const-string/jumbo v3, "wof_off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_WOF_OPTION_DEFAULT_OFF:Z

    .line 116
    const-string/jumbo v0, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_LANDSCAPE_MODE:Z

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
