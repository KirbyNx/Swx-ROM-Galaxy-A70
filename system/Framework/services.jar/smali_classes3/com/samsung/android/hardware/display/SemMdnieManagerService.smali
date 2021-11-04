.class public Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.super Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;,
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final COUNTRYISO_CODE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SemMdnieManagerService"

.field private static final isBangladeshCountryCode:Z

.field private static final isIndiaCountryCode:Z

.field private static final isMaldivesCountryCode:Z

.field private static final isNepalCountryCode:Z

.field private static final isSrilankaCountryCode:Z


# instance fields
.field private final COLOR_LENS_MAX_COLOR:I

.field private final COLOR_LENS_MAX_LEVEL:I

.field private final DEBUG:Z

.field private final FACTORY_DEFAULT_INDEX_VALUE:I

.field private final FACTORY_WHITE_INDEX_SIZE:I

.field private final LCD_SRGB_MODE:I

.field private final MDNIE_SCREEN_ADJUSTMENT_MODE:Ljava/lang/String;

.field private final MDNIE_SUPPORT_FUNCTION:I

.field private NIGHT_MODE_MAX_INDEX:I

.field private final NIGHT_MODE_NEW_SYSFS_USE:Z

.field private final PRESET_WHITE_INDEX_SIZE:I

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

.field private final SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

.field private final SYSFS_MDNIE_COLOR_LENS_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

.field private final SYSFS_MDNIE_FACTORY_MDNIE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

.field private final SYSFS_MDNIE_LIGHT_NOTIFICATION_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NIGHT_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_NIGHT_READING_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

.field private final SYSFS_MDNIE_WHITE_RGB_SUB:Ljava/lang/String;

.field private final WEAKNESS_SOLUTION_FUNCTION:I

.field private adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

.field private afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

.field private mAutoModeEnabled:Z

.field private mBlueFilterIndex:I

.field private mBrowserScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private mColorVision:Z

.field private mColorVisionColor:I

.field private mColorVisionLevel:I

.field private mContentMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurtainModeIsRunning:Z

.field private mCustomScrBIndex:I

.field private mCustomScrGIndex:I

.field private mCustomScrRIndex:I

.field private mDisplayOn:Z

.field private mEbookScenarioEnabled:Z

.field private mFactoryScrBIndex:I

.field private mFactoryScrBIndexSub:I

.field private mFactoryScrGIndex:I

.field private mFactoryScrGIndexSub:I

.field private mFactoryScrIndex:I

.field private mFactoryScrIndexSub:I

.field private mFactoryScrRIndex:I

.field private mFactoryScrRIndexSub:I

.field private final mLock:Ljava/lang/Object;

.field private mMdnieCustomized:Z

.field private mMdnieFactorySupported:Z

.field private mMdnieWhiteRGBSupported:Z

.field private mMdnieWorkingCondition:Z

.field private mNegativeColorEnabled:Z

.field private mNightMode:Z

.field private mNightModeIndex:I

.field private mPresetAdjustWhiteRGB:[[[I

.field private mPresetScrIndex:I

.field private mPrevScreenModeForReadingMode:I

.field private mReadingModeEnabled:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenModeForReadingMode:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

.field private mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

.field private mSupportBlueFilter:Z

.field private mSupportColorAdjustment:Z

.field private mSupportContentMode:Z

.field private mSupportContentModeGame:Z

.field private mSupportContentModeSWA:Z

.field private mSupportContentModeVideoEnhance:Z

.field private mSupportGrayscale:Z

.field private mSupportHDR:Z

.field private mSupportHMT:Z

.field private mSupportLightNotificationMode:Z

.field private mSupportNegative:Z

.field private mSupportScreeenReadingMode:Z

.field private mSupportScreenCurtain:Z

.field private mSupportScreenMode:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseAfterimageCompensationServiceConfig:Z

.field private mWorkBlueFilter:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 213
    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    .line 214
    const-string v1, "IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isIndiaCountryCode:Z

    .line 215
    sget-object v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string v1, "BD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isBangladeshCountryCode:Z

    .line 216
    sget-object v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string v1, "NP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isNepalCountryCode:Z

    .line 217
    sget-object v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string v1, "LK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isSrilankaCountryCode:Z

    .line 218
    sget-object v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string v1, "MV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isMaldivesCountryCode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;-><init>()V

    .line 83
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->DEBUG:Z

    .line 88
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 89
    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 91
    const-string v3, "screen_mode_automatic_setting"

    iput-object v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 92
    const-string v4, "screen_mode_setting"

    iput-object v4, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 93
    const-string v5, "sec_display_temperature_red"

    iput-object v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

    .line 94
    const-string v6, "sec_display_temperature_green"

    iput-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

    .line 95
    const-string v7, "sec_display_temperature_blue"

    iput-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

    .line 96
    const-string v8, "sec_display_preset_index"

    iput-object v8, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

    .line 98
    const-string v9, "/sys/class/mdnie/mdnie/accessibility"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    .line 99
    const-string v9, "/sys/class/mdnie/mdnie/mode"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    .line 100
    const-string v9, "/sys/class/mdnie/mdnie/scenario"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    .line 102
    const-string v9, "/sys/class/mdnie/mdnie/negative"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    .line 103
    const-string v9, "/sys/class/mdnie/mdnie/outdoor"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    .line 104
    const-string v9, "/sys/class/mdnie/mdnie/playspeed"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    .line 105
    const-string v9, "/sys/class/mdnie/mdnie/night_mode"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

    .line 106
    const-string v9, "/sys/class/mdnie/mdnie/color_lens"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

    .line 107
    const-string v9, "/sys/class/mdnie/mdnie/whiteRGB"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

    .line 108
    const-string v9, "/sys/class/mdnie/mdnie/light_notification"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

    .line 109
    const-string v9, "/sys/class/mdnie/mdnie1/accessibility"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    .line 110
    const-string v9, "/sys/class/mdnie/mdnie1/mode"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE_SUB:Ljava/lang/String;

    .line 111
    const-string v9, "/sys/class/mdnie/mdnie1/scenario"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE_SUB:Ljava/lang/String;

    .line 113
    const-string v9, "/sys/class/mdnie/mdnie1/negative"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE_SUB:Ljava/lang/String;

    .line 114
    const-string v9, "/sys/class/mdnie/mdnie1/outdoor"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR_SUB:Ljava/lang/String;

    .line 115
    const-string v9, "/sys/class/mdnie/mdnie1/playspeed"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED_SUB:Ljava/lang/String;

    .line 116
    const-string v9, "/sys/class/mdnie/mdnie1/night_mode"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE_SUB:Ljava/lang/String;

    .line 117
    const-string v9, "/sys/class/mdnie/mdnie1/color_lens"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_COLOR_LENS_SUB:Ljava/lang/String;

    .line 118
    const-string v9, "/sys/class/mdnie/mdnie1/whiteRGB"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB_SUB:Ljava/lang/String;

    .line 119
    const-string v9, "/sys/class/mdnie/mdnie1/light_notification"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_LIGHT_NOTIFICATION_SUB:Ljava/lang/String;

    .line 121
    const-string v9, "/sys/class/lcd/panel/reading_mode"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_READING_MODE:Ljava/lang/String;

    .line 123
    const-string v9, "/efs/FactoryApp/mdnie"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

    .line 124
    const-string v10, "/efs/FactoryApp/mdnie1"

    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE_SUB:Ljava/lang/String;

    .line 126
    const/4 v10, 0x3

    iput v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->LCD_SRGB_MODE:I

    .line 127
    const/16 v11, 0xc

    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_COLOR:I

    .line 128
    const/16 v11, 0x9

    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_LEVEL:I

    .line 130
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    .line 132
    nop

    .line 133
    const-string v11, "46097"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    .line 135
    nop

    .line 136
    const-string v11, "0"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->WEAKNESS_SOLUTION_FUNCTION:I

    .line 138
    nop

    .line 139
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_FOR_TFT"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_NEW_SYSFS_USE:Z

    .line 141
    nop

    .line 142
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_SCREEN_ADJUSTMENT_MODE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SCREEN_ADJUSTMENT_MODE:Ljava/lang/String;

    .line 144
    const/4 v11, 0x7

    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_WHITE_INDEX_SIZE:I

    .line 145
    const/4 v11, 0x0

    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_DEFAULT_INDEX_VALUE:I

    .line 147
    const/4 v12, 0x5

    iput v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->PRESET_WHITE_INDEX_SIZE:I

    .line 149
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 150
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    .line 151
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    .line 152
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeSWA:Z

    .line 153
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 154
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 155
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    .line 156
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    .line 157
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    .line 158
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    .line 159
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 160
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    .line 161
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    .line 162
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    .line 164
    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 165
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    .line 167
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieCustomized:Z

    .line 171
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 172
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 174
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    .line 175
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    .line 176
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I

    .line 178
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    .line 180
    const/16 v14, 0xb

    iput v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 182
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    .line 183
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    .line 184
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    .line 185
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    .line 186
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    .line 187
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    .line 188
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndexSub:I

    .line 189
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndexSub:I

    .line 190
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndexSub:I

    .line 192
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    .line 193
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    .line 194
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    .line 199
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    .line 200
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 201
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenCurtainEnabled:Z

    .line 202
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNegativeColorEnabled:Z

    .line 203
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorBlindEnabled:Z

    .line 204
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    .line 205
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingModeEnabled:Z

    .line 206
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEbookScenarioEnabled:Z

    .line 207
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBrowserScenarioEnabled:Z

    .line 208
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    .line 210
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 211
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    .line 220
    new-array v14, v12, [[[I

    new-array v15, v12, [[I

    new-array v2, v10, [I

    fill-array-data v2, :array_3ce

    aput-object v2, v15, v11

    new-array v2, v10, [I

    fill-array-data v2, :array_3d8

    aput-object v2, v15, v13

    new-array v2, v10, [I

    fill-array-data v2, :array_3e2

    const/16 v16, 0x2

    aput-object v2, v15, v16

    new-array v2, v10, [I

    fill-array-data v2, :array_3ec

    aput-object v2, v15, v10

    new-array v2, v10, [I

    fill-array-data v2, :array_3f6

    const/4 v13, 0x4

    aput-object v2, v15, v13

    aput-object v15, v14, v11

    new-array v2, v12, [[I

    new-array v15, v10, [I

    fill-array-data v15, :array_400

    aput-object v15, v2, v11

    new-array v15, v10, [I

    fill-array-data v15, :array_40a

    const/16 v17, 0x1

    aput-object v15, v2, v17

    new-array v15, v10, [I

    fill-array-data v15, :array_414

    aput-object v15, v2, v16

    new-array v15, v10, [I

    fill-array-data v15, :array_41e

    aput-object v15, v2, v10

    new-array v15, v10, [I

    fill-array-data v15, :array_428

    aput-object v15, v2, v13

    aput-object v2, v14, v17

    new-array v2, v12, [[I

    new-array v15, v10, [I

    fill-array-data v15, :array_432

    aput-object v15, v2, v11

    new-array v15, v10, [I

    fill-array-data v15, :array_43c

    aput-object v15, v2, v17

    new-array v15, v10, [I

    fill-array-data v15, :array_446

    aput-object v15, v2, v16

    new-array v15, v10, [I

    fill-array-data v15, :array_450

    aput-object v15, v2, v10

    new-array v15, v10, [I

    fill-array-data v15, :array_45a

    aput-object v15, v2, v13

    aput-object v2, v14, v16

    new-array v2, v12, [[I

    new-array v15, v10, [I

    fill-array-data v15, :array_464

    aput-object v15, v2, v11

    new-array v15, v10, [I

    fill-array-data v15, :array_46e

    const/16 v17, 0x1

    aput-object v15, v2, v17

    new-array v15, v10, [I

    fill-array-data v15, :array_478

    aput-object v15, v2, v16

    new-array v15, v10, [I

    fill-array-data v15, :array_482

    aput-object v15, v2, v10

    new-array v15, v10, [I

    fill-array-data v15, :array_48c

    aput-object v15, v2, v13

    aput-object v2, v14, v10

    new-array v2, v12, [[I

    new-array v12, v10, [I

    fill-array-data v12, :array_496

    aput-object v12, v2, v11

    new-array v12, v10, [I

    fill-array-data v12, :array_4a0

    const/4 v15, 0x1

    aput-object v12, v2, v15

    new-array v12, v10, [I

    fill-array-data v12, :array_4aa

    aput-object v12, v2, v16

    new-array v12, v10, [I

    fill-array-data v12, :array_4b4

    aput-object v12, v2, v10

    new-array v12, v10, [I

    fill-array-data v12, :array_4be

    aput-object v12, v2, v13

    aput-object v2, v14, v13

    iput-object v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[[I

    .line 1092
    iput-boolean v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    .line 231
    iput-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 235
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v12, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-direct {v12, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    iput-object v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 237
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    const/4 v14, 0x1

    and-int/2addr v12, v14

    if-eqz v12, :cond_222

    const/4 v12, 0x1

    goto :goto_223

    :cond_222
    move v12, v11

    :goto_223
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 238
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_22d

    const/4 v12, 0x1

    goto :goto_22e

    :cond_22d
    move v12, v11

    :goto_22e
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    .line 239
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_237

    const/4 v12, 0x1

    goto :goto_238

    :cond_237
    move v12, v11

    :goto_238
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    .line 240
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_242

    const/4 v12, 0x1

    goto :goto_243

    :cond_242
    move v12, v11

    :goto_243
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeSWA:Z

    .line 241
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_24d

    const/4 v12, 0x1

    goto :goto_24e

    :cond_24d
    move v12, v11

    :goto_24e
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 242
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_258

    const/4 v12, 0x1

    goto :goto_259

    :cond_258
    move v12, v11

    :goto_259
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 243
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_263

    const/4 v12, 0x1

    goto :goto_264

    :cond_263
    move v12, v11

    :goto_264
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    .line 244
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v12, v12, 0x200

    if-eqz v12, :cond_26e

    const/4 v12, 0x1

    goto :goto_26f

    :cond_26e
    move v12, v11

    :goto_26f
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    .line 245
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v12, v12, 0x400

    if-eqz v12, :cond_279

    const/4 v12, 0x1

    goto :goto_27a

    :cond_279
    move v12, v11

    :goto_27a
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    .line 246
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v12, v12, 0x800

    if-eqz v12, :cond_284

    const/4 v12, 0x1

    goto :goto_285

    :cond_284
    move v12, v11

    :goto_285
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    .line 247
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v12, v12, 0x1000

    if-eqz v12, :cond_28f

    const/4 v12, 0x1

    goto :goto_290

    :cond_28f
    move v12, v11

    :goto_290
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 248
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v12, v12, 0x2000

    if-eqz v12, :cond_29a

    const/4 v12, 0x1

    goto :goto_29b

    :cond_29a
    move v12, v11

    :goto_29b
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    .line 249
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v12, v12, 0x4000

    if-eqz v12, :cond_2a5

    const/4 v12, 0x1

    goto :goto_2a6

    :cond_2a5
    move v12, v11

    :goto_2a6
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    .line 250
    iget v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    const v14, 0x8000

    and-int/2addr v12, v14

    if-eqz v12, :cond_2b2

    const/4 v12, 0x1

    goto :goto_2b3

    :cond_2b2
    move v12, v11

    :goto_2b3
    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    .line 252
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    .line 254
    nop

    .line 255
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iget-object v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 254
    const/4 v15, -0x2

    invoke-virtual {v2, v12, v11, v14, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 256
    nop

    .line 257
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 256
    invoke-virtual {v2, v5, v11, v12, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 258
    nop

    .line 259
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 258
    invoke-virtual {v2, v5, v11, v6, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 260
    nop

    .line 261
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 260
    invoke-virtual {v2, v5, v11, v6, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 262
    nop

    .line 263
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    .line 262
    invoke-virtual {v2, v5, v11, v6, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 265
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;)V

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_31d

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    .line 273
    :cond_31d
    iget-boolean v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    iget-boolean v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    and-int/2addr v6, v7

    if-eqz v6, :cond_327

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setFactoryWhiteRGB()V

    .line 275
    :cond_327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYSFS_MDNIE_FACTORY_MDNIE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mMdnieWhiteRGBSupported - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SemMdnieManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_358

    const/4 v3, 0x1

    goto :goto_359

    :cond_358
    move v3, v11

    :goto_359
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    .line 278
    iget-object v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v11, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 279
    iget-boolean v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v3, :cond_36d

    .line 280
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 283
    :cond_36d
    iget v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    if-ne v3, v10, :cond_373

    .line 284
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 287
    :cond_373
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    .line 289
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 290
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    .line 292
    iget v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setScreenMode(I)Z

    .line 293
    iget v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setContentMode(I)Z

    .line 295
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v3, v4, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_394

    .line 296
    const/16 v3, 0x66

    iput v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 298
    :cond_394
    iget-object v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 300
    if-eqz v3, :cond_3ac

    .line 301
    new-instance v3, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {v3, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 303
    :cond_3ac
    iget-object v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    .line 305
    if-eqz v3, :cond_3ca

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-nez v3, :cond_3ca

    .line 306
    new-instance v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {v3, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 308
    :cond_3ca
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    .line 309
    return-void

    :array_3ce
    .array-data 4
        0x0
        -0x6
        -0x14
    .end array-data

    :array_3d8
    .array-data 4
        0x0
        -0x3
        -0xa
    .end array-data

    :array_3e2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3ec
    .array-data 4
        -0x7
        -0x5
        0x0
    .end array-data

    :array_3f6
    .array-data 4
        -0xe
        -0xa
        0x0
    .end array-data

    :array_400
    .array-data 4
        0x0
        -0x3
        -0x14
    .end array-data

    :array_40a
    .array-data 4
        0x0
        0x0
        -0xa
    .end array-data

    :array_414
    .array-data 4
        -0x3
        0x0
        -0x3
    .end array-data

    :array_41e
    .array-data 4
        -0x7
        -0x2
        0x0
    .end array-data

    :array_428
    .array-data 4
        -0xe
        -0x7
        0x0
    .end array-data

    :array_432
    .array-data 4
        0x0
        0x0
        -0x14
    .end array-data

    :array_43c
    .array-data 4
        -0x3
        0x0
        -0xd
    .end array-data

    :array_446
    .array-data 4
        -0x6
        0x0
        -0x6
    .end array-data

    :array_450
    .array-data 4
        -0x8
        0x0
        -0x1
    .end array-data

    :array_45a
    .array-data 4
        -0xe
        -0x4
        0x0
    .end array-data

    :array_464
    .array-data 4
        -0x3
        0x0
        -0x17
    .end array-data

    :array_46e
    .array-data 4
        -0x6
        0x0
        -0x10
    .end array-data

    :array_478
    .array-data 4
        -0x9
        0x0
        -0x9
    .end array-data

    :array_482
    .array-data 4
        -0xb
        0x0
        -0x4
    .end array-data

    :array_48c
    .array-data 4
        -0xe
        -0x1
        0x0
    .end array-data

    :array_496
    .array-data 4
        -0x6
        0x0
        -0x1a
    .end array-data

    :array_4a0
    .array-data 4
        -0x9
        0x0
        -0x13
    .end array-data

    :array_4aa
    .array-data 4
        -0xc
        0x0
        -0xc
    .end array-data

    :array_4b4
    .array-data 4
        -0xe
        0x0
        -0x7
    .end array-data

    :array_4be
    .array-data 4
        -0x10
        0x0
        -0x2
    .end array-data
.end method

.method static synthetic access$100(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 81
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 81
    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return p1
.end method

.method private checkContentMode(I)Z
    .registers 4
    .param p1, "value"    # I

    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v1, :cond_30

    .line 683
    if-eqz p1, :cond_2f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2f

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2f

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2f

    const/16 v1, 0x14

    if-eq p1, v1, :cond_2d

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2f

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2f

    packed-switch p1, :pswitch_data_32

    .line 709
    const/4 v0, 0x0

    goto :goto_30

    .line 701
    :pswitch_21
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    if-eqz v1, :cond_30

    .line 702
    const/4 v0, 0x1

    goto :goto_30

    .line 695
    :pswitch_27
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    if-eqz v1, :cond_30

    .line 696
    const/4 v0, 0x1

    goto :goto_30

    .line 706
    :cond_2d
    const/4 v0, 0x1

    .line 707
    goto :goto_30

    .line 690
    :cond_2f
    const/4 v0, 0x1

    .line 713
    :cond_30
    :goto_30
    return v0

    nop

    :pswitch_data_32
    .packed-switch 0xb
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method private checkScreenMode(I)Z
    .registers 6
    .param p1, "value"    # I

    .line 654
    const/4 v0, 0x0

    .line 655
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v1, :cond_1c

    .line 656
    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1b

    if-eq p1, v3, :cond_1b

    if-eq p1, v2, :cond_15

    .line 669
    const/4 v0, 0x0

    goto :goto_1c

    .line 664
    :cond_15
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_1c

    .line 665
    const/4 v0, 0x1

    goto :goto_1c

    .line 661
    :cond_1b
    const/4 v0, 0x1

    .line 673
    :cond_1c
    :goto_1c
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_26

    .line 674
    if-ne p1, v2, :cond_23

    const/4 v0, 0x1

    .line 675
    :cond_23
    if-ne p1, v3, :cond_26

    const/4 v0, 0x1

    .line 677
    :cond_26
    return v0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "fileName"    # Ljava/lang/String;

    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "in":Ljava/io/InputStream;
    const/16 v1, 0x80

    .line 901
    .local v1, "MAX_BUFFER_SIZE":I
    const/16 v2, 0x80

    new-array v3, v2, [B

    .line 902
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 903
    .local v4, "value":Ljava/lang/String;
    const/4 v5, 0x0

    .line 905
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    const/4 v7, 0x0

    if-ge v6, v2, :cond_12

    .line 906
    aput-byte v7, v3, v6

    .line 905
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 909
    .end local v6    # "i":I
    :cond_12
    const-string v2, "File Close error"

    const-string v6, "SemMdnieManagerService"

    if-eqz p1, :cond_28

    .line 910
    :try_start_18
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v8

    goto :goto_28

    .line 923
    :catchall_24
    move-exception v7

    goto :goto_79

    .line 919
    :catch_26
    move-exception v7

    goto :goto_3f

    .line 912
    :cond_28
    :goto_28
    if-eqz v0, :cond_84

    .line 913
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v5, v8

    .line 914
    if-lez v5, :cond_3b

    .line 915
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v5, -0x1

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v7, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v8

    .line 917
    :cond_3b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3e} :catch_26
    .catchall {:try_start_18 .. :try_end_3e} :catchall_24

    goto :goto_84

    .line 920
    .local v7, "e":Ljava/lang/Exception;
    :goto_3f
    :try_start_3f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " , in : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " , value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , length : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_3f .. :try_end_6e} :catchall_24

    .line 923
    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_8a

    .line 925
    :try_start_70
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    .line 928
    :goto_73
    goto :goto_8a

    .line 926
    :catch_74
    move-exception v7

    .line 927
    .local v7, "ee":Ljava/lang/Exception;
    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "ee":Ljava/lang/Exception;
    goto :goto_73

    .line 923
    :goto_79
    if-eqz v0, :cond_83

    .line 925
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 928
    goto :goto_83

    .line 926
    :catch_7f
    move-exception v8

    .line 927
    .local v8, "ee":Ljava/lang/Exception;
    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .end local v8    # "ee":Ljava/lang/Exception;
    :cond_83
    :goto_83
    throw v7

    .line 923
    :cond_84
    :goto_84
    if-eqz v0, :cond_8a

    .line 925
    :try_start_86
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_74

    goto :goto_73

    .line 931
    :cond_8a
    :goto_8a
    return-object v4
.end method

.method private setFactoryWhiteRGB()V
    .registers 24

    .line 418
    move-object/from16 v1, p0

    const-string v0, "/efs/FactoryApp/mdnie1"

    const-string v2, "/efs/FactoryApp/mdnie"

    const-string v3, "FileReader Close IOException : "

    const-string v4, "BufferedReader Close IOException : "

    const-string v5, "SemMdnieManagerService"

    const/4 v6, 0x0

    .line 419
    .local v6, "fr":Ljava/io/FileReader;
    const/4 v7, 0x0

    .line 420
    .local v7, "frSub":Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 421
    .local v8, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 422
    .local v9, "brSub":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 423
    .local v10, "white_scr":Ljava/lang/String;
    const/4 v11, 0x0

    .line 424
    .local v11, "white_scr_sub":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "scrR":I
    const/4 v13, 0x0

    .local v13, "scrG":I
    const/4 v14, 0x0

    .line 425
    .local v14, "scrB":I
    const/4 v15, 0x0

    .local v15, "scrRSub":I
    const/16 v16, 0x0

    .local v16, "scrGSub":I
    const/16 v17, 0x0

    .line 427
    .local v17, "scrBSub":I
    move-object/from16 v18, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .local v18, "fr":Ljava/io/FileReader;
    :try_start_1c
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_25} :catch_281
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_25} :catch_23f
    .catchall {:try_start_1c .. :try_end_25} :catchall_237

    const/16 v19, 0x2

    const/16 v20, 0x1

    move-object/from16 v21, v7

    .end local v7    # "frSub":Ljava/io/FileReader;
    .local v21, "frSub":Ljava/io/FileReader;
    const-string v7, " "

    if-eqz v6, :cond_df

    .line 428
    :try_start_2f
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_d8
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_d1
    .catchall {:try_start_2f .. :try_end_34} :catchall_c9

    .line 429
    .end local v18    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :try_start_34
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v2

    .line 430
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 431
    if-eqz v10, :cond_b0

    .line 432
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "scrDatas":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v22, v2, v18

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v12, v18

    .line 434
    aget-object v18, v2, v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v13, v18

    .line 435
    aget-object v18, v2, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v14, v18

    .line 436
    move-object/from16 v18, v2

    .end local v2    # "scrDatas":[Ljava/lang/String;
    .local v18, "scrDatas":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_76} :catch_c2
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_76} :catch_bb
    .catchall {:try_start_34 .. :try_end_76} :catchall_b3

    move-object/from16 v22, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .local v22, "fr":Ljava/io/FileReader;
    :try_start_78
    const-string v6, "setFactoryWhiteRGB : scrR - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", scrG - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", scrB - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_97} :catch_a9
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_97} :catch_a2
    .catchall {:try_start_78 .. :try_end_97} :catchall_9a

    move-object/from16 v6, v22

    goto :goto_e1

    .line 456
    .end local v18    # "scrDatas":[Ljava/lang/String;
    :catchall_9a
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    goto/16 :goto_34c

    .line 453
    :catch_a2
    move-exception v0

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    goto/16 :goto_244

    .line 451
    :catch_a9
    move-exception v0

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    goto/16 :goto_286

    .line 431
    .end local v22    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :cond_b0
    move-object/from16 v22, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v22    # "fr":Ljava/io/FileReader;
    goto :goto_e1

    .line 456
    .end local v22    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_b3
    move-exception v0

    move-object/from16 v22, v6

    move-object v2, v0

    move-object/from16 v7, v21

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v22    # "fr":Ljava/io/FileReader;
    goto/16 :goto_34c

    .line 453
    .end local v22    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_bb
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v7, v21

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v22    # "fr":Ljava/io/FileReader;
    goto/16 :goto_244

    .line 451
    .end local v22    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_c2
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v7, v21

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v22    # "fr":Ljava/io/FileReader;
    goto/16 :goto_286

    .line 456
    .end local v22    # "fr":Ljava/io/FileReader;
    .local v18, "fr":Ljava/io/FileReader;
    :catchall_c9
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v18

    move-object/from16 v7, v21

    goto/16 :goto_34c

    .line 453
    :catch_d1
    move-exception v0

    move-object/from16 v6, v18

    move-object/from16 v7, v21

    goto/16 :goto_244

    .line 451
    :catch_d8
    move-exception v0

    move-object/from16 v6, v18

    move-object/from16 v7, v21

    goto/16 :goto_286

    .line 427
    :cond_df
    move-object/from16 v6, v18

    .line 439
    .end local v18    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :goto_e1
    :try_start_e1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 440
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_f1} :catch_233
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_f1} :catch_22f
    .catchall {:try_start_e1 .. :try_end_f1} :catchall_229

    .line 441
    .end local v21    # "frSub":Ljava/io/FileReader;
    .local v2, "frSub":Ljava/io/FileReader;
    :try_start_f1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v9, v0

    .line 442
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 443
    if-eqz v11, :cond_1d0

    .line 444
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "scrDatasSub":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v18, v0, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v15, v7

    .line 446
    aget-object v7, v0, v20

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_11c
    .catch Ljava/io/FileNotFoundException; {:try_start_f1 .. :try_end_11c} :catch_1e4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_11c} :catch_1dd
    .catchall {:try_start_f1 .. :try_end_11c} :catchall_1d5

    .line 447
    .end local v16    # "scrGSub":I
    .local v7, "scrGSub":I
    :try_start_11c
    aget-object v16, v0, v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16
    :try_end_126
    .catch Ljava/io/FileNotFoundException; {:try_start_11c .. :try_end_126} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_126} :catch_1be
    .catchall {:try_start_11c .. :try_end_126} :catchall_1b4

    move/from16 v17, v16

    .line 448
    move-object/from16 v18, v0

    .end local v0    # "scrDatasSub":[Ljava/lang/String;
    .local v18, "scrDatasSub":[Ljava/lang/String;
    :try_start_12a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12f
    .catch Ljava/io/FileNotFoundException; {:try_start_12a .. :try_end_12f} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12f} :catch_19e
    .catchall {:try_start_12a .. :try_end_12f} :catchall_192

    move-object/from16 v19, v2

    .end local v2    # "frSub":Ljava/io/FileReader;
    .local v19, "frSub":Ljava/io/FileReader;
    :try_start_131
    const-string v2, "setFactoryWhiteRGB : scrRSub - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scrGSub - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scrBSub - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_146
    .catch Ljava/io/FileNotFoundException; {:try_start_131 .. :try_end_146} :catch_189
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_146} :catch_180
    .catchall {:try_start_131 .. :try_end_146} :catchall_176

    move/from16 v2, v17

    .end local v17    # "scrBSub":I
    .local v2, "scrBSub":I
    :try_start_148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_152
    .catch Ljava/io/FileNotFoundException; {:try_start_148 .. :try_end_152} :catch_16d
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_152} :catch_164
    .catchall {:try_start_148 .. :try_end_152} :catchall_15a

    move/from16 v17, v2

    move/from16 v16, v7

    move-object/from16 v7, v19

    goto/16 :goto_1ed

    .line 456
    .end local v18    # "scrDatasSub":[Ljava/lang/String;
    :catchall_15a
    move-exception v0

    move/from16 v17, v2

    move/from16 v16, v7

    move-object/from16 v7, v19

    move-object v2, v0

    goto/16 :goto_34c

    .line 453
    :catch_164
    move-exception v0

    move/from16 v17, v2

    move/from16 v16, v7

    move-object/from16 v7, v19

    goto/16 :goto_244

    .line 451
    :catch_16d
    move-exception v0

    move/from16 v17, v2

    move/from16 v16, v7

    move-object/from16 v7, v19

    goto/16 :goto_286

    .line 456
    .end local v2    # "scrBSub":I
    .restart local v17    # "scrBSub":I
    :catchall_176
    move-exception v0

    move/from16 v2, v17

    move/from16 v16, v7

    move-object/from16 v7, v19

    move-object v2, v0

    .end local v17    # "scrBSub":I
    .restart local v2    # "scrBSub":I
    goto/16 :goto_34c

    .line 453
    .end local v2    # "scrBSub":I
    .restart local v17    # "scrBSub":I
    :catch_180
    move-exception v0

    move/from16 v2, v17

    move/from16 v16, v7

    move-object/from16 v7, v19

    .end local v17    # "scrBSub":I
    .restart local v2    # "scrBSub":I
    goto/16 :goto_244

    .line 451
    .end local v2    # "scrBSub":I
    .restart local v17    # "scrBSub":I
    :catch_189
    move-exception v0

    move/from16 v2, v17

    move/from16 v16, v7

    move-object/from16 v7, v19

    .end local v17    # "scrBSub":I
    .restart local v2    # "scrBSub":I
    goto/16 :goto_286

    .line 456
    .end local v19    # "frSub":Ljava/io/FileReader;
    .local v2, "frSub":Ljava/io/FileReader;
    .restart local v17    # "scrBSub":I
    :catchall_192
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v2, v17

    move/from16 v16, v7

    move-object/from16 v7, v19

    move-object v2, v0

    .end local v17    # "scrBSub":I
    .local v2, "scrBSub":I
    .restart local v19    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_34c

    .line 453
    .end local v19    # "frSub":Ljava/io/FileReader;
    .local v2, "frSub":Ljava/io/FileReader;
    .restart local v17    # "scrBSub":I
    :catch_19e
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v2, v17

    move/from16 v16, v7

    move-object/from16 v7, v19

    .end local v17    # "scrBSub":I
    .local v2, "scrBSub":I
    .restart local v19    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_244

    .line 451
    .end local v19    # "frSub":Ljava/io/FileReader;
    .local v2, "frSub":Ljava/io/FileReader;
    .restart local v17    # "scrBSub":I
    :catch_1a9
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v2, v17

    move/from16 v16, v7

    move-object/from16 v7, v19

    .end local v17    # "scrBSub":I
    .local v2, "scrBSub":I
    .restart local v19    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_286

    .line 456
    .end local v19    # "frSub":Ljava/io/FileReader;
    .local v2, "frSub":Ljava/io/FileReader;
    .restart local v17    # "scrBSub":I
    :catchall_1b4
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    move/from16 v16, v7

    move-object/from16 v7, v19

    .end local v2    # "frSub":Ljava/io/FileReader;
    .restart local v19    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_34c

    .line 453
    .end local v19    # "frSub":Ljava/io/FileReader;
    .restart local v2    # "frSub":Ljava/io/FileReader;
    :catch_1be
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v16, v7

    move-object/from16 v7, v19

    .end local v2    # "frSub":Ljava/io/FileReader;
    .restart local v19    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_244

    .line 451
    .end local v19    # "frSub":Ljava/io/FileReader;
    .restart local v2    # "frSub":Ljava/io/FileReader;
    :catch_1c7
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v16, v7

    move-object/from16 v7, v19

    .end local v2    # "frSub":Ljava/io/FileReader;
    .restart local v19    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_286

    .line 443
    .end local v7    # "scrGSub":I
    .end local v19    # "frSub":Ljava/io/FileReader;
    .restart local v2    # "frSub":Ljava/io/FileReader;
    .restart local v16    # "scrGSub":I
    :cond_1d0
    move-object/from16 v19, v2

    .end local v2    # "frSub":Ljava/io/FileReader;
    .restart local v19    # "frSub":Ljava/io/FileReader;
    move-object/from16 v7, v19

    goto :goto_1ed

    .line 456
    .end local v19    # "frSub":Ljava/io/FileReader;
    .restart local v2    # "frSub":Ljava/io/FileReader;
    :catchall_1d5
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    move-object/from16 v7, v19

    .end local v2    # "frSub":Ljava/io/FileReader;
    .restart local v19    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_34c

    .line 453
    .end local v19    # "frSub":Ljava/io/FileReader;
    .restart local v2    # "frSub":Ljava/io/FileReader;
    :catch_1dd
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v7, v19

    .end local v2    # "frSub":Ljava/io/FileReader;
    .restart local v19    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_244

    .line 451
    .end local v19    # "frSub":Ljava/io/FileReader;
    .restart local v2    # "frSub":Ljava/io/FileReader;
    :catch_1e4
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v7, v19

    .end local v2    # "frSub":Ljava/io/FileReader;
    .restart local v19    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_286

    .line 439
    .end local v19    # "frSub":Ljava/io/FileReader;
    .restart local v21    # "frSub":Ljava/io/FileReader;
    :cond_1eb
    move-object/from16 v7, v21

    .line 457
    .end local v21    # "frSub":Ljava/io/FileReader;
    .local v7, "frSub":Ljava/io/FileReader;
    :goto_1ed
    if-eqz v8, :cond_1f5

    .line 458
    :try_start_1ef
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    goto :goto_1f5

    .line 463
    :catch_1f3
    move-exception v0

    goto :goto_1fb

    .line 460
    :cond_1f5
    :goto_1f5
    if-eqz v9, :cond_212

    .line 461
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1fa
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1fa} :catch_1f3

    goto :goto_212

    .line 464
    .local v0, "e":Ljava/io/IOException;
    :goto_1fb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_213

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :cond_212
    :goto_212
    nop

    .line 468
    :goto_213
    if-eqz v6, :cond_21b

    .line 469
    :try_start_215
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_21b

    .line 474
    :catch_219
    move-exception v0

    goto :goto_222

    .line 471
    :cond_21b
    :goto_21b
    if-eqz v7, :cond_2d4

    .line 472
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_220} :catch_219

    goto/16 :goto_2d4

    .line 475
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2c2

    .line 456
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "frSub":Ljava/io/FileReader;
    .restart local v21    # "frSub":Ljava/io/FileReader;
    :catchall_229
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v21

    goto/16 :goto_34c

    .line 453
    :catch_22f
    move-exception v0

    move-object/from16 v7, v21

    goto :goto_244

    .line 451
    :catch_233
    move-exception v0

    move-object/from16 v7, v21

    goto :goto_286

    .line 456
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v21    # "frSub":Ljava/io/FileReader;
    .restart local v7    # "frSub":Ljava/io/FileReader;
    .local v18, "fr":Ljava/io/FileReader;
    :catchall_237
    move-exception v0

    move-object/from16 v21, v7

    move-object v2, v0

    move-object/from16 v6, v18

    .end local v7    # "frSub":Ljava/io/FileReader;
    .restart local v21    # "frSub":Ljava/io/FileReader;
    goto/16 :goto_34c

    .line 453
    .end local v21    # "frSub":Ljava/io/FileReader;
    .restart local v7    # "frSub":Ljava/io/FileReader;
    :catch_23f
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v6, v18

    .line 454
    .end local v18    # "fr":Ljava/io/FileReader;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :goto_244
    :try_start_244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_247
    .catchall {:try_start_244 .. :try_end_247} :catchall_34a

    .line 457
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v8, :cond_24f

    .line 458
    :try_start_249
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    goto :goto_24f

    .line 463
    :catch_24d
    move-exception v0

    goto :goto_255

    .line 460
    :cond_24f
    :goto_24f
    if-eqz v9, :cond_26c

    .line 461
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_254
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_254} :catch_24d

    goto :goto_26c

    .line 464
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26d

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :cond_26c
    :goto_26c
    nop

    .line 468
    :goto_26d
    if-eqz v6, :cond_275

    .line 469
    :try_start_26f
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_275

    .line 474
    :catch_273
    move-exception v0

    goto :goto_27b

    .line 471
    :cond_275
    :goto_275
    if-eqz v7, :cond_2d4

    .line 472
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_27a
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_27a} :catch_273

    goto :goto_2d4

    .line 475
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_27b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2c2

    .line 451
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v18    # "fr":Ljava/io/FileReader;
    :catch_281
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v6, v18

    .line 452
    .end local v18    # "fr":Ljava/io/FileReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :goto_286
    :try_start_286
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_289
    .catchall {:try_start_286 .. :try_end_289} :catchall_34a

    .line 457
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v8, :cond_291

    .line 458
    :try_start_28b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    goto :goto_291

    .line 463
    :catch_28f
    move-exception v0

    goto :goto_297

    .line 460
    :cond_291
    :goto_291
    if-eqz v9, :cond_2ae

    .line 461
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_296
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_296} :catch_28f

    goto :goto_2ae

    .line 464
    .local v0, "e":Ljava/io/IOException;
    :goto_297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2af

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2ae
    :goto_2ae
    nop

    .line 468
    :goto_2af
    if-eqz v6, :cond_2b7

    .line 469
    :try_start_2b1
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_2b7

    .line 474
    :catch_2b5
    move-exception v0

    goto :goto_2bd

    .line 471
    :cond_2b7
    :goto_2b7
    if-eqz v7, :cond_2d4

    .line 472
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2bc
    .catch Ljava/io/IOException; {:try_start_2b1 .. :try_end_2bc} :catch_2b5

    goto :goto_2d4

    .line 475
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2d5

    .line 476
    :cond_2d4
    :goto_2d4
    nop

    .line 479
    :goto_2d5
    move/from16 v0, v16

    move/from16 v2, v17

    .end local v16    # "scrGSub":I
    .end local v17    # "scrBSub":I
    .local v0, "scrGSub":I
    .local v2, "scrBSub":I
    const/4 v3, 0x7

    const/16 v4, -0x28

    if-gtz v12, :cond_30c

    if-lt v12, v4, :cond_30c

    if-gtz v13, :cond_30c

    if-lt v13, v4, :cond_30c

    if-gtz v14, :cond_30c

    if-lt v14, v4, :cond_30c

    .line 480
    new-instance v5, Ljava/io/File;

    const-string v4, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_30c

    .line 481
    iput v12, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    .line 482
    iput v13, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    .line 483
    iput v14, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    .line 484
    div-int/lit8 v5, v12, 0x3

    neg-int v5, v5

    iput v5, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    .line 485
    if-ltz v5, :cond_304

    if-le v5, v3, :cond_307

    :cond_304
    const/4 v5, 0x0

    iput v5, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    .line 486
    :cond_307
    if-eqz v10, :cond_30c

    invoke-static {v4, v10}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 489
    :cond_30c
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/mdnie/mdnie1/whiteRGB"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_349

    .line 490
    if-gtz v15, :cond_349

    const/16 v4, -0x28

    if-lt v15, v4, :cond_349

    if-gtz v0, :cond_349

    if-lt v0, v4, :cond_349

    if-gtz v2, :cond_349

    if-lt v2, v4, :cond_349

    .line 491
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_349

    .line 492
    iput v15, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndexSub:I

    .line 493
    iput v0, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndexSub:I

    .line 494
    iput v2, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndexSub:I

    .line 495
    div-int/lit8 v4, v15, 0x3

    neg-int v4, v4

    iput v4, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    .line 496
    if-ltz v4, :cond_341

    if-le v4, v3, :cond_344

    :cond_341
    const/4 v3, 0x0

    iput v3, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    .line 497
    :cond_344
    if-eqz v11, :cond_349

    invoke-static {v5, v11}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 501
    :cond_349
    return-void

    .line 456
    .end local v0    # "scrGSub":I
    .end local v2    # "scrBSub":I
    .restart local v16    # "scrGSub":I
    .restart local v17    # "scrBSub":I
    :catchall_34a
    move-exception v0

    move-object v2, v0

    .line 457
    :goto_34c
    if-eqz v8, :cond_354

    .line 458
    :try_start_34e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    goto :goto_354

    .line 463
    :catch_352
    move-exception v0

    goto :goto_35a

    .line 460
    :cond_354
    :goto_354
    if-eqz v9, :cond_371

    .line 461
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_359
    .catch Ljava/io/IOException; {:try_start_34e .. :try_end_359} :catch_352

    goto :goto_371

    .line 464
    .local v0, "e":Ljava/io/IOException;
    :goto_35a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_372

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :cond_371
    :goto_371
    nop

    .line 468
    :goto_372
    if-eqz v6, :cond_37a

    .line 469
    :try_start_374
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_37a

    .line 474
    :catch_378
    move-exception v0

    goto :goto_380

    .line 471
    :cond_37a
    :goto_37a
    if-eqz v7, :cond_397

    .line 472
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_37f
    .catch Ljava/io/IOException; {:try_start_374 .. :try_end_37f} :catch_378

    goto :goto_397

    .line 475
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_398

    .line 476
    .end local v0    # "e":Ljava/io/IOException;
    :cond_397
    :goto_397
    nop

    .line 477
    :goto_398
    throw v2
.end method

.method private setting_is_changed()V
    .registers 18

    .line 357
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iput v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    .line 358
    iget-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    .line 359
    iget-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sec_display_temperature_red"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 360
    .local v1, "scrR":I
    iget-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sec_display_temperature_green"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 361
    .local v2, "scrG":I
    iget-object v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sec_display_temperature_blue"

    invoke-static {v5, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 362
    .local v4, "scrB":I
    iget-object v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sec_display_preset_index"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 364
    .local v5, "presetIndex":I
    iget-boolean v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v6, :cond_151

    .line 365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting_is_changed - R("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), G("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), B("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SemMdnieManagerService"

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iput v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    .line 367
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    .line 368
    iput v4, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    .line 371
    const/4 v6, 0x0

    .line 372
    .local v6, "scrROri":I
    const/4 v8, 0x0

    .line 373
    .local v8, "scrRSub":I
    const/4 v9, 0x0

    .line 374
    .local v9, "scrGOri":I
    const/4 v10, 0x0

    .line 375
    .local v10, "scrGSub":I
    const/4 v11, 0x0

    .line 376
    .local v11, "scrBOri":I
    const/4 v12, 0x0

    .line 378
    .local v12, "scrBSub":I
    iput v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    .line 379
    const/4 v13, 0x1

    const/4 v14, 0x5

    if-ltz v5, :cond_a6

    if-ge v5, v14, :cond_a6

    .line 385
    iget-object v15, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[[I

    iget v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    aget-object v16, v15, v14

    aget-object v16, v16, v5

    aget v16, v16, v3

    add-int v6, v1, v16

    .line 386
    aget-object v16, v15, v14

    aget-object v16, v16, v5

    aget v16, v16, v13

    add-int v9, v2, v16

    .line 387
    aget-object v14, v15, v14

    aget-object v14, v14, v5

    aget v14, v14, v7

    add-int v11, v4, v14

    .line 389
    :cond_a6
    const-string v14, " "

    const/16 v15, -0x28

    if-gtz v6, :cond_ea

    if-lt v6, v15, :cond_ea

    if-gtz v9, :cond_ea

    if-lt v9, v15, :cond_ea

    if-gtz v11, :cond_ea

    if-lt v11, v15, :cond_ea

    .line 390
    new-instance v15, Ljava/io/File;

    const-string v7, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_ea

    .line 391
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 392
    .local v13, "str":Ljava/lang/String;
    invoke-static {v7, v13}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 397
    .end local v13    # "str":Ljava/lang/String;
    :cond_ea
    if-ltz v5, :cond_10f

    const/4 v7, 0x5

    if-ge v5, v7, :cond_10f

    .line 398
    iput v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    .line 404
    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[[I

    iget v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    aget-object v15, v7, v13

    aget-object v15, v15, v5

    aget v3, v15, v3

    add-int v8, v1, v3

    .line 405
    aget-object v3, v7, v13

    aget-object v3, v3, v5

    const/4 v15, 0x1

    aget v3, v3, v15

    add-int v10, v2, v3

    .line 406
    aget-object v3, v7, v13

    aget-object v3, v3, v5

    const/4 v7, 0x2

    aget v3, v3, v7

    add-int v12, v4, v3

    .line 408
    :cond_10f
    new-instance v3, Ljava/io/File;

    const-string v7, "/sys/class/mdnie/mdnie1/whiteRGB"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_151

    .line 409
    if-gtz v8, :cond_151

    const/16 v3, -0x28

    if-lt v8, v3, :cond_151

    if-gtz v10, :cond_151

    if-lt v10, v3, :cond_151

    if-gtz v12, :cond_151

    if-lt v12, v3, :cond_151

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "str":Ljava/lang/String;
    invoke-static {v7, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    .end local v3    # "str":Ljava/lang/String;
    .end local v6    # "scrROri":I
    .end local v8    # "scrRSub":I
    .end local v9    # "scrGOri":I
    .end local v10    # "scrGSub":I
    .end local v11    # "scrBOri":I
    .end local v12    # "scrBSub":I
    :cond_151
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, "out":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 937
    .local v1, "myfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    .line 940
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_2d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2b

    move-object v0, v2

    .line 944
    nop

    .line 945
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 946
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 955
    nop

    .line 956
    const/4 v2, 0x1

    return v2

    .line 947
    :catch_2b
    move-exception v2

    goto :goto_32

    .line 941
    :catch_2d
    move-exception v2

    .line 942
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_31} :catch_2b

    .line 943
    return v3

    .line 948
    .local v2, "e":Ljava/io/IOException;
    :goto_32
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 950
    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    .line 953
    goto :goto_3d

    .line 951
    :catch_39
    move-exception v4

    .line 952
    .local v4, "err":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 954
    .end local v4    # "err":Ljava/lang/Exception;
    :goto_3d
    return v3

    .line 958
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3e
    return v3
.end method

.method private static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 962
    const/4 v0, 0x0

    .line 965
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_21

    move-object v0, v2

    .line 969
    nop

    .line 970
    :try_start_e
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 971
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 980
    nop

    .line 981
    const/4 v1, 0x1

    return v1

    .line 972
    :catch_21
    move-exception v2

    goto :goto_28

    .line 966
    :catch_23
    move-exception v2

    .line 967
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_27} :catch_21

    .line 968
    return v1

    .line 973
    .local v2, "e":Ljava/io/IOException;
    :goto_28
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 975
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 978
    goto :goto_33

    .line 976
    :catch_2f
    move-exception v3

    .line 977
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 979
    .end local v3    # "err":Ljava/lang/Exception;
    :goto_33
    return v1
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .registers 10
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 1019
    .local v1, "mParameter":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, p2, v4

    .line 1020
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, p2, v5

    .line 1021
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget v6, p2, v6

    .line 1022
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget v6, p2, v6

    .line 1023
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    aget v6, p2, v6

    .line 1024
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    aget v6, p2, v6

    .line 1025
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    aget v6, p2, v6

    .line 1026
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    aget v6, p2, v6

    .line 1027
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    aget v3, p2, v3

    .line 1028
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1032
    :try_start_8a
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_94
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_94} :catch_aa
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_94} :catch_a8

    move-object v0, v2

    .line 1036
    nop

    .line 1037
    :try_start_96
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1038
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1047
    nop

    .line 1048
    return v5

    .line 1039
    :catch_a8
    move-exception v2

    goto :goto_af

    .line 1033
    :catch_aa
    move-exception v2

    .line 1034
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ae} :catch_a8

    .line 1035
    return v4

    .line 1040
    .local v2, "e":Ljava/io/IOException;
    :goto_af
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1042
    :try_start_b2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    .line 1045
    goto :goto_ba

    .line 1043
    :catch_b6
    move-exception v3

    .line 1044
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1046
    .end local v3    # "err":Ljava/lang/Exception;
    :goto_ba
    return v4
.end method

.method private static sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z
    .registers 10
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .line 1053
    const/4 v0, 0x0

    .line 1054
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 1056
    .local v1, "mParameter":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, p2, v4

    .line 1057
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, p2, v5

    .line 1058
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget v6, p2, v6

    .line 1059
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget v6, p2, v6

    .line 1060
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    aget v6, p2, v6

    .line 1061
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    aget v6, p2, v6

    .line 1062
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    aget v6, p2, v6

    .line 1063
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    aget v6, p2, v6

    .line 1064
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    aget v6, p2, v6

    .line 1065
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x9

    aget v6, p2, v6

    .line 1066
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    aget v6, p2, v6

    .line 1067
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    aget v3, p2, v3

    .line 1068
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1072
    :try_start_b4
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_be
    .catch Ljava/io/FileNotFoundException; {:try_start_b4 .. :try_end_be} :catch_d4
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_be} :catch_d2

    move-object v0, v2

    .line 1076
    nop

    .line 1078
    :try_start_c0
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1079
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1088
    nop

    .line 1089
    return v5

    .line 1080
    :catch_d2
    move-exception v2

    goto :goto_d9

    .line 1073
    :catch_d4
    move-exception v2

    .line 1074
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_d8} :catch_d2

    .line 1075
    return v4

    .line 1081
    .local v2, "e":Ljava/io/IOException;
    :goto_d9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1083
    :try_start_dc
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_e0

    .line 1086
    goto :goto_e4

    .line 1084
    :catch_e0
    move-exception v3

    .line 1085
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1087
    .end local v3    # "err":Ljava/lang/Exception;
    :goto_e4
    return v4
.end method

.method private static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .registers 10
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 989
    .local v1, "mParameter":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, p2, v5

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget v6, p2, v6

    .line 990
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    aget v6, p2, v6

    .line 991
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    :try_start_8a
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_94
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_94} :catch_aa
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_94} :catch_a8

    move-object v0, v2

    .line 999
    nop

    .line 1001
    :try_start_96
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1002
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1011
    nop

    .line 1012
    return v5

    .line 1003
    :catch_a8
    move-exception v2

    goto :goto_af

    .line 996
    :catch_aa
    move-exception v2

    .line 997
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ae} :catch_a8

    .line 998
    return v4

    .line 1004
    .local v2, "e":Ljava/io/IOException;
    :goto_af
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1006
    :try_start_b2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    .line 1009
    goto :goto_ba

    .line 1007
    :catch_b6
    move-exception v3

    .line 1008
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1010
    .end local v3    # "err":Ljava/lang/Exception;
    :goto_ba
    return v4
.end method


# virtual methods
.method public afpcDataApply()Z
    .registers 4

    .line 865
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcDataApply"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v0, "SemMdnieManagerService"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz v0, :cond_17

    .line 869
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataApply()Z

    move-result v0

    return v0

    .line 871
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public afpcDataOff()Z
    .registers 4

    .line 877
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcDataOff"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v0, "SemMdnieManagerService"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz v0, :cond_17

    .line 881
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataOff()Z

    move-result v0

    return v0

    .line 883
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public afpcDataVerify()Z
    .registers 3

    .line 842
    const-string v0, "SemMdnieManagerService"

    const-string v1, "afpcDataVerify"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz v0, :cond_10

    .line 845
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataVerify()Z

    move-result v0

    return v0

    .line 847
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public afpcDataWrite()Z
    .registers 4

    .line 853
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcDataWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v0, "SemMdnieManagerService"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz v0, :cond_17

    .line 857
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataWrite()Z

    move-result v0

    return v0

    .line 859
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public afpcWorkOff()Z
    .registers 4

    .line 889
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcWorkOff"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v0, "SemMdnieManagerService"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz v0, :cond_17

    .line 893
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcWorkOff()Z

    move-result v0

    return v0

    .line 895
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public disableNightMode()Z
    .registers 4

    .line 732
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "disableNightMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result v0

    return v0
.end method

.method public enableNightMode(I)Z
    .registers 5
    .param p1, "opacityIndex"    # I

    .line 726
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "enableNightMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result v0

    return v0
.end method

.method public getContentMode()I
    .registers 2

    .line 510
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    return v0
.end method

.method public getNightModeBlock()Z
    .registers 4

    .line 746
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "getNightModeBlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNightModeBlock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    return v0
.end method

.method public getNightModeStep()I
    .registers 3

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNightModeStep : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    return v0
.end method

.method public getScreenMode()I
    .registers 2

    .line 505
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return v0
.end method

.method public getSupportedContentMode()[I
    .registers 6

    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDNIE_SUPPORT_FUNCTION ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), mSupportContentMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMdnieManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v1, :cond_2d

    .line 575
    const/4 v0, 0x6

    .line 577
    :cond_2d
    new-array v1, v0, [I

    .line 579
    .local v1, "contentMode":[I
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_4a

    .line 580
    const/4 v2, 0x0

    aput v2, v1, v2

    .line 581
    const/4 v2, 0x1

    aput v2, v1, v2

    .line 582
    const/4 v2, 0x2

    const/4 v3, 0x4

    aput v3, v1, v2

    .line 583
    const/4 v2, 0x3

    const/4 v4, 0x6

    aput v4, v1, v2

    .line 584
    const/16 v2, 0x8

    aput v2, v1, v3

    .line 585
    const/4 v2, 0x5

    const/16 v3, 0x9

    aput v3, v1, v2

    .line 588
    :cond_4a
    return-object v1
.end method

.method public getSupportedScreenMode()[I
    .registers 8

    .line 523
    const/4 v0, 0x0

    .line 525
    .local v0, "size":I
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v1, :cond_d

    .line 526
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_b

    .line 527
    const/4 v0, 0x5

    goto :goto_14

    .line 529
    :cond_b
    const/4 v0, 0x4

    goto :goto_14

    .line 532
    :cond_d
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_13

    .line 533
    const/4 v0, 0x2

    goto :goto_14

    .line 535
    :cond_13
    const/4 v0, 0x0

    .line 538
    :goto_14
    new-array v1, v0, [I

    .line 540
    .local v1, "screenMode":[I
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2f

    .line 541
    aput v6, v1, v6

    .line 542
    aput v5, v1, v5

    .line 543
    const/4 v2, 0x2

    aput v2, v1, v2

    .line 544
    const/4 v2, 0x3

    aput v4, v1, v2

    .line 545
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_37

    .line 546
    aput v3, v1, v4

    goto :goto_37

    .line 550
    :cond_2f
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_37

    .line 551
    aput v4, v1, v6

    .line 552
    aput v3, v1, v5

    .line 556
    :cond_37
    :goto_37
    return-object v1
.end method

.method public isContentModeSupported()Z
    .registers 2

    .line 561
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v0, :cond_6

    .line 562
    const/4 v0, 0x1

    return v0

    .line 564
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isNightModeSupported()Z
    .registers 2

    .line 718
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v0, :cond_6

    .line 719
    const/4 v0, 0x1

    return v0

    .line 721
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenModeSupported()Z
    .registers 2

    .line 514
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v0, :cond_9

    goto :goto_b

    .line 517
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 515
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public setAmoledACL(I)Z
    .registers 4
    .param p1, "mode"    # I

    .line 641
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_18

    .line 642
    if-eqz p1, :cond_9

    .line 643
    const/4 p1, 0x1

    move v0, p1

    goto :goto_a

    .line 642
    :cond_9
    move v0, p1

    .line 644
    .end local p1    # "mode":I
    .local v0, "mode":I
    :goto_a
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_d
    const-string p1, "/sys/class/lcd/panel/power_reduce"

    invoke-static {p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v1

    return p1

    .line 647
    :catchall_15
    move-exception p1

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw p1

    .line 650
    .end local v0    # "mode":I
    .restart local p1    # "mode":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public setColorVision(ZII)Z
    .registers 10
    .param p1, "enable"    # Z
    .param p2, "color"    # I
    .param p3, "level"    # I

    .line 803
    move v0, p1

    .line 804
    .local v0, "mode_enable":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "str":Ljava/lang/String;
    if-ltz p2, :cond_86

    const/16 v2, 0xc

    if-gt p2, v2, :cond_86

    if-ltz p3, :cond_86

    const/16 v2, 0x9

    if-gt p3, v2, :cond_86

    .line 808
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 809
    :try_start_38
    const-string v3, "/sys/class/mdnie/mdnie/color_lens"

    invoke-static {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 810
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/mdnie/mdnie1/color_lens"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 811
    const-string v3, "/sys/class/mdnie/mdnie1/color_lens"

    invoke-static {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 813
    :cond_52
    const-string v3, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColorVision : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    .line 815
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    .line 816
    iput p3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I

    .line 817
    const/4 v3, 0x1

    monitor-exit v2

    return v3

    .line 819
    :cond_81
    monitor-exit v2

    goto :goto_86

    :catchall_83
    move-exception v3

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_38 .. :try_end_85} :catchall_83

    throw v3

    .line 821
    :cond_86
    :goto_86
    const/4 v2, 0x0

    return v2
.end method

.method public setContentMode(I)Z
    .registers 6
    .param p1, "mode"    # I

    .line 616
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v0, :cond_67

    .line 617
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkContentMode(I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 618
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_d
    const-string v1, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 620
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1b

    const/4 v1, 0x6

    if-ne p1, v1, :cond_35

    .line 621
    :cond_1b
    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isIndiaCountryCode:Z

    if-nez v1, :cond_2f

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isBangladeshCountryCode:Z

    if-nez v1, :cond_2f

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isNepalCountryCode:Z

    if-nez v1, :cond_2f

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isSrilankaCountryCode:Z

    if-nez v1, :cond_2f

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isMaldivesCountryCode:Z

    if-eqz v1, :cond_35

    :cond_2f
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeSWA:Z

    if-eqz v1, :cond_35

    add-int/lit8 p1, p1, 0x1

    .line 623
    :cond_35
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie1/scenario"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 624
    const-string v1, "/sys/class/mdnie/mdnie1/scenario"

    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 626
    :cond_47
    const-string v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContentMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    .line 628
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 630
    :cond_62
    monitor-exit v0

    goto :goto_67

    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_d .. :try_end_66} :catchall_64

    throw v1

    .line 633
    :cond_67
    :goto_67
    const/4 v0, 0x0

    return v0
.end method

.method public setLightNotificationMode(Z)Z
    .registers 8
    .param p1, "enable"    # Z

    .line 827
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 828
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_8
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/light_notification"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    .line 830
    const-string v2, "/sys/class/mdnie/mdnie1/light_notification"

    if-eqz p1, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    invoke-static {v2, v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 832
    :cond_20
    const-string v2, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLightNotificationMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v2, "/sys/class/mdnie/mdnie/light_notification"

    if-eqz p1, :cond_3b

    move v1, v3

    :cond_3b
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 834
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw v1

    .line 836
    :cond_44
    return v1
.end method

.method public setNightMode(ZI)Z
    .registers 10
    .param p1, "enable"    # Z
    .param p2, "index"    # I

    .line 767
    move v0, p1

    .line 768
    .local v0, "mode_enable":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNightMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_NEW_SYSFS_USE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemMdnieManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v2, :cond_d4

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    if-eqz v2, :cond_d4

    .line 773
    if-ltz p2, :cond_d4

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    if-gt p2, v2, :cond_d4

    .line 774
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 775
    :try_start_60
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_NEW_SYSFS_USE:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_91

    .line 776
    const-string v3, "/sys/class/lcd/panel/reading_mode"

    invoke-static {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 777
    const-string v3, "SemMdnieManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNightMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 779
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 780
    monitor-exit v2

    return v4

    .line 784
    :cond_91
    const-string v3, "/sys/class/mdnie/mdnie/night_mode"

    invoke-static {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 785
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/mdnie/mdnie1/night_mode"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 786
    const-string v3, "/sys/class/mdnie/mdnie1/night_mode"

    invoke-static {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 788
    :cond_ab
    const-string v3, "SemMdnieManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNightMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 790
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 791
    monitor-exit v2

    return v4

    .line 794
    :cond_cf
    monitor-exit v2

    goto :goto_d4

    :catchall_d1
    move-exception v3

    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_60 .. :try_end_d3} :catchall_d1

    throw v3

    .line 797
    :cond_d4
    :goto_d4
    const/4 v2, 0x0

    return v2
.end method

.method public setNightModeBlock(Z)Z
    .registers 5
    .param p1, "support"    # Z

    .line 738
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "setNightModeBlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNightModeBlock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 741
    const/4 v0, 0x1

    return v0
.end method

.method public setNightModeStep(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNightModeStep : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    .line 755
    const/4 v0, 0x1

    return v0
.end method

.method public setScreenMode(I)Z
    .registers 6
    .param p1, "mode"    # I

    .line 594
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v0, :cond_4f

    .line 595
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_4f

    .line 596
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 597
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_15
    const-string v1, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 599
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie1/mode"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 600
    const-string v1, "/sys/class/mdnie/mdnie1/mode"

    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 602
    :cond_2f
    const-string v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 604
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 606
    :cond_4a
    monitor-exit v0

    goto :goto_4f

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_15 .. :try_end_4e} :catchall_4c

    throw v1

    .line 610
    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    return v0
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .registers 6
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .line 1227
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "setmDNIeAccessibilityMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmDNIeAccessibilityMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    nop

    .line 1260
    const/4 v0, 0x0

    return v0
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "result"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "setmDNIeColorBlind"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmDNIeColorBlind ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    nop

    .line 1142
    const/4 v0, 0x0

    return v0
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .line 1208
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "setmDNIeEmergencyMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmDNIeEmergencyMode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    move v2, v0

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    const-string v3, "/sys/class/mdnie/mdnie/accessibility"

    invoke-static {v3, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    .line 1212
    .local v2, "result":Z
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/mdnie/mdnie1/accessibility"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1213
    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    move v0, v1

    :goto_42
    invoke-static {v4, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    and-int/2addr v2, v0

    .line 1215
    :cond_47
    return v2
.end method

.method public setmDNIeNegative(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .line 1155
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "setmDNIeNegative"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmDNIeNegative ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    nop

    .line 1178
    const/4 v0, 0x0

    return v0
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .line 1190
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "setmDNIeScreenCurtain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmDNIeScreenCurtain ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    .line 1193
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    move v2, v0

    goto :goto_2d

    :cond_2c
    move v2, v1

    :goto_2d
    const-string v3, "/sys/class/mdnie/mdnie/accessibility"

    invoke-static {v3, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    .line 1194
    .local v2, "result":Z
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/mdnie/mdnie1/accessibility"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1195
    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    invoke-static {v4, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    and-int/2addr v2, v0

    .line 1197
    :cond_49
    return v2
.end method
